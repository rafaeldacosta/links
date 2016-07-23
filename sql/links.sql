CREATE DATABASE  IF NOT EXISTS `links` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `links`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: 10.200.2.134    Database: links
-- ------------------------------------------------------
-- Server version	5.5.24-0ubuntu0.12.04.1

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
-- Table structure for table `chamado`
--

DROP TABLE IF EXISTS `chamado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chamado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_linkunidade` int(11) NOT NULL,
  `solicitante` varchar(45) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefone` varchar(20) DEFAULT NULL,
  `descricao` text NOT NULL,
  `status` smallint(1) NOT NULL,
  `datalog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `usercreate` int(11) NOT NULL,
  `datalogupdate` timestamp NULL DEFAULT NULL,
  `userupdate` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chamado`
--

LOCK TABLES `chamado` WRITE;
/*!40000 ALTER TABLE `chamado` DISABLE KEYS */;
INSERT INTO `chamado` VALUES (30,10,'Marvel','M.@yahoo','2222','Testando data de atualização',0,'2014-07-22 14:35:24',13,'2014-07-16 18:42:25',42),(31,10,'dd','22','444','Data de cadastro as 14:43:45\r\n\r\nteste',1,'2014-07-22 14:35:24',13,'2014-07-16 18:46:43',42),(32,10,'Mario','Mario@gmail.com','2222 3333','Criação de um novo chamado para teste oficial',1,'2014-07-22 14:35:24',13,NULL,0),(33,10,'Alberto','c.Alberto@gmail.com','21 7575 7878','Verificação do nome de usuario que criou o novo chamado',1,'2014-07-22 14:35:24',43,'2014-07-14 18:49:23',43),(34,10,'Marcelo','marcelo@marcelo.com','21333313331','Internet não funciona.',1,'2014-07-22 14:35:24',13,NULL,0),(35,10,'Marcos','Marcos@hotmail.com','5555 2222','Verificação na serialização do formulario',1,'2014-07-22 14:35:24',43,NULL,0),(36,10,'Marcela Gomes','marcelagomes@bacaxa.com.br','(21)9999-5555','Problema com a conexão com a internet. Servidor cai a conexão.',1,'2014-07-22 14:35:24',18,NULL,0),(37,10,'Gilberto','Gil@gmail.com','5555-8888','Teste com java script',1,'2014-07-22 14:35:24',43,NULL,0),(38,10,'Giovanildo','Gi@faetec.com.br','5555 8888','Problemas com o acesso ao sistema',1,'2014-07-22 14:35:24',43,NULL,0),(39,10,'Deilson de Anselmo','deilson.ati@gmail.com','2123324073','teste para cadastrar link',1,'2014-07-22 14:35:24',13,NULL,0),(40,7,'andré','andre@gmail.com','1212121212121','Cadastro de chamado através do sistema',1,'2014-07-22 13:07:55',44,NULL,0),(41,4,'Fernanda','fernanda@gmail.com','2121121212121','Cadastro de chamado através do mapa interativo.',1,'2014-07-22 13:11:09',44,NULL,0),(42,7,'fernanda','3','e','',1,'2014-07-22 13:53:22',44,NULL,0),(43,4,'fernanda','12d','2222q','',1,'2014-07-22 14:06:24',44,NULL,0),(44,4,'fer','fer','222222','',1,'2014-07-22 14:09:08',44,NULL,0),(45,4,'Fernanda','fernanda@gmail.com','321654987','',1,'2014-07-22 14:12:28',44,NULL,0),(46,2,'Fernanda','fernanda@gmail.com','221212121212121','Teste modal com validação de campos funcionando',1,'2014-07-22 14:18:47',44,NULL,0),(47,10,'Leonardo Neves de Souza','leonardo.neves@montreal.com.br','21964225192','Mussum ipsum cacilds, vidis litro abertis. Consetis adipiscings elitis. Pra lá , depois divoltis porris, paradis. Paisis, filhis, espiritis santis. Mé faiz elementum girarzis, nisi eros vermeio, in elementis mé pra quem é amistosis quis leo. Manduma pindureta quium dia nois paga. Sapien in monti palavris qui num significa nadis i pareci latim. Interessantiss quisso pudia ce receita de bolis, mais bolis eu num gostis.',1,'2014-07-22 14:33:16',13,NULL,0),(48,156,'Leonardo','leonardo@leonardo.com','2133315555','Teste deabertura de chamado maps 1',1,'2014-07-25 17:46:06',13,NULL,0);
/*!40000 ALTER TABLE `chamado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contatos_unidade`
--

DROP TABLE IF EXISTS `contatos_unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contatos_unidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_unidade` int(11) NOT NULL,
  `contato` varchar(45) NOT NULL,
  `cargo` varchar(45) NOT NULL,
  `telefone1` varchar(20) NOT NULL,
  `telefone2` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `datalog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usercreate` int(11) NOT NULL,
  `datalogupdate` timestamp NULL DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contatos_unidade`
--

LOCK TABLES `contatos_unidade` WRITE;
/*!40000 ALTER TABLE `contatos_unidade` DISABLE KEYS */;
INSERT INTO `contatos_unidade` VALUES (1,5,'Solicitante 1','Coordenador','2345-2345','5432-0987','teste1@teste1.com','2014-07-16 14:19:45',18,'2014-07-18 18:04:10',18),(2,13,'Solicitante','Diretor','2332-4073','2332-8765','bacaxa@faetec.rj.gov.br','2014-07-17 12:46:09',18,'2014-07-18 18:12:04',18),(3,13,'Contato teste','diretor','99999-8888','77777-4444','napoleao.bonaparte@gmail.com','2014-07-18 18:19:09',18,'2014-07-18 18:33:32',18),(4,6,'Contato2','Diretor','8900-0987','7899-0987','contato@teste.com.br','2014-07-18 18:30:51',18,'2014-07-18 18:33:14',18);
/*!40000 ALTER TABLE `contatos_unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `controle_custos`
--

DROP TABLE IF EXISTS `controle_custos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `controle_custos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `contrato` varchar(45) NOT NULL,
  `id_linkunidade` int(11) NOT NULL,
  `mes` char(2) NOT NULL,
  `ano` char(4) NOT NULL,
  `custo` decimal(15,2) NOT NULL,
  `datalog` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `usercreate` int(11) NOT NULL,
  `datalogupdate` timestamp NULL DEFAULT NULL,
  `userupdate` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `controle_custos`
--

LOCK TABLES `controle_custos` WRITE;
/*!40000 ALTER TABLE `controle_custos` DISABLE KEYS */;
INSERT INTO `controle_custos` VALUES (1,'RJ/235513',8,'07','2014',1750000.00,'2014-07-21 14:09:28',13,NULL,NULL),(2,'RJ/235513',9,'07','2014',6669.00,'2014-07-21 14:09:28',13,NULL,NULL),(3,'RJ/235513',10,'07','2014',8999.00,'2014-07-21 14:09:28',13,NULL,NULL),(4,'RJ/235510',5,'07','2014',7699.00,'2014-07-21 14:11:29',13,'2014-07-22 14:10:29',13),(5,'RJ/235510',6,'07','2014',6877.00,'2014-07-21 14:11:29',13,'2014-07-22 14:10:29',13),(6,'RJ/235510',7,'07','2014',1500.00,'2014-07-21 14:11:29',13,'2014-07-22 14:10:29',13),(7,'RJ/23551-4',1,'07','2014',1200.00,'2014-07-21 14:12:16',13,NULL,NULL),(8,'RJ/23551-4',2,'07','2014',7355.00,'2014-07-21 14:12:16',13,NULL,NULL),(9,'RJ/23551-4',3,'07','2014',6578.00,'2014-07-21 14:12:16',13,NULL,NULL),(10,'RJ/23551-4',4,'07','2014',7896.00,'2014-07-21 14:12:16',13,NULL,NULL),(24,'RJ/23551-4',1,'10','2014',1000.00,'2014-07-22 14:11:40',13,'2014-07-22 15:19:47',13),(25,'RJ/23551-4',2,'10','2014',0.00,'2014-07-22 14:11:40',13,'2014-07-22 15:19:47',13),(26,'RJ/23551-4',3,'10','2014',0.00,'2014-07-22 14:11:40',13,'2014-07-22 15:19:47',13),(27,'RJ/23551-4',4,'10','2014',0.00,'2014-07-22 14:11:40',13,'2014-07-22 15:19:47',13),(28,'RJ/235513',8,'11','2014',2300.00,'2014-07-29 17:28:52',13,NULL,NULL),(29,'RJ/235513',9,'11','2014',3000.00,'2014-07-29 17:28:52',13,NULL,NULL),(30,'RJ/235513',10,'11','2014',1500.00,'2014-07-29 17:28:53',13,NULL,NULL),(31,'123',156,'08','2014',2500000.00,'2014-07-31 12:50:23',18,NULL,NULL),(32,'RJ123',156,'08','2014',12000000.00,'2014-08-01 18:21:47',18,NULL,NULL),(33,'RJ789',157,'08','2014',25639.00,'2014-08-01 18:56:33',18,NULL,NULL),(34,'RJ890',158,'08','2014',36000.00,'2014-08-01 18:57:04',18,NULL,NULL),(35,'RJ789',157,'08','2014',3000000.00,'2014-08-01 18:58:05',18,NULL,NULL),(36,'RJ890',158,'08','2014',5000000.00,'2014-08-01 19:01:51',18,NULL,NULL),(37,'RJ890',158,'05','2014',20000000.00,'2014-08-01 19:06:06',18,NULL,NULL),(38,'RJ789',157,'05','2014',25000000.00,'2014-08-01 19:09:04',18,NULL,NULL);
/*!40000 ALTER TABLE `controle_custos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_chamado`
--

DROP TABLE IF EXISTS `historico_chamado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historico_chamado` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_chamado` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `status` smallint(1) NOT NULL,
  `descricao` text,
  `datalog` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_chamado`
--

LOCK TABLES `historico_chamado` WRITE;
/*!40000 ALTER TABLE `historico_chamado` DISABLE KEYS */;
INSERT INTO `historico_chamado` VALUES (4,30,13,12,'testando chamado','2014-07-15 12:41:09'),(5,30,13,5,'teste de cancelamento','2014-07-15 14:06:31'),(6,34,13,12,'Foi enviada uma equipa para verificação do problema.','2014-07-15 15:01:25'),(7,34,13,6,'Foi acordado a troca do roteador no dia 22/07/14.','2014-07-15 15:02:07'),(8,36,18,3,'Manutenção da internet na localidade de BACAXÀ','2014-07-15 15:12:14'),(9,36,18,12,'A equipe de instalação se encontra no loca realizando reparos na instalação da unidade.','2014-07-15 15:13:11'),(10,36,18,5,'Instalação realizada com sucesso','2014-07-15 15:14:00'),(11,34,13,7,'Troca ainda não efetuada.','2014-07-15 18:55:23'),(12,34,13,11,'Construção dos tubos de passagem.','2014-07-15 18:57:04'),(13,39,13,8,'reconfigurar roteador','2014-07-16 18:29:10'),(14,31,42,6,'teste teste','2014-07-16 18:47:56'),(15,31,42,12,'visita no local','2014-07-16 18:48:26'),(16,31,18,1,'Instalação do cabo de fibra ótica','2014-07-23 11:56:26');
/*!40000 ALTER TABLE `historico_chamado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `link_unidade`
--

DROP TABLE IF EXISTS `link_unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `link_unidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_unidade` int(11) NOT NULL,
  `id_link` int(11) NOT NULL,
  `id_velocidade` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `dataativacao` date DEFAULT NULL,
  `numContrato` varchar(45) DEFAULT NULL,
  `ip` varchar(15) DEFAULT NULL,
  `porta` varchar(45) DEFAULT NULL,
  `circuitolinha` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=159 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `link_unidade`
--

LOCK TABLES `link_unidade` WRITE;
/*!40000 ALTER TABLE `link_unidade` DISABLE KEYS */;
INSERT INTO `link_unidade` VALUES (1,4,2,37,1,'2018-07-14','RJ/23551-4','192.168.100.1','23','RJO1234'),(2,2,2,3,1,'2018-07-14','RJ/23551-4','192.168.100.9','23','RJO1235'),(3,2,2,2,1,'2018-07-14','RJ/23551-4','192.168.100.17','23','RJO1236'),(4,5,2,4,1,'2018-07-14','RJ/23551-4','192.168.100.25','23','RJO1237'),(5,2,2,37,1,'2018-07-14','RJ/235510','192.168.100.33','23','RJO1238'),(6,6,2,2,1,'2018-07-14','RJ/235510','192.168.100.41','23','RJO1239'),(7,13,2,4,1,'2018-07-14','RJ/235510','192.168.100.49','23','RJO1240'),(8,4,2,6,1,'2018-07-14','RJ/235513','192.168.100.65','23','RJO1241'),(9,5,1,6,1,'2018-07-14','RJ/235513','192.168.100.73','23','RJO1242'),(10,1,2,12,1,'2018-07-14','RJ/235513','192.168.100.81','23','RJO1243'),(156,13,1,5,1,'2014-07-23','RJ123','192.168.1.1','23','RJ007'),(157,5,3,8,1,'2014-08-01','RJ789','192.198.1.25','22','TESTE'),(158,15,4,8,1,'2014-08-06','RJ890','123.456.789','23','TESTE RJ');
/*!40000 ALTER TABLE `link_unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `links`
--

DROP TABLE IF EXISTS `links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  `status` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `links`
--

LOCK TABLES `links` WRITE;
/*!40000 ALTER TABLE `links` DISABLE KEYS */;
INSERT INTO `links` VALUES (1,'VELOX',1),(2,'MPLS',1),(3,'FRAME RELAY',1),(4,'METRO ETHERNET',1),(5,'MODEM 3G',1),(6,'OUTROS',1),(7,'IP CONNECT',1),(8,'VPN VIP',1),(9,'PRODERJ',1),(17,'Net Virtua BL',1),(18,'teste',1),(19,'RADLINK',1),(20,'NOVO LINK',1),(21,'NOVO LINK 1',1),(22,'NOVO LINK 2',1);
/*!40000 ALTER TABLE `links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `status_link_unidade`
--

DROP TABLE IF EXISTS `status_link_unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `status_link_unidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `status_link_unidade`
--

LOCK TABLES `status_link_unidade` WRITE;
/*!40000 ALTER TABLE `status_link_unidade` DISABLE KEYS */;
INSERT INTO `status_link_unidade` VALUES (1,'INSTALAÇÃO'),(2,'ATIVO'),(3,'MANUTENÇÃO'),(4,'DESATIVADO'),(5,'CANCELADO'),(6,'AGUARDANDO TROCA '),(7,'AGUARDANDO SOLUCIONAR PENDÊNCIA'),(8,'AGUARDANDO CONFIGURAÇÃO DO ROTEADOR'),(9,'PROJETO REDE BÁSICA'),(10,'PROJETO DE FIBRA'),(11,'EM VISTORIA, LOCAL EM OBRAS'),(12,'EM ANDAMENTO');
/*!40000 ALTER TABLE `status_link_unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_unidade`
--

DROP TABLE IF EXISTS `tipo_unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipo_unidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unidade` varchar(150) NOT NULL,
  `ativo` smallint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_unidade`
--

LOCK TABLES `tipo_unidade` WRITE;
/*!40000 ALTER TABLE `tipo_unidade` DISABLE KEYS */;
INSERT INTO `tipo_unidade` VALUES (1,'CVT',1),(2,'CETEP',1),(3,'ETE',1),(4,'FUNDAÇÃO',1),(5,'HOTEL ESCOLA',1),(6,'OFICINA DE BELEZA',1),(7,'RESTAURANTE ESCOLA',1),(8,'ESEI',1),(9,'INSTITUTO SUPERIOR',1),(10,'FEVRE',1),(11,'CPTI',1),(12,'UNIDADE AVANÇADA',1),(13,'CRECHE',1),(14,'EEEF',1),(15,'CDD',1),(16,'EAT',1),(17,'ESCOLA DE DANÇA',1),(18,'ISE',1),(19,'CONCENTRADORA',1),(20,'ESCOLA',1),(37,'ESCOLA II',0),(38,'CETEP RJ',1),(39,'teste unidade',1);
/*!40000 ALTER TABLE `tipo_unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidade`
--

DROP TABLE IF EXISTS `unidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidade` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_tipo` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `logradouro` varchar(100) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL,
  `bairro` varchar(45) DEFAULT NULL,
  `cidade` varchar(45) DEFAULT NULL,
  `uf` char(2) DEFAULT NULL,
  `latitude` varchar(45) DEFAULT NULL,
  `longitude` varchar(45) DEFAULT NULL,
  `status` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidade`
--

LOCK TABLES `unidade` WRITE;
/*!40000 ALTER TABLE `unidade` DISABLE KEYS */;
INSERT INTO `unidade` VALUES (1,16,'ASSOCIAçãO DE MULHERES','RUA LADO A','43','null','ASSOC','RIO DE JANEIRO','RJ','-22.874910','-43.466431',1),(2,2,'ASSOCIAçãO DE MULHERES','RUA DO LADO A','43','null','QUINTINO','RIO DE JANEIRO','RJ','-22.932383','-42.486683',1),(3,15,'Associação de mulheres','Rua 90','67',NULL,'Assoc','Rio de Janeiro','RJ','34','43',1),(4,15,'MAJé','RUA A','456','null','BANGU','RIO DE JANEIRO','RJ','-22.910809','-43.230026',1),(5,2,'QUINTINO','RUA CLARIMUNDO','890','null','QUINTINO','RIO DE JANEIRO','RJ','-22.910809','-43.230026',1),(6,3,'VOLTA REDONDA','RUA VOLTA REDONDA','46','null','VOLTA REDONDA','RIO DE JANEIRO','RJ','-22.520405','-44.099827',1),(7,15,'quintino','Rua A','78',NULL,'Quintino','Rio de Janeiro','RJ','','',1),(8,15,'Quintinno','Rua Clarimundo de Melo','15648',NULL,'kbfakbiabk','rio de janeiro','rj','-24.56687','-24.56687',1),(9,7,'quintino','kfsbi','2',NULL,'sgs','fsfdf','sf','-24.56687','-24.56687',1),(10,3,'ewewewe','ewewewewe','232',NULL,'dsdsdsd','rereerererer','rt','-22.884422','-43.433514',1),(11,15,'Associação de mulheres e homens','Rua Lado A','43',NULL,'Assoc','rio de janeiro','rj','','',1),(12,2,'Associação da mulheres','Rua Clarimundo de Mello ','847',NULL,'quintino','rio de janeiro','rj','','',1),(13,16,'Bacaxá','Rua B','53','21741-161','Saquarema','Rio de Janeiro','RJ','-22.884422','-43.433514',1),(14,15,'Alagoas','Rua A','43','20740-160','Alagoas','Rio de janeiro','RJ','23','32',1),(15,8,'QUINTINO','RUA F','76','12345-160','QUINTNO','RIO DE JANEIRO','RJ','89','89',1),(16,14,'VISCONDE DE MAUÁ','RUA JOÃO VICENTE','1775','21610-210','MARECHAL HERMES','RIO DE JANEIRO','RJ','-22.859019','-43.375246',1);
/*!40000 ALTER TABLE `unidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `senha` varchar(45) DEFAULT NULL,
  `perfil` char(3) DEFAULT NULL,
  `status` smallint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (13,'Administrador do Sistema','admin','d033e22ae348aeb5660fc2140aec35850c4da997','adm',1),(18,'Rafael','rafael.goncalves','40bd001563085fc35165329ea1ff5c5ecbdbbeef','adm',1),(19,'Pedro Paulo','pedro.paulo','40bd001563085fc35165329ea1ff5c5ecbdbbeef','adm',0),(20,'nome completo','nome.login','7c4a8d09ca3762af61e59520943dc26494f8941b','adm',1),(21,'nome usuário','nome.usuario','7c4a8d09ca3762af61e59520943dc26494f8941b','',0),(22,'Marcos Vinicius Chaves','mvchaves','7c4a8d09ca3762af61e59520943dc26494f8941b','adm',0),(38,'nome','LOGIN','7c4a8d09ca3762af61e59520943dc26494f8941b','PER',1),(39,'nome','login','7c4a8d09ca3762af61e59520943dc26494f8941b','per',1),(40,'Deilson de Anselmo','deanselmo','7c4a8d09ca3762af61e59520943dc26494f8941b','',1),(41,'Leonardo Neves de Souza','leonardo.neves','7c4a8d09ca3762af61e59520943dc26494f8941b','adm',1),(42,'Deilson de Anselmo','deilson.anselmo','7c4a8d09ca3762af61e59520943dc26494f8941b','adm',1),(43,'Carlos.Alberto','Carlos','7c4a8d09ca3762af61e59520943dc26494f8941b','adm',1),(44,'André','andre.santos','40bd001563085fc35165329ea1ff5c5ecbdbbeef','adm',1),(45,'Usuario','Usuario.teste','7c4a8d09ca3762af61e59520943dc26494f8941b','usr',1),(46,'Carlos.Usuario','Usuario','7c4a8d09ca3762af61e59520943dc26494f8941b','usr',1),(47,'UsuarioHide','UsuarioHide','7c4a8d09ca3762af61e59520943dc26494f8941b','usr',1),(48,'Rejane','Rejane','7c4a8d09ca3762af61e59520943dc26494f8941b','usr',1),(49,'Mayara Alves de Anselmo','mayara.alves','7c4a8d09ca3762af61e59520943dc26494f8941b','usr',1),(50,'Mapa','Mapa','7c4a8d09ca3762af61e59520943dc26494f8941b','mps',1),(51,'Leonardo Usuario','leonardo.usuario','7c4a8d09ca3762af61e59520943dc26494f8941b','usr',1),(52,'Leonardo Mapa','leonardo.mapa','7c4a8d09ca3762af61e59520943dc26494f8941b','mps',1);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `velocidades`
--

DROP TABLE IF EXISTS `velocidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `velocidades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(45) NOT NULL,
  `status` smallint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `velocidades`
--

LOCK TABLES `velocidades` WRITE;
/*!40000 ALTER TABLE `velocidades` DISABLE KEYS */;
INSERT INTO `velocidades` VALUES (1,'129 KBPS',1),(2,'256 KBPS',NULL),(3,'300 KBPS',NULL),(4,'512 KBPS',NULL),(5,'600 KBPS',NULL),(6,'1 MBPS',NULL),(7,'2 MBPS',NULL),(8,'5 MBPS',NULL),(9,'10 MBPS',NULL),(10,'30 MBPS',NULL),(11,'100 MBPS',NULL),(12,'3G',NULL),(30,'120 mbps',1),(32,'100 MBps',1),(33,'900 kbps',1),(34,'820 kbps',1),(35,'900 KBPS',1),(36,'900 KBPS',1),(37,'900 kbps',1),(38,'512',1),(39,'1024',1),(40,'130 mbps',1),(41,'128 mbps',1);
/*!40000 ALTER TABLE `velocidades` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-08-01 16:31:56
