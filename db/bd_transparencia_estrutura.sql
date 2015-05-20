CREATE DATABASE  IF NOT EXISTS `transparencia` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `transparencia`;
-- MySQL dump 10.13  Distrib 5.6.17, for Win64 (x86_64)
--
-- Host: localhost    Database: transparencia
-- ------------------------------------------------------
-- Server version	5.6.23-log

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
-- Table structure for table `categoriaeconomica`
--

DROP TABLE IF EXISTS `categoriaeconomica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoriaeconomica` (
  `cod_CategoriaEconomica` int(11) NOT NULL,
  `str_CategoriaEconomica` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_CategoriaEconomica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `elementodespesa`
--

DROP TABLE IF EXISTS `elementodespesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `elementodespesa` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) NOT NULL DEFAULT '0',
  `version` bigint(20) DEFAULT '0',
  `cod_ElementoDespesa` int(11) NOT NULL,
  `str_ElementoDespesa` varchar(100) DEFAULT NULL,
  `str_DescricaoElementoDespesa` varchar(2500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER inserir_uuid_elementoDespesa
  BEFORE INSERT ON elementoDespesa
  FOR EACH ROW
  SET new.uuid = uuid() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `favorecido`
--

DROP TABLE IF EXISTS `favorecido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `favorecido` (
  `cod_Favorecido` int(11) NOT NULL,
  `str_Favorecido` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cod_Favorecido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fonterecurso`
--

DROP TABLE IF EXISTS `fonterecurso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fonterecurso` (
  `cod_FonteRecurso` int(11) NOT NULL,
  `str_FonteRecurso` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cod_FonteRecurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `grupodespesa`
--

DROP TABLE IF EXISTS `grupodespesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grupodespesa` (
  `cod_GrupoDespesa` int(11) NOT NULL,
  `str_GrupoDespesa` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cod_GrupoDespesa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `licitacao`
--

DROP TABLE IF EXISTS `licitacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `licitacao` (
  `cod_Licitacao` int(11) NOT NULL,
  `str_TipoLicitacao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cod_Licitacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `modalidade`
--

DROP TABLE IF EXISTS `modalidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `modalidade` (
  `cod_Modalidade` int(11) NOT NULL,
  `str_Modalidade` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cod_Modalidade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orcamentoacao`
--

DROP TABLE IF EXISTS `orcamentoacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orcamentoacao` (
  `cod_OrcamentoAcao` int(11) NOT NULL,
  `str_Acao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cod_OrcamentoAcao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orcamentofuncao`
--

DROP TABLE IF EXISTS `orcamentofuncao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orcamentofuncao` (
  `cod_OrcamentoFuncao` int(11) NOT NULL,
  `str_Funcao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cod_OrcamentoFuncao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orcamentoprograma`
--

DROP TABLE IF EXISTS `orcamentoprograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orcamentoprograma` (
  `cod_Programa` int(11) NOT NULL,
  `str_Programa` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cod_Programa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orcamentosubfuncao`
--

DROP TABLE IF EXISTS `orcamentosubfuncao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orcamentosubfuncao` (
  `cod_SubFuncao` int(11) NOT NULL,
  `str_NomeSubFuncao` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cod_SubFuncao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `orgao`
--

DROP TABLE IF EXISTS `orgao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orgao` (
  `id` int(11) NOT NULL,
  `uuid` varchar(40) NOT NULL DEFAULT '0',
  `version` bigint(20) DEFAULT '0',
  `str_NomeOrgao` varchar(250) DEFAULT NULL,
  `cod_TipoPoder` int(11) DEFAULT NULL,
  `str_Sigla` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER inserir_uuid_orgao
  BEFORE INSERT ON orgao
  FOR EACH ROW
  SET new.uuid = uuid() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `pagamentos`
--

DROP TABLE IF EXISTS `pagamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pagamentos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(40) NOT NULL DEFAULT '0',
  `version` bigint(20) DEFAULT '0',
  `cod_Id` int(11) NOT NULL,
  `cod_Orgao` int(11) DEFAULT NULL,
  `cod_UG` int(11) DEFAULT NULL,
  `cod_GestaoEmitente` int(11) DEFAULT NULL,
  `str_OrdemBancaria` varchar(50) DEFAULT NULL,
  `cod_Funcao` int(11) DEFAULT NULL,
  `cod_SubFuncao` int(11) DEFAULT NULL,
  `cod_Programa` int(11) DEFAULT NULL,
  `cod_Acao` int(11) DEFAULT NULL,
  `str_CpfCnpjNis` varchar(20) DEFAULT NULL,
  `str_NomeFavorecido` varchar(200) DEFAULT NULL,
  `cod_TipoFavorecido` int(11) DEFAULT NULL,
  `cod_ElementoDespesa` int(11) DEFAULT NULL,
  `cod_SubelementoDespesa` int(11) DEFAULT NULL,
  `str_NumProcesso` varchar(20) DEFAULT NULL,
  `cod_TipoLicitacao` int(11) DEFAULT NULL,
  `val_ValorRepasse` float DEFAULT NULL,
  `dat_EmissaoOrdemBancaria` datetime DEFAULT NULL,
  `cod_GrupoDespesa` int(11) DEFAULT NULL,
  `cod_Modalidade` int(11) DEFAULT NULL,
  `str_HistoricoDocumento` varchar(2000) DEFAULT NULL,
  `cod_CateriaEconomica` int(11) DEFAULT NULL,
  `cod_Subtitulo` int(11) DEFAULT NULL,
  `cod_Fonte` int(11) DEFAULT NULL,
  `num_DocumentoEmpenhado` varchar(50) DEFAULT NULL,
  `orgao` tinyblob,
  PRIMARY KEY (`id`),
  KEY `FK_Pagamentos_Orgao_idx` (`cod_Orgao`),
  CONSTRAINT `FK_Pagamentos_Orgao` FOREIGN KEY (`cod_Orgao`) REFERENCES `orgao` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=281373 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER inserir_uuid_pagamentos
  BEFORE INSERT ON pagamentos
  FOR EACH ROW
  SET new.uuid = uuid() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `subelementodespesa`
--

DROP TABLE IF EXISTS `subelementodespesa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subelementodespesa` (
  `id` int(11) NOT NULL,
  `uuid` varchar(40) NOT NULL DEFAULT '0',
  `version` bigint(20) DEFAULT '0',
  `str_SubelementoDespesa` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER inserir_uuid_subelementoDespesa
  BEFORE INSERT ON subelementoDespesa
  FOR EACH ROW
  SET new.uuid = uuid() */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `subtitulo`
--

DROP TABLE IF EXISTS `subtitulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subtitulo` (
  `cod_Subtitulo` int(11) NOT NULL,
  `str_Subtitulo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cod_Subtitulo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ug`
--

DROP TABLE IF EXISTS `ug`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ug` (
  `cod_UG` int(11) NOT NULL,
  `cod_Orgao` int(11) DEFAULT NULL,
  `str_NomeUG` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`cod_UG`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'transparencia'
--

--
-- Dumping routines for database 'transparencia'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-05-09  7:13:02
