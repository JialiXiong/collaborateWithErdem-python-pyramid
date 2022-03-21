-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.22-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for w11
CREATE DATABASE IF NOT EXISTS `w11` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `w11`;

-- Dumping structure for table w11.gallery
CREATE TABLE IF NOT EXISTS `gallery` (
  `galleryId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(172) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`galleryId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table w11.gallery: ~5 rows (approximately)
/*!40000 ALTER TABLE `gallery` DISABLE KEYS */;
INSERT INTO `gallery` (`galleryId`, `file`, `description`, `price`, `date`) VALUES
	(1, 'p1.jpg', '"Feed the Birds" A must have for every birdwatcher', 39.95, '2022-02-28 15:58:51'),
	(2, 'p2.jpg', 'Without this journal, you are not a birdwatcher', 12.90, '2022-02-28 16:15:11'),
	(3, 'p3.jpg', 'SpinAmz Monocular Telescope 12X50', 44.50, '2022-02-28 16:15:11'),
	(4, 'p4.jpg', 'CamKing 2.7K Digital Binoculars Camera', 99.95, '2022-02-28 16:15:40'),
	(5, 'p5.jpg', 'Gosky Titan 12X50 High Power Prism Monocular and Quick Smartphone Holder - Waterproof', 145.50, '2022-02-28 16:15:40');
/*!40000 ALTER TABLE `gallery` ENABLE KEYS */;

-- Dumping structure for table w11.page
CREATE TABLE IF NOT EXISTS `page` (
  `pageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menu_title` varchar(32) NOT NULL,
  `page_title` varchar(128) NOT NULL,
  `page_name` varchar(32) NOT NULL,
  `content` text NOT NULL,
  `script` text DEFAULT NULL,
  PRIMARY KEY (`pageId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table w11.page: ~7 rows (approximately)
/*!40000 ALTER TABLE `page` DISABLE KEYS */;
INSERT INTO `page` (`pageId`, `menu_title`, `page_title`, `page_name`, `content`, `script`) VALUES
	(1, 'Home', ' ', 'home', '    \r\n<div id="container">\r\n            <div id="squares">\r\n                <a href="/b1" id="r1" class="r">\r\n                    <div id="1a">Northern Cardinal</div>\r\n                    <div id="1b"><img src="img/1r.jpg"></div>\r\n                </a>\r\n                <a href="/b2" id="r2" class="r">\r\n                    <div id="2b"><img src="img/2r.jpg"></div>\r\n                    <div id="2a">American Goldfinch</div>\r\n                </a>\r\n                <a href="/b3" id="r3" class="r">\r\n                    <div id="3a">Blue Jay</div>\r\n                    <div id="3b"><img src="img/3r.jpg"></div>\r\n                </a>\r\n                <a href="/b4" id="r4" class="r">\r\n                    <div id="4b"><img src="img/4r.jpg"></div>\r\n                    <div id="4a">Steller\'s Jay</div>\r\n                </a>\r\n                <a href="/b5" id="r5" class="r">\r\n                    <div id="5a">Eastern Bluebird</div>\r\n                    <div id="5b"><img src="img/5r.jpg"></div>\r\n                </a>\r\n            </div>\r\n        </div>', NULL),
	(2, 'Northern Cardinal', 'Northern Cardinal', 'b1', '<div id="flexbase">\r\n            <div id="s1" class="s1">\r\n                <div>\r\n                    <div><img src="img/1m.jpg" /></div>\r\n                    <div>A male Northern Cardinal</div>\r\n                </div>\r\n                <br>\r\n                <div>\r\n                    <div><img src="img/1f.jpg" /></div>\r\n                    <div>A female Northern Cardinal</div>\r\n                </div>\r\n<div><img src="img/1map.png" />\r\n                    <div>Habitat in North America</div>\r\n            </div>\r\n</div><br>\r\n            <div id="s2" class="s">\r\n                The northern cardinal (Cardinalis cardinalis) is a bird in the genus Cardinalis; it is also known\r\n                colloquially as the redbird, common cardinal, red cardinal, or just cardinal (which was its name prior\r\n                to 1985). It can be found in southeastern Canada, through the eastern United States from Maine to\r\n                Minnesota to Texas, New Mexico, southern Arizona, southern California, and south through Mexico, Belize,\r\n                and Guatemala. It is also an introduced species in a few locations such as Bermuda and Hawaii. Its\r\n                habitat includes woodlands, gardens, shrublands, and wetlands.\r\n                <br><br>\r\n                The northern cardinal is a mid-sized songbird with a body length of 21–23 cm (8.3–9.1 in). It has a\r\n                distinctive crest on the head and a mask on the face which is black in the male and gray in the female.\r\n                The male is a vibrant red, while the female is a reddish olive color. The northern cardinal is mainly\r\n                granivorous, but also feeds on insects and fruit. The male behaves territorially, marking out his\r\n                territory with song. During courtship, the male feeds seed to the female beak-to-beak. A clutch of three\r\n                to four eggs is laid, and two to four clutches are produced each year. It was once prized as a pet, but\r\n                its sale as a cage bird was banned in the United States by the Migratory Bird Treaty Act of 1918.\r\n            \r\n            \r\n            </div>\r\n        </div>', NULL),
	(3, 'American Goldfinch', 'American Goldfinch', 'b2', '<div id="s1" class="s1">\r\n                <div>\r\n                    <div><img src="img/2m.jfif" /></div>\r\n                    <div>A male American Goldfinch</div>\r\n                </div><br>\r\n                <div>\r\n                    <div><img src="img/2f.jpg" /></div>\r\n                    <div>A female American Goldfinch</div>\r\n                </div>\r\n<div>\r\n              <img src="img/2map.png" />\r\n                    <div>Habitat in North America</div>\r\n                </div>\r\n            </div>\r\n<br>\r\n<div id="s2" class="s">\r\n                The American goldfinch (Spinus tristis) is a small North American bird in the finch family. It is\r\n                migratory, ranging from mid-Alberta to North Carolina during the breeding season, and from just south of\r\n                the Canada–United States border to Mexico during the winter.\r\n                <br><br>\r\n                The only finch in its subfamily to undergo a complete molt, the American goldfinch displays sexual\r\n                dichromatism: the male is a vibrant yellow in the summer and an olive color during the winter, while the\r\n                female is a dull yellow-brown shade which brightens only slightly during the summer. The male displays\r\n                brightly colored plumage during the breeding season to attract a mate.\r\n                <br><br>\r\n                The American goldfinch is a granivore and adapted for the consumption of seedheads, with a conical beak\r\n                to remove the seeds and agile feet to grip the stems of seedheads while feeding. This finch has also\r\n                been known to eat garden vegetation and is particularly fond of beet greens. It is a social bird and\r\n                will gather in large flocks while feeding and migrating. It may behave territorially during nest\r\n                construction, but this aggression is short-lived. Its breeding season is tied to the peak of food\r\n                supply, beginning in late July, which is relatively late in the year for a finch. This species is\r\n                generally monogamous and produces one brood each year.\r\n                <br><br>\r\n                Human activity has generally benefited the American goldfinch. It is often found in residential areas,\r\n                attracted to bird feeders which increase its survival rate in these areas. Deforestation also creates\r\n                open meadow areas, which are its preferred habitat.\r\n            </div>', NULL),
	(4, 'Blue Jay', 'Blue Jay', 'b3', '<div id="s1" class="s1">\r\n                <div>\r\n                    <div><img src="img/3m.jpg" /></div>\r\n                    <div>Blue Jay</div>\r\n                </div><br>\r\n                <div>\r\n                    <div><img src="img/3b.jpg" /></div>\r\n                    <div>A Blue Jay couple</div>\r\n                </div>\r\n<div>\r\n           <img src="img/3map.png" />\r\n                    <div>Habitat in North America</div>\r\n                </div>\r\n            </div>\r\n<br>\r\n<div id="s2" class="s">\r\n                The blue jay (Cyanocitta cristata) is a passerine bird in the family Corvidae, native to eastern North\r\n                America. It lives in most of the eastern and central United States; some eastern populations may be\r\n                migratory. Resident populations are also in Newfoundland, Canada; breeding populations are found across\r\n                southern Canada. It breeds in both deciduous and coniferous forests, and is common in residential areas.\r\n                Its coloration is predominantly blue, with a white chest and underparts, and a blue crest; it has a\r\n                black, U-shaped collar around its neck and a black border behind the crest. Males and females are\r\n                similar in size and plumage, and plumage does not vary throughout the year. Four subspecies have been\r\n                recognized.\r\n                <br><br>\r\n                The blue jay feeds mainly on seeds and nuts, such as acorns, which it may hide to eat later; soft\r\n                fruits; arthropods; and occasionally small vertebrates. It typically gleans food from trees, shrubs, and\r\n                the ground, and sometimes hawks insects from the air. Blue jays can be very aggressive to other birds;\r\n                they sometimes raid nests and have decapitated other birds.\r\n                <br><br>\r\n                It builds an open cup nest in the branches of a tree; both sexes participate. The clutch may be two to\r\n                seven eggs, which are blueish or light brown with darker brown spots. Young are altricial, and are\r\n                brooded by the female for 8–12 days after hatching. They may stay with their parents for one to two\r\n                months.\r\n                <br><br>\r\n                The name jay derives from the bird\'s noisy, garrulous nature and has been applied to other birds of the\r\n                same family, which are also mostly gregarious. Jays are also called jaybirds.\r\n            </div>', NULL),
	(5, 'Steller\'s Jay', 'Steller\'s Jay', 'b4', '<div id="s1" class="s1">\r\n                <div>\r\n                    <div><img src="img/4a.jpg" /></div>\r\n                    <div>Steller\'s Jay</div>\r\n                </div><br>\r\n                <div>\r\n                    <div><img src="img/4b.jpg" /></div>\r\n                    <div>Steller\'s Jay from California</div>\r\n                </div>\r\n<div>\r\n         <img src="img/4map.png" />\r\n                    <div>Habitat in North America</div>\r\n                </div>\r\n            </div>\r\n<br>\r\n<div id="s2" class="s">\r\n                Steller\'s jay (Cyanocitta stelleri) is a bird native to western North America and the mountains of\r\n                Central America, closely related to the blue jay found in eastern North America. It is also known as the\r\n                long-crested jay, mountain jay, and pine jay. It is the only crested jay west of the Rocky Mountains. It\r\n                is also sometimes colloquially called a "blue jay" in the Pacific Northwest, but is distinct from the\r\n                blue jay (C. cristata) of eastern North America. The species inhabits pine-oak and coniferous forests.\r\n                <br><br>\r\n                Steller\'s jay is about 30–34 cm (12–13 in) long and weighs about 100–140 g (3.5–4.9 oz). Steller\'s jay\r\n                shows a great deal of regional variation throughout its range. Blackish-brown-headed birds from the\r\n                north gradually become bluer-headed farther south.The Steller\'s jay has a more slender bill and\r\n                longer legs than the blue jay and, in northern populations, has a much more pronounced crest.\r\n                It is also somewhat larger.\r\n                <br><br>\r\n                The head is blackish-brown, black, or dark blue, depending on the subspecies of the bird, with lighter\r\n                streaks on the forehead. This dark coloring gives way from the shoulders and lower breast to silvery\r\n                blue. The primaries and tail are a rich blue with darker barring. Birds in the eastern part of its range\r\n                along the Great Divide have white markings on the head, especially over the eyes; birds further west\r\n                have light blue markers and birds in the far west along the Pacific Coast have small, very faint, or no\r\n                white or light markings at all.\r\n            </div>', NULL),
	(6, 'Eastern Bluebird', 'Eastern Bluebird', 'b5', '<div id="s1" class="s1">\r\n                <div>\r\n                    <div><img src="img/5m.jpg" /></div>\r\n                    <div>A male Eastern Bluebird</div>\r\n                </div><br>\r\n                <div>\r\n                    <div><img src="img/5f.jpg" /></div>\r\n                    <div>A female Eastern Bluebird</div>\r\n                </div>\r\n <div>\r\n<img src="img/5map.png" />\r\n                    <div>Habitat in North America</div>\r\n                </div>\r\n            </div>\r\n<br>\r\n<div id="s2" class="s">\r\n                The eastern bluebird (Sialia sialis) is a small North American migratory thrush found in open woodlands,\r\n                farmlands, and orchards. The bright-blue breeding plumage of the male, easily observed on a wire or open\r\n                perch, makes this\r\n                species a favorite of birders.\r\n                <br><br>\r\n                Eastern bluebirds measure 16–21 cm (6.3–8.3 in) long, span 25–32 cm (9.8–12.6 in) across the wings, and\r\n                weigh 27–34 g (0.95–1.20 oz).\r\n\r\n                Male bluebirds have a bright head, back, and wings. Their breast is a brownish red. Females are lighter\r\n                with gray on the head and back and some blue on their wings and tail. Their breast is lighter than the\r\n                males\' and is more orange.\r\n                <br><br>\r\n                The eastern bluebird is found east of the Rockies, southern Canada to the Gulf states, and southeastern\r\n                Arizona to Nicaragua. The increase in trees throughout the Great Plains during the past century due to\r\n                fire suppression and tree planting facilitated the western range expansion of the species as well\r\n                as range expansions of many other species of birds. From 1966-2015 the eastern bluebird\r\n                experienced a greater than 1.5% annual population increase throughout most of its breeding and\r\n                year-round ranges, with exceptions including southern Florida and the Ohio River valley.\r\n                <br><br>\r\n                Bluebirds tend to live in open country around trees, but with little understory and sparse ground cover.\r\n                Original habitats probably included open, frequently burned pine savannas, beaver ponds, mature but open\r\n                woods, and forest openings. Today, they are most common along pastures, agricultural fields, suburban\r\n                parks, backyards, and even golf courses. Populations also occur across eastern North America and south\r\n                as far as Nicaragua. Birds that live farther north and in the west of the range tend to lay more eggs\r\n                than eastern and southern birds\r\n            </div>', NULL),
	(7, 'Products', 'Products', 'products', '', 'product.php');
/*!40000 ALTER TABLE `page` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;