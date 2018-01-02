-- phpMyAdmin SQL Dump
-- version 4.4.13.1deb1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 07 Janvier 2018 à 17:55
-- Version du serveur :  5.6.27-0ubuntu1-log
-- Version de PHP :  5.6.11-1ubuntu3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `grandprix`
--

-- --------------------------------------------------------

--
-- Structure de la table `circuit`
--

CREATE TABLE IF NOT EXISTS `circuit` (
  `CIRNUM` smallint(6) NOT NULL,
  `PAYNUM` int(11) NOT NULL,
  `CIRNOM` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_cs DEFAULT NULL,
  `CIRLONGUEUR` int(11) DEFAULT NULL,
  `CIRNBSPECTATEURS` bigint(20) DEFAULT NULL,
  `CIRADRESSEIMAGE` varchar(20) NOT NULL,
  `CIRTEXT` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `circuit`
--

INSERT INTO `circuit` (`CIRNUM`, `PAYNUM`, `CIRNOM`, `CIRLONGUEUR`, `CIRNBSPECTATEURS`, `CIRADRESSEIMAGE`, `CIRTEXT`) VALUES
(1, 13, 'Shanghai', 5451, 200000, 'chine.gif', 'Le circuit international de Shanghai (en caractères simples : 上海国际赛车场 ; en caractères traditionnels : 上海國際賽車場 ; en pinyin : Shànghǎi Guójì Sàichēchǎng) est un nouveau circuit de course automobile près de Shanghai en Chine où a lieu le Grand Prix de Chine de Formule 1.\r\n\r\nIl a été utilisé pour l''inauguration du Grand Prix de Chine de Formule 1 le 26 septembre 2004.\r\n\r\nC''est le circuit de Formule 1 dont la construction a coûté le plus cher, 240 millions de dollars US.\r\n\r\nIl a été conçu, au même titre que les nouveaux circuits de Bahreïn (Circuit international de Bahreïn) et de Malaisie (Circuit international de Sepang), par le designer allemand Hermann Tilke. Contrairement à la croyance populaire, la ressemblance de la forme du tracé avec le caractère chinois shàng (上), qui signifie "plus haut" ou "supérieur", n''était pas intentionnelle, mais une pure coïncidence. Il se caractérise, comme tous les circuits d''Hermann Tilke, par une succession de courtes lignes droites et de virages serrés, afin de favoriser les dépassements. Mais les grandes courbes rapides qui mettent en avant les qualités de pilotage des concurrents sont absentes.\r\n\r\nUn tour de circuit est long de 5,451 kilomètres et le record du tour est détenu par Michael Schumacher sur sa Ferrari en 2004 avec un temps de 1''32.238.\r\n\r\nLe circuit est également utilisé également pour des courses de Championnat du monde de MotoGP, de championnats australiens de V8 Supercars et de A1 Grand Prix.'),
(2, 6, 'Fuji Speedway', 4563, 140000, 'circuit-japon.png', 'Le Fuji Speedway est un circuit automobile situé au pied du Mont Fuji, dans le bourg d''Oyama à une centaine de kilomètres de Tokyo, au Japon. En 2007, Le Grand Prix du Japon de Formule 1 y fait son retour sur un nouveau tracé après de nombreuses années passées à Suzuka. Deux Grands Prix ont déjà été courus sur ce circuit, en 1976 et 1977.\r\n\r\nLe circuit existe depuis 1965 et est devenu propriété de la firme japonaise Toyota en 2000.\r\n\r\nLe tracé, de 4,563 km de développement a été redessiné par Hermann Tilke et intègre de grandes zones de dégagement goudronnées en lieu et place des anciens bacs à gravier. Tilke a respecté l''âme de l''ancien tracé, en particulier la longue ligne droite des stands de 1,5 km, la ligne droite la plus longue de la F1.'),
(3, 14, 'Singapour', 5067, 200000, 'singapour.png', 'Le circuit urbain de Singapour, à Singapour, a accueilli une épreuve du championnat du monde de Formule 1 pour la première fois le 28 septembre 2008 sous le nom de Grand Prix de Singapour. La grande particularité de cette épreuve est qu''elle s''est couru de nuit sous un éclairage artificiel, le départ étant donné à 20 heures locales, ce qui était une première pour la F1.\r\n\r\nLe circuit, installé provisoirement le long de la marina à l''occasion du Grand Prix et inspiré du projet de l''architecte allemand Hermann Tilke, est long de 5,067 kilomètres et comprend 23 virages.\r\n\r\nS''y est tenu le troisième Grand Prix sur circuit urbain de la saison, avec le Grand Prix de Monaco, qui est au calendrier depuis 1929, et le Grand Prix d''Europe qui pour la première fois a été organisé en 2008 sur le circuit urbain de Valence.\r\n\r\nUne F1 peut y atteindre 289 km/h sur Raffles Boulevard\r\n\r\nLe circuit peut accueillir environ 80 000 spectateurs.'),
(4, 9, 'Imola', 5793, 5793, 'imola.png', 'Rendez-vous très prisé des Tifosi qui viennent en masse pour supporter Ferrari, Imola est un circuit complet qui alterne lignes droites, enchaînements rapides et chicanes. Autrefois très rapide, le circuit a été modifié depuis les tragiques accidents de 1994. Rendez-vous très prisé des Tifosi qui viennent en masse pour supporter Ferrari, Imola est un circuit complet qui alterne lignes droites, enchaînements rapides et chicanes. Autrefois très rapide, le circuit a été modifié depuis les tragiques accidents de 1994. '),
(5, 3, 'Hockenheim', 5148, 20000, 'Hokenheimring.png', 'Circuit ultra-rapide, le tracé est aujourd’hui réduit pour perdre tout se qui faisait sa particularité et sa renommée. Une très longue ligne droite cassée par un virage permet cependant de beaux dépassements. Circuit ultra-rapide, le tracé est aujourd’hui réduit pour perdre tout se qui faisait sa particularité et sa renommée. Une très longue ligne droite cassée par un virage permet cependant de beaux dépassements. '),
(6, 20, 'Sakhir', 6299, 25000, 'Bahrain.png', 'Le circuit international de Sakhir est le circuit inaugural du premier Grand Prix de Bahreïn de Formule 1 en 2004 (voir Grand Prix de Bahreïn 2004).\r\n\r\nIl a été conçu, comme les nouveaux Circuit international de Shanghai et Circuit international de Sepang, par l''architecte allemand Hermann Tilke. Dans sa première configuration, Sakhir se caractérise par une succession de courtes lignes droites et de virages lents. Les grandes courbes rapides, qui rendent la course automobile spectaculaire en mettant en avant les qualités de pilotage des concurrents, sont absentes.\r\n\r\nLa construction du circuit de Sakhir était un objectif national pour l''émirat de Bahreïn, initié par le Prince Shaikh Salman bin Hamad Al Khalifa, fervent supporter de sports mécaniques et président honorifique de la Bahrain Motor Federation. Les organisateurs de la course, inquiets que le circuit ne soit terminé à temps, ont demandé que l''ouverture soit reportée d''une année, à la saison 2005. Cette demande fut refusée par Bernie Ecclestone : le circuit n''était pas entièrement achevé mais suffisamment pour que le Grand Prix 2004 puisse se tenir.\r\n\r\nSitué en plein désert, le circuit est sujet au dépot de sable et les organisateurs sont contraints de pulvériser un produit adhésif autour de la voie pour garder le sable hors de la piste.'),
(7, 10, 'DepInfo', 2456, 123, 'iut.jpg', 'L’IUT du Limousin est l’un des plus importants IUT de France avec ses 12 départements d’enseignement, 11 spécialités, 18 Licences Professionnelles.\r\nIl est légitime qu''il soit doté de son circuit de formule 1. ');

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `GPNUM` smallint(6) NOT NULL,
  `PILNUM` smallint(6) NOT NULL,
  `TEMPSCOURSE` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `course`
--

INSERT INTO `course` (`GPNUM`, `PILNUM`, `TEMPSCOURSE`) VALUES
(1, 8, '01:32:30'),
(1, 9, '01:32:30'),
(1, 10, '01:32:30'),
(1, 11, '01:32:30'),
(1, 12, '01:32:30'),
(1, 13, '01:32:30'),
(1, 14, '01:32:30'),
(1, 15, '01:32:30'),
(1, 23, '01:31:20'),
(2, 7, '01:32:30'),
(2, 8, '01:32:15'),
(2, 9, '01:32:30'),
(2, 10, '01:32:15'),
(2, 15, '01:32:30'),
(2, 16, '01:32:15'),
(2, 17, '01:32:30'),
(2, 18, '01:32:15'),
(3, 6, '01:32:30'),
(3, 7, '01:32:15'),
(3, 8, '01:32:30'),
(3, 9, '01:32:15'),
(3, 14, '01:32:30'),
(3, 15, '01:32:15'),
(3, 16, '01:32:30'),
(3, 17, '01:32:15'),
(4, 2, '01:32:12'),
(4, 3, '01:32:25'),
(4, 4, '01:32:30'),
(4, 5, '01:32:15'),
(4, 6, '01:32:15'),
(4, 12, '01:32:53'),
(4, 14, '01:33:22'),
(4, 19, '01:31:57'),
(4, 32, '01:32:13'),
(4, 33, '01:33:01'),
(4, 34, '01:33:27'),
(5, 1, '01:32:12'),
(5, 2, '01:32:25'),
(5, 3, '01:32:30'),
(5, 4, '01:32:15'),
(5, 5, '01:31:05'),
(5, 11, '01:32:53'),
(5, 13, '01:33:22'),
(5, 31, '01:32:13'),
(5, 32, '01:33:01'),
(5, 33, '01:33:27');

-- --------------------------------------------------------

--
-- Structure de la table `ecurie`
--

CREATE TABLE IF NOT EXISTS `ecurie` (
  `ECUNUM` smallint(6) NOT NULL,
  `FPNUM` smallint(6) NOT NULL,
  `ECUNOM` varchar(30) DEFAULT NULL,
  `ECUNOMDIR` varchar(30) DEFAULT NULL,
  `ECUADRSIEGE` varchar(100) DEFAULT NULL,
  `ECUPOINTS` int(11) DEFAULT NULL,
  `PAYNUM` int(11) DEFAULT NULL,
  `ECUADRESSEIMAGE` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ecurie`
--

INSERT INTO `ecurie` (`ECUNUM`, `FPNUM`, `ECUNOM`, `ECUNOMDIR`, `ECUADRSIEGE`, `ECUPOINTS`, `PAYNUM`, `ECUADRESSEIMAGE`) VALUES
(1, 1, 'Ferrari', 'Stefano Domenicali', 'Ferrari SpA, Via A. Ascari, 41053 Maranello (MO)', 30, 9, 'ferrari.gif'),
(2, 2, 'Sauber', 'James Key', 'Wildbachstrasse 9 8340 Hinwil', 10, 3, 'Sauber.gif'),
(3, 3, 'Renault', 'Bob Bell', 'RenaultF1, Whiteways Tech., Enstone, OX7 4EE, England', 8, 10, 'renault.gif'),
(4, 4, 'Williams', 'Frank Williams', 'WilliamsF1, Grove, Wantage, Oxfordshire OX12 0DQ, England', NULL, 7, 'williams.jpg'),
(5, 1, 'Red Bull', 'Günther Steiner', 'Red Bull Racing, Bradbourne Drive Tilbrook, Milton Keynes, England ', 2, 7, 'red_bull.gif'),
(6, 2, 'Toyota ', 'Tadashi Yamashina', 'Toyota F1, Toyota Alle 7, 50858 Koln-Marsdorf, Germany', NULL, 6, 'toyota.gif'),
(7, 3, 'Toro Rosso', 'Giorgio Ascanelli', 'Toro Rosso, Via Spallanzani n°21 48018 Faenza (RA), Italy', 19, 9, 'toro_rosso.jpg'),
(8, 4, 'Honda', 'Ross Brawn', 'Honda F1 Team, Brackley NN13 7BD, England', NULL, 6, 'honda.gif'),
(9, 1, 'Super Aguri F1', 'Aguri Suzuki', 'Super Aguri F1 Team, Leafield Tech. Centre Langley, Witney, Oxfordshire OX29 9EF, England ', NULL, 6, 'super_aguri.gif'),
(10, 2, 'Force India F1', 'Vijay Mallya', 'Force India F1, Dadford Road Silverstone, NN12 8TJ, England', NULL, 12, 'force_india.jpg'),
(11, 3, 'McLaren', 'Ron Dennis', 'McLaren, Woking Business Park, GU21 5JY, England', 25, 7, 'mclaren.gif'),
(12, 4, 'Hispania', 'Collin Kolles', 'José Ortega y Gasset, 30. Bajo 28006 Madrid', 0, 5, 'hispania.png'),
(13, 1, 'Lotus', 'Mike Gascoyne', '115 flowers street Londres', NULL, 7, 'lotus.png'),
(14, 2, 'Mercedes GP', 'Ross Brawn', 'Brackley', NULL, 3, 'mercedes.png'),
(15, 3, 'Virgin', 'Nick Wirth', 'Dinnington', 7, 7, 'virgin.png');

-- --------------------------------------------------------

--
-- Structure de la table `essais`
--

CREATE TABLE IF NOT EXISTS `essais` (
  `GPNUM` smallint(6) NOT NULL,
  `PILNUM` smallint(6) NOT NULL,
  `TEMPS` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `finance`
--

CREATE TABLE IF NOT EXISTS `finance` (
  `ECUNUM` smallint(6) NOT NULL,
  `SPONUM` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `finance`
--

INSERT INTO `finance` (`ECUNUM`, `SPONUM`) VALUES
(1, 1),
(2, 1),
(2, 2),
(3, 2),
(3, 3),
(4, 3),
(4, 4),
(5, 4),
(5, 5),
(6, 5),
(6, 6),
(7, 6),
(8, 8),
(9, 8);

-- --------------------------------------------------------

--
-- Structure de la table `fourn_pneu`
--

CREATE TABLE IF NOT EXISTS `fourn_pneu` (
  `FPNUM` smallint(6) NOT NULL,
  `PAYNUM` int(11) NOT NULL,
  `FPNOM` varchar(30) DEFAULT NULL,
  `FPADRESSE` varchar(100) DEFAULT NULL,
  `FPDATEFISA` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `fourn_pneu`
--

INSERT INTO `fourn_pneu` (`FPNUM`, `PAYNUM`, `FPNOM`, `FPADRESSE`, `FPDATEFISA`) VALUES
(1, 9, 'Pirelli', 'Rome', '2017-01-01 00:00:00'),
(2, 2, 'Continental', '12 rue de la gomme  Allemagne', '2015-12-11 00:00:00'),
(3, 8, 'Michelin', 'Avenue du caoutchouc Clermont', '2015-12-13 00:00:00'),
(4, 4, 'Bridgestone', 'Préfecture de Fukuoka, Japon', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `grandprix`
--

CREATE TABLE IF NOT EXISTS `grandprix` (
  `GPNUM` smallint(6) NOT NULL,
  `CIRNUM` smallint(6) NOT NULL,
  `GPNOM` varchar(30) DEFAULT NULL,
  `GPDATE` datetime DEFAULT NULL,
  `GPNBTOURS` int(11) DEFAULT NULL,
  `GPDATEMAJ` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `GPCOMMENTAIRE` text CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `grandprix`
--

INSERT INTO `grandprix` (`GPNUM`, `CIRNUM`, `GPNOM`, `GPDATE`, `GPNBTOURS`, `GPDATEMAJ`, `GPCOMMENTAIRE`) VALUES
(1, 1, 'Grand Prix de Chine', '2018-04-17 15:18:08', 56, '2015-12-15 15:29:05', 'Le Grand Prix automobile de Chine (sinogrammes simplifiés : 中国大奖赛 ; pinyin : Zhōngguó Dàjiǎngsài) est une course du championnat du monde de Formule 1 organisée sur le circuit international de Shanghai en République populaire de Chine. Le Grand Prix s''est disputé sans interruption depuis son inauguration le 26 septembre 2004. Le circuit offre l''une des combinaisons de virages serrés les plus intéressantes du calendrier, comparable au virage 8 du circuit d''Istanbul Park. Conçu par l''architecte allemand Hermann Tilke, le circuit de Shanghai est le plus cher de l''histoire de la Formule 1 (240 millions de dollars). Depuis 2004, le Grand Prix est sponsorisé par le groupe pétrolier chinois Sinopec.'),
(2, 2, 'Grand Prix du Japon', '2018-10-09 00:00:00', 67, '2018-01-15 23:00:00', 'Le Grand Prix du Japon est une course automobile qui compte pour le championnat du monde de Formule 1 depuis 1976. Le Grand Prix a lieu à Suzuka depuis 1987. En 2007 et 2008, il retournera sur le nouveau circuit de Fuji, le Fuji Speedway, comme en 1976 et 1977, pour revenir en 2009 à Suzuka.\r\nLe Grand Prix du Japon 2008 est la 801e course du championnat du monde de Formule 1 courue depuis 1950 et la seizième manche du championnat 2008.\r\n\r\nA deux courses de la fin de la saison prévue le 2 novembre prochain, Hamilton ne compte plus que cinq points d''avance sur le Brésilien. Fernando Alonso et Kimi Räikkönen sont les seuls champions du monde en activité.\r\n\r\nAu classement constructeurs, Ferrari a sept points d''avance sur l''écurie britannique.'),
(3, 3, 'Grand prix de Singapour', '2018-09-25 00:00:00', 61, '2018-01-15 23:00:00', 'Le Grand Prix de Singapour 2008, disputé sur le circuit urbain de Singapour le 28 septembre 2008, est la 800e course du championnat du monde de Formule 1 courue depuis 1950 et la quinzième manche du championnat 2008.\r\n\r\nPremière manche du championnat du monde organisée à Singapour, l''épreuve revêt également un caractère historique en étant la toute première course de Formule 1 disputée en nocturne[1].\r\n\r\nDepuis le 30 août 2009, ce Grand Prix fait l''objet d''une enquête officielle de la Fédération internationale de l''automobile car l''écurie Renault est soupçonnée de tricherie. La sortie de route de Nelsinho Piquet aurait été planifiée par Flavio Briatore et Pat Symonds afin de favoriser la victoire de son coéquipier Fernando Alonso. Ce dernier a ravitaillé au 12e tour de la course, juste avant l''accident de Piquet et la sortie de la voiture de sécurité. Alonso a ainsi eu l''opportunité de dépasser les autres concurrents par le biais des passages aux stands.'),
(4, 7, 'Grand Prix de l''IUT', '2018-01-13 08:14:13', 15, '2018-01-19 07:18:46', 'Bernie Ecclestone a affirmé que le contrat de l''IUT pour conserver son grand prix avait peu de chances d''être reconduit après 2017, dans le journal The Sunday Telegraph, dimanche. "Peut-être qu''on ne veut plus venir à LIMOGES, a indiqué patron de la Formula One Managment, chargé des droits commerciaux du sport. Nos coûts sont très importants en France et nous gagnons beaucoup moins d''argent qu''ailleurs, c''est très mauvais pour nous."'),
(5, 6, 'Grand Prix de Bahreïn', '2018-03-13 21:17:09', 49, '2015-12-16 19:15:47', 'Le Grand Prix de Bahreïn est une épreuve comptant pour le championnat du monde de Formule 1 créée en 2004. Elle a eu lieu pour la première fois le 4 avril 2004 (04/04/04), sur le Circuit international de Sakhir.\r\n\r\nLe Grand Prix de Bahreïn, sponsorisé par la société aérienne Gulf Air, rentre dans l''histoire en étant le premier Grand Prix de Formule 1 se déroulant au Moyen-Orient. Comme la vente d''alcool est interdite dans le pays, la cérémonie du podium donne lieu à une entorse à la tradition du champagne, les pilotes victorieux s''aspergeant à la place avec une boisson pétillante non alcoolisée.\r\n\r\nLe circuit qui accueille la manche inaugurale de la saison 2010 de Formule 1 n''est plus le même que lors des éditions précédentes : la course se déroule sur le grand développement initialement réservé aux épreuves d''Endurance. Une section supplémentaire fait passer le développement de 5,411 à 6,299 km. Cette portion de 888 mètres se situe entre les anciens virages no 4 et no 5 et comporte 9 virages supplémentaires.\r\n\r\nLa direction du circuit de Sakhir annonce le 16 août 2010 un retour au tracé original de 5,411 kilomètres dès 2017[');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `LOGIN` varchar(10) NOT NULL,
  `PASSWD` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `login`
--

INSERT INTO `login` (`LOGIN`, `PASSWD`) VALUES
('admin', '5c46a8ead628e900fdb5c4322ab7f1b3315ae005');

-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `PAYNUM` int(11) NOT NULL,
  `PAYNOM` varchar(20) DEFAULT NULL,
  `PAYNAT` varchar(30) NOT NULL,
  `PAYADRDRAP` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`PAYNUM`, `PAYNOM`, `PAYNAT`, `PAYADRDRAP`) VALUES
(1, 'Finlande', 'Finlandaise', 'finlande.gif'),
(2, 'Brésil', 'Brésilienne', 'bresil.gif'),
(3, 'Allemagne', 'Allemande', 'allemagne.gif'),
(4, 'Pologne', 'Polonnaise', 'pologne.gif'),
(5, 'Espagne', 'Espagnole', 'espagne.gif'),
(6, 'Japon', 'Japonnaise', 'japon.gif'),
(7, 'Royaume Uni', 'Anglaise', 'royaume_uni.gif'),
(8, 'Australie', 'Australienne', 'australie.gif'),
(9, 'Italie', 'Italienne', 'italie.gif'),
(10, 'France', 'Française', 'france.gif'),
(11, 'Suisse', 'Suisse', 'suisse.gif'),
(12, 'Inde', 'Indienne', 'inde.gif'),
(13, 'Chine', 'Chinois', 'chine.gif'),
(14, 'Saingapour', 'Saingapourienne', 'singapour.gif'),
(15, 'Autriche', 'Autrichien', 'autriche.png'),
(16, 'Malaisie', 'Malaisien', 'Malaisie.gif'),
(17, 'Russie', 'Russe', 'Russie.png'),
(18, 'Suisse', 'Suisse', 'suisse.gif'),
(19, 'Belgique', 'Belge', 'belge.gif'),
(20, 'Bahreïn', 'Bahreïn', 'Bahrain.png');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

CREATE TABLE IF NOT EXISTS `photo` (
  `PHONUM` int(11) NOT NULL,
  `PILNUM` smallint(6) NOT NULL,
  `PHOSUJET` varchar(220) DEFAULT NULL,
  `PHOCOMMENTAIRE` varchar(250) DEFAULT NULL,
  `PHOADRESSE` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `photo`
--

INSERT INTO `photo` (`PHONUM`, `PILNUM`, `PHOSUJET`, `PHOCOMMENTAIRE`, `PHOADRESSE`) VALUES
(1, 1, 'Photo identité', 'Photo officielle', '440484.jpg'),
(1, 2, 'Photo identité', 'Photo officielle', '440483.jpg'),
(1, 3, 'Photo identité', 'Photo officielle', '442209.jpg'),
(1, 4, 'Photo identité', 'Photo officielle', '442208.jpg'),
(1, 5, 'Photo identité', 'Photo officielle', '442201.jpg'),
(1, 6, 'Photo identité', 'Photo officielle', '442203.jpg'),
(1, 7, 'Photo identité', 'Photo officielle', '442212.jpg'),
(1, 8, 'Photo identité', 'Photo officielle', '442210.jpg'),
(1, 9, 'Photo identité', 'Photo officielle', '442245.jpg'),
(1, 10, 'Photo identité', 'Photo officielle', '442247.jpg'),
(1, 11, 'Photo identité', 'Photo officielle', '442216.jpg'),
(1, 12, 'Photo identité', 'Photo officielle', '442215.jpg'),
(1, 13, 'Photo identité', 'Photo officielle', '442249.jpg'),
(1, 14, 'Photo identité', 'Photo officielle', '442251.jpg'),
(1, 15, 'Photo identité', 'Photo officielle', '442264.jpg'),
(1, 16, 'Photo identité', 'Photo officielle', '442266.jpg'),
(1, 17, 'Photo identité', 'Photo officielle', '442256.jpg'),
(1, 18, 'Photo identité', 'Photo officielle', '442259.jpg'),
(1, 19, 'Photo identité', 'Photo officielle', '442170.jpg'),
(1, 20, 'Photo identité', 'Photo officielle', '442193.jpg'),
(1, 22, 'Photo identité', 'Photo officielle', 'photo_sato.jpg'),
(1, 23, 'Photo identité', 'Photo officielle', 'photo_davidson.jpg'),
(1, 24, 'A l''IUT du Limousin', 'Découvre sa note de BD', 'DiResta.jpg'),
(1, 25, 'A l''IUT du Limousin', 'Pose sa candidature pour devenir le nouveau chef de dép', 'Liuzzi.jpg'),
(1, 26, 'A l''IUT du Limousin', 'En sortant d''un cours d''XML', 'Klien.jpg'),
(1, 27, 'A l''IUT du Limousin', 'Quelques jours avant le début du stage en entreprise', 'Yamamoto.jpg'),
(1, 28, 'A l''IUT du Limousin', 'Vient de terminer la soutenance du projet tut', 'fauzy.jpg'),
(1, 29, 'A l''IUT du Limousin', 'Fait le malin (il a eu la meilleure note en math)', 'Schumacher.jpg'),
(1, 30, 'A l''IUT du Limousin', 'Parle de test unitaire avec son binôme', 'Petrov.jpg'),
(1, 31, 'A l''IUT du Limousin', 'Prends une pose entre 2 cours', 'Kobayashi.jpg'),
(1, 32, 'A l''IUT du Limousin', 'Découvre sa note de BD', 'Buemi.jpg'),
(1, 33, 'A l''IUT du Limousin', 'Devant le distributeur de boissons', 'Alguersuari.jpg'),
(1, 34, 'A l''IUT du Limousin', 'Vient d''apprendre qu''il passe au s4', 'Ambrosio.jpg'),
(1, 35, 'A l''IUT du Limousin', 'Vient d''apprendre qu''il pourra faitre l''étude de cas PHP', 'Hulkenberg.jpg'),
(2, 1, 'A l''IUT 2009', 'Quelques jours avant le stage de 2ième année', 'kimi2.jpg'),
(2, 29, 'A l''IUT du Limousin (2017)', 'Apprends qu''il vient de passer au S4', 'Schumacher2.jpg'),
(2, 31, 'Au département informatique', 'Vient de recevoir un câble RJ45 (Catégorie 6) en cadeau de Noël.', 'GrandMere.png'),
(2, 32, 'A l''IUT du Limousin', 'Fait le malin (il a eu la meilleure note en math)', 'Buemi2.jpg'),
(3, 1, 'A l''IUT du LIMOUSIN', 'En sortant d''un cours de BD', 'kimi3.jpg'),
(3, 29, 'A l''IUT du Limousin (2017)', 'On lui demande ce qu''il pense du devoir de math', 'Schumacher3.jpg'),
(4, 1, 'A l''IUT 2009', 'Vient de découvrir l''emploi du temps de la semaine 25', 'kimi4.jpg'),
(4, 29, 'A l''IUT du Limousin (2017)', 'Au labo d''Anglais', 'Schumacher4.jpg'),
(5, 1, 'A l''IUT du LIMOUSIN', 'Se planque pour ne pas être vu par le chef', 'kimi5.jpg'),
(5, 29, 'A l''IUT du Limousin (2017)', 'Avec son groupe de projet tut (le dernier jour)', 'Schumacher5.jpg'),
(6, 1, 'Japon 2008', 'Raikkonen félicite Hamilton', 'kimi6.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `pilote`
--

CREATE TABLE IF NOT EXISTS `pilote` (
  `PILNUM` smallint(6) NOT NULL,
  `PAYNUM` int(11) NOT NULL,
  `PILNOM` varchar(30) DEFAULT NULL,
  `PILPRENOM` varchar(20) DEFAULT NULL,
  `PILDATENAIS` date DEFAULT NULL,
  `PILPIGISTE` bit(1) DEFAULT NULL,
  `PILPOINTS` int(11) DEFAULT NULL,
  `PILPOIDS` float(9,3) DEFAULT NULL,
  `PILTAILLE` float(9,3) DEFAULT NULL,
  `PILTEXTE` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `ECUNUM` smallint(6) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pilote`
--

INSERT INTO `pilote` (`PILNUM`, `PAYNUM`, `PILNOM`, `PILPRENOM`, `PILDATENAIS`, `PILPIGISTE`, `PILPOINTS`, `PILPOIDS`, `PILTAILLE`, `PILTEXTE`, `ECUNUM`) VALUES
(1, 1, 'Räikkönen', 'Kimi', '1979-10-17', NULL, NULL, 62.000, 175.000, 'Peter Sauber a réussi à lancer dans le grand bain de la F1 ce jeune nordiste - né le 17 Octobre 1979. Dès 1987, sa famille lui offre un karting afin de lui permettre d''assouvir une passion naissante. En 1991, il entame les différentes étapes d''un champion de son âge.\r\n\r\nAprès avoir fait ses armes en Juniors et Minimes, il passe à la catégorie A en 1995 où il s''imposera en 1997 au niveau national en Finlande. Il s''expatrie ensuite aux Pays Bas à l''invitation de Peter De Bruin. En 98, il double la mise dans le championnat de Finlande de Formule A et remporte celui d''Intercontinental A.\r\n\r\nEn 1999, après avoir terminé 2ème du championnat Finlandais d''Intercontinental A, et 10ème du championnat du Monde, Kimi prenait la direction de l''Angleterre pour disputer les séries hivernales de Formule Renault pour le compte du Manor Motorsport, se voyant ainsi offrir un contrat pour la saison 2000 dans le championnat national anglais. Dominateur depuis la première épreuve qu''il a terminé sur le podium (3ème), Kimi s''est ensuite facilement imposé dans la catégorie.\r\n\r\nExpérience suffisante ou pas, c''était assez pour lui permettre d''attirer l''?il de Peter Sauber. Le patron de l''équipe suisse, qui avait pourtant déjà vu passer un certain Michael Schumacher dans une autre catégorie, n''a pas réussi à empêcher le Finlandais de répondre aux lueurs de la même étoile.\r\n\r\n2003 confirmera pleinement le potentiel de Kimi. Vainqueur de son premier Grand Prix à Sepang en Malaisie, il est resté en lutte pour le titre jusqu''au dernier round face à Michael Schumacher. La saison 2004 s''annonçait prometteuse mais ne sera pas aussi fructueuse qu''espérée, la faute à une fiabilité douteuse en début de saison.\r\n\r\nEn 2005, on prédisait l''association avec Montoya explosive mais le Finlandais a rapidement pris le dessus. Une fois encore accablé par le manque de fiabilité de son matériel, Raikkonen a eu beau effectuer des remontées endiablées, souvent couronnées de succès, il a finalement échoué face à la constance de son principal adversaire. Prévenu dès l''hiver de l''arrivée de Fernando Alonso chez McLaren en 2007, Raikkonen a quitté l''équipe anglo-allemande après une dernière campagne mondiale décevante au terme de laquelle il n''a pas remporté le moindre Grand Prix.\r\n\r\nChoisi par Ferrari pour succéder au septuple champion du monde, Michael Schumacher, Kimi s''est imposé dès son premier Grand Prix en rouge. En dépit d''une indispensable période d''acclimatation - et de quelques problèmes de fiabilité - le Finlandais n''a jamais renoncé, et finalement décroché son premier sacre mondial au terme d''un final haletant au Brésil.\r\n\r\nUn titre qu''il défendra chèrement lors de sa deuxième saison au sein de la Scuderia ! ', 8),
(2, 2, 'Massa', 'Félipe', '1981-04-25', NULL, 18, 59.000, 166.000, 'Originaire de Sao Paulo, où il a vu le jour le 25 avril 1981, Felipe a été sacré champion du Brésil de Formule Chevrolet en 1999. Il partait ensuite en Europe pour y disputer les championnats d''Italie et d''Europe de Formule Renault dans lesquels il s''est imposé.\r\n\r\nProgression fulgurante qui lui ouvrira les portes de la catégorie reine en 2002 après un essai réussi à bord d''une monoplace de l''équipe Sauber. Trop vite lancé dans le grand bain, Massa ne réussira pas à conserver une place de titulaire en 2003, année qu''il ira passer en Italie, en tant que pilote d''essais pour le compte de Ferrari.\r\n\r\nIl s''y forgera une expérience technique que le brésilien a mis à profit pour ne pas manquer sa seconde chance avec l''écurie suisse en 2004. 4ème à Spa Francorchamps, éphémère leader au Brésil en fin d''année, Felipe n''a pas eu à rougir de la comparaison avec l''ancien champion du monde canadien Jacques Villeneuve qui lui était associé en 2005 chez Sauber.\r\n\r\nAprès quatre saisons dans la catégorie reine, le voilà appelé à succéder à son compatriote Rubens Barrichello dans le cockpit de la deuxième Ferrari. Une première année qui a été couronnée de succès - ses deux premiers en F1 - un à Istanbul, le deuxième sur ses terres où plus aucun brésilien ne s''était imposé depuis Ayrton Senna.\r\n\r\nPrétendant au titre en 2007, Massa s''est imposé au Bahreïn, en Espagne et en Turquie, mais de trop nombreux problèmes de fiabilité lui ont barré la route. Il a conservé la confiance de la Scuderia jusqu''en 2010.\r\n', 1),
(3, 3, 'Heidfeld', 'Nick', '1977-05-10', NULL, 10, 59.000, 164.000, 'Elève surdoué de l''école Mercedes, Nick s''est montré des plus précoces durant sa formation. Dès 1996, on le voyait monter sur le podium du championnat d''Allemagne de F3, remporté cette année là par un certain Jarno Trulli ! La saison suivante, rien ne résistera à son appétit de victoire. Sacré sur ses terres, il s''imposait également dans le dernier Grand Prix de Monaco ayant accueilli des F3.\r\n\r\nPassé à la catégorie supérieur en 1998, Nick Heidfeld n''allait pas tarder à connaître le succès, une nouvelle fois dans les rues de Monaco pour le premier Grand Prix de F3000 disputé dans la cité monégasque. Battu au final par le Colombien Juan Pablo Montoya, il se savait assez fort et bien soutenu par le constructeur allemand pour redoubler dans la catégorie.\r\n\r\nChampion bien avant la limite, il pût alors se consacrer à plein temps à son poste de pilote essayeur pour l''écurie McLaren. Rapidement convaincu qu''il n''aurait pas sa place en l''an 2000 aux côtés de Mika Hakkinen, c''est vers l''écurie d''Alain Prost que lorgnait le jeune Heidfeld.\r\n\r\nGrâce aux bonnes relations entretenues par ses précepteurs et son futur employeur, Nick a pu se préparer sereinement pour ce nouveau tournant de sa jeune carrière mais il a dû rapidement déchanter et s''est finalement redoré le blason chez Peter Sauber en 2001, bien qu''il eu à faire face à l'' étoile montante de ce sport, Kimi Raikkonen.\r\n\r\nFace à Felipe Massa en 2002, Nick s''est refait une santé, ce dont il a eu bien besoin pour résister à la comparaison avec son expérimenté compatriote Heinz Harald Frentzen, de retour chez Sauber en 2003. Prié d''aller chercher fortune ailleurs en 2004, c''est Eddie Jordan qui jouera une fois de plus les bons samaritains. Une année de galère supplémentaire a bien failli avoir raison du talent de ce véritable espoir du sport-automobile allemand, recruté par Williams en 2005.\r\n\r\nUne saison mi-figue mi-raison avant que BMW ne rachète son contrat pour 2006 pour qu''il défende les couleurs nationales en 2006 au sein de leur nouvelle équipe. Une première année encourageante qui s''est confirmée par une saison 2007 qui font de Nick Heidfeld un outsider à ne pas sous-estimer en 2008. ', 2),
(4, 4, 'Kubica', 'Robert', '1984-12-07', NULL, 8, 73.000, 184.000, 'Originaire de Cracovie, où il a vu le jour le 7 décembre 1984, le Polonais s''est vite découvert un talent pour la compétition.\r\n\r\nAprès avoir décroché trois titres nationaux - il a choisi de s''exiler en Italie pour continuer son apprentissage. Ses bons résultats lui permettaient d''obtenir une place dans une équipe d''usine. En 1998, il sera le premier pilote étranger à remporter le ''International Italian Karting Championship''. L''année suivante, Kubica réussira le même exploit en Allemagne ! Il terminera 4ème du championnat d''Europe, puis encore 4ème du Mondial en 2000.\r\n\r\nIntégré au Renault Driver Development, Robert effectuait ses débuts en monoplace par le biais de l''Eurocup Formule Renault. Victime d''un accident de la circulation en Pologne, son passage dans les F3 Euroséries allait être retardé.\r\n\r\nVainqueur des World Séries by Renault en 2005, Kubica n''a pas hésité un instant lorsque l''équipe BMW Sauber lui a proposé le poste de troisième pilote en F1. Un pari audacieux mais finalement payant.\r\n\r\nSouvent aux avant-postes lors des essais libres du vendredi, le jeune polonais allait se voir proposer la place du Canadien Jacques Villeneuve au soir du Grand Prix d''Allemagne. Lancé dans le grand bain, Robert Kubica s''est rapidement montré digne de confiance - il décrochait la troisième place du Grand Prix d''Italie. Confirmé au poste de titulaire en 2007 - il a pris la 6ème place finale du championnat des pilotes, avec - entre autres - trois places de 4ème et quatre de 5ème. ', 3),
(5, 5, 'Alonso', 'Fernando', '1981-07-29', NULL, 12, 68.000, 171.000, 'Né à Oviedo fin juillet 1981, Fernando Alonso a débuté par le karting alors qu''il savait encore à peine marcher. Dès 8 ans, il remporte le championnat de Galice et d''Asturies dans la catégorie "enfants". L''année suivante, en Cadets, il rafle les titres d''Asturies, du Pays-Basque et termine deuxième du championnat national espagnol.\r\n\r\nC''est en 1994 qu''il sera sacré en Espagne, dans la catégorie Junior. Il remettra le couvert en 1995, prenant au passage la troisième place du championnat du monde. Il étoffera encore son palmarès en kart en remportant le championnat d''Espagne et surtout le titre mondial de la catégorie junior. Passé à l''Inter-A, il s''impose une nouvelle fois dans la péninsule ibérique et remporte également le très relevé championnat italien.\r\n\r\nMajeur et nouvellement détenteur d''un permis de conduire, Fernando se lançait en monoplace par le biais de l''Euro Formula Nissan où son talent allait éclater sur la scène internationale. Auteur de 9 pole positions, il allait s''imposer à 6 reprises et décrocher le titre en fin d''année. Propulsé par Telefonica en Formule 3000, l''an 2000 confirmait le talent naissant de ce débutant espagnol promis à un grand avenir par un certain Flavio Briatore. En effet, Alonso a terminé son apprentissage dans l''antichambre de la F1 par une retentissante victoire à Spa-Francorchamps.\r\n\r\nLors de sa première saison chez Minardi, Alonso a su emmagasiner de l''expérience et signer des performances ponctuelles et brillantes si bien qu''en 2002, sans espoir de meilleurs débouchés, Briatore lui offrit un poste de pilote essayeur au sein de l''écurie Renault.\r\n\r\nUne saison où il a continué à progresser pour revenir encore plus fort en 2003 sans avoir perdu le feu qui brûle en lui et qui pourrait faire d''Alonso le premier espagnol vainqueur en Grand Prix de F1. Vainqueur en Hongrie, il est monté à trois autres reprises sur le podium et terminé à une brillante sixième place, ce qui n''était qu''une étape vers son objectif ultime : le titre mondial des pilotes.\r\n\r\nLa saison 2004 a été plus chaotique pour Fernando mais l''Espagnol a poursuivi sa progression vers les sommets et atteint la 4ème place du championnat du monde. La courbe d''apprentissage du surdoué espagnol a trouvé sa juste récompense en 2005 où Fernando est devenu le plus jeune champion du monde que la F1 ait connu. Vainqueur à sept reprises, il s''est offert une première couronne au terme d''un beau duel avec Kimi Raikkonen. En 2006, il a conservé son titre au terme de la dernière croisade de Michael Schumacher.\r\n\r\nChangement de décor en 2007, une nouvelle aventure commence pour lui avec l''écurie McLaren-Mercedes. Mauvaise entente, rivalité avec Hamilton, l''escapade a tournée court malgré de bons résultats (un point de moins que Raikkonen) et avoir ajouté 4 victoires à son palmarès. Il fera son retour dans l''équipe Renault dès 2008. ', 1),
(6, 2, 'Piquet', 'Nelson', '1985-07-25', NULL, NULL, 63.000, 170.000, 'Né le 25 juillet en Allemagne - le fils du triple champion du monde de F1 - a suivi les traces de son père. Après une rapide formation en karting, il persuadait papa de lui créer spécialement une équipe avec laquelle Nelsinho remportait le championnat Sud-Am de F3.\r\n\r\nArrivé sur le sol européen - en 2003 - il s''alignait au départ du championnat britannique de F3, toujours dans la structure familiale. Il sera invité - durant l''hiver - par l''équipe Williams pour son premier galop d''essais aux commandes d''une monoplace de F1. En 2004, le petit Piquet remporte le titre de la catégorie - et succède ainsi au palmarès à son père, titré en 1978. Il devient également - à 19 ans - le plus jeune champion de F3 britannique.\r\n\r\nAprès de nouveaux essais hivernaux en F1 - avec l''équipe BAR Honda - Piquet Jr participe au nouveau championnat GP2 Séries en 2005. Il ne prendra que la 8ème place. Après avoir porté haut les couleurs du Brésil dans la catégorie A1GP - Piquet "redoublait" en GP2 en 2006. En bagarre avec Lewis Hamilton pour le titre jusqu''à la dernière course - il devra finalement s''incliner.\r\n\r\nEn 2007, Nelson Piquet Jr était pilote d''essais de l''équipe Renault F1 au sein de laquelle il a été titularisé en 2008 pour effectuer sa première saison complète dans la catégorie reine? 17 ans après la " retraite " de son père ! ', 8),
(7, 3, 'Rosberg', 'Nico', '1985-06-27', NULL, NULL, 69.000, 173.000, 'Né en Allemagne en 1985, Nico possède la double nationalité finlandaise-allemande, et vit à Monaco. Le fils de Keke a fait ses premiers tours de karting en France avant de s''imposer en Italie et même en Amérique du nord.\r\n\r\nVainqueur du championnat d''Allemagne de Formule BMW en 2002, il a vite franchi l''étape suivante et participé à la première saison des F3 Euroséries. Après avoir ''redoublé'' en F3 en 2004, Rosberg a poursuivi sa formation dans le championnat GP2 - où il a rapidement pris la mesure de ses adversaires pour finalement s''octroyer le titre face à un... Finlandais, Heikki Kovalainen.\r\n\r\nRosberg Junior a piloté une Williams dès l''âge de 17 ans. Il avait été le plus jeune pilote à prendre le volant d''une F1 en essais privés, le 3 décembre 2002 sur le circuit de Catalunya. Sa première année d''apprentissage avait plutôt bien débutée - mais les difficultés se sont ensuite accumulées pour le jeune Nico et son écurie vieillissante.\r\n\r\nEn 2007 - Williams a retrouvé un niveau de compétitivité dont Nico Rosberg a profité pour s''illustrer. 4ème - son meilleur résultat en F1 à ce jour - au Brésil en fin de saison, il espère continuer sur la lancée en 2008. ', 14),
(8, 6, 'Nakajima', 'Kazuki', '1985-01-11', NULL, NULL, 62.000, 175.000, 'Né le 11 janvier 1985 - repéré par Toyota dès son plus jeune âge, Kazuki a participé aux championnats japonais de F3 (5ème 2004 et 2ème 2005) et s''est également aligné dans quelques courses d''endurance GT avant de partir pour l''Europe.\r\n\r\nSes bonnes performances lui ont permis de gravir rapidement les échelons, et d''être nommé pilote d''essais avec Williams en 2007. Meilleur débutant des GP2 Séries, après une saison dans les F3 Euroséries en 2006, Kazuki était lancé dans le grand bain en fin de saison - en remplacement d''Alex Wurz.\r\n\r\nSes bonnes performances et ses liens avec le motoriste japonais Toyota ont convaincu l''équipe anglaise de lui confier un poste de titulaire pour 2008. ', 9),
(9, 7, 'Coulthard', 'David', '1971-03-27', NULL, NULL, 75.000, 182.000, 'Après une belle carrière dans les diverses formules de promotions britannique - c''est avec l''équipe Williams, avec le soutien de Renault, que l''Ecossais a débuté sa carrière en F1. Promu derrière le volant après le décès accidentel du Brésilien Ayrton Senna, David a rapidement atteint le niveau de son chef de file - Damon Hill - mais il ne réussit que sur le tard à décrocher un résultat significatif (une première victoire à Estoril en 95).\r\n\r\nA ce tournant de sa jeune carrière, David choisît de rejoindre l''écurie de Ron Dennis. Bien lui en pris puisqu''il offrit au duo McLaren-Mercedes le premier succès d''une longue liste. Malheureusement pour Coulthard, c''est son équipier - Mika Hakkinen - qui en a récolté les fruits.\r\n\r\nDavid, lui, a connu le bon et le moins bon, tant au niveau mécanique que sur celui du pilotage. Ayant échappé miraculeusement à un accident d''avion en 2000, Coulthard se voulait transformé, et bien décidé à jouer le titre mondial. Mais sa quête fut contrariée par l''ascension de la Scuderia Ferrari et de Michael Schumacher ainsi que par la baisse de régime de sa propre écurie et le besoin de repos affiché par son équipier finlandais.\r\n\r\nEn 2002, il était seul maître à bord, après Ron Dennis, ce qui devait le propulser comme challenger No 1 pour le titre? un objectif qu''il lui tarde encore d''atteindre. Son parcours en 2002 l''a vu s''imposer à Monaco, prendre une modeste 5ème place finale au championnat des pilotes et assister, au sein de son écurie, à l''éclosion d''un vrai talent : Kimi Raikkonen.\r\n\r\nEn 2003, bien qu''il ait remporté la première épreuve à Melbourne, David ne pourra éviter la dégringolade jusqu''à la 7ème place du championnat. Sa dernière campagne mondiale en 2004 avec McLaren n''a pas été la meilleure mais ne sera pas la dernière de l''Ecossais dans la catégorie reine, David ayant convaincu la nouvelle équipe Red Bull de faire appel à ses services en 2005.\r\n\r\nL''aventure a commencé sur les chapeaux de roues avec une 4ème place sur le circuit de Melbourne. Par la suite, la saison a été jalonnée de hauts et de bas qui ont convaincu David de persévérer encore quelques années. En 2006, Coulthard a offert à Red Bull un premier podium, à Monaco - l''arbre qui cachait la forêt tant la RB2 n''était pas assez performante.', NULL),
(10, 8, 'Webber', 'Mark', '1976-08-27', NULL, NULL, 74.000, 184.000, 'Nouveau venu dans l''arène en 2002, l''Australien n''était pas à proprement parlé un débutant, que ce soit en F1 ou dans le sport-automobile en général où il a déjà un bel éventail d''expériences à son palmarès. Webber avait à peine 18 ans lorsqu''il quittait sa terre natale pour gagner l''Europe afin d''y poursuivre sa carrière de pilote. Son arrivée en Angleterre ne passera pas inaperçue puisqu''il prenait la troisième place du ''Formula Ford Festival'' de Brands-Hatch? une épreuve qu''il reportera l''année suivante.\r\n\r\nPassé logiquement en F3, Webber terminait au 4ème du championnat anglais - attirant ainsi l''attention de Norbert Haug, patron de la compétition chez Mercedes. Aligné au Mans pour les 24 Heures, il allait être victime de deux terribles accidents (l''envol des CLK dans la Sarthe en 1999, NDLR) d''où il est sorti chaque fois miraculeusement indemne.\r\n\r\nResté loin des circuits jusqu''à la fin de la saison 99, Mark Webber était déterminé à relancer sa carrière en monoplace dès l''an 2000. C''est là qu''il allait rencontrer son compatriote Paul Stoddart pour une campagne international de F 3000. Ponctué par une victoire à Silverstone, son parcours se terminait à la 3ème place d''un championnat remporté par Junqueira devant Minassian. Ces bons résultats lui permettaient d''être recruté par Benetton comme pilote d''essais sans pour autant l''empêcher de poursuivre sa carrière en F3000. Vainqueur à Imola, Monaco et Magny Cours en 2001, il ne pourra éviter le sacre du Britannique Justin Wilson.\r\n\r\nConvaincu qu''il pouvait désormais faire étalage de son talent au plus haut niveau, Mark Webber a convaincu Paul Stoddart de lui confier la deuxième Minardi Asiatech pour le championnat du monde de F1 2002? un rêve devenu réalité lors du premier Grand Prix à Melbourne où l''Australien inscrivait 2 points d''un coup.\r\n\r\nSes coups d''éclats et sa motivation convaincront les dirigeants de Jaguar qui l''appelleront en 2003 pour redorer le blason de l''écurie mis à mal par plusieurs saisons d''errements. Rapidement, l''Australien confirmait tout le bien que l''on pense de lui et marquait 17 des 18 points de son équipe.\r\n\r\nPromis au plus bel avenir, il a évité le naufrage de l''équipe Jaguar et pensait avoir fait le bon choix en acceptant un volant chez Williams BMW. Malheureusement, le déclin des relations entre l''équipe anglaise et son motoriste allemand n''a pas permis à Webber de s''exprimer pleinement.\r\n\r\nEn 2007, il a rejoint l''écurie Red Bull où la monoplace conçue par Adrian Newey - équipée d''un V8 Renault - n''a pas été un exemple de fiabilité. L''Australien espère avoir enfin - en 2008 - les moyens d''exprimer pleinement son talent au volant. ', 5),
(11, 9, 'Trulli', 'Jarno', '1974-07-13', NULL, NULL, 60.000, 173.000, 'C''est d''abord en karting que l''Italien s''est illustré. Dès 199O (à 16 ans) il pouvait déjà afficher un joli palmarès international. Toujours en kart, en 93, il termine second du championnat du monde de Super A, mais c''est en 1994 que son talent va "exploser". Il remporte sur son passage le championnat Nord Américain, le Mémorial Senna de Suzuka, la Coupe du Monde, le championnat d''Europe de Super A et le championnat du Monde 125cc.\r\n\r\nTrulli décroche son premier titre en monoplace dans le championnat d''Allemagne de F3 - en 1996, après avoir intégré le Benetton Junior Team et attiré l''?il de son nouveau mentor : Flavio Briatore. Persuadé qu''il n''avait pas de temps à perdre, Briatore le plaçait dès 1997 au volant d''une modeste Minardi. Puis Trulli trouvait refuge chez Alain Prost lorsque ce dernier se mit à la recherche d''un remplaçant pour Olivier Panis, blessé au Canada.\r\n\r\nDepuis, Jarno a mangé son pain noir en partageant les galères de l''écurie française, puis celle de son nouvel employeur irlandais l''an dernier. Rappelé par Flavio Briatore au sein de la nouvelle équipe Renault ''anciennement maison Benetton'', l''adversité rencontrée par Jarno tout au long de la saison 2003 n''a pas pas entamé son moral. Il est reparti en 2004 avec l''intention de toucher la juste récompense de ses efforts et parviendra même à offrir à Renault une superbe victoire dans les rues de Monaco.\r\n\r\nIroniquement, c''est à partir de là que les relations avec son mentor - Flavio Briatore - allaient se détériorer au point de voir Jarno s''en aller rejoindre Toyota avant même la fin de la saison 2004. Après un début de saison des plus prometteurs, deux fois deuxième derrière Alonso, la suite du parcours de Trulli a été plus chaotique.\r\n\r\nAprès une saison décevante en 2007 - il espère toujours être le premier à faire triompher le constructeur japonais en F1.\r\n', 13),
(12, 3, 'Glock', 'Timo', '1982-03-18', NULL, 6, 64.000, 169.000, 'Après une brillante formation par le biais du karting - Timo s''est illustré dans le championnat allemand de Formule BMW dont il sera le lauréat en 2001. Ses bonnes performances en F3 - en Allemagne et en Euroséries - lui permettaient d''obtenir un poste de pilote d''essais en F1 avec l''écurie Jordan.\r\n\r\nPour ses débuts - lors du Grand Prix du Canada, en remplacement de Giorgio Pantano, il passait sous le drapeau à damiers, et allait bénéficier de la pénalité infligée à certains de ses adversaires pour inscrire ses premiers points.\r\n\r\nParti chercher fortune aux USA en 2005, Timo terminait 8ème en ChampCar. Déçu - il préférait revenir en Europe pour s''engager dans les GP2 Séries en 2006. Après un petit temps d''adaptation, l''Allemand s''illustrait en fin de saison - et décrochait le titre en 2007. Titularisé par Toyota en 2008, il compte bien relancer sa carrière en F1. ', 15),
(13, 10, 'Bourdais', 'Sébastien', '1979-02-28', NULL, NULL, 72.000, 179.000, 'Depuis le retrait d''Olivier Panis, fin 2004, il n''y avait plus eu de pilote français au départ d''une saison de F1. C''est en passe de changer puisque Sébastien Bourdais va faire son entrée dans le "Formula One Circus" en 2008.\r\n\r\nDepuis tout jeune, le Manceau baigne dans le sport automobile. Initié par son père Patrick, lui-même pilote, Sébastien a tout naturellement commencé par le karting. Intégré à La Filière - alors soutenue par Elf - il gravit un à un les échelons.\r\n\r\nAprès la Formule Renault Campus en 1995, il passe dès l''année suivante en Formule Renault. Il terminera vice-champion en 1997 avant d''accéder à la Formule 3. Après une saison d''apprentissage, Bourdais devient champion de France en 1999 et débarque sur la scène internationale par le biais de la F3000. Une catégorie où il sera sacré en 2002.\r\n\r\nAprès quelques tours de roues à bord d''une Renault, qui lui préfèrera finalement Franck Montagny pour le poste de pilote essayeur, Bourdais s''en allait chercher fortune aux Etats-Unis. Meilleur débutant la première année, il sera titré quatre fois de suite dans la catégorie Champ Car. Une série de succès qui lui a enfin ouvert les portes de la catégorie reine : la F1. ', NULL),
(14, 3, 'Vettel', 'Sébastien', '1987-07-03', NULL, 2, 62.000, 176.000, 'Champion de Formule BMW en 2004 - à l''âge de 17 ans - après avoir gagné 18 des 20 épreuves au programme, Sebastian Vettel n''a pas perdu de temps pour arriver au sommet !\r\n\r\nAidé par Red Bull depuis le début de son apprentissage, le jeune allemand a terminé 5ème - meilleur débutant - des F3 Euroséries en 2005. Il redoublait dans la catégorie en 2006, où il échouait à la 2ème place.\r\n\r\nDevenu pilote d''essais pour les séances libres du vendredi avec l''équipe BMW Sauber, il a débuté la saison 2007 avec l''objectif d''obtenir le titre dans les World Séries by Renault. Mais les débuts de Sebastian en F1 allaient se faire prématurément - lorsqu''il fut appelé par l''équipe germanique en remplacement de Kubica pour le Grand Prix des USA. 8ème - avec un point en poche - il retrouvait le banc des remplaçants.\r\n\r\nIl ne restera pas longtemps inactif. Titularisé chez Toro Rosso à partir du Grand Prix de Hongrie - suite au divorce entre l''équipe italo-autrichienne et l''Américain Scott Speed - Vettel a réalisé quelques coups d''éclats en fin de saison en prenant notamment la 4ème place du Grand Prix de Chine.\r\n\r\nPropriétaire de Red Bull, Dietrich Mateschitz est convaincu que son jeune protégé sera une grande star de la F1 dans les prochaines années. ', 5),
(15, 7, 'Button', 'Jenson', '1980-01-19', NULL, NULL, 69.000, 181.000, 'Jeune prodige du sport-automobile anglais, l''arrivée en F1 de Jenson Button a été très rapide. Champion d''Angleterre de Formule Ford, et vainqueur du "Festival" à Brands-Hatch, dès sa première saison de compétition automobile, en 1998, le jeune britannique passait à la F3 en 1999, soutenu par Renault et l''écurie de Serge Saulnier.\r\n\r\nBien qu''il ne décrocha pas le titre de la catégorie en Angleterre, son talent était si flagrant lors des épreuves internationales - à Macao et en Corée - que bon nombre de patrons d''écuries de F1 lui firent les yeux doux pendant l''intersaison afin de lui proposer un poste de pilote d''essais... et même de titulaire.\r\n\r\nJenson Button ne pût résister à la proposition de son compatriote Frank Williams lorsque celui-ci lui proposa de but en blanc de prendre le volant laissé vacant par Alex Zanardi. Pari osé, mais pari payant puisqu''il s''est rapidement montré à la hauteur, maintenant, le plus difficile se profile : il faudra confirmer.\r\n\r\nPrié de laisser sa place à Juan Pablo Montoya. C''est donc sous la houlette de Briatore qu''a évolué Button? pour le pire plus que le meilleur, le tout mis sur le compte d''une intersaison perturbée tant par son statut de star que par les nécessaires mises aux points d''un nouveau moteur. Flavio lui préfèrera Alonso pour continuer l''aventure.\r\n\r\nRecruté par un compatriote, David Richards, alors patron de l''équipe BAR Honda, Button réussira à faire sa place au sein de l''écurie anglo-japonaise dont il a été la locomotive en 2004. Monté dix fois sur le podium - il avait pris la troisième place du championnat du monde. Ce n''est qu''en 2006 - après plus de 100 Grands Prix - que Jenson a obtenu la consécration, une première victoire en F1.\r\n\r\nEn 2007, le pilote anglais n''a pu rééditer ses performance de la saison précédente - la faute à une monoplace, la RA107, complètement ratée. Agé de 28 ans, Button entame sa 9ème saison dans la catégorie reine avec l''espoir de se revenir à l''avant du peloton. L''arrivée de Ross Brawn devrait également aider à faire évoluer les choses dans le bon sens. ', 11),
(16, 2, 'Barrichello', 'Rubens', '1972-05-23', NULL, NULL, 74.000, 172.000, 'L''histoire d''amour entre les pilotes brésiliens et la F1 n''a certes pas débuté avec Ayrton Senna, mais elle restait pétrifiée depuis sa violente sortie de route un 1er Mai à Imola. Un week-end durant lequel Rubens fut lui-même la première victime d''une longue liste.\r\n\r\nTrop rapidement chargé de succéder au monument que représentait son compatriote disparu, Rubens Barrichello n''a pas réussi à confirmer tous les espoirs placés en lui. Remercié par Eddie Jordan après quatre années de bons et loyaux services, la côte d''amour de Barrichello avait baissé lors de son arrivée au sein de la toute nouvelle écurie fondée par la famille Stewart.\r\n\r\nAprès avoir essuyé les plâtres de fort belle manière en 1997, la saison 1998 fut celle des fondations. Mais quand le chemin du succès fut tracé en 1999, c''est son équipier Johnny Herbert qui est arrivé le premier. Il était temps de partir, d''autant qu''il était appelé par des sirènes qui n''avaient jamais vibré pour son ami Ayrton : Ferrari.\r\n\r\nRubens Barrichello, qui va entamer une 13ème saison de F1 consécutive, a ouvert son palmarès de vainqueur en F1 avec un superbe succès à Hockenheim en 2000. Il a relevé le gant et affronté Michael Schumacher au sein même de l''écurie Ferrari ce qui n''est certainement pas une sinécure. Pour sa seconde saison avec l''équipe italienne, Barrichello n''a pas renoué avec le succès en 2001 mais contribué de belle manière au succès de son employeur et de son leader.\r\n\r\nEn 2002 et 2003, ce fidèle lieutenant de Michael Schumacher, serviteur dévoué de la Scuderia s''est vu récompenser de plusieurs succès offerts sur un plateau par son royal leader et a parfois privé les adversaires de l''Allemand de points précieux. Vice champion en 2002 et 2004 : nul doute qu''il a touché là ce qu''il pouvait espérer de mieux avant de viser éventuellement le titre mondial une fois Michael Schumacher rassasié? donc pas en 2005 !\r\n\r\nLa saison 2005 restera frustrante pour Rubens par faute d''une monoplace et de pneus vraiment pas au niveau. Et plutôt que d''attendre le déclin du septuple champion du monde allemand, le Brésilien a préféré sauter sur l''occasion qui lui était proposé en 2006 de rejoindre Honda et faire profiter le constructeur japonais de toute l''expérience acquise au cours de ses longues années de succès dans l''ombre.\r\n\r\nAprès une année discrète, Rubens espérait beaucoup de la saison 2007. Le manque de compétitivité de la Honda ne lui permettra même pas d''inscrire un point - pour la première fois de sa longue carrière. le Brésilien est optimiste. L''arrivée de Ross Brawn à la tête de l''écurie japonaise est une bonne chose. Et cette année, Barrichello - bientôt 36 ans et 252 départs au compteur - battra un record : celui du nombre de participation détenu par l''Italien Riccardo Patrese (256). ', 4),
(17, 3, 'Sutil', 'Adrian', '1983-01-11', NULL, NULL, 75.000, 183.000, 'Originaire de Munich, issue d''une famille de musicien (son père et sa mère - violonistes - font partie de l''orchestre philharmonique de Munich) - il est lui-même un pianiste confirmé - Adrian a découvert le karting à l''âge de 14 ans.\r\n\r\nEn 2002, il effectuait de bons débuts en Formule Ford, et poursuivait son apprentissage en Formule BMW, puis en F3.\r\n\r\nDeuxième des F3 Euroséries en 2005 - pour le compte de l''équipe ASM - il s''exilait au Japon en 2006 où il y décrochera le titre national de F3. Vu à bord d''une monoplace de l''équipe Midland lors des essais libres du vendredi - au Nürburgring, à Magny-Cours et Suzuka - ses performances et ses commanditaires lui ont assuré une place sur les grilles de départ en 2007 avec l''écurie devenue Spyker.\r\n\r\nSa première saison a été ponctuée par un premier point - grâce à la 8ème place obtenue sur le circuit de Fuji, au Japon. En 2008, il continue l''aventure avec les troupes de Silverstone sous la bannière Force India ! ', 10),
(18, 9, 'Fisichella', 'Giancarlo', '1973-01-14', NULL, NULL, 67.000, 172.000, 'Né en janvier 1973 à Rome, Giancarlo Fisichella était l''un des plus sûrs espoirs de la F1. Auréolé d''un bon palmarès en karting, ainsi qu''en F3, l''Italien ne devrait plus tarder à confirmer son énorme potentiel. Arrivé en F1 par la petite porte que représentait Minardi, il sera vite recruté par Eddie Jordan pour seconder un autre jeune talent : Ralf Schumacher. Leur confrontation sera parfois explosive, obligeant l''Irlandais à se séparer de l''Italien en fin de saison.\r\n\r\nPromu chez Benetton grâce à la bienveillance de Flavio Briatore, l''Italien n''a rien pu faire pour enrayer la descente aux enfers de cette équipe.\r\n\r\nLa saison 2000 restera marquée par le peu de compétitivité de la monoplace confiée à Fisichella, ce qui ne l''a toutefois pas empêché de signer quelques jolis coups d''éclat. Il lui aurait été facile de claquer la porte et de tout changer pour rejoindre un autre team, mais il n''en a rien fait et parviendra à se réhabiliter par une campagne 2001 très honorable.\r\n\r\nUne saison 2001 qui lui a évité de sombrer dans les oubliettes pour se voir rappeler par Eddie Jordan. Une chance doublée d''une victoire exceptionnelle en 2003 sur le circuit inondé de Sao Paulo. Une bouée de sauvetage qui a certainement évité la ruine d''Eddie et convaincu Peter Sauber de donner les moyens de ses ambitions à l''Italien en 2004. Une aubaine pour Giancarlo qui est rentré au bercail, sous la houlette de Flavio Briatore pour 2005 où il espérait concrétiser tout le bien que l''on pense de lui.\r\n\r\nVainqueur du premier Grand Prix de la saison 2005 en Australie, les lendemains n''ont pas chanté pour Fisichella, trop souvent victime de sa fougue et des aléas de la course. Revenu sur les podiums en fin d''année, l''Italien a contribué au sacre de son écurie. Un scénario presque identique à celui du feuilleton 2006.\r\n\r\nIl a néanmoins gardé la confiance de son employeur - suite au départ de Fernando Alonso - et se disait prêt à en prendre la succession. L''héritage était trop lourd et Giancarlo n''aura pas d''autres alternative que de retourner à Silverstone, désormais sous tutelle indienne. Une nouvelle vie recommence ! ', NULL),
(19, 7, 'Hamilton', 'Lewis', '1985-01-07', NULL, 25, 64.000, 174.000, 'Né le 7 janvier 1985 - d''un père originaire de Trinidad et Tobago - Lewis a débuté par le karting à l''âge de 8 ans. Son coup de volant allait convaincre Ron Dennis, le patron de l''écurie McLaren de l''aider à progresser.\r\n\r\nUne fois son parcours terminé en kart, il passait à l''automobile en 2002 - et remportait le championnat anglais de Formule Renault l''année suivante. En 2004, il passe à l''étape supérieure - les F3 Euroséries - où il décrochait le titre en 2005.\r\n\r\nArrivé dans les GP2 Séries en 2006, où il remplaçait le tenant du titre - Nico Rosberg dans l''écurie ART Grand Prix - Hamilton s''est vite affirmé comme l''homme fort du championnat et il décrochait le titre de haute lutte face à Nelson Piquet Jr.\r\n\r\nEn 2007 - celui que l''on considérait comme l''une des futures stars de la F1 - a logiquement rejoint le giron des pilotes McLaren Mercedes - aux côtés du double champion du monde de la spécialité : Fernando Alonso. Pas mieux pour s''étalonner? L''explosion du talent de Lewis allait faire grand bruit, et provoquer le départ anticipé - fin 2007 - de l''Espagnol !\r\n\r\nMonté sur le podium lors de ses neuf premières apparitions en Grand Prix, il avait atteint la plus haute marche dès son sixième départ - au Canada - et doublé la mise dès le week-end suivant, à Indianapolis. Il restera leader du championnat jusqu''à l''ultime rendez-vous - au Brésil - où une succession d''erreurs lui coûtera le titre d''un point !', 11),
(20, 1, 'Kovalainen', 'Heikki', '1981-10-19', NULL, NULL, 63.000, 170.000, 'Heikki Kovalainen a éclaté sur la scène internationale en gagnant la Course des Champions en décembre 2004 face à Sébastien Loeb - au volant d''une WRC en finale. Le Finlandais s''était déjà fait remarquer en karting avant des bons débuts dans les séries britanniques de Formule Renault en 2001.\r\n\r\nTroisième du championnat anglais de F3 en 2002 (5 victoires) - il était vite recruté pour suivre le programme de développement des jeunes pilotes Renault. Vice-champion des World Séries by Nissan (désormais World Séries by Renault) derrière Franck Montagny, il sera sacré en 2004 dans la spécialité.\r\n\r\nVice-champion pour ses débuts dans les GP2 Séries en 2005, Heikki Kovalainen - managé par Briatore - s''est concentré sur son rôle de pilote d''essais pour le compte de l''écurie Renault en 2006. Il a fait ses grands débuts dans la catégorie reine en 2007 comme promis par Flavio.\r\n\r\nAprès un début de saison laborieux, Heikki a terminé sa première saison en F1 à la 7ème place - devant son expérimenté compagnon d''écurie, Giancarlo Fisichella - avec en point d''orgue une deuxième place lors du Grand Prix du Japon. Recruté par McLaren en 2008 pour succéder à Fernando Alonso aux côtés de Lewis Hamilton.\r\n', 9),
(22, 6, 'Sato', 'Takuma', '1977-01-28', NULL, NULL, 60.000, 163.000, 'Né le 28 janvier 1977 à Tokyo, au Japon, c''est en 1996 que Takuma décida de casser sa tirelire pour s''offrir des cours à l''école de pilotage Honda du circuit de Suzuka. Sorti vainqueur, il se voyait ainsi offrir une saison complète dans les séries japonaises de F3 mais préférait s''en aller en Europe pour continuer sa formation. Il s''engageait en 1999 pour sa première saison complète en Formule Vauxhall et raflait le titre.\r\n\r\nPromu en F3 pour l''an 2000, Sato intégrait le Carlin Motorsport et terminait à une brillante 3ème place ce qui lui entrouvrait les portes de la F1 via l''écurie BAR Honda. La saison 2001 allait être couronnée de succès pour le Japonais qui s''imposait dans le relevé championnat anglais de F3, signant la bagatelle de 12 victoires, auxquelles il faut ajouter celles de Zandvoort et Macao.\r\n\r\nTakuma ne perdra pas un an de plus et fera ses débuts dans la catégorie reine en 2002 pour le compte d''Eddie Jordan. Une année d''apprentissage difficile, marquée par quelques accidents spectaculaires, qui ne lui permettra pas de conserver la confiance de son écurie.\r\n\r\nHeureusement, Honda croit en Takuma et c''est au sein de l''équipe BAR qu''il a pris un peu plus d''expérience au cours d''une saison 2003 consacrée aux essais privés jusqu''au dernier Grand Prix de la saison, à Suzuka. Là, comme en 2002, Sato y terminait dans les points, annonçant un retour gagnant en 2004.\r\n\r\nMoins en verve que son chef de file, Jenson Button, Taku'' a toutefois réussi à monter sur la 3ème marche du podium à Indianapolis - et participé à la montée en puissance de l''équipe BAR Honda. En 2005, Sato n''a pas réussi à faire ce qu''il fallait pour conserver sa place dans l''écurie. Mais Honda ne le laissera pas tomber - et mettra sur pieds, avec Aguri Suzuki, une nouvelle équipe de F1 !\r\n\r\nLoin de le précipiter aux enfers, la saison 2006 a vu le Japonais utiliser son expérience pour permettre à Super Aguri de se faire une place sur les grilles de départ. En 2007, l''aventure s''est poursuivie brillamment pour le pilote nippon entré à deux reprises dans le Top 8.\r\n\r\nContraint de faire l''impasse sur certaines séances d''essais durant l''intersaison 2007-2008 - en raison de la situation financière délicate de son équipe - Takuma Sato reste convaincu de pouvoir tirer son épingle du jeu.\r\n', NULL),
(23, 7, 'Davidson', 'Anthony', '1979-04-18', NULL, NULL, 55.000, 160.000, 'Après un brillant parcours dans les formules de promotions britanniques, Davidson a intégré l''équipe BAR Honda en 2001.\r\n\r\nAnthony a longtemps occupé les fonctions cruciales de pilote d''essais - et souvent brillé au volant de la troisième monoplace lors des premiers essais libres du vendredi de chaque Grand Prix. En plus de ça, il participait aux nombreuses séances d''essais de l''équipe japonaise tout au long de l''année.\r\n\r\nAprès avoir participé à deux courses pour le compte de Minardi en 2002 - et remplacé Sato au volant d''une BAR Honda en 2005 à Sepang - il fera désormais partie des pilotes mobilisés pendant la totalité des week-ends de course de la saison, aux côtés de Takuma Sato chez Super Aguri.\r\n\r\nCe n''est pas la première fois que le chemin du jeune anglais croise celui de Takuma - déjà en 2001, au sein du Carlin Motorsport, Sato et Davidson s''étaient partagés les honneurs. Ils n''en étaient pas encore au même stade de leur apprentissage !\r\n\r\nEn 2007, trois places de 11ème - en Espagne, au Canada et aux USA - sont les meilleurs résultats obtenus par Anthony lors de sa première saison complète en F1. ', NULL),
(24, 7, 'Di Resta', 'Paul', '1986-04-16', b'0', 0, 52.000, 175.000, 'Cousin des frères Franchitti (Dario et Marino), fils de Louis di Resta, champion d''Écosse de Formule Ford, Paul di Resta débute sa carrière en sport automobile fin 2002, dans le championnat britannique de Formule Renault, discipline dans laquelle il reste jusqu''en 2004.\r\n\r\nEn 2005, il accède au relevé championnat de Formule 3 Euroseries. Au sein de l''écurie britannique Manor Motorsport, il termine 10e du classement général, ce qui lui vaut de remporter en fin d''année le McLaren Autosport BRDC Young Driver of The Year Award, trophée du meilleur espoir britannique décerné par l''hebdomadaire Autosport. En 2006, toujours en F3 Euroseries, di Resta rejoint les rangs de l''écurie française ASM avec laquelle il remporte le titre à l''issue d''un long duel avec son coéquipier allemand Sebastian Vettel. En cours d''année, il s''impose également hors-championnat aux Masters de Zandvoort de Formule 3.\r\n\r\nBien que considéré comme l''un des plus solides espoirs de sa génération, Paul di Resta ne parvient pas à trouver les soutiens financiers pour poursuivre sa progression en monoplace et accéder aux antichambres de la Formule 1 que sont le GP2 Series ou les World Series by Renault. En 2007, il décide de s''éloigner des monoplaces, pour rejoindre le championnat Deutsche Tourenwagen Masters, pour piloter une Mercedes. Au volant d''une voiture de l''année précédente engagée par le Team Persson Motorsport, il rivalise avec les voitures officielles et termine à la cinquième place du classement général avec quatre podiums. Ces résultats lui valent d''être promu en 2008 sur une Mercedes officielle. Devenu un prétendant régulier à la victoire, il termine deuxième du championnat en 2008, troisième en 2009, avant de s''adjuger le titre en 2010.\r\n\r\nProtégé de Mercedes, Paul di Resta pilote intègre l''écurie Force India en Formule 1 pour participer aux tests hivernaux réservés aux pilotes débutants à Jerez entre le 1er et le 3 décembre 2009. Il est officiellement désigné troisième pilote début février 2010. Ce statut lui permet de rouler lors de 8 grand prix pendant la première séance d''essais libres, à la place de l''un des deux pilotes titulaires de l''écurie.', 10),
(25, 9, 'Liuzzi', 'Vitantonio', '1981-08-06', b'0', NULL, 78.000, 187.000, 'Vitantonio Liuzzi débute en 1991 en karting, où il s''illustrera pendant près de dix ans, emportant ainsi dès 1993, le championnat italien, puis en 1995, en s''adjugeant un titre vice-champion du monde. Évoluant dans la catégorie Junior intercontinental A en 1996, il y emporte à nouveau son championnat national. Devenu senior en 1997 puis engagé en Formule Super A en 1998, la catégorie reine du karting, il conquiert la troisième place du podium du Championnat d''Europe avant en 1999 de remporter le Ayrton Senna Memorial puis en 2000 la deuxième marche de la Coupe du Monde. En 2001 il s''engage parallèlement dans le Championnat du Monde de karting FIA-CIK, et dans le Championnat allemand de Formule Renault. Dans ce dernier, il connaît la réussite, emportant la manche au Nürburgring puis la seconde place du championnat. En karting, il connaît la consécration en remportant le titre du Championnat du Monde. Liuzzi est engagé en 2002 en Formule 3 par Opel Team BSR dans le championnat allemand, saison durant laquelle il décroche deux poles positions, mais seulement la neuvième place finale, ne conquérant que trois podiums sans jamais monter une seule fois sur la première marche. Il s''assure cependant au cours de cette saison le soutien financier de Red Bull et est repéré par Coloni en Formule 3000 et Williams en Formule 1 qui lui font effectuer des tests. L''essai est transformé chez Coloni Motorsports, puisqu''il se voit engagé par cette équipe pour courir le Championnat international de F3000 pour la saison 2003 durant laquelle il se révèle comme le meilleur novice accrochant deux podiums, et une pôle position au Grand Prix de Hongrie F3000 2003. Transféré chez Arden en 2004, il y fait preuve d''une suprématie qui le mène sept fois à la victoire et deux fois sur une autre marche du podium en 10 manches, égalant le record de victoire à date. Il est bien sur sacré Champion International FIA de F3000 avec 86 points.', 10),
(26, 15, 'Klien', 'Christian', '1983-02-07', b'0', NULL, 52.000, 187.000, 'Christian débute en karting puis passe en Formule BMW ADAC Juniors en 1999. Il remporte quatre courses et termine quatrième du classement de la saison. Le pilote autrichien rejoint alors l''édition senior de la catégorie BMW ADAC avec l''écurie Rosberg. Après une saison d''adaptation où il se classe dixième, il enlève cinq courses en 2001, finissant troisième du championnat. Klien passe en Formule Renault en Allemagne. Il gagne quatre courses, remporte le championnat d''Allemagne tout en décrochant une troisième place en championnat d''Europe (2002). En 2003, Klien accède au nouveau championnat de Formule 3 Euroseries au sein de l''écurie Mucke Motorsport. Il gagne quatre courses et finit deuxième du championnat. En outre, il s''impose hors-championnat aux Masters de Zandvoort de Formule 3.\r\n\r\nProtégé de la firme Red Bull, il accède à la Formule 1 dès 2004, chez Jaguar Racing, sponsorisé par la boisson énergétique. Nettement dominé par son coéquipier australien Mark Webber, il paye son manque d''expérience à ce haut niveau de la compétition. Ses progrès en fin de saison, avec notamment ses premiers points à l''occasion du Grand Prix de Belgique, lui permettent de conserver son volant pour la saison suivante, tandis que l''écurie prend le nom de Red Bull Racing.\r\n\r\nEn 2005, Klien cède occasionnellement son volant à Vitantonio Liuzzi, troisième pilote de l''écurie, ponctuellement promu titulaire. Malgré cela, Klien confirme ses progrès constants en prenant souvent l''ascendant en vitesse pure sur son expérimenté coéquipier David Coulthard. En course par contre, il ne montre pas la même constance que l''Écossais.\r\n\r\nToujours chez Red Bull en 2006, il marque un point en début de saison puis un autre au Grand Prix d''Allemagne mais peine à s''imposer. Impliqué dans trois accrochages importants, régulièrement dominé par Coulthard qui offre à Red Bull le premier podium de son histoire à Monaco, Klien perd la confiance de son employeur qui le remplace par Mark Webber en 2007. La rupture entre Klien et la firme autrichienne est même anticipée de quelques semaines puisque à trois manches du terme de la saison 2006, après avoir refusé l''offre de Red Bull de faire rebondir sa carrière en Champ Car ou en DTM, il est écarté de l''équipe au bénéfice du pilote essayeur Robert Doornbos.\r\n\r\nEn novembre 2006, Klien rejoint l''écurie Honda Racing F1 Team en qualité de pilote essayeur. Il reste un an au sein de la structure japonaise, qu''il quitte fin 2007 pour réaliser des essais pour Force India en vue de décrocher un volant de pilote titulaire en 2008. L''équipe indienne lui préfère Giancarlo Fisichella, ce qui l''amène à revenir à un rôle d''essayeur au sein de l''écurie BMW Sauber. Parallèlement, il est intégré à l''équipe Peugeot Sport en endurance pour disputer les 24 heures du Mans.\r\n\r\nEn mai 2010, à l''occasion du Grand Prix d''Espagne, Colin Kolles annonce son recrutement comme troisième pilote au sein de l''écurie Hispania Racing F1 Team. L’Autrichien participe à la première séance d’essais libres et, tout en découvrant la monoplace, devance le pilote titulaire Bruno Senna d''une demi-seconde. À Singapour, il remplace Sakon Yamamoto, malade, et participe ainsi à son premier Grand Prix depuis 2006. Il décroche le vingt-deuxième temps des qualifications avec plus d''une seconde d''avance sur son coéquipier Bruno Senna mais, en course, abandonne au trente-deuxième tour sur un problème de frein. Klien remplace à nouveau Yamamoto, à l''occasion du Grand Prix du Brésil à Interlagos. Sous la pluie, il se qualifie en vingt-deuxième position, place qu''il conserve jusqu''au drapeau à damier. Lors de la dernière manche à Abu Dhabi, pour son troisième Grand Prix de la saison, il se qualifie en dernière position sur la grille de départ et termine la course en vingtième position, juste derrière son coéquipier. Klien termine le championnat du monde à la vingt-septième et dernière place, sans avoir inscrit de point.', 12);
INSERT INTO `pilote` (`PILNUM`, `PAYNUM`, `PILNOM`, `PILPRENOM`, `PILDATENAIS`, `PILPIGISTE`, `PILPOINTS`, `PILPOIDS`, `PILTAILLE`, `PILTEXTE`, `ECUNUM`) VALUES
(27, 6, 'Yamamoto', 'Sakon ', '1982-07-09', b'0', NULL, 52.000, 187.000, 'Sakon Yamamoto (山本 左近) est un pilote automobile japonais.\r\nAprès avoir débuté le karting en 1994, Sakon Yamamoto a suivi une formation à l''école de pilotage du circuit de Suzuka. Il s''est lancé dans la compétition automobile en 2001, dans le championnat du Japon de Formule 3. Dès l''année suivante, il part en Europe, pour y disputer le championnat d''Allemagne de Formule 3, puis le championnat de Formule 3 Euro Series en 2003. Auteur de performances relativement modestes, il retourne au Japon en 2004, toujours en Formule 3. Puis à partir de 2005, il passe dans le championnat de Formula Nippon, tout en disputant en parallèle le championnat GT du Japon.\r\nPremier pas en Formule 1.\r\n\r\nFin 2005, il se révèle au plus grand nombre lorsqu''il est appelé par l''écurie Jordan pour participer en tant que troisième pilote aux essais libres du vendredi du GP du Japon de Formule 1. Sur une piste qu''il connaît parfaitement, Yamomoto impressionne alors favorablement les observateurs en réalisant de meilleurs chronos que ses coéquipiers d''un jour (Tiago Monteiro et Narain Karthikeyan).\r\nPremiers Grand Prix avec Super Aguri F1 Team\r\n\r\nParfois pressenti durant l''hiver 2006 pour devenir l''un des deux pilotes de l''écurie Super Aguri, Yamamoto se voit préférer dans un premier temps son compatriote Yuji Ide, et reste au Japon pour y débuter les saisons de Formula Nippon et de Super GT. Mais au GP de Grande-Bretagne au mois de juin, Yamamoto intégre finalement Super Aguri en qualité de troisième pilote, avant d''être titularisé en remplacement de Franck Montagny à partir du GP d''Allemagne en juillet 2006. Même s''il ne se montre pas particulièrement brillant et tient difficilement la comparaison avec son coéquipier Takuma Sato, il s''avère plus consistant que ne l''était Yuji Ide.', 12),
(28, 16, 'Fauzy', 'Mohamed Fairuz ', '1982-10-24', b'0', NULL, 63.000, 155.000, 'Mohamed Fairuz Fauzy, né le 24 octobre 1982 à Kuala Lumpur, est un pilote automobile malaisien. Il est le troisième pilote de l''écurie de Formule 1 créée en 2009 Lotus F1 Racing.\r\nFairuz Fauzy a également participé à quelques reprises au championnat A1 Grand prix, remportant une victoire lors de la saison 2008-2009.', 13),
(29, 3, 'Schumacher', 'Michael ', '1969-01-03', b'0', NULL, 75.000, 174.000, 'Michael Schumacher (né le 3 janvier 1969 à Hürth-Hermülheim, près de Cologne en Allemagne), surnommé « Schumi » par ses fans ou parfois par les journalistes, est un pilote automobile allemand. Avec sept titres de champion du monde de Formule 1 et 91 victoires en Grand Prix, il possède le plus beau palmarès de ce sport. À ce jour, Michael Schumacher détient la plupart des records de la Formule 1 à l''exception des records de moyennes, de précocité et de longévité.\r\n\r\nAprès un apprentissage en karting, dans des formules monoplaces, ainsi que dans le championnat du monde des voitures de sport, Michael Schumacher a débuté sa carrière en Formule 1 lors de l''année 1991, en tant que remplaçant au pied levé, dans la jeune écurie Jordan, de Bertrand Gachot, incarcéré en Grande-Bretagne à la suite de l''agression d''un chauffeur de taxi peu avant le Grand Prix de Belgique à Spa-Francorchamps. Dès le Grand Prix suivant, il est recruté par l''écurie Benetton, avec laquelle il va conquérir ses deux premiers titres de champion du monde en 1994 et 1995.\r\n\r\nEn 1996, il a rejoint la Scuderia Ferrari qu''il a contribué à relancer après une longue période d''insuccès, signant au volant des F1 de Maranello 72 de ses 91 victoires, lui apportant cinq titres mondiaux des pilotes consécutifs (de 2000 à 2004) et contribuant directement à l''obtention de six titres constructeurs.\r\n\r\nIl a pris sa retraite à l''issue de la saison 2006. Son dernier Grand Prix, au Brésil le 22 octobre 2006, malgré une défaite au championnat du monde face à Fernando Alonso, a été marqué par une spectaculaire remontée de la dernière à la 4e place, ponctuée par une douzaine de dépassements dont le dernier sur Kimi Räikkönen, démontrant qu''il quittait la compétition en pleine possession de ses moyens.\r\n\r\nÀ partir de 1997, il a eu comme adversaire en piste son frère Ralf, de six ans son cadet. Les deux frères n''ont jamais couru au sein de la même écurie. Ils constituent l''unique cas en Formule 1 de duo de frères ayant tous deux gagné des Grands Prix.\r\n\r\nDe 2007 à 2009, il a officié toujours à la Scuderia comme consultant et il reprend parfois le volant dans le cadre d''essais privés. Après un retour avorté en août 2009[2] suite à un accident de moto et des douleurs au cou, Schumacher est de retour en Formule 1 en 2010 chez Mercedes Grand Prix', 14),
(30, 17, 'Petrov', 'Vitaly Aleksandrovic', '1984-09-08', b'0', NULL, 75.000, 187.000, 'Vitaly Petrov est le seul pilote actuellement engagé en Formule 1 qui n''ait pas débuté sa carrière avec le karting. Il débutera « tard » dans la compétition automobile, en participant de 1998 à 2001 à des rallyes et courses sur glace dans son pays[1]. En 2001, il dispute la coupe Lada, qu''il remporte en 2002. Renault le remarque en 2003 et lui fait disputer différents championnats de Formule Renault 2000 où il ne s''illustre guère. Entre-temps, Petrov continue de disputer des compétitions organisées par Lada et remporte la Lada Revolution Russia en 2005. La même année, il remporte le championnat de Russie de Formule 1600.\r\n\r\nVitaly s''engage alors en GP2 à partir de 2006. En 2007, il remporte sa première victoire avec l''écurie Campos mais ne termine que treizième du championnat. Il remporte une nouvelle victoire en 2008 et monte à quatre reprises sur le podium, ce qui lui permet de terminer troisième du championnat.\r\n\r\nPetrov s''engage avec Barwa Addax pour la saison 2009 et termine vice-champion, derrière Nico Hülkenberg. Ses bonnes performances, ainsi que l''apport d''un substantiel complément budgétaire, lui permettent d''être engagé par l''écurie Renault pour disputer la saison 2010 de Formule 1 aux côtés de Robert Kubica[2]. Il devient le premier pilote russe en championnat du monde de Formule 1.\r\n\r\nLes débuts en F1 de Vitaly sont difficiles : trois abandons consécutifs (suspension cassée à Sahkir, tête-à-queue à Melbourne, boîte de vitesses défectueuse en Malaisie). Petrov marque ses premiers points en championnat lors du Grand Prix de Chine, quatrième épreuve de la saison, où il se classe septième. Après une série de six scores vierges consécutifs, son écurie le somme d''obtenir des résultats sous peine de perdre son baquet de titulaire en 2017. Il réagit fort bien à cette pression en décrochant le point de la dixième place lors du Grand Prix d''Allemagne à Hockenheim puis en réalisant la semaine suivante, en Hongrie, sa meilleure qualification de l''année (sixième devant son coéquipier, ce qui n''était jamais arrivé auparavant). Petrov conclue sa prestation hongroise par une cinquième place finale qui le propulse à la douzième place du championnat du monde. En Italie, il finit treizième, à Singapour, onzième et il abandonne à Suzuka et en Corée du Sud. Au Grand Prix automobile d''Abou Dabi 2010, il se classe sixième derrière son coéquipier et termine à la treizième place du championnat du monde.', 3),
(31, 6, 'Kobayashi', 'Kamui ', '1986-09-13', b'0', 0, 53.000, 175.000, 'Kamui Kobayashi (小林 可夢偉) est un pilote automobile japonais né le 13 septembre 1986 à Amagasaki, dans la préfecture de Hyōgo (région du Kansai) au Japon. Ancien pilote pour DAMS en GP2 Series et pilote-essayeur de l''écurie Toyota F1 Team en Formule 1, il est titularisé chez BMW Sauber en 2010. Il vit à Paris dans le XVIe arrondissement.\r\nFils d''un cuisinier qui possède son restaurant de sushi près de Kobe, Kamui Kobayashi fait ses armes très jeune en karting, Kobayashi débute sa carrière en sport automobile en 2003. Deuxième du championnat de Formule Toyota au Japon derrière Kazuki Nakajima, il intégre le Toyota Young Drivers Program, structure par laquelle Toyota accompagne les jeunes pilotes jusqu''à la Formule 1. Kobayashi est alors envoyé en Europe pour disputer le championnat d''Italie de Formule Renault. Après une année d''apprentissage où il se classe quatrième du championnat, son talent se révèle en 2005 quand il remporte le championnat d''Italie ainsi que le championnat d''Europe : l''Eurocup.\r\n\r\nToujours avec le soutien de Toyota, il accède en 2006 au championnat de Formule 3 Euro Series au sein de l''écurie française ASM, avec comme ingénieur de piste Christophe Perrin. Il termine le championnat à la huitième place, ce qui fait de lui le meilleur débutant de la saison. Il gagne cette même année la première manche du Grand Prix de Macao de Formule 3. Parti premier, il mène la course jusqu’au drapeau à damier. La course du lendemain est moins heureuse puisqu''il tape le mur avec Marko Asmer et Paul di Resta dès le premier tour et finit à la dix-neuvième place. En 2007, toujours en F3 Euro Series chez ASM, il déçoit en terminant quatrième du championnat avec une seule victoire. Parallèlement, il fait ses débuts en Formule 1 en tant que pilote essayeur du Toyota F1 Team, aux côtés de Franck Montagny. Fin 2007, il est promu troisième pilote de l''écurie japonaise tout en intégrant l''écurie DAMS pour les championnats de GP2 Series.\r\n\r\nEn 2008, Kobayashi s''engage en GP2 Asia Series avec succès, ses deux victoires lui permettent de remporter le championnat avec l''écurie DAMS. Ses participations en GP2 Series lui rapportent 10 points et la seizième place du championnat. En 2008, Kobayashi demeure troisième pilote Toyota.\r\n\r\nKamui Kobayashi débute la saison 2009 en GP2 Series, toujours à l''écurie DAMS. Il se classe seizième du championnat avec 13 points. Fin 2009, Toyota, l''appelle pour qu''il remplace, pour les deux derniers Grands Prix de la saison, Timo Glock blessé au Japon. Il signe une course solide à Interlagos pour le Grand Prix du Brésil où il finit à la neuvième place et enchaîne avec une sixième place au Grand Prix d'' Abou Dabi, ce qui lui permet, avec trois points, d''être classé dix-huitième du championnat du monde. Si Kobayashi marque les esprits, le retrait de Toyota fin 2009 obscurcit son avenir en Formule 1.\r\n\r\nToutefois, Kobayashi est choisi pour piloter une des BMW Sauber au coté de Pedro de la Rosa en 2010[1]. Si la voiture s''annonce prometteuse lors des essais hivernaux, elle se montre peu performante et d''une fiabilité catastrophique. Kamui abandonne ainsi lors des quatre premières épreuves de la saison, en ne couvrant au total que 19 tours sur 219 possibles. En Espagne, après une belle dixième place en qualification, il termine son premier Grand Prix de la saison à la douzième place. Il marque son premier point de la saison en Turquie, après un nouvelle dixième place en qualification qu''il conserve jusqu''à l''arrivée. Lors du Grand Prix d''Europe à Valence, il fait une belle démonstration de son talent : qualifié en fond de grille (dix-huitième), il se retrouve troisième grâce à une bonne stratégie lors de la sortie voiture de sécurité et retarde au maximum son changement de pneus pour conserver sa position. Il s''arrête à cinq tours du terme de l''épreuve, ressort neuvième des stands puis dépasse Fernando Alonso et Sébastien Buemi dans les derniers tours pour terminer septième. Lors du Grand Prix suivant à Silverstone, il décroche la sixième place qui lui permet alors d''être classé à la douzième place du championnat avec 15 points. Le 7 septembre 2010, il est confirmé par Sauber pour la saison 2017. Le 10 octobre, à l''occasion de son Grand Prix national, Kobayashi, parti de la quatorzième place sur la grille, termine septième de l''épreuve en doublant notamment quatre adversaires dans l''épingle d''Hairpin. Pour sa première saison complète en championnat du monde, il se classe douzième avec 32 points.', 2),
(32, 18, 'Buemi', 'Sébastien ', '1988-10-31', b'0', 15, 78.000, 187.000, 'Sébastien Buemi débute la compétition en 1994 par le karting et décroche au fil des années plusieurs titres nationaux et internationaux. Présenté par la presse de son pays comme l''un des plus solides espoirs du sport automobile, il évolue toutefois dans l''ombre médiatique de sa cousine Natacha Gachnang[1]. Il passe à la monoplace en 2004 dans le championnat d''Allemagne de Formule BMW. Troisième du championnat pour sa première saison, il grimpe au deuxième rang l''année suivante, qui correspond à son incorporation à la filière Red Bull[2].\r\n\r\nAvec le soutien financier de Red Bull, Buemi accède en 2006 au relevé championnat de Formule 3 Euro Series au sein de l''écurie Mücke Motorsport. Sa première saison en Formule 3 se solde par une lointaine 12e place au championnat. Au cours de l''hiver 2006-2007, il participe également à plusieurs manches du championnat A1 Grand Prix dans lequel il défend les couleurs de la Suisse. Redoublant en F3 Euro Series, il s''affirme en 2007 comme l''un des pilotes les plus brillants du plateau mais s''incline au championnat à l''issue d''un long duel face au pilote franco-suisse Romain Grosjean. En plus de son programme en F3, Buemi est également placé par Red Bull dans l''écurie ART Grand Prix en GP2 Series où il remplace à Monaco puis pour la deuxième moitié de saison l''Allemand Michael Ammermuller, autre protégé de la marque de boisson autrichienne blessé puis disgrâcié au sein de l''équipe française. Buemi brille à Monaco pour sa toute première apparition dans la discipline (qualifié quatrième, septième à l''arrivée) mais se montre plus discret lors des épreuves suivantes.\r\nSébastien Buemi en 2008 à Goodwood sur la Red Bull RB1.\r\n\r\nFin 2007, ses bons résultats en Formule 3 lui valent d''effectuer ses premiers tours de roues en Formule 1 au volant d''une monoplace du Red Bull Racing puis d''être nommé pilote-essayeur de l''écurie. Parallèlement à ces tests en Formule 1, Buemi participe à sa deuxième saison en GP2 Series, la première complète. Au sein de l''écurie Arden, il termine deuxième du championnat hivernal GP2 Asia Series avec une victoire, à nouveau derrière Romain Grosjean. Dans la série principale, il doit se contenter de la sixième place finale avec deux victoires lors des manches-sprints de Magny-Cours et du Hungaroring.\r\n\r\nTenu en haute estime par la direction de Red Bull, il accumule au cours de l''hiver 2008-2009 les séances d''essai au volant des monoplaces de la marque, les Red Bull-Renault ainsi que les Toro Rosso-Ferrari, écurie dans laquelle il remplace Sebastian Vettel à partir de la saison 2009.\r\n\r\nIl marque ses premiers points lors de son premier Grand Prix en Australie, le 29 mars 2009 puis crée la sensation en Chine en parvenant à se qualifier dixième avant de se classer huitième de la course sous une pluie battante. La suite de la saison est plus difficile, car la monoplace n''est pas performante. Une grosse évolution technique sur la voiture en fin de saison lui permet de marquer de nouveau des points avec une septième place à Interlagos et une huitième à Abu Dhabi. Il réalise une belle performance sur le circuit de Suzuka avant d''abandonner. En fin de saison, alors qu''il convoite un volant chez Toyota, le retrait du constructeur japonais le conduit à prolonger chez Toro Rosso.\r\n\r\nEn 2010, il inscrit des points à quatre reprises dans la saison (Monaco, Canada, Europe et Japon), son meilleur résultat étant une huitième place au Grand Prix du Canada. Il se classe seizième du championnat du monde, comme la saison précédente, en ayant inscrit 8 points', 7),
(33, 5, 'Alguersuari', 'Jaime ', '1990-03-23', b'0', 4, 78.000, 187.000, 'Fils de Jaime Alguersuari Sr, important magnat de la presse espagnole qui fut pilote moto en championnat du monde dans les années 1960 et 1970, Jaime Alguersuari débute en sport automobile en 2005 et, dès 2006, remporte le Championnat d''Italie de Formule Renault hivernal, avant de se classer second du championnat principal derrière Mika Mäki l''année suivante. En 2008, il dispute le Championnat de Grande-Bretagne de Formule 3 chez Carlin Motorsport aux côtés de Brendon Hartley, Oliver Turvey et Sam Abay. Après une longue bataille tout au long de la saison face à Hartley, Turvey et Sergio Pérez, Alguersuari remporte les trois dernières épreuves et décroche le titre. Il devient, à 18 ans et 203 jours, le plus jeune vainqueur d''un championnat national de Formule 3 de l''histoire. Il dispute également la Race of Champions 2008 au Wembley Stadium en décembre 2008.\r\n\r\nEn 2009, il dispute les World Series by Renault, toujours chez Carlin Motorsport avec à nouveau Turvey comme coéquipier. Il est également promu pilote de réserve des écuries Red Bull Racing et Toro Rosso en Formule 1.\r\nFormule 1[modifier]\r\n\r\nAlors qu''il occupe la 8e place du championnat WSR avec un podium à son actif, il est appelé par Toro Rosso pour assurer le remplacement de Sébastien Bourdais licencié le 20 juillet. Alguersuari débute en Formule 1, à l''occasion du Grand Prix de Hongrie. Qualifié en dernière position sur la grille, il se classe quinzième de l''épreuve, devant son coéquipier Sébastien Buemi et devient, à 19 ans et 125 jours, le plus jeune pilote à prendre le départ d''un Grand Prix. Malgré une demi-saison sans fait d''arme majeur, Alguersuari conserve son volant en 2010.\r\nLe 4 avril 2010, Jaime Alguersuari marque ses deux premiers points en Formule 1 lors du Grand Prix de Malaisie et devient ainsi le deuxième pilote le plus jeune de l''histoire à inscrire des points. Il se classe dix-neuvième du championnat du monde avec 5 points.', 7),
(34, 19, 'D''Ambrosio', 'Jérôme ', '1985-12-27', b'0', 1, 78.000, 187.000, 'Jérôme d''Ambrosio, né le 27 décembre 1985 à Etterbeek (région de Bruxelles-Capitale) est un pilote automobile belge. Il est pilote titulaire chez Virgin Racing pour la saison 2017 de Formule 1.\r\n\r\nAprès divers succès en karting, il débute le sport automobile en 2003, année où il remporte le championnat belge de Formule Renault 1600. Il passe à la Formule Renault 2.0 les deux années suivantes dans les championnats français puis italien avec quelques manches d''Eurocup, terminant 4e des deux championnats nationaux. En 2005, il fait la transition vers la Formule Renault 3.5 mais quitte le championnat après 4 meetings décevants où il ne marque aucun point, pour continuer sa saison en Euroseries 3000, où il finit 5e du championnat après avoir pris la saison en cours. Il relance sa carrière l''année suivante en remportant avec aisance le tout premier championnat d''International Formula Master. Cela lui permet, grâce au soutien de la structure de management Gravity Sport de faire la transition vers le GP2 Series, au sein de l''équipe DAMS. Il y passe 3 saisons pendant lesquelles, il obtient plusieurs podiums et une victoire en course sprint à Monaco en 2010. Cette année-là, Il occupe aussi le poste de pilote de réserve de l''équipe de Formule 1 Renault F1 Team[1] et participe aux séances d''essai du vendredi lors des quatre derniers Grands Prix de cette même saison comme pilote dans l''équipe Virgin Racing[2] tout en restant pilote de réserve chez Renault. Le 21 décembre 2010, lors d''une conférence de presse, Virgin Racing annonce que Jérôme sera pilote titulaire dès le début de la saison 2017 de F1 au coté de Timo Glock', 15),
(35, 3, 'Hülkenberg', 'Nicolas', '1987-08-19', b'0', NULL, 78.000, 174.000, 'Nicolas Hülkenberg a débuté sa carrière par le karting en 1997. Double champion d''Italie junior (en 2001 et 2002), puis champion d''Allemagne, il passe au sport automobile en 2005, dans le championnat d''Allemagne de Formule BMW, qu''il remporte dès sa première saison.\r\n\r\nEn 2006, il accède à la F3 Recaro Cup (le championnat d''Allemagne de F3, qu''il termine cinquième avec trois victoires), mais se révèle surtout à l''occasion de la saison 2006-2007 de A1 Grand Prix. Il remporte neuf courses et permet à l''équipe d''Allemagne de remporter largement le championnat.\r\nEn 2007, il participe à la Formule 3 Euroseries au sein de l''écurie française ASM Formule 3. Il s''impose à quatre reprises et termine le championnat à la troisième place. Il remporte également hors-championnat l''épreuve des Masters de Formule 3 à Zolder. En fin d''année, il effectue ses premiers tours de roue en Formule 1 au volant d''une Williams-Toyota sur le circuit de Jerez. Quelques jours plus tard, il est engagé par l''écurie britannique en tant que pilote essayeur.\r\n\r\nEn 2008, parallèlement à ses essais avec Williams, il disputera une deuxième saison en Formule 3 Euroseries, toujours pour le compte de l''écurie ART Grand Prix (nouveau nom d''ASM Formule 3). Annoncé comme le favori du championnat, il connaît un début de saison un peu laborieux avant de dominer la compétition, ce qui lui permet d''être titré dès l''avant-dernier meeting, au Mans[1].\r\n\r\nEn 2009, il intègre le championnat GP2 Asia Series en plein milieu de la saison, et décroche d''emblée la pole position. Pour son deuxième week-end dans la discipline, au Qatar, il remporte sa première course, la première course nocturne de l''histoire du GP2, alors qu''il partait de la pole position mais avait perdu le leadership au départ. Il ne fera que quatre des onze courses mais il se classera tout de même sixième du championnat.\r\n\r\nLa même année il participe également au championnat de GP2 Series. Quatrième du championnat après quatre week-end de courses, il remporte les deux courses du week-end de Nürburgring et prend la tête du championnat, il ne la quittera plus. Il remportera quatre autres victoires plus tard dans la saison et de surcroît, à l''issue du week-end hongrois, son plus proche rival pour le titre Romain Grosjean, quittera le championnat pour aller courir en Formule 1. Nico Hülkenberg remporte le titre à l''issue du week-end de Monza, avec encore deux courses à disputer.\r\n\r\nLe manager de Nicolas Hülkenberg est Willi Weber, connu pour avoir été celui de Michael Schumacher qu''il avait découvert au tout début de sa carrière. Weber n''hésite d''ailleurs pas à comparer son protégé à son glorieux ainé[2].\r\n\r\nHülkenberg pilote pour Williams F1 Team au côté de Rubens Barrichello lors de la saison de Formule 1 2010. Son début de saison est difficile malgré une 5e place sur la grille de départ en Malaisie convertie en course par le point de la dixième place. Mais le jeune allemand progresse et se qualifie régulièrement parmi les 10 premiers. Après avoir inscrit un point à Silverstone, Hülkenberg termine le Grand Prix de Hongrie à la sixième place.\r\n\r\nLors du Grand Prix du Brésil, il signe la première pole position de sa carrière en Formule 1 sur le circuit d''Interlagos, reléguant à plus d''une seconde Sebastian Vettel, son premier poursuivant[3]. Le lendemain, il termine huitième de l''épreuve. Il termine sa première saison en Formule 1 à la quatorzième place avec 22 points. Le lendemain de la course, son écurie annonce qu''il ne sera pas reconduit l''année prochaine.', 4);

-- --------------------------------------------------------

--
-- Structure de la table `points`
--

CREATE TABLE IF NOT EXISTS `points` (
  `PTPLACE` bigint(20) NOT NULL,
  `PTNBPOINTSPLACE` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `points`
--

INSERT INTO `points` (`PTPLACE`, `PTNBPOINTSPLACE`) VALUES
(1, 25),
(2, 18),
(3, 15),
(4, 12),
(5, 10),
(6, 8),
(7, 6),
(8, 4),
(9, 2),
(10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `sponsor`
--

CREATE TABLE IF NOT EXISTS `sponsor` (
  `SPONUM` smallint(6) NOT NULL,
  `SPONOM` varchar(30) DEFAULT NULL,
  `SPOSECTACTIVITE` varchar(30) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `sponsor`
--

INSERT INTO `sponsor` (`SPONUM`, `SPONOM`, `SPOSECTACTIVITE`) VALUES
(1, 'Tag Heuer', 'Horlogerie'),
(2, 'Marlboro', 'Tabac'),
(3, 'Shell', 'Carburant'),
(4, 'Santander', 'Banque'),
(5, 'Pepsi', 'Boisson'),
(6, 'Reebok', 'Matériel de sport'),
(7, 'BMW', 'Automobile'),
(8, 'Ubuntu', 'Informatique');

-- --------------------------------------------------------

--
-- Structure de la table `sponsorise`
--

CREATE TABLE IF NOT EXISTS `sponsorise` (
  `PILNUM` smallint(6) NOT NULL,
  `SPONUM` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `sponsorise`
--

INSERT INTO `sponsorise` (`PILNUM`, `SPONUM`) VALUES
(1, 1),
(29, 1),
(1, 2),
(2, 2),
(29, 2),
(1, 3),
(2, 3),
(3, 3),
(29, 3),
(1, 4),
(2, 4),
(3, 4),
(4, 4),
(29, 4),
(2, 5),
(3, 5),
(4, 5),
(19, 5),
(3, 6),
(4, 6),
(19, 6),
(4, 7);

-- --------------------------------------------------------

--
-- Structure de la table `type_voiture`
--

CREATE TABLE IF NOT EXISTS `type_voiture` (
  `TYPNUM` smallint(6) NOT NULL,
  `TYPELIBELLE` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `type_voiture`
--

INSERT INTO `type_voiture` (`TYPNUM`, `TYPELIBELLE`) VALUES
(1, 'Voiture principale'),
(2, 'Seconde voiture'),
(3, 'Mulet');

-- --------------------------------------------------------

--
-- Structure de la table `voiture`
--

CREATE TABLE IF NOT EXISTS `voiture` (
  `VOINUM` smallint(6) NOT NULL,
  `ECUNUM` smallint(6) NOT NULL,
  `TYPNUM` smallint(30) DEFAULT NULL,
  `VOINOM` varchar(20) DEFAULT NULL,
  `VOIADRESSEIMAGE` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `voiture`
--

INSERT INTO `voiture` (`VOINUM`, `ECUNUM`, `TYPNUM`, `VOINOM`, `VOIADRESSEIMAGE`) VALUES
(1, 2, 1, 'B2008', 'bmw.jpg'),
(2, 1, 1, 'F2008', 'ferrari.jpg'),
(3, 10, 1, 'I2008', 'forceindia2.jpg'),
(4, 8, 1, 'H2008', 'honda.jpg'),
(5, 11, 1, 'M2008', 'maclaren.jpg'),
(6, 5, 1, 'R2008', 'redbull.jpg'),
(7, 3, 1, 'RONO', 'renault.jpg'),
(8, 7, 1, 'RO2008', 'rosso.jpg'),
(9, 6, 1, 'T2008', 'toyota.jpg'),
(10, 4, 1, 'W2008', 'williams.jpg'),
(11, 11, 3, 'C''est pas gagné', 'mercedes.jpg'),
(12, 1, 3, 'F2001', 'ferrari2.jpg'),
(13, 10, 2, 'vjm02', 'forceindia.jpg'),
(14, 12, 2, 'tyu4', 'hispania.jpg'),
(15, 12, 1, 'fg7', 'hispania2.jpg'),
(17, 13, 2, 'tyu4', 'lotus.bmp'),
(18, 13, 1, 'fg7', 'lotus.jpg'),
(19, 14, 1, 'mb1', 'mercedes.jpg'),
(20, 14, 2, 'mb2', 'mercedes2.jpg'),
(21, 14, 3, 'Ca va être dur!!!', 'mercedes3.jpg'),
(22, 5, 1, 'raide5', 'redbull2.jpg'),
(23, 3, 2, 'Enfin une reno fiabl', 'renault2.jpg'),
(24, 2, 2, 'sau6', 'sauber.jpg'),
(25, 7, 2, 'torTU', 'rosso2.jpg'),
(26, 15, 1, 'virPAS', 'virgin2.jpg'),
(27, 15, 2, 'vir01', 'virgin.jpg'),
(28, 4, 2, 'willy', 'williams2.jpg'),
(37, 6, 2, 'Toy2', 'toy2.jpeg'),
(38, 9, 1, 'AZRERT23', 'superA1.jpg'),
(39, 9, 2, 'QSDFG56', 'superA2.jpg');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `circuit`
--
ALTER TABLE `circuit`
  ADD PRIMARY KEY (`CIRNUM`),
  ADD KEY `FK_CIRCUIT_EST_DANS_PAYS` (`PAYNUM`);

--
-- Index pour la table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`GPNUM`,`PILNUM`),
  ADD KEY `FK_COURSE_COURSE2_PILOTE` (`PILNUM`);

--
-- Index pour la table `ecurie`
--
ALTER TABLE `ecurie`
  ADD PRIMARY KEY (`ECUNUM`),
  ADD KEY `FK_ECURIE_FOURNIT_FOURNISS` (`FPNUM`),
  ADD KEY `PAYNUM` (`PAYNUM`);

--
-- Index pour la table `essais`
--
ALTER TABLE `essais`
  ADD PRIMARY KEY (`GPNUM`,`PILNUM`),
  ADD KEY `FK_ESSAIS_ESSAIS2_PILOTE` (`PILNUM`);

--
-- Index pour la table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`ECUNUM`,`SPONUM`),
  ADD KEY `FK_FINANCE_FINANCE2_SPONSOR` (`SPONUM`);

--
-- Index pour la table `fourn_pneu`
--
ALTER TABLE `fourn_pneu`
  ADD PRIMARY KEY (`FPNUM`),
  ADD KEY `FK_FOURNISS_NATIONALI_PAYS` (`PAYNUM`);

--
-- Index pour la table `grandprix`
--
ALTER TABLE `grandprix`
  ADD PRIMARY KEY (`GPNUM`),
  ADD KEY `FK_GRANDPRI_SE_DEROUL_CIRCUIT` (`CIRNUM`);

--
-- Index pour la table `pays`
--
ALTER TABLE `pays`
  ADD PRIMARY KEY (`PAYNUM`);

--
-- Index pour la table `photo`
--
ALTER TABLE `photo`
  ADD PRIMARY KEY (`PHONUM`,`PILNUM`),
  ADD KEY `PILNUM` (`PILNUM`);

--
-- Index pour la table `pilote`
--
ALTER TABLE `pilote`
  ADD PRIMARY KEY (`PILNUM`),
  ADD KEY `FK_PILOTE_EST_PAYS` (`PAYNUM`),
  ADD KEY `ECUNUM` (`ECUNUM`);

--
-- Index pour la table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`PTPLACE`);

--
-- Index pour la table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`SPONUM`);

--
-- Index pour la table `sponsorise`
--
ALTER TABLE `sponsorise`
  ADD PRIMARY KEY (`PILNUM`,`SPONUM`),
  ADD KEY `FK_SPONSORI_SPONSORIS_SPONSOR` (`SPONUM`);

--
-- Index pour la table `type_voiture`
--
ALTER TABLE `type_voiture`
  ADD PRIMARY KEY (`TYPNUM`);

--
-- Index pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD PRIMARY KEY (`VOINUM`),
  ADD KEY `FK_VOITURE_APPARTIEN_ECURIE` (`ECUNUM`),
  ADD KEY `TYPNUM` (`TYPNUM`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `circuit`
--
ALTER TABLE `circuit`
  MODIFY `CIRNUM` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `ecurie`
--
ALTER TABLE `ecurie`
  MODIFY `ECUNUM` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `fourn_pneu`
--
ALTER TABLE `fourn_pneu`
  MODIFY `FPNUM` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `grandprix`
--
ALTER TABLE `grandprix`
  MODIFY `GPNUM` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `pays`
--
ALTER TABLE `pays`
  MODIFY `PAYNUM` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT pour la table `pilote`
--
ALTER TABLE `pilote`
  MODIFY `PILNUM` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT pour la table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `SPONUM` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `type_voiture`
--
ALTER TABLE `type_voiture`
  MODIFY `TYPNUM` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `voiture`
--
ALTER TABLE `voiture`
  MODIFY `VOINUM` smallint(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `circuit`
--
ALTER TABLE `circuit`
  ADD CONSTRAINT `FK_CIRCUIT_EST_DANS_PAYS` FOREIGN KEY (`PAYNUM`) REFERENCES `pays` (`PAYNUM`);

--
-- Contraintes pour la table `course`
--
ALTER TABLE `course`
  ADD CONSTRAINT `FK_COURSE_COURSE2_PILOTE` FOREIGN KEY (`PILNUM`) REFERENCES `pilote` (`PILNUM`),
  ADD CONSTRAINT `FK_COURSE_COURSE_GRANDPRI` FOREIGN KEY (`GPNUM`) REFERENCES `grandprix` (`GPNUM`);

--
-- Contraintes pour la table `ecurie`
--
ALTER TABLE `ecurie`
  ADD CONSTRAINT `FK_ECURIE_FOURNIT_FOURNISS` FOREIGN KEY (`FPNUM`) REFERENCES `fourn_pneu` (`FPNUM`),
  ADD CONSTRAINT `ecurie_fk` FOREIGN KEY (`PAYNUM`) REFERENCES `pays` (`PAYNUM`);

--
-- Contraintes pour la table `essais`
--
ALTER TABLE `essais`
  ADD CONSTRAINT `FK_ESSAIS_ESSAIS2_PILOTE` FOREIGN KEY (`PILNUM`) REFERENCES `pilote` (`PILNUM`),
  ADD CONSTRAINT `FK_ESSAIS_ESSAIS_GRANDPRI` FOREIGN KEY (`GPNUM`) REFERENCES `grandprix` (`GPNUM`);

--
-- Contraintes pour la table `finance`
--
ALTER TABLE `finance`
  ADD CONSTRAINT `FK_FINANCE_FINANCE2_SPONSOR` FOREIGN KEY (`SPONUM`) REFERENCES `sponsor` (`SPONUM`),
  ADD CONSTRAINT `FK_FINANCE_FINANCE_ECURIE` FOREIGN KEY (`ECUNUM`) REFERENCES `ecurie` (`ECUNUM`);

--
-- Contraintes pour la table `fourn_pneu`
--
ALTER TABLE `fourn_pneu`
  ADD CONSTRAINT `FK_FOURNISS_NATIONALI_PAYS` FOREIGN KEY (`PAYNUM`) REFERENCES `pays` (`PAYNUM`);

--
-- Contraintes pour la table `grandprix`
--
ALTER TABLE `grandprix`
  ADD CONSTRAINT `FK_GRANDPRI_SE_DEROUL_CIRCUIT` FOREIGN KEY (`CIRNUM`) REFERENCES `circuit` (`CIRNUM`);

--
-- Contraintes pour la table `photo`
--
ALTER TABLE `photo`
  ADD CONSTRAINT `FK_PHOTO_POSSEDE_VIP` FOREIGN KEY (`PILNUM`) REFERENCES `pilote` (`PILNUM`);

--
-- Contraintes pour la table `pilote`
--
ALTER TABLE `pilote`
  ADD CONSTRAINT `pilote_ibfk_1` FOREIGN KEY (`PAYNUM`) REFERENCES `pays` (`PAYNUM`),
  ADD CONSTRAINT `pilote_ibfk_2` FOREIGN KEY (`ECUNUM`) REFERENCES `ecurie` (`ECUNUM`);

--
-- Contraintes pour la table `sponsorise`
--
ALTER TABLE `sponsorise`
  ADD CONSTRAINT `FK_SPONSORI_SPONSORIS_PILOTE` FOREIGN KEY (`PILNUM`) REFERENCES `pilote` (`PILNUM`),
  ADD CONSTRAINT `FK_SPONSORI_SPONSORIS_SPONSOR` FOREIGN KEY (`SPONUM`) REFERENCES `sponsor` (`SPONUM`);

--
-- Contraintes pour la table `voiture`
--
ALTER TABLE `voiture`
  ADD CONSTRAINT `voiture_ibfk_1` FOREIGN KEY (`ECUNUM`) REFERENCES `ecurie` (`ECUNUM`),
  ADD CONSTRAINT `voiture_ibfk_2` FOREIGN KEY (`TYPNUM`) REFERENCES `type_voiture` (`TYPNUM`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
