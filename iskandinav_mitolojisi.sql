-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 17 Oca 2024, 13:21:44
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `iskandinav_mitolojisi`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanicilar`
--

DROP TABLE IF EXISTS `kullanicilar`;
CREATE TABLE IF NOT EXISTS `kullanicilar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `kullanicilar`
--

INSERT INTO `kullanicilar` (`id`, `username`, `password`) VALUES
(5, 'ilayda', '$2y$10$y5So4jsED9ElOyAubwlCHuRWDF.tcW2c/GI3HC6/jPULgUj1spmlO'),
(6, 'ozlem', '$2y$10$anVfpP3EmMfPmuN9waDIne3xskW4.ZFmeqY3dIDQ6LKN0RciOliy2'),
(7, 'senay', '$2y$10$ybE2mxCbd.eg9DQoHphJrOaDVhg6gwgH/mt79FJFz7PXOBe8r1N2K');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tanrilar`
--

DROP TABLE IF EXISTS `tanrilar`;
CREATE TABLE IF NOT EXISTS `tanrilar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `baslik` varchar(255) NOT NULL,
  `icerik` text NOT NULL,
  `resim` varchar(255) NOT NULL,
  `url` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;

--
-- Tablo döküm verisi `tanrilar`
--

INSERT INTO `tanrilar` (`id`, `baslik`, `icerik`, `resim`, `url`) VALUES
(1, 'Odin ', 'ODİN\r\nOdin (Eski Norça: Óðinn), Cermen mitolojisinde yer alan önemli bir tanrı. Odin ile ilgili günümüze ulaşan çoğu bilginin kaynağı olan İskandinav mitolojisi; Odin\'i bilgelik, şifa, ölüm, kraliyet, bilgi, savaş, zafer, büyücülük, şiir, çılgınlık, şamanlık, ilham, şairlik, hava, rüzgar ile ilişkilendirir. İskandinav mitolojisine göre tanrıça Frigg\'in kocasıdır. Genellikle en yüce Cermen tanrısı olarak kabul edilir. Eski İngilizce ve Eski Saksoncada Wōden, Eski Felemenkçede Wuodan ve Eski Yüksek Almancada Wuotan adıyla bilinir. Tüm bu adların kökeni ise Ana Almanca *Wōđanaz\'dır. İngilizce dahil birçok Cermen dilinde çarşamba günü (İngilizce: Wednesday), bu tanrının adını taşır\r\nValhalla salonunda yer alan Hlidskjalf isimli tahtında oturan Odin, her şeyi bilmek ve böylelikle bilge biri olmak istiyordu. Bu, onu kendini feda etmeye iten bir arzuydu. Odin aslında çift göze sahipti ancak bilge olabilmek için Mimir\'in kuyusunda tek gözünü feda etti.\r\nOdin, tek gözünü feda ettikten sonra diğer dünyalar hakkında bilgi edinmek ve runları anlayabilmek için dokuz gün dokuz gece Yggdrasil isimli hayat ağacında kendini astı. Evrenin merkezinde konumlanan Yggdrasil, İskandinav mitolojisinde çok kutsal bir ağaç olarak kabul edilir.\r\n', '1704741366_2c0cb83d9a61b2fc4c3b.png', 'odin'),
(4, 'Thor', '\r\nKuzey Cermenleri\'nin teleffuzu ile Thor, diğer Cermen halklarının teleffuzları ile Donar, Donner, Dunor, Thunraz, Thunor; çeşitli Cermen mitolojilerinde yer alan gök gürültüsü tanrısı.[1] Thor hakkındaki bilgilerin çoğu Cermen mitolojilerinde çok önemli bir yeri olan İskandinav mitolojisinde geçmektedir. Megingjord adlı sihirli bir kemeri ve Tanngniost ve Tanngnisrir (Diş Çatırdatan ve Diş Gıcırdatan) denilen iki keçisi vardır. Mjölnir adlı efsanevi çekici kullanmaktadır\r\nThor, İskandinav mitolojisinde en güçlü tanrılardan biridir. Gücü babası Odin tarafından teslim edilmiş iki sihirli nesneye dayanmaktadır.[1] Bu nesnelerden biri Mjölnir\'dir.[1] \"Miyölnir\" diye okunur. Mjölnir, adının anlamı \"parçalayıcı\" olan kocaman bir çekiçtir. Çekici Brokk ve Eitri isimli iki cüce kardeş yapmıştır.[1] Çekiç yapılırken Loki sinek kılığına girip cüceleri ısırarak rahatsız edince bir kaza olmuş, çekicin sapı kısalmıştır.\r\nBu iki cüce ayrıca bu çekice birçok farklı özellik vermiştir. Çekiç, Thor\'un onu kolayca saklayabilmesi için küçülebilir.[1] Ayrıca bir bumerang gibi, bir düşmana atılınca düşmana tüm gücüyle çarpar ve sahibinin ellerine geri döner. Thor kılık değiştireceği zaman çekici ile kendi yörüngesinde hızlıca döner. Fırtınaları çekici ile kontrol eder, yağmurları onunla yağdırır. Çekici ile evlilikleri ve nesneleri de kutsayabilir.\r\nOnun güçlü olmasını sağlayan bir diğer sihirli nesne de altın Megingjord adlı kemerdir.[1] Bu kemer Thor\'un gücünü 2 kat arttırır.\r\n', '1704742189_1af5b35e5153b57ec792.png', 'thor'),
(5, 'Freya', 'FREYA\r\nFreyja veya Freya, İskandinav mitolojisinde deniz tanrısı Njord\'un kızı ve Freyr\'in kız kardeşidir. Önemli bir bereket tanrıçası ve Germen tanrılarının ayrıldığı iki koldan biri olan Vanir\'in bir üyesidir. Vanir, aralarındaki bir savaştan sonra yerini daha genç tanrıçalardan oluşan ve başlarını Odin\'in çektiği Aesir\'e bırakmak zorunda kalır. Freyja\'nın en büyük hazinesi Brising\'lerin kolyesidir. Onu elde etmek için kolyeyi yapan dört cüceyle birlikte olmuştur. Güzelliği yüzünden pek çok hayranı vardır ve bunlardan biri de domuza çevirdiği Ottar\'dır. Şahin kılığında uçabilen bir büyücü olduğu da söylenir. Frigg\'in Freyja ile pek çok ortak noktası bulunur. İki tanrıçanın kökeninde, aynı toprak tanrıçası olması olasılığı da yüksektir. Odin de Frejya da kahraman ölülerle ilgilidir. Her savaşın sonunda ölüleri paylaşırlar. Ölenlerin yarısını Odin Valhalla\'ya alırken, Freyja diğer yarısını da kendisinin yönettiği Fólkvangr çayırlarına alır.\r\nEski Nors dilinde Freyja hanımefendi, kadın yönetici veya efendi anlamına gelir. Bereket getirmesi için çağrıldığına dair delil bulunmasa da aşk, cinsellik, savaş, güzellik ve çekicilik tanrıçasıdır.\r\nSnorri\'nin Edda\'sına göre Freya\'nın Odr isminde bir kocası vardı. Çoğunlukla uzun yolculuklara çıkardı ve bu yüzden Freya kırmızı altın gözyaşları dökerdi.\r\n', '1704742257_dcf230a863b158476539.png', 'freya'),
(6, 'Loki', 'Loki, İskandinav mitolojisinde kötülük ve kurnazlık tanrısı. Kimi tasvirlerde boynuzludur. Ayrıca şekil değiştirme yeteneğine sahiptir. Loki\'nin Angrboda ile evliliğinden Jörmungandr, Fenrir ve Hel adında çocukları vardır.[1] Sigyn ile olan evliliğinden ise Narfi ve Vali adlı iki çocuğu bulunmaktadır. Loki aynı zamanda cinsiyet değiştirebilen bir tanrıdır. Bir aygırı baştan çıkartması gerektiği zaman, bir kısrağa dönüşmüş ve dönüşümden Sleipnir doğmuştur. Sekiz bacaklı bu atı Loki, Odin\'e hediye etmiştir.\r\nLoki karmaşık bir karaktere sahiptir. Diğer Aesir Tanrıları\'na oyunlar oynayarak eğlenir. En önemli tuzaklarından biri kör Tanrı Hodr\'ı kandırarak, Odin\'in oğlu Balder\'in öldürülmesini sağlamak olmuştur. Bu hareketinden sonra Odin\'in kan kardeşlik bağından çıkarılmış, dünyanın derinliklerindeki bir mağaraya hapsedilmiştir.\r\nLoki mağarada öldürülen oğlu Narfi\'nin bağırsaklarıyla bir taşa bağlanmış olarak yatmaktadır. Tepesindeki sarkıtlara dolanmış dev yılanın ağzından akan zehir gözlerine damlamakta ama eşi Sigyn elindeki tahta kapla Loki\'yi korumaya çalışmaktadır. Ancak kap dolduğu zaman, boşaltmak için uzaklaştığında Loki zehirden etkilenmekte ve bu da İskandinav inançlarında depremlere sebep olmaktadır. Bu ceza İskandinav mitolojisinde mahşer günü olarak adlandırılan Ragnarok\'a kadar devam edecektir.\r\n', '1704742316_01137b812831d9920113.png', 'loki'),
(7, 'Freyr', 'Freyr, İskandinav mitolojisi ve İskandinav paganizmindeki en önemli tanrılardan birisidir. Güney Cermenlerindeki adı Froh\'tur. Fallik bereket tanrısı olarak tapılan Freyr\'in fanilere barış ve zevk bahşettiğine inanılmaktaydı. Yağmuru, güneşin parlayışı ve tarım ürünlerini yönetirdi.Odin\'le aynı unvanlara sahip olduğundandan onun başka bir formu olduğu da öne sürülür.\r\nVanir\'den birisi olan Freyr, deniz tanrısı Njord\'ün oğlu ve Freyja\'nın erkek kardeşiydi. Dokuz diyardan Işık Elfleri\'nin ülkesi Alfheim\'in yöneticisidir. Ragnarök\'te Surtr tarafından öldürülecek ama daha sonra tekrar dirilecek ve yeni dünyada önemli bir rol oynayacak. Yeni dünyada Breya olarak bilinecektir.\r\n', '1704742336_874d860e529db6d5df0a.png', 'freyr'),
(8, 'Frigg', 'FRİGG\r\nFrigg ya da Frigga(Eski İskandinav kaynaklarında “Sevilmiş Olan, Sevgili”) Odin‘in eşi, Baldur‘un annesi ve doğal olarak Asgard‘ın kraliçesidir. Kaynakları net olmamak ile birlikte Jotunn Fjörgynn‘un kızı olması muhtemeldir. Odin gibi o da dev soyundan gelmektedir. Tanrıça Frigg‘in Herşeyin Babası Odin‘den olma Baldur ve Hodr adında iki oğlu vardır. Aynı zamanda Bragi, Heimdall, Hermod, Höder, Thor, Tyr, Vali, Vidar‘ın üvey annesidir.\r\nFrigg özünde Völva yani Seidr ilminin bir temsilcisi olan bir büyücüdür. Aşk, evlilik, doğurganlık ve annelik ile ilişkilendirilir. Aynı zamanda kehanet gücüne sahiptir. Buna rağmen gelecek ile ilgili bildiklerini açıklamamayı tercih eder.\r\nHerşeyin Babası, Odin haricinde yüksek Hlidskjalf‘a koltuğuna oturup Dokuz Diyar‘a bakmasına izin verilen tek kişidir. İskandinav mitolojisinde, Hlidskjalf, tanrı Odin‘in tüm yerlerine bakmasına izin veren yüksek koltuğunun adıdır. Odin, Hlidskjalf ile bütün alemleri görür\r\nFrigg‘in evinin adı Fensalir‘dir ve “Bataklık Salonu” anlamına gelmektedir. Buna bağlı olarak geçmiş zamanlarda kadınlar Tanrıça Frigg‘e ibadet etmek için sık sık sulak bataklıklara giderlerdi. Ayrıca Tanrıça Frigg, Cuma ile ilişkilendirilmektedir. Fakat bu konuda tam bir netlik yoktur. İngilizce’de Cuma anlamına gelen Friday, her ne kadar “Frigg’in Günü” anlamını taşıyor gözükse de, aynı zamanda “Freya‘nın Günü” anlamına da gelebilir. Bu yüzden bu konu hakkındaki kaynaklar maalesef çelişki içerisindedir.\r\n', '1704742387_7e50b2e081080a1d1d71.png', 'frigg'),
(9, 'Balder', 'Balder, İskandinav tanrılarından Odin ile Frigg\'in oğlu. Karısı Nanna, oğlu ise Forseti\'dir. Işık, neşe, saflık, güzellik, masumiyet ve barış tanrısıdır. Tanrılar ve insanlar tarafından çok sevilirdi, iyiliği ile dikkat çekerdi. Gücünün az olmasına karşın, sıcakkanlı, akıllı ve belagatliydi. En yakışıklı tanrı olduğu da söylenir. Balder\'in salonu Breidablik\'di.\r\nAdı \'\'Lord\'\' anlamına gelebilir ama aynı zamanda \'\'gündüz\'\' ve \'\'cesaret\'\' ile de ilişkilendirmiştir. Bilim insanları bu ismin anlamını tartışmaya devam ediyorlar, ancak genellikle mitograf (mitoloji yazan kişi) Jakob Grimm\'in \'\'parıltı\'\' veya \'\'parlayan kişi\'\' anlamına geldiği iddiasını kabul ediyor gibi görünüyorlar.\r\nÖlümünün hikayesi, İzlandalı mitograf Snorri Sturluson (1179-1241) tarafından Nesir Edda\'da tamamıyla anlatılır, ancak Şiirsel Edda\'da sadece söz edilir. Bu eserlerin her ikisinden de oluşturulan hikayede Frigg, tüm canlılardan Baldur\'a zarar vermemelerine dair bir söz alır, ancak düzenbaz tanrı Loki\'nin daha sonra Baldur\'u öldürmek için kullanacağı ökse otunu ihmal eder. Baldur diğer eserlerde de bahsedilmiştir fakat Saxo Grammaticus\'un Gesta Danorum\'unda (y. 1160 - y. 1220), kendisi Prenses Nanna için Hotherus ile savaşta olan Balderus adında bir prenstir. Bu versiyonda, Ökse Otu adı verilen büyülü bir kılıç kullanan Hotherus tarafından öldürülür.\r\n', '1704742410_f4aa3dde8a42000fa427.png', 'balder');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
