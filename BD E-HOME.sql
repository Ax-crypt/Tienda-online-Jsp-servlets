
### Creacion de bd E-HOME ###

CREATE DATABASE IF NOT EXISTS ehome character set utf8;

### poner en uso ###
USE ehome;

--
-- Estructura de tabla usuarios
--
CREATE TABLE `tb_usuarios` (
  `id` int(10) NOT NULL auto_increment,
  `documento` int(10) NOT NULL unique,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(200)  NOT NULL unique,
  `pasword` varchar(100)  NOT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  primary key(`id`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

----------------------------------------------------------
--
-- Estructura de tabla categorias
--
CREATE TABLE `tb_categorias`(
`id_categoria` varchar(60) not null primary key,
`categoria` varchar(100) not null,
`imagen` varchar(200) not null
)ENGINE=InnoDB DEFAULT CHARSET=utf8;

----------------------------------------------------------
--
-- Estructura de tabla productos
--
CREATE TABLE `tb_productos`(
`id_Producto` varchar(90) not null primary key ,
`nombre` varchar(100) not null,
`imagen` varchar(110) not null,
`id_categoria` varchar(60) not null,
`precio` float not null,
`marca` varchar(30) not null,
KEY `id_categoria` (`id_categoria`),
CONSTRAINT `tb_productos` FOREIGN KEY(`id_categoria`) REFERENCES `tb_categorias`(`id_categoria`)
)ENGINE=InnoDB DEFAULT CHARSET=utf8;
---
----------------------------------------------------------


              #insertando datos en tb usuarios						
INSERT INTO `tb_usuarios` (`id`, `documento`, `nombre`, `correo`, `pasword`,`direccion`) VALUES
(1, 777000, 'Alex Guevara', 'ax@mail.com', '0000', 'Lima, lince, av.Guatemala 1515'),
(2, 555000, 'Tony Moore', 'tony@mail.com', '54321', 'Lima, Surquillo, av.Guatemala 1515');

----------------------------------------------------------
              #insertando datos en tb categorias
INSERT INTO `tb_categorias`(`id_categoria`, `categoria`, `imagen`) VALUES('CT001', 'Cafeteras', 'categorias/Cafeteras.png');
INSERT INTO `tb_categorias`(`id_categoria`, `categoria`, `imagen`) VALUES('CT002', 'Cocina', 'categorias/Cocina.png');
INSERT INTO `tb_categorias`(`id_categoria`, `categoria`, `imagen`) VALUES('CT003', 'Lavadoras', 'categorias/Lavadoras.png');
INSERT INTO `tb_categorias`(`id_categoria`, `categoria`, `imagen`) VALUES('CT004', 'Microondas', 'categorias/Microondas.png');
INSERT INTO `tb_categorias`(`id_categoria`, `categoria`, `imagen`) VALUES('CT005', 'Ollas Arroceras', 'categorias/Ollas_arroceras.png');
INSERT INTO `tb_categorias`(`id_categoria`, `categoria`, `imagen`) VALUES('CT006', 'Refigeradoras', 'categorias/Refrigeradoras.png');
INSERT INTO `tb_categorias`(`id_categoria`, `categoria`, `imagen`) VALUES('CT007', 'Televisores', 'categorias/Televisores.png');
INSERT INTO `tb_categorias`(`id_categoria`, `categoria`, `imagen`) VALUES('CT008', 'Sistema de Audio', 'categorias/Lg_Xboom.jpeg');
INSERT INTO `tb_categorias`(`id_categoria`, `categoria`, `imagen`) VALUES('CT009', 'Planchas', 'categorias/Plancha_Oster.jpeg');

----------------------------------------------------------
             #insertando datos en tb productos
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('001', 'Cafetera Black and Decker', 'productos/CafeteraBlackDecker.png', 'CT001', 118.00, 'Black and Decker');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('002', 'Cafetera DeLonghi', 'productos/CafeteraDeLonghi.png', 'CT001', 125.00, 'DeLonghi');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('003', 'Cafetera Oster', 'productos/CafeteraOster1.png', 'CT001', 110.00, 'Oster');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('004', 'Cafetera Oster', 'productos/CafeteraOster2.png', 'CT001', 129.00, 'Oster');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('005', 'Cafetera Oster', 'productos/CafeteraOster3.png', 'CT001', 142.00, 'Oster');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('006', 'Cafetera Wurden', 'productos/CafeteraWurden.png', 'CT001', 110.00, 'Wurden');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('007', 'Cocina Bosch', 'productos/CocinaBosch.png', 'CT002', 450.00, 'Bosch');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('008', 'Cocina Electrolux', 'productos/CocinaElectrolux.png', 'CT002', 499.00, 'Electrolux');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('009', 'Cocina Indurama', 'productos/CocinaIndurama.png', 'CT002', 398.00, 'Indurama');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('010', 'Cocina Mabe', 'productos/CocinaMabe.png', 'CT002', 730.00, 'Mabe');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('011', 'Cocina Samsung', 'productos/CocinaSamsung.png', 'CT002', 884.00, 'Samsung');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('012', 'Cocina Sole', 'productos/CocinaSole.png', 'CT002', 420.00, 'Sole');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('013', 'Lavadora Electrolux', 'productos/LavadoraElectrolux.png', 'CT003', 880.00, 'Electrolux');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('014', 'Lavadora Hisense', 'productos/LavadoraHisense.png', 'CT003', 750.00, 'Hisense');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('015', 'Lavadora Lg', 'productos/LavadoraLg.png', 'CT003', 1600, 'Lg');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('016', 'Lavadora Mabe', 'productos/LavadoraMabe.png', 'CT003', 780.00, 'Mabe');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('017', 'Lavadora Samsung', 'productos/LavadoraSamsung.png', 'CT003', 1450.00, 'Samsung');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('018', 'Lavadora Whirlpool', 'productos/LavadoraWhirlpool.png', 'CT003', 980.00, 'Whirlpool');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('019', 'Microondas Miray', 'productos/MicroondasMiray.png', 'CT004', 236.00, 'Miray');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('020', 'Microondas Oster', 'productos/MicroondasOster.png', 'CT004', 280.00, 'Oster');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('021', 'Microondas Panasonic', 'productos/MicroondasPanasonic.png', 'CT004', 220.00, 'Panasonic');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('022', 'Microondas Recco', 'productos/MicroondasRecco.png', 'CT004', 233.00, 'Recco');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('023', 'Microondas Samsung', 'productos/MicroondasSamsung.png', 'CT004', 338.00, 'Samsung');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('024', 'Microondas Thomas', 'productos/MicroondasThomas.png', 'CT004', 280.00, 'Thomas');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('025', 'Olla Imaco', 'productos/OllaImaco.png', 'CT005', 95.00, 'Imaco');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('026', 'Olla Oster', 'productos/OllaOster.png', 'CT005', 90.00, 'Oster');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('027', 'Olla Recco', 'productos/OllaRecco.png', 'CT005', 88.00, 'Recco');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('028', 'Olla Taurus', 'productos/OllaTaurus.png', 'CT005', 110.00, 'Taurus');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('029', 'Olla Thomas', 'productos/OllaThomas.png', 'CT005', 98.00, 'Thomas');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('030', 'Olla Wurden', 'productos/OllaWurden.png', 'CT005', 86.00, 'Wurden');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('031', 'Refrigeradora Electrolux', 'productos/RefriElectrolux.png', 'CT006', 775.00, 'Electrolux');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('032', 'Refrigeradora Hisense', 'productos/RefriHisense.png', 'CT006', 1248.00, 'Hisense');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('033', 'Refrigeradora Indurama', 'productos/RefriIndurama.png', 'CT006', 1700.00, 'Indurama');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('034', 'Refrigeradora LG', 'productos/RefriLG.png', 'CT006', 1499.00, 'LG');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('035', 'Refrigeradora Mabe', 'productos/RefriMabe.png', 'CT006', 1100.00, 'Mabe');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('036', 'Refrigeradora Samsung', 'productos/RefriSamsung.png', 'CT006', 1600.00, 'Samsung');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('037', 'Tv BGH', 'productos/TvBGH.png', 'CT007', 998.00, 'BGH');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('038', 'Tv Hisense', 'productos/TvHisense.png', 'CT007', 1530.00, 'Hisense');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('039', 'Tv LG', 'productos/TvLG.png', 'CT007', 1168.00, 'LG');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('040', 'Tv Philips', 'productos/TvPhilips.png', 'CT007', 1600.00, 'Philips');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('041', 'Tv Samsung', 'productos/TvSamsung.png', 'CT007', 886.00, 'Samsung');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('042', 'Tv TLC', 'productos/TvTLC.png', 'CT007', 789.00, 'TLC');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('043', 'Micronics Olimpo', 'productos/Micronics_Olimpo.jpeg', 'CT008', 175.00, 'Micronics');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('044', 'Micronics Floripa', 'productos/Micronics_Floripa.jpeg', 'CT008', 257.00, 'Micronics');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('045', 'Sony MHC-V02', 'productos/Sony_MHC.jpeg', 'CT008', 595.00, 'Sony');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('046', 'Samsung MX-T40', 'productos/Samsung_MX_T40.jpeg', 'CT008', 525.00, 'Samsung');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('047', 'Lg Xboom', 'productos/Lg_Xboom.jpeg', 'CT008', 555.00, 'LG');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('048', 'Panasonic AKX730 2000w', 'productos/Panasonic_AKX730.jpeg', 'CT008', 1098.00, 'Panasonic');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('049', 'Plancha a vapor Oster', 'productos/Plancha_Oster.jpeg', 'CT009', 79.00, 'Oster');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('050', 'Plancha Básica Oster', 'productos/Plancha_basica.jpeg', 'CT009', 59.00, 'Oster');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('051', 'Plancha Thomas TH-7002', 'productos/Plancha_Thomas_vapor.jpg', 'CT009', 79.00, 'Thomas');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('052', 'Plancha Thomas', 'productos/Plancha_Thomas.jpg', 'CT009', 225.00, 'Thomas');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('053', 'Plancha a Vapor Record', 'productos/Plancha_Record.jpeg', 'CT009', 108.00, 'Record');
INSERT INTO `tb_productos`(`id_Producto`, `nombre`, `imagen`, `id_categoria`, `precio`, `marca`) VALUES('054', 'Plancha Black and Decker', 'productos/Plancha_BlackDecker.jpg', 'CT009', 145.00, 'Black and Decker');

----------------------------------------------------------

-----
 ### procedimientos almacenados para listar los productos ###
-----

CREATE  PROCEDURE sp_listarcategorias()
SELECT * FROM ehome.`tb_categorias`;

CREATE PROCEDURE sp_buscarProducto(IN `id` VARCHAR(100))
SELECT * FROM ehome.`tb_productos` WHERE `id_Producto`=`id`;

CREATE PROCEDURE sp_listarPorcategoria(IN `id_categoria` VARCHAR(100))
SELECT p.`id_Producto`, p.`nombre`, p.`imagen`, p.`id_categoria`, p.`precio`, p.`marca` 
FROM `tb_productos` p INNER JOIN `tb_categorias` c ON p.`id_categoria`=c.`id_categoria`
WHERE c.`id_categoria`=`id_categoria`;

