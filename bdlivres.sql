--
-- Base de donnees :  `bdlivres`
CREATE DATABASE `bdlivres`;
USE `bdlivres`;

-- --------------------------------------------------------

--
-- Structure de la table `tlignehistorique`
--

CREATE TABLE `tlignehistorique` (
  `dateModification` date NOT NULL,
  `isbn` varchar(20) NOT NULL,
  `prix` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tlignehistorique`
--

INSERT INTO `tlignehistorique` (`dateModification`, `isbn`, `prix`) VALUES
('2011-02-01', '2-7440-1301-3', 78),
('2013-03-01', '2-7440-1301-3', 75),
('2014-10-01', '978-2-7460-9114-6', 45),
('2016-05-01', '978-2-7460-9114-6', 40);

-- --------------------------------------------------------

--
-- Structure de la table `tlivre`
--

CREATE TABLE `tlivre` (
  `isbn` varchar(20) NOT NULL,
  `titre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `tlivre`
--

INSERT INTO `tlivre` (`isbn`, `titre`) VALUES
('2-7440-1301-3', 'UML et les design patterns'),
('978-2-7460-9114-6', 'JSF2 avec Eclipse');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `tlignehistorique`
--
ALTER TABLE `tlignehistorique`
  ADD PRIMARY KEY (`dateModification`,`isbn`),
  ADD KEY `isbn` (`isbn`);

--
-- Index pour la table `tlivre`
--
ALTER TABLE `tlivre`
  ADD PRIMARY KEY (`isbn`);

--
-- Contraintes pour les tables exportees
--

--
-- Contraintes pour la table `tlignehistorique`
--
ALTER TABLE `tlignehistorique`
  ADD CONSTRAINT `tlignehistorique_ibfk_1` FOREIGN KEY (`isbn`) REFERENCES `tlivre` (`isbn`) ON DELETE CASCADE;
