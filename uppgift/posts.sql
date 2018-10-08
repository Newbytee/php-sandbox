-- MySQL dump 10.13  Distrib 5.5.57, for debian-linux-gnu (x86_64)
--
-- Host: 0.0.0.0    Database: c9
-- ------------------------------------------------------
-- Server version	5.5.57-0ubuntu0.14.04.1

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
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `author` varchar(255) NOT NULL DEFAULT 'bella',
  `likes` int(11) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Söndagen','Jag vaknade upp lite piggare idag. Jag behövde verkligen få sova bort förkylningen. Jag och barnen åt en långfrukost och sedan skulle Gillis på sin fotbollsträning. Sally och jag gick ner till vattnet och matade ankorna med bröd som vi hade tagit med oss. Det är så härligt att bo på en ö, överallt ser man vatten. Jag längtar verkligen efter att ha en brygga (tillsammans med några andra grannar).','2018-09-23 00:00:00','bella',NULL,NULL),(2,'Behind the scenes','Det har varit en riktigt intensiv dag i nya huset på Lidingö. Vi fick låna huset över dagen av säljarna, väldigt snällt. Jag längtar så till jag får flytta in tillsammans med Gillis och Sally den 8 november. Teamet för dagen har bestått av Hannah och Julia från Löwengrip, Sara och Simon från vår designbyrå GLHF, fotograf Martin och hans team Natalia och Martin och Joseph och Olof som gör rörlig bild. Dessutom har Emelie, Sascha och Charlotte varit på plats tillsammans med Ida, Gillis och Sally och min mamma. Fullt hus med andra ord. Förskolan hade planeringsdag idag så vi löste det så, men dom gillar ju att hänga med mig i jobbet.\r\n\r\nPlanera alla outfits. Skjorta och scarf från Gant, stickad Soft Goat.\r\n\r\nVärldens bästa Sascha. Vi båda har kärat ner oss i Gants skjortor. Jag har på riktigt aldrig testat några bättre. De är mjuka, känns lyxiga och man kan ha de en hel dag utan att de blir skrynkliga.','2018-09-21 07:00:24','bella',4,NULL),(3,'Silver hair mask','Idag är det dags för en ny spännande lansering på Löwengrip. Vi kunde faktiskt inte vänta så vi släpper den tidigare än planerat på vår egen webshop. För över ett år sedan började vi titta på ett komplement till vår fantastiska Blonde Perfection-serie som blivit väldigt populär och idag släpper vi Blonde Perfection – Silver Hair Mask, som du kan läsa mer om här.','2018-09-21 10:00:00','bella',NULL,NULL),(4,'Orangeriet','Ikväll åt Sheila och jag middag, moules frites och sedan dessert på Orangeriet. Sheila är beräknad med sitt andra barn om två veckor och det är så spännande! Vi pratade mycket förlossning, bland annat om man kan göra hinnsvepning på sig själv? (Verkar inte så) och livet i allmänhet. Sheila jobbade ju med mig på Egoboost Magazine och precis när Gillis hade kommit till världen så hörde hon av sig om en promenad. Vi bor fem minuter i från varandra. Då hade Sheila plussat igen med nya barnet och Gillis låg bara en månad gammal i vagnen. Nu har jag en liten kille som är påväg att krypa och hon snart ett syskon till Aline. Gah vad tiden går fort. Det är 11 månader mellan Aline och Gillis och åtta månader mellan bebis i magen och Gillis. Kul med barn i nära ålder! Fick klappa lite på magen innan vi skildes åt, så fin.\r\n\r\n[showhide type=”post” more_text=”Show english translation…” less_text=”Show less…”]\r\n\r\nYesterday Sheila and I had dinner at Orangeriet, first I had moules frites and then dessert. Sheila is due to have her second child in two weeks and it’s so exciting! We talked a lot about labour and whether you can strip membranes on yourself? (It doesn’t seem like it) and life in general. Sheila worked with me at Egoboost Magazine and right when Gillis was born she asked if I wanted to go for a walk. We only live five minutes from each other. Sheila had just found out that she was pregnant again and Gillis was only a month old. Now I have a little dude who’s almost ready to start crawling and she almost has a sibling for Aline. Wahh time goes so quickly. There are 11 months between Aline and GIllis and 8 months between the new baby and Gillis. It’s so much fun that they are so close together in age! I got to pat her tummy a bit before we said good bye, it’s so lovely.','2014-07-30 20:08:00','bella',NULL,'life & thoughts'),(5,'Höstkläder','Imorse när jag vaknade hörde jag hur mycket det regnade utanför huset, nu är det höst! Därför passar det väldigt bra att jag idag har med mig fantastiska Babyshop här på bloggen. Jag brukar oftast handla kläder till barnen online men tidigare den här veckan var jag och kollade på kläder till barnen inför hösten i deras butik. Det blev mycket ”lager på lager” -tänk vilket denna årstid kräver, temperaturen ändras ju så mycket. Babyshop har också massa coola barnplagg som känns som ”vuxenkläder” som man har krympt. Det kan ju vara extra kul att klä barnen i vid speciella tillfällen som högtider och kalas men annars är det viktigt för mig att plaggen är sköna. Det är sällan Sally och Gillis bär jeans på förskolan (det har nog aldrig hänt) utan tights och lekvänliga plagg som går att röra sig i. ','2017-08-31 07:03:00','sanna',377,'motherhood'),(6,'Suit up','Jag har haft en förmiddag med högt tempo minst sagt, intervju med Dagens industri gick toppen och artikeln kommer ut om cirka två veckor. Det är ett spännande bolag Pingis och jag har gått in i, det är en pusselbit i det ekosystem vi vill skapa med LCC samt vår Beauty e-handel som är på gång. Kul! Nu väntar gos med barnen, som jag längtar efter deras små kroppar och deras tankar.','2017-09-13 13:01:00','bella',5,'business'),(7,'En dag i sängen','Klänning från Tiger of Sweden (adlink) och klackar från Mango. Efter AW med kollegorna så blev det en middag på NOI, ostron, champagne, betor med getost och chokladfondant. Menyn är verkligen fantastisk där. Fredagströttheten slog dock in och det blev en tidig kväll.','2018-04-14 15:06:00','bella',88,'fashion'),(8,'Isabella x Sellpy','Från idag har jag en ny Sellpy-butik, Isabella & Friends, som inte bara säljer mina kläder utan den lyfter även fram era kläder. Hos Sellpy kan ni beställa en Isabella x Sellpy-påse, skickar in, och då finns möjligheten att ditt plagg frontas i min shop – där även mina kläder säljs! Möjligheten att fronta alla plagg finns inte men det som jag tycker känns rätt för ändamålet kommer frontas där. (Plagg som inte läggs upp i shoppen säljs självklart som vanligt på Sellpy!) När ni får hem påsen fyller ni den med era bästa business-plagg (hela och rena), Sellpy hämtar påsen och kommer sen försöka att sälja allt som värderas till mer än 50 kr. Vet du inte hur Sellpy funkar så kan du läsa instruktionerna här. Sellpy har även släppt nya funktioner, bl.a. kan man sätta egna priser på varor man säljer samt redigera och lägga till information om sakerna i annonsen. Väldigt bra!','2018-02-15 09:44:00','sellpy',31,'fashion');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-24  7:10:15
