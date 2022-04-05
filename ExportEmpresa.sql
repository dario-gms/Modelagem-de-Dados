-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: empresa
-- ------------------------------------------------------
-- Server version	8.0.18

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tb_departamento`
--

DROP TABLE IF EXISTS `tb_departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_departamento` (
  `NUMERO_DEPARTAMENTO` int(11) NOT NULL,
  `DATA_INICIO_GERENTE` date NOT NULL,
  `NOME_DEPARTAMENTO` varchar(50) NOT NULL,
  `CPF_GERENTE` varchar(11) NOT NULL,
  PRIMARY KEY (`NUMERO_DEPARTAMENTO`),
  KEY `tb_funcionario_tb_departamento_fk` (`CPF_GERENTE`),
  CONSTRAINT `tb_funcionario_tb_departamento_fk` FOREIGN KEY (`CPF_GERENTE`) REFERENCES `tb_funcionario` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_departamento`
--

LOCK TABLES `tb_departamento` WRITE;
/*!40000 ALTER TABLE `tb_departamento` DISABLE KEYS */;
INSERT INTO `tb_departamento` VALUES (1,'1981-06-19','Matriz','88866555576'),(4,'1995-01-01','Administração','98765432168'),(5,'1988-05-22','Pesquisa','33344555587');
/*!40000 ALTER TABLE `tb_departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_dependente`
--

DROP TABLE IF EXISTS `tb_dependente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_dependente` (
  `CPF_FUNCIONARIO` varchar(11) NOT NULL,
  `NOME_DEPENDENTE` varchar(100) NOT NULL,
  `SEXO` varchar(1) NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `PARENTESCO` varchar(50) NOT NULL,
  PRIMARY KEY (`CPF_FUNCIONARIO`,`NOME_DEPENDENTE`),
  CONSTRAINT `tb_funcionario_tb_dependente_fk` FOREIGN KEY (`CPF_FUNCIONARIO`) REFERENCES `tb_funcionario` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_dependente`
--

LOCK TABLES `tb_dependente` WRITE;
/*!40000 ALTER TABLE `tb_dependente` DISABLE KEYS */;
INSERT INTO `tb_dependente` VALUES ('12345678966','Alicia','F','1988-12-30','Filha'),('12345678966','Elizabeth','F','1967-05-05','Esposa'),('12345678966','Michael','M','1988-04-01','Filho'),('33344555587','Alicia','F','1986-04-05','Filha'),('33344555587','Janaína','F','1958-05-03','Esposa'),('33344555587','Tiago','M','1983-10-25','Filho'),('44111555587','Joaquina','F','1986-12-07','Esposa'),('44222555587','Claudio','M','2007-12-21','Filho'),('44222555587','Juvenal','M','1977-03-12','Marido'),('44333555587','Katia','F','1979-11-12','Esposa'),('44333555587','Marcela','F','2003-11-12','Filha'),('44333555587','Maria','F','2005-11-12','Filha'),('44333555587','Rodrigo','M','2009-08-01','Filho'),('44444555587','Jonas','M','1981-06-14','Marido'),('44444555587','Orlando','M','2006-04-12','Filho'),('44777555587','Priscila','F','1991-04-02','Esposa'),('44888555587','Clecio','M','1988-05-04','Marido'),('55599922122','Clovis','M','1976-03-13','Marido'),('66699922122','Milton','M','1981-12-08','Marido'),('77799922122','Havelar','M','1993-12-12','Filho'),('77799922122','Marcio','M','1967-10-22','Marido'),('77799922122','Tulio','M','1992-06-17','Filho'),('98722332168','Rodinei','M','1987-10-22','Marido'),('98733332168','Cristina','F','2016-10-21','Neta'),('98733332168','Marcio','M','1957-10-22','Marido'),('98733332168','Rubens','M','1993-05-12','Filho'),('98733332168','Trauco','M','1992-12-11','Filho'),('98743232168','Hilda','F','2016-12-01','Filha'),('98743232168','Maria','F','1992-12-26','Esposa'),('98765432168','Antonio','M','1942-02-18','Marido'),('99965555667','Fátima','F','1977-12-26','Esposa'),('99965555667','Trauco','M','2001-10-25','Filho'),('99966666667','Marcela','F','2002-10-25','Filha'),('99966666667','Marcia','F','1970-09-26','Esposa'),('99966666667','Marcos','M','2006-08-18','Filho'),('99968855667','Claudio','M','1978-10-22','Marido'),('99968855667','Janaina','F','2005-10-11','Filha'),('99968855667','Tania','F','2007-06-12','Filha'),('99988666667','Katia','F','1973-12-26','Esposa'),('99988666667','Roberto','M','2002-10-25','Filho'),('99988666667','Rogerio','M','2003-12-18','Filho'),('99988666667','Ronaldo','M','2005-11-18','Filho');
/*!40000 ALTER TABLE `tb_dependente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_funcionario`
--

DROP TABLE IF EXISTS `tb_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_funcionario` (
  `CPF` varchar(11) NOT NULL,
  `DATA_NASCIMENTO` date NOT NULL,
  `PRIMEIRO_NOME` varchar(100) NOT NULL,
  `NOME_MEIO` varchar(100) NOT NULL,
  `ULTIMO_NOME` varchar(100) NOT NULL,
  `ENDERECO` varchar(250) NOT NULL,
  `SALARIO` double NOT NULL,
  `SEXO` varchar(1) NOT NULL,
  `CPF_SUPERVISOR` varchar(11) NOT NULL,
  `NUMERO_DEPARTAMENTO` int(11) NOT NULL,
  PRIMARY KEY (`CPF`),
  KEY `tb_funcionario_tb_funcionario_fk` (`CPF_SUPERVISOR`),
  KEY `tb_departamento_tb_funcionario_fk` (`NUMERO_DEPARTAMENTO`),
  CONSTRAINT `tb_departamento_tb_funcionario_fk` FOREIGN KEY (`NUMERO_DEPARTAMENTO`) REFERENCES `tb_departamento` (`NUMERO_DEPARTAMENTO`),
  CONSTRAINT `tb_funcionario_tb_funcionario_fk` FOREIGN KEY (`CPF_SUPERVISOR`) REFERENCES `tb_funcionario` (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_funcionario`
--

LOCK TABLES `tb_funcionario` WRITE;
/*!40000 ALTER TABLE `tb_funcionario` DISABLE KEYS */;
INSERT INTO `tb_funcionario` VALUES ('12345678966','1965-09-01','João','B','Silva','Rua das Flores 751 São Paulo SP',30000,'M','33344555587',5),('33344555587','1955-08-12','Fernando','T','Wong','Rua da Lapa 34 São Paulo SP',40000,'M','88866555576',5),('44111555587','1984-07-15','Ubiratan','V','Teixiera','Rua Rodrigues Alves 771 Rio de Janeiro RJ',31000,'M','88866555576',5),('44222555587','1978-07-15','Cláudia','G','Martinez','Rua 9 de Julho 800 São Paulo SP',36000,'F','88866555576',5),('44333555587','1977-07-15','Marcelo','K','Souza','Rua Abelardo Barbosa 412 São Paulo SP',34000,'M','88866555576',5),('44444555587','1981-08-12','Fatima','T','Lux','Rua das Alamedas 39 São Paulo SP',38000,'F','88866555576',5),('44777555587','1984-07-15','Tonico','K','Pedrosa','Rua Dos Invalidos 55 Rio de Janeiro RJ',18000,'M','88866555576',5),('44888555587','1989-07-15','Ruth','L','Motta','Rua das Palmeiras 99 Rio de Janeiro RJ',19000,'F','88866555576',5),('45345345376','1972-07-31','Joice','A','Leite','Av. Lucas Obes 74 São Paulo SP',25000,'F','33344555587',5),('55599922122','1977-01-15','Rosa','L','Tavarez','Rua Oliva de Sousa 998 Piracicaba SP',41000,'F','33344555587',5),('66688444476','1962-09-15','Ronaldo','K','Lima','Rua Rebouças 65 Piracicaba SP',38000,'M','33344555587',5),('66699922122','1982-12-15','Juliana','T','Vinil','Rua Cartagena 32 Piracicaba SP',12000,'F','33344555587',5),('77799922122','1969-07-15','Maria','P','Costa','Rua Aribancataiu 44 Piracicaba SP',39000,'F','33344555587',5),('88866555576','1937-11-10','Jorge','E','Brito','Rua do Horto 35 Sáo Paulo SP',55000,'M','',1),('98722332168','1989-06-20','Priscila','K','Grill','Rua Mauricio de Nassau 80 São Paulo SP',18000,'F','88866555576',4),('98733332168','1959-06-20','Lais','P','Souza','Av Amaro de Macedo 91 Santo André SP',41000,'F','88866555576',4),('98743232168','1991-06-20','Jaime','T','Pereira','Rua Comendador Soares 45 São Paulo SP',19000,'M','88866555576',4),('98765432168','1941-06-20','Jeniffer','S','Souza','Av Arthur de Lima 54 Santo André',43000,'F','88866555576',4),('98798798733','1969-03-29','André','V','Pereira','Rua Timbira 35 São Paulo SP',25000,'M','98765432168',4),('99965555667','1971-01-19','Tulio','R','Machado','Rua Acuarana 91 Rio de Janeiro RJ',22000,'M','98765432168',4),('99966666667','1970-01-19','Cosme','G','Pimenta','Rua Itibiri 45 Rio de Janeiro RJ',18000,'M','98765432168',4),('99968855667','1975-01-19','Marcia','O','Andrada','Rua Cosme e Damião 453 Rio de Janeiro RJ',22000,'F','98765432168',4),('99988666667','1967-01-19','Marcos','P','VillaReal','Rua Aracaju 99 Rio de Janeiro RJ',22000,'M','98765432168',4),('99988777767','1968-01-19','Alice','J','Zelaya','Rua Souza Lima 35 Curitiba PR',25000,'F','98765432168',4);
/*!40000 ALTER TABLE `tb_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_localizacoes_departamentos`
--

DROP TABLE IF EXISTS `tb_localizacoes_departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_localizacoes_departamentos` (
  `LOCAL` varchar(50) NOT NULL,
  `NUMERO_DEPARTAMENTO` int(11) NOT NULL,
  PRIMARY KEY (`LOCAL`,`NUMERO_DEPARTAMENTO`),
  KEY `tb_departamento_tb_localizacoes_departamentos_fk` (`NUMERO_DEPARTAMENTO`),
  CONSTRAINT `tb_departamento_tb_localizacoes_departamentos_fk` FOREIGN KEY (`NUMERO_DEPARTAMENTO`) REFERENCES `tb_departamento` (`NUMERO_DEPARTAMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_localizacoes_departamentos`
--

LOCK TABLES `tb_localizacoes_departamentos` WRITE;
/*!40000 ALTER TABLE `tb_localizacoes_departamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tb_localizacoes_departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_object_funcionario`
--

DROP TABLE IF EXISTS `tb_object_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_object_funcionario` (
  `CPF` varchar(11) NOT NULL,
  `JSON` json DEFAULT NULL,
  PRIMARY KEY (`CPF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_object_funcionario`
--

LOCK TABLES `tb_object_funcionario` WRITE;
/*!40000 ALTER TABLE `tb_object_funcionario` DISABLE KEYS */;
INSERT INTO `tb_object_funcionario` VALUES ('12345678966','{\"Cpf\": \"12345678966\", \"Sexo\": \"M\", \"Salario\": 30000.0, \"Endereco\": \"Rua das Flores 751 São Paulo SP\", \"Nome_Meio\": \"B\", \"Dependentes\": [{\"Sexo\": \"F\", \"Parentesco\": \"Filha\", \"Data_Nascimento\": \"1988-01-30T00:12:00\", \"Nome_Dependente\": \"Alicia\"}, {\"Sexo\": \"F\", \"Parentesco\": \"Esposa\", \"Data_Nascimento\": \"1967-01-05T00:05:00\", \"Nome_Dependente\": \"Elizabeth\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"1988-01-01T00:04:00\", \"Nome_Dependente\": \"Michael\"}], \"Ultimo_Nome\": \"Silva\", \"Primeiro_Nome\": \"João\", \"Cpf_Supervisor\": \"33344555587\", \"Data_Nascimento\": \"1965-01-01T00:09:00\", \"Numero_Departamento\": \"5\"}'),('33344555587','{\"Cpf\": \"33344555587\", \"Sexo\": \"M\", \"Salario\": 40000.0, \"Endereco\": \"Rua da Lapa 34 São Paulo SP\", \"Nome_Meio\": \"T\", \"Dependentes\": [{\"Sexo\": \"F\", \"Parentesco\": \"Filha\", \"Data_Nascimento\": \"1986-01-05T00:04:00\", \"Nome_Dependente\": \"Alicia\"}, {\"Sexo\": \"F\", \"Parentesco\": \"Esposa\", \"Data_Nascimento\": \"1958-01-03T00:05:00\", \"Nome_Dependente\": \"Janaína\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"1983-01-25T00:10:00\", \"Nome_Dependente\": \"Tiago\"}], \"Ultimo_Nome\": \"Wong\", \"Primeiro_Nome\": \"Fernando\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1955-01-12T00:08:00\", \"Numero_Departamento\": \"5\"}'),('44111555587','{\"Cpf\": \"44111555587\", \"Sexo\": \"M\", \"Salario\": 31000.0, \"Endereco\": \"Rua Rodrigues Alves 771 Rio de Janeiro RJ\", \"Nome_Meio\": \"V\", \"Dependentes\": [{\"Sexo\": \"F\", \"Parentesco\": \"Esposa\", \"Data_Nascimento\": \"1986-01-07T00:12:00\", \"Nome_Dependente\": \"Joaquina\"}], \"Ultimo_Nome\": \"Teixiera\", \"Primeiro_Nome\": \"Ubiratan\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1984-01-15T00:07:00\", \"Numero_Departamento\": \"5\"}'),('44222555587','{\"Cpf\": \"44222555587\", \"Sexo\": \"F\", \"Salario\": 36000.0, \"Endereco\": \"Rua 9 de Julho 800 São Paulo SP\", \"Nome_Meio\": \"G\", \"Dependentes\": [{\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"2007-01-21T00:12:00\", \"Nome_Dependente\": \"Claudio\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Marido\", \"Data_Nascimento\": \"1977-01-12T00:03:00\", \"Nome_Dependente\": \"Juvenal\"}], \"Ultimo_Nome\": \"Martinez\", \"Primeiro_Nome\": \"Cláudia\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1978-01-15T00:07:00\", \"Numero_Departamento\": \"5\"}'),('44333555587','{\"Cpf\": \"44333555587\", \"Sexo\": \"M\", \"Salario\": 34000.0, \"Endereco\": \"Rua Abelardo Barbosa 412 São Paulo SP\", \"Nome_Meio\": \"K\", \"Dependentes\": [{\"Sexo\": \"F\", \"Parentesco\": \"Esposa\", \"Data_Nascimento\": \"1979-01-12T00:11:00\", \"Nome_Dependente\": \"Katia\"}, {\"Sexo\": \"F\", \"Parentesco\": \"Filha\", \"Data_Nascimento\": \"2003-01-12T00:11:00\", \"Nome_Dependente\": \"Marcela\"}, {\"Sexo\": \"F\", \"Parentesco\": \"Filha\", \"Data_Nascimento\": \"2005-01-12T00:11:00\", \"Nome_Dependente\": \"Maria\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"2009-01-01T00:08:00\", \"Nome_Dependente\": \"Rodrigo\"}], \"Ultimo_Nome\": \"Souza\", \"Primeiro_Nome\": \"Marcelo\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1977-01-15T00:07:00\", \"Numero_Departamento\": \"5\"}'),('44444555587','{\"Cpf\": \"44444555587\", \"Sexo\": \"F\", \"Salario\": 38000.0, \"Endereco\": \"Rua das Alamedas 39 São Paulo SP\", \"Nome_Meio\": \"T\", \"Dependentes\": [{\"Sexo\": \"M\", \"Parentesco\": \"Marido\", \"Data_Nascimento\": \"1981-01-14T00:06:00\", \"Nome_Dependente\": \"Jonas\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"2006-01-12T00:04:00\", \"Nome_Dependente\": \"Orlando\"}], \"Ultimo_Nome\": \"Lux\", \"Primeiro_Nome\": \"Fatima\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1981-01-12T00:08:00\", \"Numero_Departamento\": \"5\"}'),('44777555587','{\"Cpf\": \"44777555587\", \"Sexo\": \"M\", \"Salario\": 18000.0, \"Endereco\": \"Rua Dos Invalidos 55 Rio de Janeiro RJ\", \"Nome_Meio\": \"K\", \"Dependentes\": [{\"Sexo\": \"F\", \"Parentesco\": \"Esposa\", \"Data_Nascimento\": \"1991-01-02T00:04:00\", \"Nome_Dependente\": \"Priscila\"}], \"Ultimo_Nome\": \"Pedrosa\", \"Primeiro_Nome\": \"Tonico\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1984-01-15T00:07:00\", \"Numero_Departamento\": \"5\"}'),('44888555587','{\"Cpf\": \"44888555587\", \"Sexo\": \"F\", \"Salario\": 19000.0, \"Endereco\": \"Rua das Palmeiras 99 Rio de Janeiro RJ\", \"Nome_Meio\": \"L\", \"Dependentes\": [{\"Sexo\": \"M\", \"Parentesco\": \"Marido\", \"Data_Nascimento\": \"1988-01-04T00:05:00\", \"Nome_Dependente\": \"Clecio\"}], \"Ultimo_Nome\": \"Motta\", \"Primeiro_Nome\": \"Ruth\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1989-01-15T00:07:00\", \"Numero_Departamento\": \"5\"}'),('45345345376','{\"Cpf\": \"45345345376\", \"Sexo\": \"F\", \"Salario\": 25000.0, \"Endereco\": \"Av. Lucas Obes 74 São Paulo SP\", \"Nome_Meio\": \"A\", \"Dependentes\": [], \"Ultimo_Nome\": \"Leite\", \"Primeiro_Nome\": \"Joice\", \"Cpf_Supervisor\": \"33344555587\", \"Data_Nascimento\": \"1972-01-31T00:07:00\", \"Numero_Departamento\": \"5\"}'),('55599922122','{\"Cpf\": \"55599922122\", \"Sexo\": \"F\", \"Salario\": 41000.0, \"Endereco\": \"Rua Oliva de Sousa 998 Piracicaba SP\", \"Nome_Meio\": \"L\", \"Dependentes\": [{\"Sexo\": \"M\", \"Parentesco\": \"Marido\", \"Data_Nascimento\": \"1976-01-13T00:03:00\", \"Nome_Dependente\": \"Clovis\"}], \"Ultimo_Nome\": \"Tavarez\", \"Primeiro_Nome\": \"Rosa\", \"Cpf_Supervisor\": \"33344555587\", \"Data_Nascimento\": \"1977-01-15T00:01:00\", \"Numero_Departamento\": \"5\"}'),('66688444476','{\"Cpf\": \"66688444476\", \"Sexo\": \"M\", \"Salario\": 38000.0, \"Endereco\": \"Rua Rebouças 65 Piracicaba SP\", \"Nome_Meio\": \"K\", \"Dependentes\": [], \"Ultimo_Nome\": \"Lima\", \"Primeiro_Nome\": \"Ronaldo\", \"Cpf_Supervisor\": \"33344555587\", \"Data_Nascimento\": \"1962-01-15T00:09:00\", \"Numero_Departamento\": \"5\"}'),('66699922122','{\"Cpf\": \"66699922122\", \"Sexo\": \"F\", \"Salario\": 12000.0, \"Endereco\": \"Rua Cartagena 32 Piracicaba SP\", \"Nome_Meio\": \"T\", \"Dependentes\": [{\"Sexo\": \"M\", \"Parentesco\": \"Marido\", \"Data_Nascimento\": \"1981-01-08T00:12:00\", \"Nome_Dependente\": \"Milton\"}], \"Ultimo_Nome\": \"Vinil\", \"Primeiro_Nome\": \"Juliana\", \"Cpf_Supervisor\": \"33344555587\", \"Data_Nascimento\": \"1982-01-15T00:12:00\", \"Numero_Departamento\": \"5\"}'),('77799922122','{\"Cpf\": \"77799922122\", \"Sexo\": \"F\", \"Salario\": 39000.0, \"Endereco\": \"Rua Aribancataiu 44 Piracicaba SP\", \"Nome_Meio\": \"P\", \"Dependentes\": [{\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"1993-01-12T00:12:00\", \"Nome_Dependente\": \"Havelar\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Marido\", \"Data_Nascimento\": \"1967-01-22T00:10:00\", \"Nome_Dependente\": \"Marcio\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"1992-01-17T00:06:00\", \"Nome_Dependente\": \"Tulio\"}], \"Ultimo_Nome\": \"Costa\", \"Primeiro_Nome\": \"Maria\", \"Cpf_Supervisor\": \"33344555587\", \"Data_Nascimento\": \"1969-01-15T00:07:00\", \"Numero_Departamento\": \"5\"}'),('88866555576','{\"Cpf\": \"88866555576\", \"Sexo\": \"M\", \"Salario\": 55000.0, \"Endereco\": \"Rua do Horto 35 Sáo Paulo SP\", \"Nome_Meio\": \"E\", \"Dependentes\": [], \"Ultimo_Nome\": \"Brito\", \"Primeiro_Nome\": \"Jorge\", \"Cpf_Supervisor\": \"\", \"Data_Nascimento\": \"1937-01-10T00:11:00\", \"Numero_Departamento\": \"1\"}'),('98722332168','{\"Cpf\": \"98722332168\", \"Sexo\": \"F\", \"Salario\": 18000.0, \"Endereco\": \"Rua Mauricio de Nassau 80 São Paulo SP\", \"Nome_Meio\": \"K\", \"Dependentes\": [{\"Sexo\": \"M\", \"Parentesco\": \"Marido\", \"Data_Nascimento\": \"1987-01-22T00:10:00\", \"Nome_Dependente\": \"Rodinei\"}], \"Ultimo_Nome\": \"Grill\", \"Primeiro_Nome\": \"Priscila\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1989-01-20T00:06:00\", \"Numero_Departamento\": \"4\"}'),('98733332168','{\"Cpf\": \"98733332168\", \"Sexo\": \"F\", \"Salario\": 41000.0, \"Endereco\": \"Av Amaro de Macedo 91 Santo André SP\", \"Nome_Meio\": \"P\", \"Dependentes\": [{\"Sexo\": \"F\", \"Parentesco\": \"Neta\", \"Data_Nascimento\": \"2016-01-21T00:10:00\", \"Nome_Dependente\": \"Cristina\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Marido\", \"Data_Nascimento\": \"1957-01-22T00:10:00\", \"Nome_Dependente\": \"Marcio\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"1993-01-12T00:05:00\", \"Nome_Dependente\": \"Rubens\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"1992-01-11T00:12:00\", \"Nome_Dependente\": \"Trauco\"}], \"Ultimo_Nome\": \"Souza\", \"Primeiro_Nome\": \"Lais\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1959-01-20T00:06:00\", \"Numero_Departamento\": \"4\"}'),('98743232168','{\"Cpf\": \"98743232168\", \"Sexo\": \"M\", \"Salario\": 19000.0, \"Endereco\": \"Rua Comendador Soares 45 São Paulo SP\", \"Nome_Meio\": \"T\", \"Dependentes\": [{\"Sexo\": \"F\", \"Parentesco\": \"Filha\", \"Data_Nascimento\": \"2016-01-01T00:12:00\", \"Nome_Dependente\": \"Hilda\"}, {\"Sexo\": \"F\", \"Parentesco\": \"Esposa\", \"Data_Nascimento\": \"1992-01-26T00:12:00\", \"Nome_Dependente\": \"Maria\"}], \"Ultimo_Nome\": \"Pereira\", \"Primeiro_Nome\": \"Jaime\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1991-01-20T00:06:00\", \"Numero_Departamento\": \"4\"}'),('98765432168','{\"Cpf\": \"98765432168\", \"Sexo\": \"F\", \"Salario\": 43000.0, \"Endereco\": \"Av Arthur de Lima 54 Santo André\", \"Nome_Meio\": \"S\", \"Dependentes\": [{\"Sexo\": \"M\", \"Parentesco\": \"Marido\", \"Data_Nascimento\": \"1942-01-18T00:02:00\", \"Nome_Dependente\": \"Antonio\"}], \"Ultimo_Nome\": \"Souza\", \"Primeiro_Nome\": \"Jeniffer\", \"Cpf_Supervisor\": \"88866555576\", \"Data_Nascimento\": \"1941-01-20T00:06:00\", \"Numero_Departamento\": \"4\"}'),('98798798733','{\"Cpf\": \"98798798733\", \"Sexo\": \"M\", \"Salario\": 25000.0, \"Endereco\": \"Rua Timbira 35 São Paulo SP\", \"Nome_Meio\": \"V\", \"Dependentes\": [], \"Ultimo_Nome\": \"Pereira\", \"Primeiro_Nome\": \"André\", \"Cpf_Supervisor\": \"98765432168\", \"Data_Nascimento\": \"1969-01-29T00:03:00\", \"Numero_Departamento\": \"4\"}'),('99965555667','{\"Cpf\": \"99965555667\", \"Sexo\": \"M\", \"Salario\": 22000.0, \"Endereco\": \"Rua Acuarana 91 Rio de Janeiro RJ\", \"Nome_Meio\": \"R\", \"Dependentes\": [{\"Sexo\": \"F\", \"Parentesco\": \"Esposa\", \"Data_Nascimento\": \"1977-01-26T00:12:00\", \"Nome_Dependente\": \"Fátima\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"2001-01-25T00:10:00\", \"Nome_Dependente\": \"Trauco\"}], \"Ultimo_Nome\": \"Machado\", \"Primeiro_Nome\": \"Tulio\", \"Cpf_Supervisor\": \"98765432168\", \"Data_Nascimento\": \"1971-01-19T00:01:00\", \"Numero_Departamento\": \"4\"}'),('99966666667','{\"Cpf\": \"99966666667\", \"Sexo\": \"M\", \"Salario\": 18000.0, \"Endereco\": \"Rua Itibiri 45 Rio de Janeiro RJ\", \"Nome_Meio\": \"G\", \"Dependentes\": [{\"Sexo\": \"F\", \"Parentesco\": \"Filha\", \"Data_Nascimento\": \"2002-01-25T00:10:00\", \"Nome_Dependente\": \"Marcela\"}, {\"Sexo\": \"F\", \"Parentesco\": \"Esposa\", \"Data_Nascimento\": \"1970-01-26T00:09:00\", \"Nome_Dependente\": \"Marcia\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"2006-01-18T00:08:00\", \"Nome_Dependente\": \"Marcos\"}], \"Ultimo_Nome\": \"Pimenta\", \"Primeiro_Nome\": \"Cosme\", \"Cpf_Supervisor\": \"98765432168\", \"Data_Nascimento\": \"1970-01-19T00:01:00\", \"Numero_Departamento\": \"4\"}'),('99968855667','{\"Cpf\": \"99968855667\", \"Sexo\": \"F\", \"Salario\": 22000.0, \"Endereco\": \"Rua Cosme e Damião 453 Rio de Janeiro RJ\", \"Nome_Meio\": \"O\", \"Dependentes\": [{\"Sexo\": \"M\", \"Parentesco\": \"Marido\", \"Data_Nascimento\": \"1978-01-22T00:10:00\", \"Nome_Dependente\": \"Claudio\"}, {\"Sexo\": \"F\", \"Parentesco\": \"Filha\", \"Data_Nascimento\": \"2005-01-11T00:10:00\", \"Nome_Dependente\": \"Janaina\"}, {\"Sexo\": \"F\", \"Parentesco\": \"Filha\", \"Data_Nascimento\": \"2007-01-12T00:06:00\", \"Nome_Dependente\": \"Tania\"}], \"Ultimo_Nome\": \"Andrada\", \"Primeiro_Nome\": \"Marcia\", \"Cpf_Supervisor\": \"98765432168\", \"Data_Nascimento\": \"1975-01-19T00:01:00\", \"Numero_Departamento\": \"4\"}'),('99988666667','{\"Cpf\": \"99988666667\", \"Sexo\": \"M\", \"Salario\": 22000.0, \"Endereco\": \"Rua Aracaju 99 Rio de Janeiro RJ\", \"Nome_Meio\": \"P\", \"Dependentes\": [{\"Sexo\": \"F\", \"Parentesco\": \"Esposa\", \"Data_Nascimento\": \"1973-01-26T00:12:00\", \"Nome_Dependente\": \"Katia\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"2002-01-25T00:10:00\", \"Nome_Dependente\": \"Roberto\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"2003-01-18T00:12:00\", \"Nome_Dependente\": \"Rogerio\"}, {\"Sexo\": \"M\", \"Parentesco\": \"Filho\", \"Data_Nascimento\": \"2005-01-18T00:11:00\", \"Nome_Dependente\": \"Ronaldo\"}], \"Ultimo_Nome\": \"VillaReal\", \"Primeiro_Nome\": \"Marcos\", \"Cpf_Supervisor\": \"98765432168\", \"Data_Nascimento\": \"1967-01-19T00:01:00\", \"Numero_Departamento\": \"4\"}'),('99988777767','{\"Cpf\": \"99988777767\", \"Sexo\": \"F\", \"Salario\": 25000.0, \"Endereco\": \"Rua Souza Lima 35 Curitiba PR\", \"Nome_Meio\": \"J\", \"Dependentes\": [], \"Ultimo_Nome\": \"Zelaya\", \"Primeiro_Nome\": \"Alice\", \"Cpf_Supervisor\": \"98765432168\", \"Data_Nascimento\": \"1968-01-19T00:01:00\", \"Numero_Departamento\": \"4\"}');
/*!40000 ALTER TABLE `tb_object_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_projeto`
--

DROP TABLE IF EXISTS `tb_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_projeto` (
  `NUMERO_PROJETO` int(11) NOT NULL,
  `NOME_PROJETO` varchar(50) NOT NULL,
  `LOCAL_PROJETO` varchar(50) NOT NULL,
  `NUMERO_DEPARTAMENTO` int(11) NOT NULL,
  PRIMARY KEY (`NUMERO_PROJETO`),
  KEY `tb_departamento_tb_projeto_fk` (`NUMERO_DEPARTAMENTO`),
  CONSTRAINT `tb_departamento_tb_projeto_fk` FOREIGN KEY (`NUMERO_DEPARTAMENTO`) REFERENCES `tb_departamento` (`NUMERO_DEPARTAMENTO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_projeto`
--

LOCK TABLES `tb_projeto` WRITE;
/*!40000 ALTER TABLE `tb_projeto` DISABLE KEYS */;
INSERT INTO `tb_projeto` VALUES (1,'Produto X','Santo André',4),(2,'Produto Y','Itu',5),(3,'Produto Z','São Paulo',5),(10,'Informatização','Mauá',4),(20,'Reorganização','São Paulo',1),(30,'Novos Benefícios','Mauá',4);
/*!40000 ALTER TABLE `tb_projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_trabalha_em`
--

DROP TABLE IF EXISTS `tb_trabalha_em`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tb_trabalha_em` (
  `CPF_FUNCIONARIO` varchar(11) NOT NULL,
  `NUMERO_PROJETO` int(11) NOT NULL,
  `HORAS` int(11) NOT NULL,
  PRIMARY KEY (`CPF_FUNCIONARIO`,`NUMERO_PROJETO`),
  KEY `tb_projeto_tb_trabalha_em_fk` (`NUMERO_PROJETO`),
  CONSTRAINT `tb_funcionario_tb_trabalha_em_fk` FOREIGN KEY (`CPF_FUNCIONARIO`) REFERENCES `tb_funcionario` (`CPF`),
  CONSTRAINT `tb_projeto_tb_trabalha_em_fk` FOREIGN KEY (`NUMERO_PROJETO`) REFERENCES `tb_projeto` (`NUMERO_PROJETO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_trabalha_em`
--

LOCK TABLES `tb_trabalha_em` WRITE;
/*!40000 ALTER TABLE `tb_trabalha_em` DISABLE KEYS */;
INSERT INTO `tb_trabalha_em` VALUES ('12345678966',1,33),('12345678966',2,8),('33344555587',2,10),('33344555587',3,10),('33344555587',10,10),('33344555587',20,10),('45345345376',1,20),('45345345376',2,20),('66688444476',3,40),('88866555576',20,0),('98765432168',20,20),('98765432168',30,5),('98798798733',10,35),('98798798733',30,5),('99988777767',10,10),('99988777767',30,30);
/*!40000 ALTER TABLE `tb_trabalha_em` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-19  3:47:30
