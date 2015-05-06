-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Ven 27 Mars 2015 à 08:36
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `gsb_svg`
--

-- --------------------------------------------------------

--
-- Structure de la table `famille`
--

CREATE TABLE IF NOT EXISTS `famille` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelleFamille` varchar(80) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=22 ;

--
-- Contenu de la table `famille`
--

INSERT INTO `famille` (`id`, `libelleFamille`) VALUES
(1, 'Antalgiques en association'),
(2, 'Antalgiques antipyrétiques en association'),
(3, 'Antidépresseur d''action centrale'),
(4, 'Antivertigineux antihistaminique H1'),
(5, 'Antibiotique antituberculeux'),
(6, 'Antibiotique antiacnéique local'),
(7, 'Antibiotique de la famille des béta-lactamines (pénicilline A)'),
(8, 'Antibiotique de la famille des cyclines'),
(9, 'Antibiotique de la famille des macrolides'),
(10, 'Antihistaminique H1 local'),
(11, 'Antidépresseur imipraminique (tricyclique)'),
(12, 'Antidépresseur inhibiteur sélectif de la recapture de la sérotonine'),
(13, 'Antibiotique local (ORL)'),
(14, 'Antidépresseur IMAO non sélectif'),
(15, 'Antibiotique ophtalmique'),
(16, 'Antipsychotique normothymique'),
(17, 'Antibiotique urinaire minute'),
(18, 'Corticoïde, antibiotique et antifongique à  usage local'),
(19, 'Hypnotique antihistaminique'),
(20, 'Psychostimulant, antiasthénique'),
(21, 'Bidon');

-- --------------------------------------------------------

--
-- Structure de la table `medicament`
--

CREATE TABLE IF NOT EXISTS `medicament` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `depotLegal` varchar(10) NOT NULL,
  `nomCommercial` varchar(25) NOT NULL,
  `Famille_id` int(11) DEFAULT NULL,
  `composition` varchar(255) NOT NULL,
  `effets` varchar(255) NOT NULL,
  `contreIndication` varchar(255) NOT NULL,
  `prixEchantillon` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D5C171EAD8FA7854` (`Famille_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=30 ;

--
-- Contenu de la table `medicament`
--

INSERT INTO `medicament` (`id`, `depotLegal`, `nomCommercial`, `Famille_id`, `composition`, `effets`, `contreIndication`, `prixEchantillon`) VALUES
(1, '3MYC7', 'TRIMYCINE', 18, 'Triamcinolone (acétonide) + Néomycine + Nystatine', 'Ce médicament est un corticoïde à  activité forte ou très forte associé à  un antibiotique et un antifongique, utilisé en application locale dans certaines atteintes cutanées surinfectées.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, d''infections de la peau ou de parasitisme non traités, d''acné. Ne pas appliquer sur une plaie, ni sous un pansement occlusif.', 0),
(2, 'ADIMOL9', 'ADIMOL', 6, 'Amoxicilline + Acide clavulanique', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines ou aux céphalosporines.', 0),
(3, 'AMOPIL7', 'AMOPIL', 6, 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines. Il doit être administré avec prudence en cas d''allergie aux céphalosporines.', 0),
(4, 'AMOX45', 'AMOXAR', 7, 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'La prise de ce médicament peut rendre positifs les tests de dépistage du dopage.', 0),
(5, 'AMOXIG12', 'AMOXI Gé', 7, 'Amoxicilline', 'Ce médicament, plus puissant que les pénicillines simples, est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie aux pénicillines. Il doit être administré avec prudence en cas d''allergie aux céphalosporines.', 0),
(6, 'APATOUX22', 'APATOUX Vitamine C', 13, 'Tyrothricine + Tétracaïne + Acide ascorbique (Vitamine C)', 'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, en cas de phénylcétonurie et chez l''enfant de moins de 6 ans.', 0),
(7, 'BACTIG10', 'BACTIGEL', 6, 'Erythromycine', 'Ce médicament est utilisé en application locale pour traiter l''acné et les infections cutanées bactériennes associées.', 'Ce médicament est contre-indiqué en cas d''allergie aux antibiotiques de la famille des macrolides ou des lincosanides.', 0),
(8, 'BACTIV13', 'BACTIVIL', 9, 'Erythromycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).', 0),
(9, 'BITALV', 'BIVALIC', 2, 'Dextropropoxyphène + Paracétamol', 'Ce médicament est utilisé pour traiter les douleurs d''intensité modérée ou intense.', 'Ce médicament est contre-indiqué en cas d''allergie aux médicaments de cette famille, d''insuffisance hépatique ou d''insuffisance rénale.', 0),
(10, 'CARTION6', 'CARTION', 2, 'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol', 'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', 'Ce médicament est contre-indiqué en cas de troubles de la coagulation (tendances aux hémorragies), d''ulcère gastroduodénal, maladies graves du foie.', 0),
(11, 'CLAZER6', 'CLAZER', 9, 'Clarithromycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques. Il est également utilisé dans le traitement de l''ulcère gastro-duodénal, en association avec d''autres médicaments.', 'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).', 0),
(12, 'DEPRIL9', 'DEPRAMIL', 11, 'Clomipramine', 'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères, certaines douleurs rebelles, les troubles obsessionnels compulsifs et certaines énurésies chez l''enfant.', 'Ce médicament est contre-indiqué en cas de glaucome ou d''adénome de la prostate, d''infarctus récent, ou si vous avez reà§u un traitement par IMAO durant les 2 semaines précédentes ou en cas d''allergie aux antidépresseurs imipraminiques.', 0),
(13, 'DIMIRTAM6', 'DIMIRTAM', 3, 'Mirtazapine', 'Ce médicament est utilisé pour traiter les épisodes dépressifs sévères.', 'La prise de ce produit est contre-indiquée en cas de d''allergie à  l''un des constituants.', 0),
(14, 'DOLRIL7', 'DOLORIL', 2, 'Acide acétylsalicylique (aspirine) + Acide ascorbique (Vitamine C) + Paracétamol', 'Ce médicament est utilisé dans le traitement symptomatique de la douleur ou de la fièvre.', 'Ce médicament est contre-indiqué en cas d''allergie au paracétamol ou aux salicylates.', 0),
(15, 'DORNOM8', 'NORMADOR', 19, 'Doxylamine', 'Ce médicament est utilisé pour traiter l''insomnie chez l''adulte.', 'Ce médicament est contre-indiqué en cas de glaucome, de certains troubles urinaires (rétention urinaire) et chez l''enfant de moins de 15 ans.', 0),
(16, 'EQUILARX6', 'EQUILAR', 4, 'Méclozine', 'Ce médicament est utilisé pour traiter les vertiges et pour prévenir le mal des transports.', 'Ce médicament ne doit pas être utilisé en cas d''allergie au produit, en cas de glaucome ou de rétention urinaire.', 0),
(17, 'EVILR7', 'EVEILLOR', 20, 'Adrafinil', 'Ce médicament est utilisé pour traiter les troubles de la vigilance et certains symptomes neurologiques chez le sujet agé.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants.', 0),
(18, 'INSXT5', 'INSECTIL', 10, 'Diphénydramine', 'Ce médicament est utilisé en application locale sur les piqûres d''insecte et l''urticaire.', 'Ce médicament est contre-indiqué en cas d''allergie aux antihistaminiques.', 0),
(19, 'JOVAI8', 'JOVENIL', 9, 'Josamycine', 'Ce médicament est utilisé pour traiter des infections bactériennes spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie aux macrolides (dont le chef de file est l''érythromycine).', 0),
(20, 'LIDOXY23', 'LIDOXYTRACINE', 8, 'Oxytétracycline +Lidocaïne', 'Ce médicament est utilisé en injection intramusculaire pour traiter certaines infections spécifiques.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants. Il ne doit pas être associé aux rétinoïdes.', 0),
(21, 'LITHOR12', 'LITHORINE', 16, 'Lithium', 'Ce médicament est indiqué dans la prévention des psychoses maniaco-dépressives ou pour traiter les états maniaques.', 'Ce médicament ne doit pas être utilisé si vous êtes allergique au lithium. Avant de prendre ce traitement, signalez à  votre médecin traitant si vous souffrez d''insuffisance rénale, ou si vous avez un régime sans sel.', 0),
(22, 'PARMOL16', 'PARMOCODEINE', 1, 'Codéine + Paracétamol', 'Ce médicament est utilisé pour le traitement des douleurs lorsque des antalgiques simples ne sont pas assez efficaces.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, chez l''enfant de moins de 15 Kg, en cas d''insuffisance hépatique ou respiratoire, d''asthme, de phénylcétonurie et chez la femme qui allaite.', 0),
(23, 'PHYSOI8', 'PHYSICOR', 20, 'Sulbutiamine', 'Ce médicament est utilisé pour traiter les baisses d''activité physique ou psychique, souvent dans un contexte de dépression.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants.', 0),
(24, 'PIRIZ8', 'PIRIZAN', 5, 'Pyrazinamide', 'Ce médicament est utilisé, en association à  d''autres antibiotiques, pour traiter la tuberculose.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants, d''insuffisance rénale ou hépatique, d''hyperuricémie ou de porphyrie.', 0),
(25, 'POMDI20', 'POMADINE', 15, 'Bacitracine', 'Ce médicament est utilisé pour traiter les infections oculaires de la surface de l''oeil.', 'Ce médicament est contre-indiqué en cas d''allergie aux antibiotiques appliqués localement.', 0),
(26, 'TROXT21', 'TROXADET', 12, 'Paroxétine', 'Ce médicament est utilisé pour traiter la dépression et les troubles obsessionnels compulsifs. Il peut également être utilisé en prévention des crises de panique avec ou sans agoraphobie.', 'Ce médicament est contre-indiqué en cas d''allergie au produit.', 0),
(27, 'TXISOL22', 'TOUXISOL Vitamine C', 13, 'Tyrothricine + Acide ascorbique (Vitamine C)', 'Ce médicament est utilisé pour traiter les affections de la bouche et de la gorge.', 'Ce médicament est contre-indiqué en cas d''allergie à  l''un des constituants et chez l''enfant de moins de 6 ans.', 0),
(28, 'URIEG6', 'URIREGUL', 17, 'Fosfomycine trométamol', 'Ce médicament est utilisé pour traiter les infections urinaires simples chez la femme de moins de 65 ans.', 'La prise de ce médicament est contre-indiquée en cas d''allergie à  l''un des constituants et d''insuffisance rénale.', 0),
(29, 'Aucune idé', 'Merveilleux', 21, 'C''est du bidon', 'Là franchement, aucun effet négatif, que du positif', 'Aucune contre-indication - il est merveilleux', 4.4);

-- --------------------------------------------------------

--
-- Structure de la table `praticien`
--

CREATE TABLE IF NOT EXISTS `praticien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nomMedecin` varchar(25) NOT NULL,
  `prenomMedecin` varchar(30) NOT NULL,
  `adresseMedecin` varchar(50) NOT NULL,
  `cpMedecin` varchar(5) NOT NULL,
  `villeMedecin` varchar(25) NOT NULL,
  `coefNotoriete` float NOT NULL,
  `typeMedecin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `typeMedecin` (`typeMedecin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=88 ;

--
-- Contenu de la table `praticien`
--

INSERT INTO `praticien` (`id`, `nomMedecin`, `prenomMedecin`, `adresseMedecin`, `cpMedecin`, `villeMedecin`, `coefNotoriete`, `typeMedecin_id`) VALUES
(1, 'Notini', 'Alain', '114 r Authie', '85000', 'LA ROCHE SUR YON', 290.03, 1),
(2, 'Gosselin', 'Albert', '13 r Devon', '41000', 'BLOIS', 307.49, 1),
(3, 'Delahaye', 'André', '36 av 6 Juin', '25000', 'BESANCON', 185.79, 2),
(4, 'Leroux', 'André', '47 av Robert Schuman', '60000', 'BEAUVAIS', 172.04, 3),
(5, 'Desmoulins', 'Anne', '31 r St Jean', '30000', 'NIMES', 94.75, 3),
(6, 'Mouel', 'Anne', '27 r Auvergne', '80000', 'AMIENS', 45.2, 2),
(7, 'Desgranges-Lentz', 'Antoine', '1 r Albert de Mun', '29000', 'MORLAIX', 20.07, 1),
(8, 'Marcouiller', 'Arnaud', '31 r St Jean', '68000', 'MULHOUSE', 396.52, 3),
(9, 'Dupuy', 'Benoit', '9 r Demolombe', '34000', 'MONTPELLIER', 395.66, 2),
(10, 'Lerat', 'Bernard', '31 r St Jean', '59000', 'LILLE', 257.79, 3),
(11, 'Marçais-Lefebvre', 'Bertrand', '86Bis r Basse', '67000', 'STRASBOURG', 450.96, 1),
(12, 'Boscher', 'Bruno', '94 r Falaise', '10000', 'TROYES', 356.14, 2),
(13, 'Morel', 'Catherine', '21 r Chateaubriand', '75000', 'PARIS', 379.57, 5),
(14, 'Guivarch', 'Chantal', '4 av Gén Laperrine', '45000', 'ORLEANS', 114.56, 2),
(15, 'Bessin-Grosdoit', 'Christophe', '92 r Falaise', '6000', 'NICE', 222.06, 5),
(16, 'Rossa', 'Claire', '14 av Thiès', '6000', 'NICE', 529.78, 4),
(17, 'Cauchy', 'Denis', '5 av Ste Thérèse', '11000', 'NARBONNE', 458.82, 4),
(18, 'Gaffé', 'Dominique', '9 av 1ère Armée Française', '35000', 'RENNES', 213.4, 4),
(19, 'Guenon', 'Dominique', '98 bd Mar Lyautey', '44000', 'NANTES', 175.89, 1),
(20, 'Prévot', 'Dominique', '29 r Lucien Nelle', '87000', 'LIMOGES', 151.36, 3),
(21, 'Houchard', 'Eliane', '9 r Demolombe', '49100', 'ANGERS', 436.96, 2),
(22, 'Desmons', 'Elisabeth', '51 r Bernières', '29000', 'QUIMPER', 281.17, 1),
(23, 'Flament', 'Elisabeth', '11 r Pasteur', '35000', 'RENNES', 315.6, 1),
(24, 'Goussard', 'Emmanuel', '9 r Demolombe', '41000', 'BLOIS', 40.72, 5),
(25, 'Desprez', 'Eric', '9 r Vaucelles', '33000', 'BORDEAUX', 406.85, 5),
(26, 'Coste', 'Evelyne', '29 r Lucien Nelle', '19000', 'TULLE', 441.87, 1),
(27, 'Lefebvre', 'Frédéric', '2 pl Wurzburg', '55000', 'VERDUN', 573.63, 1),
(28, 'Lemée', 'Frédéric', '29 av 6 Juin', '56000', 'VANNES', 326.4, 1),
(29, 'Martin', 'Frédéric', 'Bât A 90 r Bayeux', '70000', 'VESOUL', 506.06, 2),
(30, 'Marie', 'Frédérique', '172 r Caponière', '70000', 'VESOUL', 313.31, 3),
(31, 'Rosenstech', 'Geneviève', '27 r Auvergne', '75000', 'PARIS', 366.82, 4),
(32, 'Pontavice', 'Ghislaine', '8 r Gaillon', '86000', 'POITIERS', 265.58, 5),
(33, 'Leveneur-Mosquet', 'Guillaume', '47 av Robert Schuman', '64000', 'PAU', 184.97, 2),
(34, 'Blanchais', 'Guy', '30 r Authie', '8000', 'SEDAN', 502.48, 3),
(35, 'Leveneur', 'Hugues', '7 pl St Gilles', '62000', 'ARRAS', 7.39, 2),
(36, 'Mosquet', 'Isabelle', '22 r Jules Verne', '76000', 'ROUEN', 77.1, 1),
(37, 'Giraudon', 'Jean-Christophe', '1 r Albert de Mun', '38100', 'VIENNE', 92.62, 4),
(38, 'Marie', 'Jean-Claude', '26 r Hérouville', '69000', 'LYON', 120.1, 5),
(39, 'Maury', 'Jean-François', '5 r Pierre Girard', '71000', 'CHALON SUR SAONE', 13.73, 5),
(40, 'Dennel', 'Jean-Louis', '7 pl St Gilles', '28000', 'CHARTRES', 550.69, 1),
(41, 'Ain', 'Jean-Pierre', '4 résid Olympia', '2000', 'LAON', 5.59, 3),
(42, 'Chemery', 'Jean-Pierre', '51 pl Ancienne Boucherie', '14000', 'CAEN', 396.58, 2),
(43, 'Comoz', 'Jean-Pierre', '35 r Auguste Lechesne', '18000', 'BOURGES', 340.35, 5),
(44, 'Desfaudais', 'Jean-Pierre', '7 pl St Gilles', '29000', 'BREST', 71.76, 4),
(45, 'Phan', 'JérÃ´me', '9 r Clos Caillet', '79000', 'NIORT', 451.61, 4),
(46, 'Riou', 'Line', '43 bd Gén Vanier', '77000', 'MARNE LA VALLEE', 193.25, 3),
(47, 'Chubilleau', 'Louis', '46 r Eglise', '17000', 'SAINTES', 202.07, 2),
(48, 'Lebrun', 'Lucette', '178 r Auge', '54000', 'NANCY', 410.41, 2),
(49, 'Goessens', 'Marc', '6 av 6 Juin', '39000', 'DOLE', 548.57, 4),
(50, 'Laforge', 'Marc', '5 résid Prairie', '50000', 'SAINT LO', 265.05, 4),
(51, 'Millereau', 'Marc', '36 av 6 Juin', '72000', 'LA FERTE BERNARD', 430.42, 3),
(52, 'Dauverne', 'Marie-Christine', '69 av Charlemagne', '21000', 'DIJON', 281.05, 2),
(53, 'Vittorio', 'Myriam', '3 pl Champlain', '94000', 'BOISSY SAINT LEGER', 356.23, 2),
(54, 'Lapasset', 'Nhieu', '31 av 6 Juin', '52000', 'CHAUMONT', 107, 3),
(55, 'Plantet-Besnier', 'Nicole', '10 av 1ère Armée Française', '86000', 'CHATELLEREAULT', 369.94, 1),
(56, 'Chubilleau', 'Pascal', '3 r Hastings', '15000', 'AURRILLAC', 290.75, 1),
(57, 'Robert', 'Pascal', '31 r St Jean', '93000', 'BOBIGNY', 162.41, 2),
(58, 'Jean', 'Pascale', '114 r Authie', '49100', 'SAUMUR', 375.52, 2),
(59, 'Chanteloube', 'Patrice', '14 av Thiès', '13000', 'MARSEILLE', 478.01, 2),
(60, 'Lecuirot', 'Patrice', 'résid St Pères 55 r Pigacière', '54000', 'NANCY', 239.66, 4),
(61, 'Gandon', 'Patrick', '47 av Robert Schuman', '37000', 'TOURS', 599.06, 2),
(62, 'Mirouf', 'Patrick', '22 r Puits Picard', '74000', 'ANNECY', 458.42, 1),
(63, 'Boireaux', 'Philippe', '14 av Thiès', '10000', 'CHALON EN CHAMPAGNE', 454.48, 2),
(64, 'Cendrier', 'Philippe', '7 pl St Gilles', '12000', 'RODEZ', 164.16, 3),
(65, 'Duhamel', 'Philippe', '114 r Authie', '34000', 'MONTPELLIER', 98.62, 2),
(66, 'Grigy', 'Philippe', '15 r Mélingue', '44000', 'CLISSON', 285.1, 1),
(67, 'Linard', 'Philippe', '1 r Albert de Mun', '81000', 'ALBI', 486.3, 1),
(68, 'Lozier', 'Philippe', '8 r Gaillon', '31000', 'TOULOUSE', 48.4, 4),
(69, 'Dechâtre', 'Pierre', '63 av Thiès', '23000', 'MONTLUCON', 253.75, 4),
(70, 'Goessens', 'Pierre', '22 r Jean Romain', '40000', 'MONT DE MARSAN', 426.19, 5),
(71, 'Leménager', 'Pierre', '39 av 6 Juin', '57000', 'METZ', 118.7, 3),
(72, 'Née', 'Pierre', '39 av 6 Juin', '82000', 'MONTAUBAN', 72.54, 3),
(73, 'Guyot', 'Pierre-Laurent', '43 bd Gén Vanier', '48000', 'MENDE', 352.31, 2),
(74, 'Chauchard', 'Roger', '9 r Vaucelles', '13000', 'MARSEILLE', 552.19, 2),
(75, 'Mabire', 'Roland', '11 r Boutiques', '67000', 'STRASBOURG', 422.39, 2),
(76, 'Leroy', 'Soazig', '45 r Boutiques', '61000', 'ALENCON', 570.67, 2),
(77, 'Guyot', 'Stéphane', '26 r Hérouville', '46000', 'FIGEAC', 28.85, 2),
(78, 'Delposen', 'Sylvain', '39 av 6 Juin', '27000', 'DREUX', 292.01, 2),
(79, 'Rault', 'Sylvie', '15 bd Richemond', '2000', 'SOISSON', 526.6, 2),
(80, 'Renouf', 'Sylvie', '98 bd Mar Lyautey', '88000', 'EPINAL', 425.24, 4),
(81, 'Alliet-Grach', 'Thierry', '14 av Thiès', '7000', 'PRIVAS', 451.31, 4),
(82, 'Bayard', 'Thierry', '92 r Falaise', '42000', 'SAINT ETIENNE', 271.71, 5),
(83, 'Gauchet', 'Thierry', '7 r Desmoueux', '38100', 'GRENOBLE', 406.1, 2),
(84, 'Bobichon', 'Tristan', '219 r Caponière', '9000', 'FOIX', 218.36, 5),
(85, 'Duchemin-Laniel', 'Véronique', '130 r St Jean', '33000', 'LIBOURNE', 265.61, 1),
(86, 'Laurent', 'Younès', '34 r Demolombe', '53000', 'MAYENNE', 496.1, 1),
(87, 'AAAADupont', 'John', '67 rue de la forêt', '73014', 'Samoens', 0.97, 6);

-- --------------------------------------------------------

--
-- Structure de la table `rapport_visite`
--

CREATE TABLE IF NOT EXISTS `rapport_visite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dateRapport` datetime NOT NULL,
  `bilan` varchar(255) NOT NULL,
  `motif` varchar(255) NOT NULL,
  `visiteur_id` int(11) DEFAULT NULL,
  `medecin_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idVisiteur` (`visiteur_id`),
  KEY `idMedecin` (`medecin_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Contenu de la table `rapport_visite`
--

INSERT INTO `rapport_visite` (`id`, `dateRapport`, `bilan`, `motif`, `visiteur_id`, `medecin_id`) VALUES
(3, '2002-04-18 00:00:00', 'Médecin curieux, à recontacer en décembre pour réunion', 'Actualisation annuelle', 1, 23),
(4, '2003-05-21 00:00:00', 'Changement de direction, redéfinition de la politique médicamenteuse, recours au générique', 'Baisse activité', 2, 4),
(7, '2003-03-23 00:00:00', 'RAS\r\nChangement de tel : 05 89 89 89 89', 'Rapport Annuel', 1, 41),
(8, '2015-03-27 08:33:35', 'Bilan positif ; médecin vivement intéressé', 'Visite régulière', 32, 87);

-- --------------------------------------------------------

--
-- Structure de la table `type_praticien`
--

CREATE TABLE IF NOT EXISTS `type_praticien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `libelleType` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Contenu de la table `type_praticien`
--

INSERT INTO `type_praticien` (`id`, `libelleType`) VALUES
(1, 'Médecine de ville'),
(2, 'Médecin hospitalier'),
(3, 'Personnel de santé'),
(4, 'Pharmacien Hospitalier'),
(5, 'Pharmacien Officine'),
(6, 'Médecin spécialisé');

-- --------------------------------------------------------

--
-- Structure de la table `visiteur`
--

CREATE TABLE IF NOT EXISTS `visiteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idGSB` varchar(4) NOT NULL DEFAULT '',
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) NOT NULL,
  `login` varchar(20) NOT NULL,
  `mdp` varchar(20) NOT NULL,
  `adresse` varchar(30) NOT NULL,
  `cp` varchar(5) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `dateEmbauche` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=33 ;

--
-- Contenu de la table `visiteur`
--

INSERT INTO `visiteur` (`id`, `idGSB`, `nom`, `prenom`, `login`, `mdp`, `adresse`, `cp`, `ville`, `dateEmbauche`) VALUES
(1, 'a131', 'Villechalane', 'Louis', 'lvillachane', 'jux7g', '8 rue des Charmes', '46000', 'Cahors', '2005-12-21'),
(2, 'a17', 'Andre', 'David', 'dandre', 'oppg5', '1 rue Petit', '46200', 'Lalbenque', '1998-11-23'),
(3, 'a55', 'Bedos', 'Christian', 'cbedos', 'gmhxd', '1 rue Peranud', '46250', 'Montcuq', '1995-01-12'),
(4, 'a93', 'Tusseau', 'Louis', 'ltusseau', 'ktp3s', '22 rue des Ternes', '46123', 'Gramat', '2000-05-01'),
(5, 'b13', 'Bentot', 'Pascal', 'pbentot', 'doyw1', '11 allée des Cerises', '46512', 'Bessines', '1992-07-09'),
(6, 'b16', 'Bioret', 'Luc', 'lbioret', 'hrjfs', '1 Avenue gambetta', '46000', 'Cahors', '1998-05-11'),
(7, 'b19', 'Bunisset', 'Francis', 'fbunisset', '4vbnd', '10 rue des Perles', '93100', 'Montreuil', '1987-10-21'),
(8, 'b25', 'Bunisset', 'Denise', 'dbunisset', 's1y1r', '23 rue Manin', '75019', 'paris', '2010-12-05'),
(9, 'b28', 'Cacheux', 'Bernard', 'bcacheux', 'uf7r3', '114 rue Blanche', '75017', 'Paris', '2009-11-12'),
(10, 'b34', 'Cadic', 'Eric', 'ecadic', '6u8dc', '123 avenue de la République', '75011', 'Paris', '2008-09-23'),
(11, 'b4', 'Charoze', 'Catherine', 'ccharoze', 'u817o', '100 rue Petit', '75019', 'Paris', '2005-11-12'),
(12, 'b50', 'Clepkens', 'Christophe', 'cclepkens', 'bw1us', '12 allée des Anges', '93230', 'Romainville', '2003-08-11'),
(13, 'b59', 'Cottin', 'Vincenne', 'vcottin', '2hoh9', '36 rue Des Roches', '93100', 'Monteuil', '2001-11-18'),
(14, 'c14', 'Daburon', 'François', 'fdaburon', '7oqpv', '13 rue de Chanzy', '94000', 'Créteil', '2002-02-11'),
(15, 'c3', 'De', 'Philippe', 'pde', 'gk9kx', '13 rue Barthes', '94000', 'Créteil', '2010-12-14'),
(16, 'c54', 'Debelle', 'Michel', 'mdebelle', 'od5rt', '181 avenue Barbusse', '93210', 'Rosny', '2006-11-23'),
(17, 'd13', 'Debelle', 'Jeanne', 'jdebelle', 'nvwqq', '134 allée des Joncs', '44000', 'Nantes', '2000-05-11'),
(18, 'd51', 'Debroise', 'Michel', 'mdebroise', 'sghkb', '2 Bld Jourdain', '44000', 'Nantes', '2001-04-17'),
(19, 'e22', 'Desmarquest', 'Nathalie', 'ndesmarquest', 'f1fob', '14 Place d Arc', '45000', 'Orléans', '2005-11-12'),
(20, 'e24', 'Desnost', 'Pierre', 'pdesnost', '4k2o5', '16 avenue des Cèdres', '23200', 'Guéret', '2001-02-05'),
(21, 'e39', 'Dudouit', 'Frédéric', 'fdudouit', '44im8', '18 rue de l église', '23120', 'GrandBourg', '2000-08-01'),
(22, 'e49', 'Duncombe', 'Claude', 'cduncombe', 'qf77j', '19 rue de la tour', '23100', 'La souteraine', '1987-10-10'),
(23, 'e5', 'Enault-Pascreau', 'Céline', 'cenault', 'y2qdu', '25 place de la gare', '23200', 'Gueret', '1995-09-01'),
(24, 'e52', 'Eynde', 'Valérie', 'veynde', 'i7sn3', '3 Grand Place', '13015', 'Marseille', '1999-11-01'),
(25, 'f21', 'Finck', 'Jacques', 'jfinck', 'mpb3t', '10 avenue du Prado', '13002', 'Marseille', '2001-11-10'),
(26, 'f39', 'Frémont', 'Fernande', 'ffremont', 'xs5tq', '4 route de la mer', '13012', 'Allauh', '1998-10-01'),
(27, 'f4', 'Gest', 'Alain', 'agest', 'dywvt', '30 avenue de la mer', '13025', 'Berre', '1985-11-01'),
(29, '', 'Lebeau', 'Antoine', 'Leb', '123', '85 rue du Bourdon', '57000', 'Metz', '2015-03-02'),
(30, '', 'Lebeau', 'Antoine', 'Leb', '123', '85 rue du Bourdon', '57000', 'Metz', '2015-03-02'),
(31, '', 'Lebeau', 'Antoine', 'Leb', '123', '85 rue du Bourdon', '57000', 'Metz', '2015-03-02'),
(32, 'L12', 'LB', 'Antoine', 'Leb', '123', '85 rue du Palais', '57000', 'Metz', '2015-03-27');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `medicament`
--
ALTER TABLE `medicament`
  ADD CONSTRAINT `FK_D5C171EAD8FA7854` FOREIGN KEY (`Famille_id`) REFERENCES `famille` (`id`);

--
-- Contraintes pour la table `praticien`
--
ALTER TABLE `praticien`
  ADD CONSTRAINT `FK_Praticien_Type` FOREIGN KEY (`typeMedecin_id`) REFERENCES `type_praticien` (`id`);

--
-- Contraintes pour la table `rapport_visite`
--
ALTER TABLE `rapport_visite`
  ADD CONSTRAINT `FK_1CB339A94F31A84` FOREIGN KEY (`medecin_id`) REFERENCES `praticien` (`id`),
  ADD CONSTRAINT `FK_1CB339A97F72333D` FOREIGN KEY (`visiteur_id`) REFERENCES `visiteur` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
