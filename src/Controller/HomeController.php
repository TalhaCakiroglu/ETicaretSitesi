<?php

namespace App\Controller;

use App\Entity\Admin\Messages;
use App\Entity\User;
use App\Form\Admin\MessagesType;
use App\Form\UserType;
use App\Repository\Admin\CategoryRepository;
use App\Repository\Admin\ProductRepository;
use App\Repository\Admin\SettingRepository;
use App\Repository\Admin\ImageRepository;
use App\Repository\UserRepository;
use PhpParser\Node\Stmt\Echo_;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;//bunlar olmazsa çalışmıyor annotion.yaml hatası
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Template;
use Symfony\Component\HttpFoundation\Response;

class HomeController extends AbstractController
{
    /**
     * @Route("/", name="home")
     */
    public function index(SettingRepository $settingRepository, CategoryRepository $categoryRepository,ProductRepository $productRepository)
    {
        $data = $settingRepository->findAll();
        $products= $productRepository->findAll();
        //dump($data);
        //die();
        $em = $this->getDoctrine()->getManager();
        $sql = "SELECT * FROM product WHERE status='True' ORDER BY ID DESC LIMIT 5";
        $statement = $em->getConnection()->prepare($sql);
        //  $statement->bindValue('parentid',$parent);
        $statement->execute();
        $sliders = $statement->fetchAll();
        //dump($sliders);
        //die();

        $cats = $this->categorytree();
        $cats[0] = '<ul id="menu-v">';
        //print_r($cats);
        //die();
        return $this->render('home/index.html.twig', [
            'data' => $data,
            'cats' => $cats,
            'products' => $products,
            'sliders' => $sliders,
        ]);
    }

    /**
     * @Route("/hakkimizda", name="hakkimizda")
     */
    public function hakkimizda(SettingRepository $settingRepository)
    {
        $data = $settingRepository->findAll();
        return $this->render('home/hakkimizda.html.twig', [
            'data' => $data,
        ]);
    }


    /**
     * @Route("/referanslar", name="referanslar")
     */
    public function referans(SettingRepository $settingRepository)
    {
        $data = $settingRepository->findAll();
        return $this->render('home/referans.html.twig', [
            'data' => $data,
        ]);
    }

    public function categorytree($parent = 0, $user_tree_array = '')
    {
        if (!is_array($user_tree_array))
            $user_tree_array = array();

        $em = $this->getDoctrine()->getManager();
        $sql = "SELECT * FROM category WHERE status='True' AND parentid=" . $parent;
        $statement = $em->getConnection()->prepare($sql);
        //  $statement->bindValue('parentid',$parent);
        $statement->execute();
        $result = $statement->fetchAll();
        if (count($result) > 0) {
            $user_tree_array[] = "<ul>";
            foreach ($result as $row) {
                $user_tree_array[] = "<li><a href='/category/" . $row['id'] . "'>" . $row['title'] . "</a>";
                $user_tree_array = $this->categorytree($row['id'], $user_tree_array);
            }
            $user_tree_array[] = "</li></ul>";

        }
        return $user_tree_array;
    }

    /**
     * @Route("/category/{catid}", name="category_products", methods="GET")
     */
    public function CategoryProducts($catid, CategoryRepository $categoryRepository)
    {
        $cats = $this->categorytree();
        $cats[0]='<ul id="menu-v">';
        $data = $categoryRepository->findBy(
            ['id' => $catid]
        );
        //dump($data);

        $em = $this->getDoctrine()->getManager();
        $sql = "SELECT * FROM product WHERE status='True' AND category_id=" . $catid;
        $statement = $em->getConnection()->prepare($sql);
        $statement->bindValue('catid', $catid);
        $statement->execute();
        $products = $statement->fetchAll();
        //dump($products);
        //die();
        return $this->render('home/products.html.twig', [
            'data' => $data,
            'cats' => $cats,
            'products' => $products,
        ]);
    }

    /**
     * @Route("/iletisim", name="iletisim",methods="POST|GET")
     */
    public function iletisim(SettingRepository $settingRepository, Request $request)
    {
        $message = new Messages();
        $form = $this->createForm(MessagesType::class, $message);
        $form->handleRequest($request);
        $submittedToken = $request->request->get('token');
        if ($form->isSubmitted()) {
            //   if ($this->isCsrfTokenValid('form-message', $submittedToken)) {
            $em = $this->getDoctrine()->getManager();
            $em->persist($message);
            $em->flush();
            $this->addFlash('success', 'Mesajınız başarıyla gönderildi');
            return $this->redirectToRoute('iletisim');
            // }
//                            <input type="hidden" name="token" value="{{ csrf_token('form-message') }}" /> twig
        }
        $data = $settingRepository->findAll();
        return $this->render('home/iletişim.html.twig', [
            'data' => $data,
            //  'form' => $form->createView(),
            'message' => $message,
        ]);
    }

    /**
     * @Route("/product/{id}", name="product_detail",methods="GET")
     */
    public function ProductDetail($id,ProductRepository $productRepository, ImageRepository $imageRepository)
    {
        $data=$productRepository->findBy(
            ['id'=>$id]
        );
        $images=$imageRepository->findBy(
            ['product_id'=>$id]
        );

        //status='True' AND category_id=" . $catid;
        $em = $this->getDoctrine()->getManager();
        $sql = "SELECT * FROM image WHERE product_id=" . $id ." ORDER BY ID DESC LIMIT 3";
        $statement = $em->getConnection()->prepare($sql);
        $statement->execute();
        $sliders = $statement->fetchAll();
        $cats=$this->categorytree();
        $cats[0]='<ul id="menu-v">';
        return $this->render('home/product_detail.html.twig', [
            'data'=>$data,
            'cats'=>$cats,
            'sliders'=>$sliders,
        ]);
    }
    /**
     * @Route("/newuser", name="new_user", methods="GET|POST")
     */
    public function newuser(Request $request,UserRepository $userRepository): Response
    {

        $user = new User();

        $form = $this->createForm(UserType::class, $user);

        $form->handleRequest($request);


        $submittedToken = $request->request->get('token');


        if ($this->isCsrfTokenValid('user-form', $submittedToken)) {
            if ($form->isSubmitted()) {

                $emaildata=$userRepository->findBy([
                    'email' =>$user->getEmail()
                ]);

                if($emaildata==null){
                    $em = $this->getDoctrine()->getManager();
                    $user->setRoles("ROLE_USER");
                    $em->persist($user);
                    $em->flush();
                    $this->addFlash('success', 'Üye kaydınız tamamlanmıştır. <br> Giriş yapabilirsiniz.');

                    return $this->redirectToRoute('app_login');
                }
                else
                {
                    $this->addFlash('error', $user->getEmail()." " . 'Bu e-mail adresi kayıtlıdır!');

                }
            }
        }

        return $this->render('home/newuser.html.twig', [
            'user' => $user,
            'form' => $form->createView(),
        ]);
    }








}




