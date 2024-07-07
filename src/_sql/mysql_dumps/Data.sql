-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: carnaval
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.13-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `Campeonato`
--

LOCK TABLES `Campeonato` WRITE;
/*!40000 ALTER TABLE `Campeonato` DISABLE KEYS */;
INSERT INTO `Campeonato` VALUES (2012,'RJ','2012-02-05','2012-02-10','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o'),(2012,'SP','2012-02-05','2012-02-10','compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(2013,'RJ','2013-02-12','2013-02-17','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(2013,'SP','2013-02-12','2013-02-17','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(2014,'RJ','2014-02-22','2014-02-27','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(2014,'SP','2014-02-22','2014-02-27','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(2015,'RJ','2015-02-19','2015-02-24','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(2015,'SP','2015-02-19','2015-02-24','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(2016,'RJ','2016-03-01','2016-03-06','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(2016,'SP','2016-03-01','2016-03-06','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(2017,'RJ','2016-02-03','2016-02-08','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento'),(2017,'SP','2016-02-03','2016-02-08','Ao assinarem a ficha de inscrição, as Escolas de Samba e os seus respectivos integrantes, assumem o\n	compromisso de respeitar incondicionalmente todas as regras estabelecidas neste Regulamento');
/*!40000 ALTER TABLE `Campeonato` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Escola`
--

LOCK TABLES `Escola` WRITE;
/*!40000 ALTER TABLE `Escola` DISABLE KEYS */;
INSERT INTO `Escola` VALUES (0,'BEIJA-FLOR','Beija-Flor de Nilópolis ','Azul','Branco',NULL,'Pracinha Wallace Paes Leme 1025 - Nilópolis',1948),(1,'GRANDE RIO','Grande Rio de Duque de Caxias ','Vermelho','Verde','Branco','Rua Wallace Soares 5 - Duque de Caxias',1988),(2,'IMPERATRIZ LEOPOLDINENSE','Leopoldinense de Ramos','Verde','Branco','Dourado','Rua Professor Lacê 235 – Ramos',1959),(3,'MANGUEIRA','Mangueira','Verde','Rosa',NULL,'Rua Visconde de Niterói 1072 - Mangueira',1928),(4,'MOCIDADE','Mocidade de Pedro Miguel','Verde','Branco',NULL,'Rua Coronel Tamarindo 38 - Padre Miguel',1955),(5,'PORTELA','Portela de Madureira','Azul','Branco',NULL,'Rua Clara Nunes 81 - Madureira',1926),(6,'SALGUEIRO','Salgueiro da Tijuca','Vermelho','Branco',NULL,'Rua Silva Teles 104 - Tijuca',1953),(7,'SÃO CLEMENTE','São Clemente','Amarelo','Preto',NULL,'Av. Presidente Vargas 3102 - Centro',1961),(8,'UNIÃO DA ILHA','Ilha do Governador','Azul','Vermelho','Branco',' Estrada do Galeão 322 - Ilha do Governador',1953),(9,'VILA ISABEL','Vila Isabel','Azul','Branco',NULL,'Av. 28 de Setembro 382 - Vila Isabel',1946),(10,'UNIDOS DA TIJUCA','São Cristóvão','Amarelo','Azul',NULL,'Av. Francisco Bicalho 47 - São Cristóvão',1931);
/*!40000 ALTER TABLE `Escola` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Espectador`
--

LOCK TABLES `Espectador` WRITE;
/*!40000 ALTER TABLE `Espectador` DISABLE KEYS */;
INSERT INTO `Espectador` VALUES (16,'gabi@email.com',16111,997312489),(17,'iara@email.com',17211,981349569),(18,NULL,18001,992226879),(19,'aline@email.com',19211,997226754),(20,NULL,20200,NULL);
/*!40000 ALTER TABLE `Espectador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Filiar`
--

LOCK TABLES `Filiar` WRITE;
/*!40000 ALTER TABLE `Filiar` DISABLE KEYS */;
INSERT INTO `Filiar` VALUES (10,1,2016,NULL),(11,2,2010,2015),(12,1,2011,2016),(13,1,2009,2014),(14,1,2014,NULL),(15,1,2015,NULL);
/*!40000 ALTER TABLE `Filiar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Fundador`
--

LOCK TABLES `Fundador` WRITE;
/*!40000 ALTER TABLE `Fundador` DISABLE KEYS */;
INSERT INTO `Fundador` VALUES (21,'2016-05-14'),(22,'2015-04-03'),(23,NULL),(24,NULL),(25,'2016-08-07');
/*!40000 ALTER TABLE `Fundador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Fundar`
--

LOCK TABLES `Fundar` WRITE;
/*!40000 ALTER TABLE `Fundar` DISABLE KEYS */;
INSERT INTO `Fundar` VALUES (21,1),(22,2),(23,3),(24,4),(25,4),(25,5);
/*!40000 ALTER TABLE `Fundar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Integrante`
--

LOCK TABLES `Integrante` WRITE;
/*!40000 ALTER TABLE `Integrante` DISABLE KEYS */;
INSERT INTO `Integrante` VALUES (1,2015,'SP','2015-02-12','Acesso',2,'Coisa Boa é Pra Sempre','22:00:00','23:15:00'),(2,2015,'SP','2015-02-13','A',1,'Liberdade, liberdade, abre as asas sobre nós','01:00:00','02:00:00'),(3,2015,'RJ','2015-02-06','A',4,'Atrás da Verde e Rosa só não vai quem já morreu','22:00:00','23:00:00'),(4,2015,'RJ','2015-02-06','A',3,'Sonhar não custa nada! Ou quase nada','01:00:00','02:00:00'),(5,2015,'SP','2015-02-12','Acesso',1,'A Rainha, à noite tudo transforma','01:00:00','02:00:00'),(6,2015,'RJ','2015-02-05','A',1,'Explode Coração','22:00:00','23:00:00'),(7,2015,'SP','2015-02-13','A',2,'Aquarela Brasileira','01:00:00','02:00:00'),(8,2015,'RJ','2015-02-05','A',2,'É hoje O Dia','01:00:00','02:00:00');
/*!40000 ALTER TABLE `Integrante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Julgar`
--

LOCK TABLES `Julgar` WRITE;
/*!40000 ALTER TABLE `Julgar` DISABLE KEYS */;
INSERT INTO `Julgar` VALUES (1,2015,'SP','2015-02-12',2,85,'Evolução'),(2,2015,'SP','2015-02-13',2,90,'Mestre Sala'),(3,2015,'RJ','2015-02-06',1,92,'Enredo'),(4,2015,'RJ','2015-02-06',1,99,'Percussão'),(5,2015,'SP','2015-02-12',8,84,'Comissão de Frente'),(6,2015,'RJ','2015-02-05',1,70,'Harmonia'),(7,2015,'SP','2015-02-13',8,81,'Fantasias'),(8,2015,'RJ','2015-02-05',1,87,'Bateria');
/*!40000 ALTER TABLE `Julgar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Jurado`
--

LOCK TABLES `Jurado` WRITE;
/*!40000 ALTER TABLE `Jurado` DISABLE KEYS */;
INSERT INTO `Jurado` VALUES (1,'Bateria'),(2,'Percussão'),(3,'Enredo'),(4,'Harmonia'),(5,'Evolução'),(6,'Comissão de Frente'),(7,'Fantasias'),(8,'Mestre Sala');
/*!40000 ALTER TABLE `Jurado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Participante`
--

LOCK TABLES `Participante` WRITE;
/*!40000 ALTER TABLE `Participante` DISABLE KEYS */;
INSERT INTO `Participante` VALUES (9,'Lixeiro','2015-05-01'),(10,'Delegado','2014-07-03'),(11,'Coveiro','2011-04-27'),(12,'Motorista','2016-02-14'),(13,'Professor','2013-07-05'),(14,'Médico','2014-06-28'),(15,'Vendedor','2015-07-25');
/*!40000 ALTER TABLE `Participante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Pessoa`
--

LOCK TABLES `Pessoa` WRITE;
/*!40000 ALTER TABLE `Pessoa` DISABLE KEYS */;
INSERT INTO `Pessoa` VALUES (1,'João','Av Bom Horizonte','1972-10-14','M','Brasileiro'),(2,'Maria','Av Bom Horizonte','1977-12-27','F','Brasileiro'),(3,'Pedro','Rua Nova Esperença','1976-01-12','M','Brasileiro'),(4,'Gustavo','Rua da Igualdade','1986-11-16','M','Portugues'),(5,'Ana','Av Duque de Caxias','1991-04-05','F','Japonesa'),(6,'Oscar','Av. Olavo Fontoura','1995-01-07','M','Alemão'),(7,'Olavo','Rua das Rosas','1970-02-28','M','Brasileiro'),(8,'Laura','Rua das Pedras','1992-06-08','F','Mexicano'),(9,'Maicon','Av 28 de Março','1987-08-07','M','Argentino'),(10,'Rafaela','Rua Professor Joaquim','1957-01-15','F','Brasileiro'),(11,'Adriano','Rua Professor Joaquim','1975-05-06','M','Brasileiro'),(12,'Joaquim','Av 7 de Setembro','1994-02-07','M','Brasileiro'),(13,'Salvador','Av São João','1972-08-30','M','Brasileiro'),(14,'Marta','Av Duque de Caxias','1985-07-06','F','Brasileiro'),(15,'Tamires','Rua São José','1991-01-31','F','Brasileiro'),(16,'Gabriela','Rua Boa Esperença','1989-06-25','F','Brasileiro'),(17,'Iara','Av 7 de Setembro','1959-07-21','F','Brasileiro'),(18,'Juliana','Av Olavo Fontoura','1987-06-23','F','Brasileiro'),(19,'Aline','Rua das Rosas','1992-03-22','F','Japonesa'),(20,'Douglas','Av 28 de Março','1976-04-26','M','Alemão'),(21,'Lucas','Rua Silva Xavier','1987-02-17','M','Alemão'),(22,'Ronaldo','Rua Tiro de Guerra','1968-09-27','M','Brasileiro'),(23,'Beatriz','Rua Tiro de Guerra','1979-03-24','F','Brasileiro'),(24,'Tainara','Rua São José','1991-01-31','F','Brasileiro'),(25,'Flavia','Av Olavo Fontoura','1977-04-13','F','Brasileiro');
/*!40000 ALTER TABLE `Pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `SEI`
--

LOCK TABLES `SEI` WRITE;
/*!40000 ALTER TABLE `SEI` DISABLE KEYS */;
INSERT INTO `SEI` VALUES (16,6,2015,'RJ','2015-02-05',1,1),(17,6,2015,'RJ','2015-02-05',1,2),(18,1,2015,'SP','2015-02-12',2,8),(19,7,2015,'SP','2015-02-13',3,18),(20,2,2015,'SP','2015-02-13',3,20);
/*!40000 ALTER TABLE `SEI` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Sambodromo`
--

LOCK TABLES `Sambodromo` WRITE;
/*!40000 ALTER TABLE `Sambodromo` DISABLE KEYS */;
INSERT INTO `Sambodromo` VALUES (1,'Anhembi','Av. Olavo Fontoura, 1209 - Santana','1991-01-01','São Paulo'),(2,'Marquês de Sapucaí','R. Marquês de Sapucaí - Santo Cristo','1984-01-01','Rio de Janeiro'),(3,'Centro de Convenções de Manaus','Avenida Pedro Teixeira, 2565 - Flores','1994-01-01','Manaus'),(4,'Sambão do Povo','R. Dário de Lourenço Souza','1987-01-01','Vitória'),(5,'Passarela Nego Quirido','Av Governador Gustavo Richard, 5000 - Centro','1989-01-01','Santa Catarina'),(6,'Artes Populares','Rodovia JK KM 2','2013-08-01','Macapá'),(7,'Complexo Cultural do Porto Seco','R. Hermes de Souza, s/n - Rubem Berta','2004-01-01','Porto Alegre'),(8,'Davi Miguel','Av Pedro Miranda - Pedreira','2000-01-01','Belém');
/*!40000 ALTER TABLE `Sambodromo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Sediar`
--

LOCK TABLES `Sediar` WRITE;
/*!40000 ALTER TABLE `Sediar` DISABLE KEYS */;
INSERT INTO `Sediar` VALUES (1,2015,'SP'),(2,2016,'RJ'),(3,2014,'SP'),(4,2014,'RJ'),(5,2013,'SP'),(5,2015,'RJ');
/*!40000 ALTER TABLE `Sediar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `Setores`
--

LOCK TABLES `Setores` WRITE;
/*!40000 ALTER TABLE `Setores` DISABLE KEYS */;
INSERT INTO `Setores` VALUES (1,'A',70,26000,1),(2,'J',50,49081,1),(3,'Arquibancadas',100,21084,1),(4,'Pista',120,208015,1),(5,'Espaço Anhembi',500,11755,1),(6,'Arena Anhembi',250,49936,1),(7,'Nova Arena',350,38095,1),(8,'A',50,5000,2),(9,'B',70,15000,2),(10,'C',80,3000,2),(11,'D',100,20000,2),(12,'E',120,17000,2),(13,'F',150,10000,2),(14,'Arquibancadas',200,1000,2),(15,'camarote',350,200,2),(16,'Pista',75,800,2),(17,'A',20,5000,3),(18,'B',50,15000,3),(19,'C',70,13000,3),(20,'D',90,20000,3),(21,'E',100,17000,3),(22,'F',120,10000,3),(23,'Arquibancadas',180,15000,3),(24,'Pista',75,3000,3),(25,'Camarote',250,2000,3),(26,'A',50,1500,4),(27,'B',80,1000,4),(28,'C',150,1200,4),(29,'Arquibancadas',100,500,4),(30,'Camarote',200,800,4),(31,'A',50,1700,5),(32,'B',80,1000,5),(33,'C',150,1000,5),(34,'Arquibancadas',100,500,5),(35,'Camarote',200,800,5),(36,'A',50,7700,6),(37,'B',80,2000,6),(38,'C',180,3500,6),(39,'D',150,2500,6),(40,'Arquibancadas',200,2000,6),(41,'Camarote',300,300,6),(42,'A',50,5200,7),(43,'B',80,2000,7),(44,'C',180,3500,7),(45,'D',150,2500,7),(46,'E',110,4000,7),(47,'Arquibancadas',200,2000,7),(48,'Camarote',300,800,7),(49,'A',50,5400,8),(50,'B',80,2000,8),(51,'C',180,3500,8),(52,'D',150,2500,8),(53,'E',110,3800,8),(54,'Arquibancadas',200,2000,8),(55,'Camarote',300,800,8);
/*!40000 ALTER TABLE `Setores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-15 11:45:19
