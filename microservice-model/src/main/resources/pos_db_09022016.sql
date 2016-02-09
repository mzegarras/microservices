CREATE DATABASE  IF NOT EXISTS `pos_db` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `pos_db`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: pos_db
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `cajaregistradora`
--

DROP TABLE IF EXISTS `cajaregistradora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cajaregistradora` (
  `cajaRegistradoraId` int(11) NOT NULL,
  `codigoCajaRegistradora` varchar(10) DEFAULT NULL,
  `tiendaId` int(11) NOT NULL,
  `numeroSerie` varchar(40) DEFAULT NULL,
  `codigoImpresora` varchar(40) DEFAULT NULL,
  `empleadoIdCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `empleadoIdModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`cajaRegistradoraId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cajaregistradora`
--

LOCK TABLES `cajaregistradora` WRITE;
/*!40000 ALTER TABLE `cajaregistradora` DISABLE KEYS */;
/*!40000 ALTER TABLE `cajaregistradora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriaproducto`
--

DROP TABLE IF EXISTS `categoriaproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoriaproducto` (
  `categoriaProductoId` varchar(40) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `codigoCategoriaProductoId` varchar(20) DEFAULT NULL,
  `marcaProductoId` int(11) DEFAULT NULL,
  `colorProductoId` int(11) DEFAULT NULL,
  `tallaProductoId` int(11) DEFAULT NULL,
  `productoId` int(11) DEFAULT NULL,
  `codigoEAN` varchar(200) DEFAULT NULL,
  `loteProductoId` int(11) DEFAULT NULL,
  `codigoExterno` varchar(200) DEFAULT NULL,
  `ancho` decimal(18,5) DEFAULT NULL,
  `alto` decimal(18,5) DEFAULT NULL,
  `empleadoIdCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `empleadoIdModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`categoriaProductoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriaproducto`
--

LOCK TABLES `categoriaproducto` WRITE;
/*!40000 ALTER TABLE `categoriaproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `categoriaproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `clienteId` varchar(40) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidoMaterno` varchar(50) DEFAULT NULL,
  `apellidoPaterno` varchar(50) DEFAULT NULL,
  `genero` varchar(2) DEFAULT NULL,
  `tipoDocumento` varchar(3) DEFAULT NULL,
  `numeroDocumento` varchar(15) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `distrito` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `paisId` int(11) DEFAULT NULL,
  `tipoClienteId` int(11) DEFAULT NULL,
  `empleadoIdCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `empleadoIdModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` varchar(21) DEFAULT NULL,
  `estadoCliente` tinyint(2) DEFAULT NULL,
  `tiendaId` int(11) DEFAULT NULL,
  PRIMARY KEY (`clienteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `colorproducto`
--

DROP TABLE IF EXISTS `colorproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `colorproducto` (
  `colorProductoId` int(11) NOT NULL,
  `codigoColorProducto` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`colorProductoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `colorproducto`
--

LOCK TABLES `colorproducto` WRITE;
/*!40000 ALTER TABLE `colorproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `colorproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallerecibo`
--

DROP TABLE IF EXISTS `detallerecibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detallerecibo` (
  `detalleReciboId` int(11) NOT NULL,
  `reciboId` int(11) DEFAULT NULL,
  `numeroOrden` int(11) DEFAULT NULL,
  `categoriaProductoId` int(11) DEFAULT NULL,
  `nombreProducto` varchar(50) NOT NULL,
  `precioProductoUnitario` decimal(18,5) DEFAULT NULL,
  `impuestoProductoUnitario` decimal(18,5) DEFAULT NULL,
  `impuestoProductoPorcentaje` int(11) DEFAULT NULL,
  `descuentoProductoUnitario` decimal(18,5) DEFAULT NULL,
  `descuentoProductoUnitarioPorcentaje` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `precioProductoTotal` decimal(18,5) DEFAULT NULL,
  `impuestoProductoTotal` decimal(18,5) DEFAULT NULL,
  `impuestoProductoTotalPorcentaje` int(11) DEFAULT NULL,
  `descuentoProductoTotal` decimal(18,5) DEFAULT NULL,
  `descuentoProductoTotalPorcentaje` int(11) DEFAULT NULL,
  PRIMARY KEY (`detalleReciboId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallerecibo`
--

LOCK TABLES `detallerecibo` WRITE;
/*!40000 ALTER TABLE `detallerecibo` DISABLE KEYS */;
/*!40000 ALTER TABLE `detallerecibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalletransferencias`
--

DROP TABLE IF EXISTS `detalletransferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalletransferencias` (
  `detalleTransfereciasId` int(11) NOT NULL,
  `transferenciasId` varchar(40) NOT NULL,
  `numeroOrden` int(11) DEFAULT NULL,
  `categoriaProductoId` varchar(20) DEFAULT NULL,
  `nombreProducto` varchar(50) DEFAULT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `cantidadConfirmada` int(11) DEFAULT NULL,
  `cantidadRechazada` int(11) DEFAULT NULL,
  `precioProductoUnitario` decimal(18,5) DEFAULT NULL,
  `impuestoProductoUnitario` decimal(18,5) DEFAULT NULL,
  `impuestoProductoPorcentaje` int(11) DEFAULT NULL,
  `descuentoProductoUnitario` decimal(18,5) DEFAULT NULL,
  `descuentoProductoUnitarioPorcentaje` int(11) DEFAULT NULL,
  `precioProductoTotal` decimal(18,5) DEFAULT NULL,
  `impuestoProductoTotal` decimal(18,5) DEFAULT NULL,
  `impuestoProductoTotalPorcentaje` int(11) DEFAULT NULL,
  `descuentoProductoTotal` decimal(18,5) DEFAULT NULL,
  `descuentoProductoTotalPorcentaje` int(11) DEFAULT NULL,
  PRIMARY KEY (`detalleTransfereciasId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalletransferencias`
--

LOCK TABLES `detalletransferencias` WRITE;
/*!40000 ALTER TABLE `detalletransferencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalletransferencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleado`
--

DROP TABLE IF EXISTS `empleado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `empleado` (
  `empleadoId` varchar(40) NOT NULL,
  `codigoEmpleado` varchar(40) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidoMaterno` varchar(50) DEFAULT NULL,
  `apellidoPaterno` varchar(50) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `distrito` varchar(50) DEFAULT NULL,
  `paisId` int(11) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `tipoDocumento` varchar(20) DEFAULT NULL,
  `numeroDocumento` varchar(15) DEFAULT NULL,
  `tiendaId` int(11) NOT NULL,
  `tiendaAsignadoId` int(11) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  `estadoEmpleado` tinyint(2) DEFAULT NULL,
  `empleadoIdCreacion` int(11) NOT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `empleadoIdModificacion` int(11) NOT NULL,
  `fechaModificacion` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`empleadoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleado`
--

LOCK TABLES `empleado` WRITE;
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facturador`
--

DROP TABLE IF EXISTS `facturador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `facturador` (
  `facturadorId` int(11) NOT NULL,
  `codigoFacturador` varchar(10) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`facturadorId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facturador`
--

LOCK TABLES `facturador` WRITE;
/*!40000 ALTER TABLE `facturador` DISABLE KEYS */;
/*!40000 ALTER TABLE `facturador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `formapago`
--

DROP TABLE IF EXISTS `formapago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `formapago` (
  `formaPagoId` int(11) NOT NULL,
  `codigoFormaPago` varchar(10) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `estadoFormaPago` tinyint(2) DEFAULT NULL,
  `empleadoIdCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `empleadoIdModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`formaPagoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formapago`
--

LOCK TABLES `formapago` WRITE;
/*!40000 ALTER TABLE `formapago` DISABLE KEYS */;
/*!40000 ALTER TABLE `formapago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `loteproducto`
--

DROP TABLE IF EXISTS `loteproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `loteproducto` (
  `loteProductoId` int(11) NOT NULL,
  `codigoLoteProducto` varchar(20) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `fechaInicio` varchar(21) DEFAULT NULL,
  `fechaFin` varchar(21) DEFAULT NULL,
  `empleadoIdCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `empleadoIdModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`loteProductoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loteproducto`
--

LOCK TABLES `loteproducto` WRITE;
/*!40000 ALTER TABLE `loteproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `loteproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marcaproducto`
--

DROP TABLE IF EXISTS `marcaproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marcaproducto` (
  `marcaProductoId` int(11) NOT NULL,
  `codigoMarcaProducto` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`marcaProductoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marcaproducto`
--

LOCK TABLES `marcaproducto` WRITE;
/*!40000 ALTER TABLE `marcaproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `marcaproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `moneda`
--

DROP TABLE IF EXISTS `moneda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `moneda` (
  `monedaId` int(11) NOT NULL,
  `codigoMoneda` varchar(10) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `paisId` int(11) DEFAULT NULL,
  PRIMARY KEY (`monedaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `moneda`
--

LOCK TABLES `moneda` WRITE;
/*!40000 ALTER TABLE `moneda` DISABLE KEYS */;
/*!40000 ALTER TABLE `moneda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pais` (
  `paisId` int(11) NOT NULL,
  `codigoPais` varchar(10) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`paisId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `precioproducto`
--

DROP TABLE IF EXISTS `precioproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `precioproducto` (
  `precioProductoId` varchar(40) NOT NULL,
  `productoId` int(11) DEFAULT NULL,
  `precioBase` decimal(18,5) DEFAULT NULL,
  `impuesto` decimal(18,5) DEFAULT NULL,
  `margenPorcentajeVenta` int(11) DEFAULT NULL,
  PRIMARY KEY (`precioProductoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `precioproducto`
--

LOCK TABLES `precioproducto` WRITE;
/*!40000 ALTER TABLE `precioproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `precioproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid` varchar(50) DEFAULT NULL,
  `name` varchar(500) DEFAULT NULL,
  `counterLastUpdate` varchar(100) DEFAULT NULL,
  `delete` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'vasvsav','product1','1',0),(2,'dsgds','product2','2',0),(3,'cdsfd','product3','3',0);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `productoId` varchar(40) NOT NULL,
  `estadoProducto` tinyint(2) DEFAULT NULL,
  `codigoProducto` varchar(20) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `empleadoIdCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `empleadoIdModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`productoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibo`
--

DROP TABLE IF EXISTS `recibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recibo` (
  `reciboId` varchar(40) NOT NULL,
  `tiendaId` int(11) DEFAULT NULL,
  `clienteId` int(11) DEFAULT NULL,
  `empleadoId` int(11) DEFAULT NULL,
  `empleadoVendedorId` int(11) DEFAULT NULL,
  `tipoReciboId` int(11) DEFAULT NULL,
  `cajaRegistradoraId` int(11) DEFAULT NULL,
  `facturadorId` int(11) DEFAULT NULL,
  `numeroDocumento` varchar(15) DEFAULT NULL,
  `estadoRecibo` tinyint(2) DEFAULT NULL,
  `subTotal` decimal(18,5) DEFAULT NULL,
  `descuentoTotal` decimal(18,5) DEFAULT NULL,
  `descuentoTotalPorcentaje` int(11) DEFAULT NULL,
  `impuesto` decimal(18,5) DEFAULT NULL,
  `impuestoPorcentaje` int(11) DEFAULT NULL,
  `total` decimal(18,5) DEFAULT NULL,
  `subTotalOtraMoneda` decimal(18,5) DEFAULT NULL,
  `descuentoTotalOtraMoneda` decimal(18,5) DEFAULT NULL,
  `descuentoTotalOtraMonedaPorcentaje` varchar(10) DEFAULT NULL,
  `impuestoOtraMoneda` decimal(18,5) DEFAULT NULL,
  `impuestoOtraMonedaPorcentaje` int(11) DEFAULT NULL,
  `totalOtraMoneda` decimal(18,5) DEFAULT NULL,
  `observaciones` varchar(500) NOT NULL,
  `referenciaReciboId` int(11) DEFAULT NULL,
  `empleadoIdCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `empleadoIdModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`reciboId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibo`
--

LOCK TABLES `recibo` WRITE;
/*!40000 ALTER TABLE `recibo` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stockproducto`
--

DROP TABLE IF EXISTS `stockproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stockproducto` (
  `stockProductoId` int(11) NOT NULL,
  `tiendaId` int(11) DEFAULT NULL,
  `stockEnMano` int(11) DEFAULT NULL,
  `stockOrdenado` int(11) DEFAULT NULL,
  `enTransito` int(11) DEFAULT NULL,
  `fechaSolicitud` varchar(21) DEFAULT NULL,
  `fechaRecepcion` varchar(21) DEFAULT NULL,
  `empleadoIdCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `empleadoIdModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`stockProductoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stockproducto`
--

LOCK TABLES `stockproducto` WRITE;
/*!40000 ALTER TABLE `stockproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `stockproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tallaproducto`
--

DROP TABLE IF EXISTS `tallaproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tallaproducto` (
  `tallaProductoId` int(11) NOT NULL,
  `codigotallaProducto` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tallaProductoId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tallaproducto`
--

LOCK TABLES `tallaproducto` WRITE;
/*!40000 ALTER TABLE `tallaproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `tallaproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda`
--

DROP TABLE IF EXISTS `tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tienda` (
  `tiendaId` int(11) NOT NULL,
  `codigoPais` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `nombreComercial` varchar(50) DEFAULT NULL,
  `numeroDocumento` varchar(11) DEFAULT NULL,
  `direccion1` varchar(200) DEFAULT NULL,
  `direccion2` varchar(200) DEFAULT NULL,
  `direccion3` varchar(200) DEFAULT NULL,
  `distrito` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) DEFAULT NULL,
  `paisId` int(11) NOT NULL,
  `tipoTiendaId` int(11) NOT NULL,
  `telefono1` varchar(15) DEFAULT NULL,
  `telefono2` varchar(15) DEFAULT NULL,
  `telefono3` varchar(15) DEFAULT NULL,
  `correoElectronico` varchar(100) DEFAULT NULL,
  `facturadorId` int(11) NOT NULL,
  `estadoTienda` tinyint(2) DEFAULT NULL,
  `empleadoId` int(11) DEFAULT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `fechaUltimaActualizacion` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`tiendaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda`
--

LOCK TABLES `tienda` WRITE;
/*!40000 ALTER TABLE `tienda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocliente`
--

DROP TABLE IF EXISTS `tipocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipocliente` (
  `tipoClienteId` int(11) NOT NULL,
  `codigoCliente` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tipoClienteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocliente`
--

LOCK TABLES `tipocliente` WRITE;
/*!40000 ALTER TABLE `tipocliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiporecibo`
--

DROP TABLE IF EXISTS `tiporecibo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tiporecibo` (
  `tipoReciboId` int(11) NOT NULL,
  `codigoTipoRecibo` varchar(10) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tipoReciboId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiporecibo`
--

LOCK TABLES `tiporecibo` WRITE;
/*!40000 ALTER TABLE `tiporecibo` DISABLE KEYS */;
/*!40000 ALTER TABLE `tiporecibo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipotienda`
--

DROP TABLE IF EXISTS `tipotienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipotienda` (
  `tipoTiendaid` int(11) NOT NULL,
  `codigoTienda` varchar(10) DEFAULT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`tipoTiendaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipotienda`
--

LOCK TABLES `tipotienda` WRITE;
/*!40000 ALTER TABLE `tipotienda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipotienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transferencias`
--

DROP TABLE IF EXISTS `transferencias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transferencias` (
  `transferenciasId` int(11) NOT NULL,
  `clienteId` varchar(40) NOT NULL,
  `codigoTranferencia` varchar(20) DEFAULT NULL,
  `estadoTransferencia` tinyint(2) DEFAULT NULL,
  `tiendaOrigenId` varchar(40) NOT NULL,
  `tiendaDestinoId` varchar(40) NOT NULL,
  `empleadoIdCreacion` int(11) DEFAULT NULL,
  `fechaCreacion` varchar(21) DEFAULT NULL,
  `empleadoIdModificacion` int(11) DEFAULT NULL,
  `fechaModificacion` varchar(21) DEFAULT NULL,
  PRIMARY KEY (`transferenciasId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transferencias`
--

LOCK TABLES `transferencias` WRITE;
/*!40000 ALTER TABLE `transferencias` DISABLE KEYS */;
/*!40000 ALTER TABLE `transferencias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'pos_db'
--
/*!50003 DROP PROCEDURE IF EXISTS `usp_getProduct` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `usp_getProduct`()
begin
	select * from product;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-09  0:38:45
