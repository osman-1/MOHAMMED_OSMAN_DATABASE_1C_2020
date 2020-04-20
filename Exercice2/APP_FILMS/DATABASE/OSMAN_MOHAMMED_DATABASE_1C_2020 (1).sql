--
-- OSMAN MOHAMMED 10.03.2020
-- MY DATABASE FOR PHYSICAL INVENTORY
-- Database: OSMAN_MOHAMMED_DATABASE_1C_2020

-- Détection si une autre base de donnée du même nom existe

DROP DATABASE if exists OSMAN_MOHAMMED_DATABASE_1C_2020;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS OSMAN_MOHAMMED_DATABASE_1C_2020;

-- Utilisation de cette base de donnée

USE  OSMAN_MOHAMMED_DATABASE_1C_2020;


-- --------------------------------------------------------

--
-- Structure de la table `T_fournisseur`
--

CREATE TABLE `T_fournisseur` (
  `Id_fournisseur` int(11) NOT NULL,
  `fournisseur` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `T_fournisseur`
--

INSERT INTO `T_fournisseur` (`Id_fournisseur`, `fournisseur`) VALUES
(1, 'test');

-- --------------------------------------------------------

--
-- Structure de la table `T_location`
--

CREATE TABLE `T_location` (
  `Id_location` int(11) NOT NULL,
  `site` varchar(30) NOT NULL,
  `OfficeNum` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `T_material`
--

CREATE TABLE `T_material` (
  `Id_material` int(11) NOT NULL,
  `Material` varchar(40) NOT NULL,
  `Model` varchar(30) NOT NULL,
  `Num serie` int(11) NOT NULL,
  `Fin de garentie` date NOT NULL,
  `Date d'achat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `T_material_fornisseur`
--

CREATE TABLE `T_material_fornisseur` (
  `Id_t_r_material_fournisseur` int(11) NOT NULL,
  `FK_material` int(11) NOT NULL,
  `Fk_fournisseur` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `T_material_location`
--

CREATE TABLE `T_material_location` (
  `Id_t_r_material_location` int(11) NOT NULL,
  `FK_material` int(11) NOT NULL,
  `FK_location` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Last_phy_inventory` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `T_material_status`
--

CREATE TABLE `T_material_status` (
  `Id_t_r_material_status` int(11) NOT NULL,
  `FK_material` int(11) NOT NULL,
  `Fk_status` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `T_status`
--

CREATE TABLE `T_status` (
  `Id_status` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `T_user`
--

CREATE TABLE `T_user` (
  `Id_user` int(11) NOT NULL,
  `Nom` varchar(40) NOT NULL,
  `Prenom` int(30) NOT NULL,
  `UserNom` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `T_user_material`
--

CREATE TABLE `T_user_material` (
  `Id_t_r_user_material` int(11) NOT NULL,
  `Fk_user` int(11) NOT NULL,
  `Fk_material` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Index pour les tables exportées
--

--
-- Index pour la table `T_fournisseur`
--
ALTER TABLE `T_fournisseur`
  ADD PRIMARY KEY (`Id_fournisseur`);

--
-- Index pour la table `T_location`
--
ALTER TABLE `T_location`
  ADD PRIMARY KEY (`Id_location`);

--
-- Index pour la table `T_material`
--
ALTER TABLE `T_material`
  ADD PRIMARY KEY (`Id_material`);

--
-- Index pour la table `T_material_fornisseur`
--
ALTER TABLE `T_material_fornisseur`
  ADD PRIMARY KEY (`Id_t_r_material_fournisseur`),
  ADD KEY `FK_material` (`FK_material`),
  ADD KEY `Fk_fournisseur` (`Fk_fournisseur`);

--
-- Index pour la table `T_material_location`
--
ALTER TABLE `T_material_location`
  ADD PRIMARY KEY (`Id_t_r_material_location`),
  ADD KEY `FK_material` (`FK_material`),
  ADD KEY `FK_location` (`FK_location`);

--
-- Index pour la table `T_material_status`
--
ALTER TABLE `T_material_status`
  ADD PRIMARY KEY (`Id_t_r_material_status`),
  ADD KEY `FK_material` (`FK_material`),
  ADD KEY `Fk_status` (`Fk_status`);

--
-- Index pour la table `T_status`
--
ALTER TABLE `T_status`
  ADD PRIMARY KEY (`Id_status`);

--
-- Index pour la table `T_user`
--
ALTER TABLE `T_user`
  ADD PRIMARY KEY (`Id_user`);

--
-- Index pour la table `T_user_material`
--
ALTER TABLE `T_user_material`
  ADD PRIMARY KEY (`Id_t_r_user_material`),
  ADD KEY `Fk_user` (`Fk_user`),
  ADD KEY `Fk_material` (`Fk_material`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `T_fournisseur`
--
ALTER TABLE `T_fournisseur`
  MODIFY `Id_fournisseur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `T_location`
--
ALTER TABLE `T_location`
  MODIFY `Id_location` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `T_material`
--
ALTER TABLE `T_material`
  MODIFY `Id_material` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `T_material_fornisseur`
--
ALTER TABLE `T_material_fornisseur`
  MODIFY `Id_t_r_material_fournisseur` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `T_material_location`
--
ALTER TABLE `T_material_location`
  MODIFY `Id_t_r_material_location` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `T_material_status`
--
ALTER TABLE `T_material_status`
  MODIFY `Id_t_r_material_status` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `T_status`
--
ALTER TABLE `T_status`
  MODIFY `Id_status` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `T_user`
--
ALTER TABLE `T_user`
  MODIFY `Id_user` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `T_user_material`
--
ALTER TABLE `T_user_material`
  MODIFY `Id_t_r_user_material` int(11) NOT NULL AUTO_INCREMENT;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `T_material_fornisseur`
--
ALTER TABLE `T_material_fornisseur`
  ADD CONSTRAINT `T_material_fornisseur_ibfk_1` FOREIGN KEY (`FK_material`) REFERENCES `T_material` (`Id_material`),
  ADD CONSTRAINT `T_material_fornisseur_ibfk_2` FOREIGN KEY (`Fk_fournisseur`) REFERENCES `T_fournisseur` (`Id_fournisseur`);

--
-- Contraintes pour la table `T_material_location`
--
ALTER TABLE `T_material_location`
  ADD CONSTRAINT `T_material_location_ibfk_1` FOREIGN KEY (`FK_material`) REFERENCES `T_material` (`Id_material`),
  ADD CONSTRAINT `T_material_location_ibfk_2` FOREIGN KEY (`FK_location`) REFERENCES `T_location` (`Id_location`);

--
-- Contraintes pour la table `T_material_status`
--
ALTER TABLE `T_material_status`
  ADD CONSTRAINT `T_material_status_ibfk_1` FOREIGN KEY (`FK_material`) REFERENCES `T_material` (`Id_material`),
  ADD CONSTRAINT `T_material_status_ibfk_2` FOREIGN KEY (`Fk_status`) REFERENCES `T_status` (`Id_status`);

--
-- Contraintes pour la table `T_user_material`
--
ALTER TABLE `T_user_material`
  ADD CONSTRAINT `T_user_material_ibfk_1` FOREIGN KEY (`Fk_user`) REFERENCES `T_user` (`Id_user`),
  ADD CONSTRAINT `T_user_material_ibfk_2` FOREIGN KEY (`Fk_material`) REFERENCES `T_material` (`Id_material`);

/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
