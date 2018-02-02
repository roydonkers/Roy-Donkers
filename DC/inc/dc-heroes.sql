-- phpMyAdmin SQL Dump
-- version 4.7.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Gegenereerd op: 02 feb 2018 om 15:05
-- Serverversie: 5.7.19
-- PHP-versie: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dc-heroes`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `hero`
--

CREATE TABLE `hero` (
  `heroId` int(3) NOT NULL COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable',
  `heroName` varchar(50) NOT NULL COMMENT 'the name of the hero, just a string',
  `heroDescription` text NOT NULL COMMENT 'some information of the hero, just a string',
  `heroPower` text NOT NULL,
  `heroImage` varchar(50) NOT NULL COMMENT 'the image of the hero is strored as a string. The actual image is strored on the server. Use the string as the source of the HTML img-tag.',
  `teamId` int(3) NOT NULL COMMENT 'this is the teamId. Used as a referenc to the team table.'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `hero`
--

INSERT INTO `hero` (`heroId`, `heroName`, `heroDescription`, `heroPower`, `heroImage`, `teamId`) VALUES
(1, 'Harley Quinn', 'Dr. Harleen Frances Quinzel, also known as Harley Quinn (a pun on the word \"harlequin\"), first appeared in the Batman: The Animated Series episode \"Joker\'s Favor\", where she served as a humorous female sidekick to the Joker. In her first appearances she was depicted as a character completely devoted to the Joker, totally oblivious to his psychotic nature and obvious lack of affection for her; this characterization has remained more or less consistent throughout her subsequent appearances.', '<ul>\r\n<li>Athletic Combat</li>\r\n</ul>', 'HQ.jpg', 1),
(2, 'Killer Croc', 'Killer Croc is a fictional supervillain appearing in American comic books published by DC Comics, commonly as an adversary of the superhero Batman. Killer Croc belongs to the collective of adversaries that make up Batman\'s rogues gallery.\r\n\r\nThe character has a rare genetic condition giving him a crocodilian appearance. Killer Croc\'s real name is Waylon Jones, a sideshow wrestler who developed into a dangerous and animalistic criminal in Gotham City. Killer Croc appears in the fifth volume of the Suicide Squad comic series, in which he is a recurring member of the team and a romantic interest of Enchantress.[1]\r\n\r\nThe character has been adapted into various media featuring Batman, including animated TV series, film, video games, and novels. Adewale Akinnuoye-Agbaje portrayed Killer Croc in the 2016 film Suicide Squad.', '<ul>\r\n<li> Strong body </li>\r\n</ul>', 'KC.png', 1),
(3, 'Dead Shot', 'Deadshot (Floyd Lawton) is a fictional supervillain appearing in comic books published by DC Comics. Created by David Vern Reed, Lew Schwartz and Bob Kane, he first appeared in Batman #59 (June–July 1950).[1] The character is an excellent sniper who regularly boasts of never missing a shot, and is often considered as one of the deadliest assassins in the DC Universe. Deadshot is an adversary of the superhero Batman and belongs to the collective of enemies that make up his rogues gallery. Though normally portrayed as a supervillain, he is sometimes depicted as an antihero.[2][3]', '<ul>\r\n<li>Good aim</li>\r\n</ul>', 'DS.png', 1),
(4, 'Death Stroke', 'Deathstroke (Slade Joseph Wilson) is a fictional supervillain (sometimes an anti-hero) appearing in American comic books published by DC Comics. The character was created by Marv Wolfman and George Perez. He is a mercenary and assassin who first appeared in The New Teen Titans (vol. 1) #2 (1980).[1] Wizard magazine rated him the 24th Greatest Villain of All Time.', '<ul>\r\n<li> Best martial art specialist ever </li>\r\n</ul>', 'DStroke.png', 1),
(5, 'El diablo', 'El Diablo is a name shared by several fictional characters published by DC Comics: Lazarus Lane, Rafael Sandoval and Chato Santana.', '<ul>\r\n<li> He can shoot fire out of his hands </li>\r\n</ul>', 'el.jpg', 1),
(6, 'The penguin', 'The Penguin (Oswald Chesterfield Cobblepot) is a fictional supervillain appearing in American comic books published by DC Comics, commonly as an adversary of the superhero Batman. The character made his first appearance in Detective Comics #58 (December 1941) and was created by Bob Kane and Hopkins.[1] The Penguin is one of Batman\'s most enduring enemies and belongs to the collective of adversaries that make up Batman\'s rogues gallery.', '<ul>\r\n<li> Vast underworld connections</li>\r\n<li>Skilled in organized leadership</li>\r\n<li>Expert in judo </li>\r\n</ul>', 'pinguin.jpg', 1),
(7, 'August Durant', 'August Durant was a physicist and United States agent who was exposed to a deadly experimental virus. A covert government group called The Agency bartered with Durant, offering him an antidote to the virus in exchange for his unquestioning support. Durant agreed and, as directed by The Agency, assumed the identity of Mockingbird and formed the first Secret Six.\r\n\r\nDurant soon disband the Secret Six and later learned that The Agency was developing an even deadlier version of the virus that he was afflicted, and withdrew his support of the group.[1] Durant reassembled the Secret Six and asked them to train a new team. Unfortunately, The Agency punished Durant\'s defiance by arranging his and his teammates deaths in a plane crash.', '<ul>\r\n<li>Smart</li>\r\n</ul>', 'august.png', 2),
(8, 'Lili de neuve', 'Lili de Neuve was a French film star who was framed for murder. She was convicted, but released upon protection of alibi provided by the mysterious Mockingbird. Lili de Neuve then agreed to join the Secret Six after Mockingbird threatened to have her alibi proved false. While not on missions, Lili de Neuve continued work in motion pictures as producer/director.', '<ul>\r\n<li>Acting</li>\r\n</ul>', 'lili.png', 2),
(9, 'Carlo di rienzi', 'Carlo di Rienzi was a Italian stage magician who fell into serious trouble with the mafia, whom he refused to pay his protection money to them. Consequently, his house was bombed; his wife was killed and his son was crippled. He was discovered by a mysterious individual known only as Mockingbird, who arranged treatment for Carlo\'s son in exchange for Carlo\'s services in the Secret Six.', '<ul>\r\n<li>Escapology</li>\r\n</ul>', 'carlo.png', 2),
(10, 'Micheal tempest', 'Mike Tempest was a veteran of the Vietnam War. After leaving the service, he became a heavyweight boxing contender under the name Tiger Force. As a boxer, Mike Tempest became a Golden Gloves champion. One evening, a group of gangsters pressured Mike into throwing a fight. Tempest refused and the hoods savagely beat him and left him for dead in an alley. He was discovered by a mysterious individual known only as Mockingbird. Mockingbird took Tempest to a private hospital where he eventually recovered from his injuries. After leaving the hospital, Mike was a man on the run, always on the lookout for the gangsters who might find him and finish the job. Years later, Mike encountered Mockingbird once again who invited Tempest to join a team of covert specialists known as the Secret Six.', '<ul>\r\n<li>Boxing</li>\r\n</ul>', 'Tempest.jpg', 2),
(11, 'Crimson dawn', 'King Savage was a ace fighter pilot who served in the Vietnam War. During his first combat mission, he was shot down and taken prisoner in North Vietnam. He was tortured into revealing U.S. secrets which could have been disastrous. Savage was freed in a massive prison escape that was engineered by the mysterious Mockingbird. After the war, King Savage worked as a movie stunt man, and eventually becoming an actor. He would once again encountered Mockingbird who convinced him to join the Secret Six after threatening to reveal Savage\'s talk to the enemy', '<ul>\r\n<li>Acting</li>\r\n<li>Aviation</li>\r\n</ul>', 'KS.png', 2),
(12, 'Tony Mantegna', 'He was a former Pulitzer Prize winning writer was brought together with six strangers by the mysterious Mockingbird and like the others experienced a loss or setback of some type. He was caught in an accidental dynamite blast that resulted in a loss of his hearing.', '<ul>\r\n<li>unknown</li>\r\n</ul>', 'tony.jpg', 2),
(13, 'Firestorm', 'Firestorm is de naam van verschillende superhelden uit de strips van DC Comics. De eerste versie van het personage maakte zijn debuut in in Firestorm, the Nuclear Man No. 1 (maart 1978), bedacht door Gerry Conway en Al Milgrom.', '<ul>\r\n<li>Able to shoot fire</li>\r\n</ul>', 'fire.png', 3),
(14, 'Black Canary', 'Black Canary is a superhero vigilante who fights crime using martial arts and a sonic scream attack. She is one of the greatest fighters in the DC Universe, and also a strong tactical mind. Her costume is an attractive black outfit with fishnet stockings and blonde hair, and she is usually seen riding her motorcycle. There have been two Canaries to share the legacy. Dinah Drake was the original during World War II and the Golden Age of heroes. Her daughter Dinah Lance would take the position during the Silver Age when she grew old enough. Green Arrow fights alongside her most often as they are romantically involved. She has been a member of the Justice Society, the Justice League, Team Arrow and the Birds of Prey. Black Canary was created by Robert Kanigher and Carmine Infantino, first appearing in Flash Comics #86. (1947) Her more recognizable daughter was introduced by Roy Thomas in Justice League of America #220. (1983) ', '<ul>\r\n<li>Martial art expert</li>\r\n</ul>', 'black.jpg', 3),
(15, 'Vandal savage', 'Vandal Savage is an immortal warrior who intends to conquer the planet. Thousands of years ago, as a caveman during the Prehistoric Era, he was exposed to a meteorite that enhanced his physiology. He was the inspiration for the biblical figure Cain, having committed the first recorded murder, making him an important figure in the Religion of Crime. Throughout the ages he has been an influential figure in history, manipulating many of its greatest conflicts. In the modern era he regularly fights against the Justice Society of America, his greatest enemies. Master of planning and many forms of combat, having survived and adapted through countless centuries, Savage is an extremely dangerous and formidable opponent. Although his campaigns frequently meet with heavy resistance, he is resilient in the knowledge that he will outlive all those who oppose him. Vandal has fathered thousands of children, but the only one he truly considers his heir is his daughter Scandal Savage. Vandal Savage was created by Alfred Bester and Martin Nodell. He first appeared in Green Lantern #10. (1943) ', '<ul>\r\n<li>Immortality</li>\r\n<li>Enhanced Intellect</li>\r\n<li>Superhuman Durability</li>\r\n<li>Superhuman Strength</li>\r\n<li>Superhuman Speed</li>\r\n</ul>', 'vandal.jpg', 3),
(16, 'Hawkgirl', 'Hawkgirl is a legacy name used by female counterparts to the super-hero Hawkman. She wields a mace and uses Nth Metal technology to fly. Carter Hall\'s wife Shiera Sanders was the first to use the name during the Golden Age, although Katar Hol\'s wife Shayera Hol from the planet Thanagar used it during the Silver Age before choosing the name of Hawkwoman. Kendra Saunders, a reincarnation of Shiera, would also take the name until she was murdered during Blackest Night. The character has been involved with the All-Star Squadron, Birds of Prey, Justice League and Justice Society. Hawkgirl was created by Gardner Fox, Dennis Neville and Sheldon Moldoff, first appearing in Flash Comics #1. (1940) ', '<ul>\r\n<li>Reincarnation</li>\r\n<li>Martial Arts</li>\r\n<li>Weaponry</li>\r\n</ul>', 'hawk.jpg', 3),
(17, 'Hawkman', 'Carter Hall (portrayed by Falk Hentschel; season 1) is the latest reincarnation of the Egyptian prince Khufu who is fated to reincarnate throughout time along with his soulmate Kendra, with powers similar to hers.[15][19][20][21] He chooses to leave the team at the end of the first season.[16] The character was first introduced on The Flash. Hentschel received guest credit in his subsequent appearances in season one after the character\'s death in \"Pilot, Part 2.\"[16][22] After being killed by Savage in 1975, Carter reincarnated into Scythian Torvil, a soldier under Savage\'s rule in 2166 unaware of his past lives. After remembering, Scythian turns on Savage and aids the team in defeating him.', '<ul>\r\n<li>The Nth metal in Hawkman\'s wings, belt, harness, and boots is controlled mentally and allows him to defy gravity. His wings allow him to control flight, though they can be \"flapped\" through use of shoulder motions.</li>\r\n\r\n</ul>', 'hawkm.jpg', 3),
(18, 'Heat Wave', 'Heat Wave (Mick Rory) is a antihero/supervillain appearing in American comic books published by DC Comics, commonly as an enemy of The Flash and a member of The Rogues along with Captain Cold', '<ul>\r\n<li>Can shoot fire</li>\r\n</ul>', 'heat.png', 3),
(19, 'The Patriot', '(Mr. Victor, first name unrevealed) - The Patriot comes from a family of heroes who, by the 1960s, had been fighting crime for 130 years. In fact, the Patriot is the son of Reed Victor, a.k.a. Yellowjacket who, with his partner Plato, had fought crime in the 1920s (this was a parody of the 1930s radio heroes named Green Hornet and Kato). When the Freedom Brigade retired, the Patriot married his teammate, Lady Liberty, and they gave birth to a son named Myron Victor, who later became Merryman, the bumbling leader of the Inferior Five.', '<ul>\r\n<li>While secretly using his specially concocted MGH formula, Eli Bradley possessed agility, strength, speed, endurance, and reaction-time superior to that of normal Super Soldiers like his grandfather and Captain America, but at a heavy physical and mental cost.</li>\r\n\r\n</ul>', 'patriot.png', 5),
(20, 'Lady Liberty', 'Lady Liberty is a member of the Force of July, a government sponsored superhero team. She first appeared in Batman and the Outsiders Annual #1 (1984). Her costume consists of robes and a crown based on the Statue of Liberty, and she speaks with a French accent. Although not explored fully, it is alluded to in comics that she is romantically involved with Major Victory (William Vickers). Her real identity is never revealed.', '<ul>\r\n<li>All the Lady Liberties carry a torch that allows them to fire energy beams. The first Lady Liberty had latent psychic powers that were focused by the torch; all the other Lady Liberties rely solely on their torch to fire the energy beams.</li>\r\n\r\n</ul>', 'liberty.jpg', 5),
(21, 'Captain swift', 'Captain Swift fought crime with the Freedom Brigade until retiring twenty years ago. He got married and had a son, Blimp, who was forced to become a hero with the Inferior Five. Captain Swift has become a teacher at Dean Egghead\'s Academy for Super-Heroes.', '<ul>\r\n<li>Speed Force Conduit</li>\r\n<li>Accelerated Healing</li>\r\n<li>Superhuman Stamina</li>\r\n\r\n</ul>', 'capswift.png', 5),
(22, 'Bowman', 'Bowman is Hydra\'s version of Hawkeye. He fought alongside Tactical Force, Hammer and Militant against Spider-Man and the New Avengers.[1]', '<ul>\r\n<li>Marksmanship</li>\r\n<li>Stamina</li>\r\n<li>Agility</li>\r\n\r\n</ul>', 'bowman.png', 5),
(23, 'Mister might', 'Mister Might claimed to be Barb-Ell, son of Dumb-Ell, of the Planet Neon. Dumb-Ell launched Barb-Ell into space after calculating that Neon would explode. However, Dumb-Ell was just a crackpot and Neon didn\'t explode.\r\n\r\nWith the alter ego of Mr. Brent, he fought crime and founded the Freedom Brigade. However, he retired 20 years ago and married the Mermaid and had a son, Awkward Man, whom was forced to become a hero. Mr. Might has become a teacher at Dean Egghead\'s Academy for Super-Heroes.', '<ul>\r\n<li>Superhuman</li>\r\n<li>Strength</li>\r\n<li>Flight</li>\r\n</ul>', 'mister.png', 5),
(24, 'Mister might', 'Little Mermaid is a teenage aquatic super-hero using mermaid powers. Her parents were Atlanteans from Poseidonis and Tritonis. She has been a member of the Global Guardians and the Ultramarine Corps. In this position she has assisted the Justice League many times. Little Mermaid was created by Nicholas Pascale, E. Nelson Bridwell and Ramona Fradon, first appearing in Super Friends #9. (1977) ', '<ul>\r\n<li>Swim</li>\r\n</ul>', 'mermaid.png', 5),
(25, 'Anatole', 'Red Trinity, consisting of Anatole, Bebeck, and Cassiopeia, was created by Dr. Pytor Orloff of the Puleski Institute. They were modeled after the American Flash.\r\n', '<ul>\r\n<li>Superhuman Speed</li>\r\n</ul>', 'Anatole.jpg', 4),
(26, 'Bebeck', 'in:\r\nLiving Characters, Good Characters, Female Characters, and 10 more\r\nBebeck (New Earth)\r\nEDIT\r\n \r\nSHARE\r\nBebeckHelp\r\n \r\nGallery\r\nReal Name\r\nBebeck\r\nCurrent Alias\r\nBebeck\r\nAffiliation\r\nKapitalist Kouriers\r\nBase Of Operations\r\nNew York, formerly Siberia\r\n ', '<ul>\r\n<li>Fly</li>\r\n</ul>', 'bebeck.jpg', 4),
(27, 'Cassiopeia', 'Red Trinity, consisting of Anatole, Bebeck, and Cassiopeia, was created by Dr. Pytor Orloff of the Puleski Institute. They were modeled after the American Flash.\r\n\r\nAnatole and Bebeck had wanted to leave the Soviet Union for America, but Cassiopeia did not want to abandon their motherland. However, when the Flash came to take Dr. Orloff to America to help save Dr. Jerry McGee, they all agreed to go.', '<ul>\r\n<li>Superhuman Speed</li>\r\n</ul>', 'cas.jpg', 4),
(28, 'Rick flag', 'Resourcefulness. Intuitiveness. Bravery. Skill in combat. All these qualities are useful assets for a soldier, and Rick Flag has them in spades. His exemplary military record put him on Amanda Waller’s radar, and she drafted him to lead the Suicide Squad, much like his father, Rick Flag Sr., did before him. The younger Rick accepted the new role, but he wasn’t exactly thrilled about the gig.', '<ul>\r\n<li>Bravery</li>\r\n<li>Combat skill</li>\r\n</ul>', 'rick.jpg', 4),
(29, 'Black Manta', 'The boy who would become Black Manta was an autistic youth who grew up in Baltimore, Maryland, and loved to play by the sea. As a youth he was kidnapped and forced to work on a ship for an unspecified amount of time. At one point he apparently saw Aquaman with his dolphin friends and tried to signal him for help but was not seen. Finally, he was forced to defend himself, killing one of his tormentors on the ship with a knife. Hating the emotionless sea (and Aquaman, who he saw as its representative), the boy was determined to become its master.', '<ul>\r\n<li>Firearms</li>\r\n<li>Swimming</li>\r\n<li>Weaponry</li>\r\n</ul>', 'blackM.jpg', 4),
(30, 'Lonnie machin', 'Lonnie Machin was a straight-a high school student, heavily influenced by philosophers and skilled in gadgetry. He developed the costumed identity of Anarky, following his own beliefs and started acting as a vigilante in Gotham City, responding to people\'s complaints in public outlets. He was eventually stopped by Batman, even though his father, Mike, tried to protect him.[2][3]', '<ul>\r\n<li>Martial Arts</li>\r\n<li>Genius Level Intellect</li>\r\n</ul>', 'lonnie.jpg', 4);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `rating`
--

CREATE TABLE `rating` (
  `ratingId` int(3) NOT NULL COMMENT 'unique rating is, auto incremented',
  `heroId` int(3) NOT NULL COMMENT 'the heroId used as reference to the hero table, can''t be unique in thie table',
  `rating` int(3) NOT NULL COMMENT 'rating is defined as an integer from 0 (min) to 10 (max)',
  `ratingDate` int(5) NOT NULL COMMENT 'the date of this rating. Dates are presented as an integer (timestamp) and displayed as a human readable date and time string using the PHP strftime() function',
  `ratingReview` text NOT NULL COMMENT 'a textual review added by the user\\nthe form where the user can rate the hero by using stars (radio-buttons)'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `rating`
--

INSERT INTO `rating` (`ratingId`, `heroId`, `rating`, `ratingDate`, `ratingReview`) VALUES
(11, 1, 10, 1517583827, '1'),
(12, 2, 10, 1517583840, '1');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `team`
--

CREATE TABLE `team` (
  `teamId` int(3) NOT NULL COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable',
  `teamName` varchar(50) NOT NULL COMMENT 'team name, just an ordinary string',
  `teamDescription` text NOT NULL COMMENT 'team description, just a string',
  `teamImage` varchar(100) NOT NULL COMMENT 'team image, stored as a string and used with the source of the HTML-tag'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `team`
--

INSERT INTO `team` (`teamId`, `teamName`, `teamDescription`, `teamImage`) VALUES
(1, 'Suicide Squad (6)', 'The Suicide Squad is the name of two fictional antihero teams appearing in American comic books published by DC Comics. The first version of the Suicide Squad debuted in The Brave and the Bold #25 (September 1959), and the second and modern version, created by John Ostrander, debuted in Legends #3 (January 1987). One of the two teams saves the world from a threatening race of savages.\r\n\r\nThe modern incarnation of the Suicide Squad is a team of incarcerated supervillains who carry out secret missions in exchange for reduced prison sentences. The Suicide Squad\'s name alludes to the dangerous nature of their missions. The team is based out of Belle Reve Penitentiary under the directorship of Amanda Waller.\r\nVarious incarnations of the Suicide Squad have existed throughout the years as depicted in several self-titled comic book series, from its origins in the Silver Age, to its modern-day post-Crisis reimagining, to the current version that was introduced in 2016 DC Rebirth continuity reboot. The current incarnation of the team appears in the fifth volume of the Suicide Squad comic series, and the recurring members include Captain Boomerang, Deadshot, Enchantress, Harley Quinn, Katana, and Killer Croc.', 'Suicidesquad.png'),
(2, 'Secret Six (6)', 'The Secret Six is the name of three different fictional comic book teams in the DC Comics Universe, plus an alternate universe\'s fourth team. Each team has had six members, led by a mysterious figure named Mockingbird, whom the characters assume to be one of the other five members. The third, villainous incarnation of the Secret Six was rated by IGN as the Fourth Best Comic Run of the Decade', 's6.jpg'),
(3, 'Legends of Tomorrow (6)', 'DC\'s Legends of Tomorrow, or simply Legends of Tomorrow, is an American superhero television series developed by Greg Berlanti, Marc Guggenheim, Andrew Kreisberg, and Phil Klemmer, who are also executive producers along with Sarah Schechter and Chris Fedak; Klemmer and Fedak serve as showrunners. The series, based on the characters of DC Comics, airs on The CW and is a spin-off from Arrow and The Flash, existing in the same fictional universe. The series premiered on January 21, 2016. In January 2017, The CW renewed the series for a third season,[1] which debuted on October 10, 2017.[2]', 'lot.png'),
(4, 'Red Trinity (6)', 'Red Trinity (a.k.a. Kapitalist Kouriers) is a fictional DC Comics Russian superteam introduced in Flash (v.2) #6 (November 1987). They were created by Mike Baron and Jackson Guice.', 'rt.jpg'),
(5, 'Freedom Brigade (6)', 'The Freedom Brigade were a team of super-heroes active in the 1940s.[1] They are best known as the parents of the incompetent Inferior Five. However, unlike their children, the Brigade were quite a formidable force against evil. Most of the Brigade members - namely Captain Swift, The Bowman, Princess Power, Mr. Might, and The Mermaid - were parodies of other DC characters, respectively: The Flash, Green Arrow, Wonder Woman, Superman, and Aquaman. The Freedom Brigade appeared only twice: in issues #62 and #65 of DC\'s \"tryout\" magazine Showcase.[2]', 'Free.jpg');

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `hero`
--
ALTER TABLE `hero`
  ADD PRIMARY KEY (`heroId`);

--
-- Indexen voor tabel `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ratingId`);

--
-- Indexen voor tabel `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamId`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `hero`
--
ALTER TABLE `hero`
  MODIFY `heroId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'the unique heroId used as a parameter in the URL and fetched by PHP using the $_GET superblobal variable', AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT voor een tabel `rating`
--
ALTER TABLE `rating`
  MODIFY `ratingId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique rating is, auto incremented', AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT voor een tabel `team`
--
ALTER TABLE `team`
  MODIFY `teamId` int(3) NOT NULL AUTO_INCREMENT COMMENT 'unique teamId can be used as a parameter in the URL and fetched using the $_GET variable', AUTO_INCREMENT=6;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
