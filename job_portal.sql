

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";



-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_qualification`
--

CREATE TABLE `tbl_academic_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL,
  `transcript` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(1, '1123', 'Vous avez été enregisré avec succès', 'succès'),
(2, '4568', 'Une erreur inconnue sest produite lors de lexécution de votre demande', 'danger'),
(3, '0927', 'Ladresse e-mail est déjà enregistrée', 'avertissement'),
(4, '0346', 'E-mail ou mot de passe invalide', 'danger'),
(5, '9837', 'Votre profil a été mis à jour avec succès', 'succès'),
(6, '9564', 'Mot de passe mis à jour avec succès', 'succès'),
(9, '2305', 'La qualification professionnelle a été ajoutée avec succès', 'succès'),
(11, '0521', 'La qualification a été supprimée avec succès', 'succès'),
(13, '9367', 'la langue a été ajoutée', 'succès'),
(14, '0591', 'La langue a été supprimée avec succès', 'succès'),
(15, '8763', 'La langue a été mise à jour', 'succès'),
(16, '6734', 'La qualification professionnelle a été mise à jour', 'succès'),
(17, '9843', 'Votre offre demploi a été publiée avec succès', 'succès'),
(18, '1964', 'La formation/latelier ont été ajoutés avec succès', 'succès'),
(20, '9210', 'lexpérience professionnelle a été ajoutée', 'succès'),
(22, '9215', 'expérience de travail mise à jour avec succès', 'succès'),
(24, '0593', 'lexpérience de travail a été supprimée', 'succès'),
(26, '9522', 'Le dossier de formation / atelier a été supprimé', 'succès'),
(28, '2303', 'La qualification académique a été ajoutée avec succès', 'succès'),
(30, '1521', 'La qualification académique a été supprimée', 'succès'),
(32, '3214', 'Les qualifications académiques ont été mises à jour', 'succès'),
(34, '2380', 'Larbitre a été ajouté avec succès', 'succès'),
(36, '7642', 'Les informations sur larbitre ont été mises à jour', 'succès'),
(38, '0173', 'LOffre demploi a été supprimée', 'succès'),
(40, '0369', 'Loffre demploi a été mise à jour avec succès', 'succès'),
(42, '2974', 'Une erreur sest produite lors de lenvoi de votre messag', 'danger'),
(43, '5634', 'Votre messag a été envoyé avec succès', 'succès'),
(44, '3091', 'Vous avez changé votre mot de passe avec succès', 'succès'),
(45, '3591', 'Une erreur sest produite lors de la mise à jour de votre mot de passe', 'danger'),
(46, '2290', 'La taille de votre certificat doit être inférieure ou égale à <strong>1Mo</strong>', 'avertissement'),
(47, '2490', 'La taille de votre transcription doit être inférieure ou égale à <strong>1Mo</strong>', 'avertissement'),
(48, '5790', 'Les informations sur la formation ont été mises à jour', 'succès'),
(50, '3478', 'La taille de votre imag doit être inférieure ou égale à <strong>1Mo</strong>', 'avertissement'),
(51, '6789', 'La pièce jointe a été ajoutée avec succès', 'succès'),
(53, '6784', 'La pièce jointe a été supprimée avec succès', 'succès'),
(55, '7764', 'La pièce jointe a été mise à jour avec succès', 'succès'),
(57, '9517', 'Larbitre a été supprimé', 'succès');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`) VALUES
(1, 'Comptabilité'),
(2, 'Audit'),
(3, ' Services bancaires et financiers '),
(4, 'PDG et Direction Générale'),
(5, 'Community and Social Devt'),
(6, 'Création et conception'),
(7, "Éducation et formation"),
(8, 'Ingénierie et construction'),
(9, 'Agriculture et Agroalimentaire'),
(10, 'Santé et pharmaceutique'),
(11, 'RH & Administration'),
(12, "Informatique et Télécoms"),
(13, 'Juridique'),
(14, 'Fabrication'),
(15, 'Marketing, médias et marque'),
(16, 'Mines et ressources naturelles'),
(17, 'Gestion de projets et de programmes'),
(18, "Recherche, science et biotechnologie"),
(19, 'Sécurité'),
(20, 'Stratégie et Conseil'),
(21, "Tourisme et voyages"),
(22, 'Métiers et services'),
(23, 'Transport et Logistique'),
(24, 'Autre');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_code`, `country_name`) VALUES
1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albanie'),
(3, 'DZ', 'Algérie'),
(4, 'DS', 'Samoa américaines'),
(5, 'AD', 'Andorre'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctique'),
(9, 'AG', 'Antigua-et-Barbuda'),
(10, 'AR', 'Argentine'),
(11, 'AM', 'Arménie'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australie'),
(14, 'AT', 'Autriche'),
(15, 'AZ', 'Azerbaïdjan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahreïn'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbade'),
(20, 'BY', 'Biélorussie'),
(21, 'BE', 'Belgique'),
(22, 'BZ', 'Bélize'),
(23, 'BJ', 'Bénin'),
(24, 'BM', 'Bermudes'),
(25, 'BT', 'Bhoutan'),
(26, 'BO', 'Bolivie'),
(27, 'BA', 'Bosnie-Herzégovine'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Ile Bouvet'),
(30, 'BR', 'Brésil'),
(31, 'IO', 'Territoire britannique de l'océan Indien'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgarie'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodge'),
(37, 'CM', 'Cameroun'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cap Vert'),
(40, 'KY', 'Îles Caïmans'),
(41, 'CF', 'République centrafricaine'),
(42, 'TD', 'Tchad'),
(43, 'CL', 'Chili'),
(44, 'CN', 'Chine'),
(45, 'CX', 'L'île Noël'),
(46, 'CC', 'Îles Cocos (Keeling)'),
(47, 'CO', 'Colombie'),
(48, 'KM', 'Comores'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Îles Cook'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatie (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Chypre'),
(55, 'CZ', 'République tchèque'),
(56, 'DK', 'Danemark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominique'),
(59, 'DO', 'République dominicaine'),
(60, 'TP', 'Timor oriental'),
(61, 'CE', 'Equateur'),
(62, 'EG', 'Egypte'),
(63, 'SV', 'Salvador'),
(64, 'GQ', 'Guinée équatoriale'),
(65, 'ER', 'Erythrée'),
(66, 'EE', 'Estonie'),
(67, 'ET', 'Éthiopie'),
(68, 'FK', 'Îles Falkland (Malouines)'),
(69, 'FO', 'Îles Féroé'),
(70, 'FJ', 'Fidji'),
(71, 'FI', 'Finlande'),
(72, 'FR', 'France'),
(73, 'FX', 'France métropolitaine'),
(74, 'GF', 'Guyane française'),
(75, 'PF', 'Polynésie française'),
(76, 'TF', 'Terres Australes Françaises'),
(77, 'AG', 'Gabon'),
(78, 'GM', 'Gambie'),
(79, 'GE', 'Géorgie'),
(80, 'DE', 'Allemagne'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernesey'),
(84, 'GR', 'Grèce'),
(85, 'GL', 'Groenland'),
(86, 'GD', 'Grenade'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinée'),
(91, 'GW', 'Guinée-Bissau'),
(92, 'GY', 'Guyane'),
(93, 'HT', 'Haïti'),
(94, 'HM', 'Îles Heard et Mc Donald'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hongrie'),
(98, 'EST', 'Islande'),
(99, 'IN', 'Inde'),
(100, 'IM', 'Île de Man'),
(101, 'ID', 'Indonésie'),
(102, 'IR', 'Iran (République islamique d')'),
(103, 'IQ', 'Irak'),
(104, 'IE', 'Irlande'),
(105, 'IL', ''),
(106, 'IT', 'Italie'),
(107, 'CI', 'Côte d'Ivoire'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaïque'),
(110, 'JP', 'Japon'),
(111, 'JO', 'Jordanie'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Corée, République populaire démocratique de'),
(116, 'KR', 'Corée, République de'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Koweït'),
(119, 'KG', 'Kirghizistan'),
(120, 'LA', 'République démocratique populaire lao'),
(121, 'LV', 'Lettonie'),
(122, 'LB', 'Liban'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Libéria'),
(125, 'LY', 'Jamahiriya arabe libyenne'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lituanie'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macao'),
(130, 'MK', 'Macédoine'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaisie'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malte'),
(137, 'MH', 'Îles Marshall'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritanie'),
(140, 'MU', 'Maurice'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexique'),
(143, 'FM', 'Micronésie, États fédérés de'),
(144, 'MD', 'Moldavie, République de'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolie'),
(147, 'ME', 'Monténégro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Maroc'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Birmanie'),
(152, 'NA', 'Namibie'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Népal'),
(155, 'NL', 'Pays-Bas'),
(156, 'AN', 'Antilles néerlandaises'),
(157, 'NC', 'Nouvelle-Calédonie'),
(158, 'NZ', 'Nouvelle-Zélande'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigéria'),
(162, 'NU', 'Nioué'),
(163, 'NF', 'Île Norfolk'),
(164, 'MP', 'Îles Mariannes du Nord'),
(165, 'NON', 'Norvège'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palaos'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panamá'),
(171, 'PG', 'Papouasie-Nouvelle-Guinée'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Pérou'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Pologne'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Porto Rico'),
(179, 'AQ', 'Qatar'),
(180, 'RE', 'Réunion'),
(181, 'RO', 'Roumanie'),
(182, 'RU', 'Fédération de Russie'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint-Kitts-et-Nevis'),
(185, 'LC', 'Sainte-Lucie'),
(186, 'VC', 'Saint-Vincent-et-les Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'Saint-Marin'),
(189, 'ST', 'Sao Tomé et Principe'),
(190, 'SA', 'Arabie Saoudite'),
(191, 'SN', 'Sénégal'),
(192, 'RS', 'Serbie'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapour'),
(196, 'SK', 'Slovaquie'),
(197, 'SI', 'Slovénie'),
(198, 'SB', 'Îles Salomon'),
(199, 'SO', 'Somalie'),
(200, 'ZA', 'Afrique du Sud'),
(201, 'GS', 'Géorgie du Sud Îles Sandwich du Sud'),
(202, 'ES', 'Espagne'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'Sainte-Hélène'),
(205, 'PM', 'Saint-Pierre et Miquelon'),
(206, 'SD', 'Soudan'),
(207, 'SR', 'Surinam'),
(208, 'SJ', 'Îles Svalbard et Jan Mayen'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Suède'),
(211, 'CH', 'Suisse'),
(212, 'SY', 'République arabe syrienne'),
(213, 'TW', 'Taïwan'),
(214, 'TJ', 'Tadjikistan'),
(215, 'TZ', 'Tanzanie, République-Unie de'),
(216, 'TH', 'Thaïlande'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokélaou'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinité-et-Tobago'),
(221, 'TN', 'Tunisie'),
(222, 'TR', 'Turquie'),
(223, 'TM', 'Turkménistan'),
(224, 'TC', 'Îles Turques et Caïques'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Ouganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'Emirats Arabes Unis'),
(229, 'GB', 'Royaume-Uni'),
(230, 'États-Unis', 'États-Unis'),
(231, 'UM', 'îles périphériques mineures des États-Unis'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Ouzbékistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'État de la Cité du Vatican'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Iles Vierges (Britanniques)'),
(239, 'VI', 'Îles Vierges (États-Unis)'),
(240, 'WF', 'Îles Wallis et Futuna'),
(241, 'EH', 'Sahara occidental'),
(242, 'YE', 'Yémen'),
(243, 'ZR', 'Zaïre'),
(244, 'ZM', 'Zambie'),
(245, 'ZW', 'Zimbabwe');


-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience`
--

CREATE TABLE `tbl_experience` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `supervisor_phone` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `duties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `requirements` longtext NOT NULL,
  `company` varchar(255) NOT NULL,
  `date_posted` varchar(255) NOT NULL,
  `closing_date` varchar(255) NOT NULL,
  `enc_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `title`, `city`, `country`, `category`, `type`, `experience`, `description`, `responsibility`, `requirements`, `company`, `date_posted`, `closing_date`, `enc_id`) VALUES
('5609558107', 'Technical Engineer', 'Takoradi', 'Ghana', 'IT and Telecoms', 'Full-time', '2 Years', 'This is a complete system that has both android version and the desktop version. It also manages sales and can be used manage attendance as well.<br>', 'This is a complete system that has both android version and the desktop version. It also manages sales and can be used manage attendance as well.<br>', 'This is a complete system that has both android version and the desktop version. It also manages sales and can be used manage attendance as well.<br>', 'CM858235891', 'August 06, 2021', '01/09/2021', 11);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_applications`
--

CREATE TABLE `tbl_job_applications` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `application_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `speak` varchar(255) NOT NULL,
  `reading` varchar(255) NOT NULL,
  `writing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_attachments`
--

CREATE TABLE `tbl_other_attachments` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `issuer` varchar(255) NOT NULL,
  `attachment` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_professional_qualification`
--

CREATE TABLE `tbl_professional_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referees`
--

CREATE TABLE `tbl_referees` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `ref_name` varchar(255) NOT NULL,
  `ref_mail` varchar(255) NOT NULL,
  `ref_title` varchar(255) NOT NULL,
  `ref_phone` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tokens`
--

CREATE TABLE `tbl_tokens` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `training` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT '-',
  `bdate` varchar(255) NOT NULL DEFAULT '-',
  `bmonth` varchar(255) NOT NULL DEFAULT '-',
  `byear` varchar(255) NOT NULL DEFAULT '-',
  `email` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL DEFAULT '-',
  `title` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(255) NOT NULL DEFAULT '-',
  `street` varchar(255) NOT NULL DEFAULT '-',
  `zip` varchar(255) NOT NULL DEFAULT '-',
  `country` varchar(255) NOT NULL DEFAULT '-',
  `phone` varchar(255) NOT NULL DEFAULT '-',
  `about` longtext,
  `avatar` longblob,
  `services` longtext,
  `expertise` longtext,
  `people` varchar(255) NOT NULL DEFAULT '-',
  `last_login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL,
  `member_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `country`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`, `member_no`) VALUES


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`enc_id`),
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`member_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `enc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

