<?php declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20190112182609 extends AbstractMigration
{
    public function up(Schema $schema) : void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('CREATE TABLE order_detail (id INT AUTO_INCREMENT NOT NULL, orderid INT NOT NULL, userid INT NOT NULL, productid INT NOT NULL, price DOUBLE PRECISION NOT NULL, quantity INT NOT NULL, amount DOUBLE PRECISION NOT NULL, name VARCHAR(150) NOT NULL, status VARCHAR(15) NOT NULL, PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci ENGINE = InnoDB');
        $this->addSql('ALTER TABLE orders DROP updated_at, DROP created_at, CHANGE userid userid INT NOT NULL, CHANGE amount amount DOUBLE PRECISION NOT NULL, CHANGE name name VARCHAR(20) NOT NULL, CHANGE address address VARCHAR(150) NOT NULL, CHANGE city city VARCHAR(15) NOT NULL, CHANGE phone phone VARCHAR(15) NOT NULL, CHANGE shipinfo shipinfo VARCHAR(255) NOT NULL, CHANGE status status VARCHAR(15) NOT NULL, CHANGE note note VARCHAR(255) NOT NULL');
    }

    public function down(Schema $schema) : void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->abortIf($this->connection->getDatabasePlatform()->getName() !== 'mysql', 'Migration can only be executed safely on \'mysql\'.');

        $this->addSql('DROP TABLE order_detail');
        $this->addSql('ALTER TABLE orders ADD updated_at DATETIME DEFAULT CURRENT_TIMESTAMP, ADD created_at DATETIME DEFAULT CURRENT_TIMESTAMP, CHANGE userid userid INT DEFAULT NULL, CHANGE amount amount DOUBLE PRECISION DEFAULT NULL, CHANGE name name VARCHAR(20) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE address address VARCHAR(150) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE city city VARCHAR(15) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE phone phone VARCHAR(15) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE shipinfo shipinfo VARCHAR(255) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE status status VARCHAR(15) DEFAULT NULL COLLATE utf8mb4_unicode_ci, CHANGE note note VARCHAR(255) DEFAULT NULL COLLATE utf8mb4_unicode_ci');
    }
}
