/*
 Navicat Premium Data Transfer

 Source Server         : local_sql
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : localhost:3306
 Source Schema         : testN

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 09/07/2019 12:46:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_alpha2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `iso_alpha3` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `iso_numeric` int(11) NULL DEFAULT NULL,
  `fips_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `capital` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `continent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `continent_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `tld` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `currency_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `languages` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 253 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES (1, NULL, NULL, 'China', 'CN', 'CHN', 156, 'CH', 'Beijing', 'Asia', 'AS', '.cn', 'Yuan Renminbi', 'CNY', '86', 'zh-CN,yue,wuu,dta,ug,za');
INSERT INTO `countries` VALUES (2, NULL, NULL, 'United Arab Emirates', 'AE', 'ARE', 784, 'AE', 'Abu Dhabi', 'Asia', 'AS', '.ae', 'Dirham', 'AED', '971', 'ar-AE,fa,en,hi,ur');
INSERT INTO `countries` VALUES (3, NULL, NULL, 'Afghanistan', 'AF', 'AFG', 4, 'AF', 'Kabul', 'Asia', 'AS', '.af', 'Afghani', 'AFN', '93', 'fa-AF,ps,uz-AF,tk');
INSERT INTO `countries` VALUES (4, NULL, NULL, 'Antigua and Barbuda', 'AG', 'ATG', 28, 'AC', 'St. John\'s', 'North America', 'NA', '.ag', 'Dollar', 'XCD', '+1-268', 'en-AG');
INSERT INTO `countries` VALUES (5, NULL, NULL, 'Anguilla', 'AI', 'AIA', 660, 'AV', 'The Valley', 'North America', 'NA', '.ai', 'Dollar', 'XCD', '+1-264', 'en-AI');
INSERT INTO `countries` VALUES (6, NULL, NULL, 'Albania', 'AL', 'ALB', 8, 'AL', 'Tirana', 'Europe', 'EU', '.al', 'Lek', 'ALL', '355', 'sq,el');
INSERT INTO `countries` VALUES (7, NULL, NULL, 'Armenia', 'AM', 'ARM', 51, 'AM', 'Yerevan', 'Asia', 'AS', '.am', 'Dram', 'AMD', '374', 'hy');
INSERT INTO `countries` VALUES (8, NULL, NULL, 'Angola', 'AO', 'AGO', 24, 'AO', 'Luanda', 'Africa', 'AF', '.ao', 'Kwanza', 'AOA', '244', 'pt-AO');
INSERT INTO `countries` VALUES (9, NULL, NULL, 'Antarctica', 'AQ', 'ATA', 10, 'AY', NULL, 'Antarctica', 'AN', '.aq', NULL, NULL, NULL, NULL);
INSERT INTO `countries` VALUES (10, NULL, NULL, 'American Samoa', 'AS', 'ASM', 16, 'AQ', 'Pago Pago', 'Australia', 'OC', '.as', 'Dollar', 'USD', '+1-684', 'en-AS,sm,to');
INSERT INTO `countries` VALUES (11, NULL, NULL, 'Austria', 'AT', 'AUT', 40, 'AU', 'Vienna', 'Europe', 'EU', '.at', 'Euro', 'EUR', '43', 'de-AT,hr,hu,sl');
INSERT INTO `countries` VALUES (12, NULL, NULL, 'Australia', 'AU', 'AUS', 36, 'AS', 'Canberra', 'Australia', 'OC', '.au', 'Dollar', 'AUD', '61', 'en-AU');
INSERT INTO `countries` VALUES (13, NULL, NULL, 'Aruba', 'AW', 'ABW', 533, 'AA', 'Oranjestad', 'North America', 'NA', '.aw', 'Guilder', 'AWG', '297', 'nl-AW,pap,es,en');
INSERT INTO `countries` VALUES (14, NULL, NULL, 'Aland Islands', 'AX', 'ALA', 248, NULL, 'Mariehamn', 'Europe', 'EU', '.ax', 'Euro', 'EUR', '+358-18', 'sv-AX');
INSERT INTO `countries` VALUES (15, NULL, NULL, 'Azerbaijan', 'AZ', 'AZE', 31, 'AJ', 'Baku', 'Asia', 'AS', '.az', 'Manat', 'AZN', '994', 'az,ru,hy');
INSERT INTO `countries` VALUES (16, NULL, NULL, 'Bosnia and Herzegovina', 'BA', 'BIH', 70, 'BK', 'Sarajevo', 'Europe', 'EU', '.ba', 'Marka', 'BAM', '387', 'bs,hr-BA,sr-BA');
INSERT INTO `countries` VALUES (17, NULL, NULL, 'Barbados', 'BB', 'BRB', 52, 'BB', 'Bridgetown', 'North America', 'NA', '.bb', 'Dollar', 'BBD', '+1-246', 'en-BB');
INSERT INTO `countries` VALUES (18, NULL, NULL, 'Bangladesh', 'BD', 'BGD', 50, 'BG', 'Dhaka', 'Asia', 'AS', '.bd', 'Taka', 'BDT', '880', 'bn-BD,en');
INSERT INTO `countries` VALUES (19, NULL, NULL, 'Burkina Faso', 'BF', 'BFA', 854, 'UV', 'Ouagadougou', 'Africa', 'AF', '.bf', 'Franc', 'XOF', '226', 'fr-BF,mos');
INSERT INTO `countries` VALUES (20, NULL, NULL, 'Bulgaria', 'BG', 'BGR', 100, 'BU', 'Sofia', 'Europe', 'EU', '.bg', 'Lev', 'BGN', '359', 'bg,tr-BG,rom');
INSERT INTO `countries` VALUES (21, NULL, NULL, 'Bahrain', 'BH', 'BHR', 48, 'BA', 'Manama', 'Asia', 'AS', '.bh', 'Dinar', 'BHD', '973', 'ar-BH,en,fa,ur');
INSERT INTO `countries` VALUES (22, NULL, NULL, 'Burundi', 'BI', 'BDI', 108, 'BY', 'Bujumbura', 'Africa', 'AF', '.bi', 'Franc', 'BIF', '257', 'fr-BI,rn');
INSERT INTO `countries` VALUES (23, NULL, NULL, 'Benin', 'BJ', 'BEN', 204, 'BN', 'Porto-Novo', 'Africa', 'AF', '.bj', 'Franc', 'XOF', '229', 'fr-BJ');
INSERT INTO `countries` VALUES (24, NULL, NULL, 'Saint Barthelemy', 'BL', 'BLM', 652, 'TB', 'Gustavia', 'North America', 'NA', '.gp', 'Euro', 'EUR', '590', 'fr');
INSERT INTO `countries` VALUES (25, NULL, NULL, 'Bermuda', 'BM', 'BMU', 60, 'BD', 'Hamilton', 'North America', 'NA', '.bm', 'Dollar', 'BMD', '+1-441', 'en-BM,pt');
INSERT INTO `countries` VALUES (26, NULL, NULL, 'Brunei', 'BN', 'BRN', 96, 'BX', 'Bandar Seri Begawan', 'Asia', 'AS', '.bn', 'Dollar', 'BND', '673', 'ms-BN,en-BN');
INSERT INTO `countries` VALUES (27, NULL, NULL, 'Bolivia', 'BO', 'BOL', 68, 'BL', 'Sucre', 'South America', 'SA', '.bo', 'Boliviano', 'BOB', '591', 'es-BO,qu,ay');
INSERT INTO `countries` VALUES (28, NULL, NULL, 'Brazil', 'BR', 'BRA', 76, 'BR', 'Brasilia', 'South America', 'SA', '.br', 'Real', 'BRL', '55', 'pt-BR,es,en,fr');
INSERT INTO `countries` VALUES (29, NULL, NULL, 'Bahamas', 'BS', 'BHS', 44, 'BF', 'Nassau', 'North America', 'NA', '.bs', 'Dollar', 'BSD', '+1-242', 'en-BS');
INSERT INTO `countries` VALUES (30, NULL, NULL, 'Bhutan', 'BT', 'BTN', 64, 'BT', 'Thimphu', 'Asia', 'AS', '.bt', 'Ngultrum', 'BTN', '975', 'dz');
INSERT INTO `countries` VALUES (31, NULL, NULL, 'Bouvet Island', 'BV', 'BVT', 74, 'BV', NULL, 'Antarctica', 'AN', '.bv', 'Krone', 'NOK', NULL, NULL);
INSERT INTO `countries` VALUES (32, NULL, NULL, 'Botswana', 'BW', 'BWA', 72, 'BC', 'Gaborone', 'Africa', 'AF', '.bw', 'Pula', 'BWP', '267', 'en-BW,tn-BW');
INSERT INTO `countries` VALUES (33, NULL, NULL, 'Belarus', 'BY', 'BLR', 112, 'BO', 'Minsk', 'Europe', 'EU', '.by', 'Belarusian ruble', 'BYN', '375', 'be,ru');
INSERT INTO `countries` VALUES (34, NULL, NULL, 'Belize', 'BZ', 'BLZ', 84, 'BH', 'Belmopan', 'North America', 'NA', '.bz', 'Dollar', 'BZD', '501', 'en-BZ,es');
INSERT INTO `countries` VALUES (35, NULL, NULL, 'Canada', 'CA', 'CAN', 124, 'CA', 'Ottawa', 'North America', 'NA', '.ca', 'Dollar', 'CAD', '1', 'en-CA,fr-CA,iu');
INSERT INTO `countries` VALUES (36, NULL, NULL, 'Cocos Islands', 'CC', 'CCK', 166, 'CK', 'West Island', 'Asia', 'AS', '.cc', 'Dollar', 'AUD', '61', 'ms-CC,en');
INSERT INTO `countries` VALUES (37, NULL, NULL, 'Central African Republic', 'CF', 'CAF', 140, 'CT', 'Bangui', 'Africa', 'AF', '.cf', 'Franc', 'XAF', '236', 'fr-CF,sg,ln,kg');
INSERT INTO `countries` VALUES (38, NULL, NULL, 'Republic of the Congo', 'CG', 'COG', 178, 'CF', 'Brazzaville', 'Africa', 'AF', '.cg', 'Franc', 'XAF', '242', 'fr-CG,kg,ln-CG');
INSERT INTO `countries` VALUES (39, NULL, NULL, 'Switzerland', 'CH', 'CHE', 756, 'SZ', 'Bern', 'Europe', 'EU', '.ch', 'Franc', 'CHF', '41', 'de-CH,fr-CH,it-CH,rm');
INSERT INTO `countries` VALUES (40, NULL, NULL, 'Ivory Coast', 'CI', 'CIV', 384, 'IV', 'Yamoussoukro', 'Africa', 'AF', '.ci', 'Franc', 'XOF', '225', 'fr-CI');
INSERT INTO `countries` VALUES (41, NULL, NULL, 'Cook Islands', 'CK', 'COK', 184, 'CW', 'Avarua', 'Australia', 'OC', '.ck', 'Dollar', 'NZD', '682', 'en-CK,mi');
INSERT INTO `countries` VALUES (42, NULL, NULL, 'Chile', 'CL', 'CHL', 152, 'CI', 'Santiago', 'South America', 'SA', '.cl', 'Peso', 'CLP', '56', 'es-CL');
INSERT INTO `countries` VALUES (43, NULL, NULL, 'Cameroon', 'CM', 'CMR', 120, 'CM', 'Yaounde', 'Africa', 'AF', '.cm', 'Franc', 'XAF', '237', 'en-CM,fr-CM');
INSERT INTO `countries` VALUES (44, NULL, NULL, 'Colombia', 'CO', 'COL', 170, 'CO', 'Bogota', 'South America', 'SA', '.co', 'Peso', 'COP', '57', 'es-CO');
INSERT INTO `countries` VALUES (45, NULL, NULL, 'Costa Rica', 'CR', 'CRI', 188, 'CS', 'San Jose', 'North America', 'NA', '.cr', 'Colon', 'CRC', '506', 'es-CR,en');
INSERT INTO `countries` VALUES (46, NULL, NULL, 'Cuba', 'CU', 'CUB', 192, 'CU', 'Havana', 'North America', 'NA', '.cu', 'Peso', 'CUP', '53', 'es-CU,pap');
INSERT INTO `countries` VALUES (47, NULL, NULL, 'Cape Verde', 'CV', 'CPV', 132, 'CV', 'Praia', 'Africa', 'AF', '.cv', 'Escudo', 'CVE', '238', 'pt-CV');
INSERT INTO `countries` VALUES (48, NULL, NULL, 'Curacao', 'CW', 'CUW', 531, 'UC', ' Willemstad', 'North America', 'NA', '.cw', 'Guilder', 'ANG', '599', 'nl,pap');
INSERT INTO `countries` VALUES (49, NULL, NULL, 'Cyprus', 'CY', 'CYP', 196, 'CY', 'Nicosia', 'Europe', 'EU', '.cy', 'Euro', 'EUR', '357', 'el-CY,tr-CY,en');
INSERT INTO `countries` VALUES (50, NULL, NULL, 'Germany', 'DE', 'DEU', 276, 'GM', 'Berlin', 'Europe', 'EU', '.de', 'Euro', 'EUR', '49', 'de');
INSERT INTO `countries` VALUES (51, NULL, NULL, 'Djibouti', 'DJ', 'DJI', 262, 'DJ', 'Djibouti', 'Africa', 'AF', '.dj', 'Franc', 'DJF', '253', 'fr-DJ,ar,so-DJ,aa');
INSERT INTO `countries` VALUES (52, NULL, NULL, 'Denmark', 'DK', 'DNK', 208, 'DA', 'Copenhagen', 'Europe', 'EU', '.dk', 'Krone', 'DKK', '45', 'da-DK,en,fo,de-DK');
INSERT INTO `countries` VALUES (53, NULL, NULL, 'Dominican Republic', 'DO', 'DOM', 214, 'DR', 'Santo Domingo', 'North America', 'NA', '.do', 'Peso', 'DOP', '+1-809 and 1-829', 'es-DO');
INSERT INTO `countries` VALUES (54, NULL, NULL, 'Algeria', 'DZ', 'DZA', 12, 'AG', 'Algiers', 'Africa', 'AF', '.dz', 'Dinar', 'DZD', '213', 'ar-DZ');
INSERT INTO `countries` VALUES (55, NULL, NULL, 'Ecuador', 'EC', 'ECU', 218, 'EC', 'Quito', 'South America', 'SA', '.ec', 'Dollar', 'USD', '593', 'es-EC');
INSERT INTO `countries` VALUES (56, NULL, NULL, 'Estonia', 'EE', 'EST', 233, 'EN', 'Tallinn', 'Europe', 'EU', '.ee', 'Euro', 'EUR', '372', 'et,ru');
INSERT INTO `countries` VALUES (57, NULL, NULL, 'Egypt', 'EG', 'EGY', 818, 'EG', 'Cairo', 'Africa', 'AF', '.eg', 'Pound', 'EGP', '20', 'ar-EG,en,fr');
INSERT INTO `countries` VALUES (58, NULL, NULL, 'Western Sahara', 'EH', 'ESH', 732, 'WI', 'El-Aaiun', 'Africa', 'AF', '.eh', 'Dirham', 'MAD', '212', 'ar,mey');
INSERT INTO `countries` VALUES (59, NULL, NULL, 'Eritrea', 'ER', 'ERI', 232, 'ER', 'Asmara', 'Africa', 'AF', '.er', 'Nakfa', 'ERN', '291', 'aa-ER,ar,tig,kun,ti-ER');
INSERT INTO `countries` VALUES (60, NULL, NULL, 'Spain', 'ES', 'ESP', 724, 'SP', 'Madrid', 'Europe', 'EU', '.es', 'Euro', 'EUR', '34', 'es-ES,ca,gl,eu,oc');
INSERT INTO `countries` VALUES (61, NULL, NULL, 'Finland', 'FI', 'FIN', 246, 'FI', 'Helsinki', 'Europe', 'EU', '.fi', 'Euro', 'EUR', '358', 'fi-FI,sv-FI,smn');
INSERT INTO `countries` VALUES (62, NULL, NULL, 'Fiji', 'FJ', 'FJI', 242, 'FJ', 'Suva', 'Australia', 'OC', '.fj', 'Dollar', 'FJD', '679', 'en-FJ,fj');
INSERT INTO `countries` VALUES (63, NULL, NULL, 'Falkland Islands', 'FK', 'FLK', 238, 'FK', 'Stanley', 'South America', 'SA', '.fk', 'Pound', 'FKP', '500', 'en-FK');
INSERT INTO `countries` VALUES (64, NULL, NULL, 'Micronesia', 'FM', 'FSM', 583, 'FM', 'Palikir', 'Australia', 'OC', '.fm', 'Dollar', 'USD', '691', 'en-FM,chk,pon,yap,kos,uli,woe,nkr,kpg');
INSERT INTO `countries` VALUES (65, NULL, NULL, 'Faroe Islands', 'FO', 'FRO', 234, 'FO', 'Torshavn', 'Europe', 'EU', '.fo', 'Krone', 'DKK', '298', 'fo,da-FO');
INSERT INTO `countries` VALUES (66, NULL, NULL, 'France', 'FR', 'FRA', 250, 'FR', 'Paris', 'Europe', 'EU', '.fr', 'Euro', 'EUR', '33', 'fr-FR,frp,br,co,ca,eu,oc');
INSERT INTO `countries` VALUES (67, NULL, NULL, 'Gabon', 'GA', 'GAB', 266, 'GB', 'Libreville', 'Africa', 'AF', '.ga', 'Franc', 'XAF', '241', 'fr-GA');
INSERT INTO `countries` VALUES (68, NULL, NULL, 'United Kingdom', 'GB', 'GBR', 826, 'UK', 'London', 'Europe', 'EU', '.uk', 'Pound', 'GBP', '44', 'en-GB,cy-GB,gd');
INSERT INTO `countries` VALUES (69, NULL, NULL, 'Grenada', 'GD', 'GRD', 308, 'GJ', 'St. George\'s', 'North America', 'NA', '.gd', 'Dollar', 'XCD', '+1-473', 'en-GD');
INSERT INTO `countries` VALUES (70, NULL, NULL, 'Georgia', 'GE', 'GEO', 268, 'GG', 'Tbilisi', 'Asia', 'AS', '.ge', 'Lari', 'GEL', '995', 'ka,ru,hy,az');
INSERT INTO `countries` VALUES (71, NULL, NULL, 'French Guiana', 'GF', 'GUF', 254, 'FG', 'Cayenne', 'South America', 'SA', '.gf', 'Euro', 'EUR', '594', 'fr-GF');
INSERT INTO `countries` VALUES (72, NULL, NULL, 'Guernsey', 'GG', 'GGY', 831, 'GK', 'St Peter Port', 'Europe', 'EU', '.gg', 'Pound', 'GBP', '+44-1481', 'en,nrf');
INSERT INTO `countries` VALUES (73, NULL, NULL, 'Ghana', 'GH', 'GHA', 288, 'GH', 'Accra', 'Africa', 'AF', '.gh', 'Cedi', 'GHS', '233', 'en-GH,ak,ee,tw');
INSERT INTO `countries` VALUES (74, NULL, NULL, 'Gibraltar', 'GI', 'GIB', 292, 'GI', 'Gibraltar', 'Europe', 'EU', '.gi', 'Pound', 'GIP', '350', 'en-GI,es,it,pt');
INSERT INTO `countries` VALUES (75, NULL, NULL, 'Gambia', 'GM', 'GMB', 270, 'GA', 'Banjul', 'Africa', 'AF', '.gm', 'Dalasi', 'GMD', '220', 'en-GM,mnk,wof,wo,ff');
INSERT INTO `countries` VALUES (76, NULL, NULL, 'Guinea', 'GN', 'GIN', 324, 'GV', 'Conakry', 'Africa', 'AF', '.gn', 'Franc', 'GNF', '224', 'fr-GN');
INSERT INTO `countries` VALUES (77, NULL, NULL, 'Guadeloupe', 'GP', 'GLP', 312, 'GP', 'Basse-Terre', 'North America', 'NA', '.gp', 'Euro', 'EUR', '590', 'fr-GP');
INSERT INTO `countries` VALUES (78, NULL, NULL, 'Equatorial Guinea', 'GQ', 'GNQ', 226, 'EK', 'Malabo', 'Africa', 'AF', '.gq', 'Franc', 'XAF', '240', 'es-GQ,fr');
INSERT INTO `countries` VALUES (79, NULL, NULL, 'Greece', 'GR', 'GRC', 300, 'GR', 'Athens', 'Europe', 'EU', '.gr', 'Euro', 'EUR', '30', 'el-GR,en,fr');
INSERT INTO `countries` VALUES (80, NULL, NULL, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 239, 'SX', 'Grytviken', 'Antarctica', 'AN', '.gs', 'Pound', 'GBP', NULL, 'en');
INSERT INTO `countries` VALUES (81, NULL, NULL, 'Guatemala', 'GT', 'GTM', 320, 'GT', 'Guatemala City', 'North America', 'NA', '.gt', 'Quetzal', 'GTQ', '502', 'es-GT');
INSERT INTO `countries` VALUES (82, NULL, NULL, 'Guam', 'GU', 'GUM', 316, 'GQ', 'Hagatna', 'Australia', 'OC', '.gu', 'Dollar', 'USD', '+1-671', 'en-GU,ch-GU');
INSERT INTO `countries` VALUES (83, NULL, NULL, 'Guinea-Bissau', 'GW', 'GNB', 624, 'PU', 'Bissau', 'Africa', 'AF', '.gw', 'Franc', 'XOF', '245', 'pt-GW,pov');
INSERT INTO `countries` VALUES (84, NULL, NULL, 'Guyana', 'GY', 'GUY', 328, 'GY', 'Georgetown', 'South America', 'SA', '.gy', 'Dollar', 'GYD', '592', 'en-GY');
INSERT INTO `countries` VALUES (85, NULL, NULL, 'Hong Kong', 'HK', 'HKG', 344, 'HK', 'Hong Kong', 'Asia', 'AS', '.hk', 'Dollar', 'HKD', '852', 'zh-HK,yue,zh,en');
INSERT INTO `countries` VALUES (86, NULL, NULL, 'Heard Island and McDonald Islands', 'HM', 'HMD', 334, 'HM', NULL, 'Antarctica', 'AN', '.hm', 'Dollar', 'AUD', ' ', NULL);
INSERT INTO `countries` VALUES (87, NULL, NULL, 'Croatia', 'HR', 'HRV', 191, 'HR', 'Zagreb', 'Europe', 'EU', '.hr', 'Kuna', 'HRK', '385', 'hr-HR,sr');
INSERT INTO `countries` VALUES (88, NULL, NULL, 'Haiti', 'HT', 'HTI', 332, 'HA', 'Port-au-Prince', 'North America', 'NA', '.ht', 'Gourde', 'HTG', '509', 'ht,fr-HT');
INSERT INTO `countries` VALUES (89, NULL, NULL, 'Hungary', 'HU', 'HUN', 348, 'HU', 'Budapest', 'Europe', 'EU', '.hu', 'Forint', 'HUF', '36', 'hu-HU');
INSERT INTO `countries` VALUES (90, NULL, NULL, 'Indonesia', 'ID', 'IDN', 360, 'ID', 'Jakarta', 'Asia', 'AS', '.id', 'Rupiah', 'IDR', '62', 'id,en,nl,jv');
INSERT INTO `countries` VALUES (91, NULL, NULL, 'Ireland', 'IE', 'IRL', 372, 'EI', 'Dublin', 'Europe', 'EU', '.ie', 'Euro', 'EUR', '353', 'en-IE,ga-IE');
INSERT INTO `countries` VALUES (92, NULL, NULL, 'Israel', 'IL', 'ISR', 376, 'IS', 'Jerusalem', 'Asia', 'AS', '.il', 'Shekel', 'ILS', '972', 'he,ar-IL,en-IL,');
INSERT INTO `countries` VALUES (93, NULL, NULL, 'Isle of Man', 'IM', 'IMN', 833, 'IM', 'Douglas', 'Europe', 'EU', '.im', 'Pound', 'GBP', '+44-1624', 'en,gv');
INSERT INTO `countries` VALUES (94, NULL, NULL, 'British Indian Ocean Territory', 'IO', 'IOT', 86, 'IO', 'Diego Garcia', 'Asia', 'AS', '.io', 'Dollar', 'USD', '246', 'en-IO');
INSERT INTO `countries` VALUES (95, NULL, NULL, 'Iraq', 'IQ', 'IRQ', 368, 'IZ', 'Baghdad', 'Asia', 'AS', '.iq', 'Dinar', 'IQD', '964', 'ar-IQ,ku,hy');
INSERT INTO `countries` VALUES (96, NULL, NULL, 'Iran', 'IR', 'IRN', 364, 'IR', 'Tehran', 'Asia', 'AS', '.ir', 'Rial', 'IRR', '98', 'fa-IR,ku');
INSERT INTO `countries` VALUES (97, NULL, NULL, 'Iceland', 'IS', 'ISL', 352, 'IC', 'Reykjavik', 'Europe', 'EU', '.is', 'Krona', 'ISK', '354', 'is,en,de,da,sv,no');
INSERT INTO `countries` VALUES (98, NULL, NULL, 'Italy', 'IT', 'ITA', 380, 'IT', 'Rome', 'Europe', 'EU', '.it', 'Euro', 'EUR', '39', 'it-IT,de-IT,fr-IT,sc,ca,co,sl');
INSERT INTO `countries` VALUES (99, NULL, NULL, 'Jersey', 'JE', 'JEY', 832, 'JE', 'Saint Helier', 'Europe', 'EU', '.je', 'Pound', 'GBP', '+44-1534', 'en,fr,nrf');
INSERT INTO `countries` VALUES (100, NULL, NULL, 'Jamaica', 'JM', 'JAM', 388, 'JM', 'Kingston', 'North America', 'NA', '.jm', 'Dollar', 'JMD', '+1-876', 'en-JM');
INSERT INTO `countries` VALUES (101, NULL, NULL, 'Jordan', 'JO', 'JOR', 400, 'JO', 'Amman', 'Asia', 'AS', '.jo', 'Dinar', 'JOD', '962', 'ar-JO,en');
INSERT INTO `countries` VALUES (102, NULL, NULL, 'Japan', 'JP', 'JPN', 392, 'JA', 'Tokyo', 'Asia', 'AS', '.jp', 'Yen', 'JPY', '81', 'ja');
INSERT INTO `countries` VALUES (103, NULL, NULL, 'Kenya', 'KE', 'KEN', 404, 'KE', 'Nairobi', 'Africa', 'AF', '.ke', 'Shilling', 'KES', '254', 'en-KE,sw-KE');
INSERT INTO `countries` VALUES (104, NULL, NULL, 'Kyrgyzstan', 'KG', 'KGZ', 417, 'KG', 'Bishkek', 'Asia', 'AS', '.kg', 'Som', 'KGS', '996', 'ky,uz,ru');
INSERT INTO `countries` VALUES (105, NULL, NULL, 'Cambodia', 'KH', 'KHM', 116, 'CB', 'Phnom Penh', 'Asia', 'AS', '.kh', 'Riels', 'KHR', '855', 'km,fr,en');
INSERT INTO `countries` VALUES (106, NULL, NULL, 'Moldova', 'MD', 'MDA', 498, 'MD', 'Chisinau', 'Europe', 'EU', '.md', 'Leu', 'MDL', '373', 'ro,ru,gag,tr');
INSERT INTO `countries` VALUES (107, NULL, NULL, 'Comoros', 'KM', 'COM', 174, 'CN', 'Moroni', 'Africa', 'AF', '.km', 'Franc', 'KMF', '269', 'ar,fr-KM');
INSERT INTO `countries` VALUES (108, NULL, NULL, 'North Korea', 'KP', 'PRK', 408, 'KN', 'Pyongyang', 'Asia', 'AS', '.kp', 'Won', 'KPW', '850', 'ko-KP');
INSERT INTO `countries` VALUES (109, NULL, NULL, 'South Korea', 'KR', 'KOR', 410, 'KS', 'Seoul', 'Asia', 'AS', '.kr', 'Won', 'KRW', '82', 'ko-KR,en');
INSERT INTO `countries` VALUES (110, NULL, NULL, 'Kosovo', 'XK', 'XKX', 0, 'KV', 'Pristina', 'Europe', 'EU', NULL, 'Euro', 'EUR', NULL, 'sq,sr');
INSERT INTO `countries` VALUES (111, NULL, NULL, 'Kuwait', 'KW', 'KWT', 414, 'KU', 'Kuwait City', 'Asia', 'AS', '.kw', 'Dinar', 'KWD', '965', 'ar-KW,en');
INSERT INTO `countries` VALUES (112, NULL, NULL, 'Cayman Islands', 'KY', 'CYM', 136, 'CJ', 'George Town', 'North America', 'NA', '.ky', 'Dollar', 'KYD', '+1-345', 'en-KY');
INSERT INTO `countries` VALUES (113, NULL, NULL, 'Kazakhstan', 'KZ', 'KAZ', 398, 'KZ', 'Astana', 'Asia', 'AS', '.kz', 'Tenge', 'KZT', '7', 'kk,ru');
INSERT INTO `countries` VALUES (114, NULL, NULL, 'Laos', 'LA', 'LAO', 418, 'LA', 'Vientiane', 'Asia', 'AS', '.la', 'Kip', 'LAK', '856', 'lo,fr,en');
INSERT INTO `countries` VALUES (115, NULL, NULL, 'Lebanon', 'LB', 'LBN', 422, 'LE', 'Beirut', 'Asia', 'AS', '.lb', 'Pound', 'LBP', '961', 'ar-LB,fr-LB,en,hy');
INSERT INTO `countries` VALUES (116, NULL, NULL, 'Saint Lucia', 'LC', 'LCA', 662, 'ST', 'Castries', 'North America', 'NA', '.lc', 'Dollar', 'XCD', '+1-758', 'en-LC');
INSERT INTO `countries` VALUES (117, NULL, NULL, 'Liechtenstein', 'LI', 'LIE', 438, 'LS', 'Vaduz', 'Europe', 'EU', '.li', 'Franc', 'CHF', '423', 'de-LI');
INSERT INTO `countries` VALUES (118, NULL, NULL, 'Sri Lanka', 'LK', 'LKA', 144, 'CE', 'Colombo', 'Asia', 'AS', '.lk', 'Rupee', 'LKR', '94', 'si,ta,en');
INSERT INTO `countries` VALUES (119, NULL, NULL, 'Liberia', 'LR', 'LBR', 430, 'LI', 'Monrovia', 'Africa', 'AF', '.lr', 'Dollar', 'LRD', '231', 'en-LR');
INSERT INTO `countries` VALUES (120, NULL, NULL, 'Lesotho', 'LS', 'LSO', 426, 'LT', 'Maseru', 'Africa', 'AF', '.ls', 'Loti', 'LSL', '266', 'en-LS,st,zu,xh');
INSERT INTO `countries` VALUES (121, NULL, NULL, 'Luxembourg', 'LU', 'LUX', 442, 'LU', 'Luxembourg', 'Europe', 'EU', '.lu', 'Euro', 'EUR', '352', 'lb,de-LU,fr-LU');
INSERT INTO `countries` VALUES (122, NULL, NULL, 'Latvia', 'LV', 'LVA', 428, 'LG', 'Riga', 'Europe', 'EU', '.lv', 'Euro', 'EUR', '371', 'lv,ru,lt');
INSERT INTO `countries` VALUES (123, NULL, NULL, 'Libya', 'LY', 'LBY', 434, 'LY', 'Tripoli', 'Africa', 'AF', '.ly', 'Dinar', 'LYD', '218', 'ar-LY,it,en');
INSERT INTO `countries` VALUES (124, NULL, NULL, 'Morocco', 'MA', 'MAR', 504, 'MO', 'Rabat', 'Africa', 'AF', '.ma', 'Dirham', 'MAD', '212', 'ar-MA,ber,fr');
INSERT INTO `countries` VALUES (125, NULL, NULL, 'Monaco', 'MC', 'MCO', 492, 'MN', 'Monaco', 'Europe', 'EU', '.mc', 'Euro', 'EUR', '377', 'fr-MC,en,it');
INSERT INTO `countries` VALUES (126, NULL, NULL, 'Montenegro', 'ME', 'MNE', 499, 'MJ', 'Podgorica', 'Europe', 'EU', '.me', 'Euro', 'EUR', '382', 'sr,hu,bs,sq,hr,rom');
INSERT INTO `countries` VALUES (127, NULL, NULL, 'Saint Martin', 'MF', 'MAF', 663, 'RN', 'Marigot', 'North America', 'NA', '.gp', 'Euro', 'EUR', '590', 'fr');
INSERT INTO `countries` VALUES (128, NULL, NULL, 'Madagascar', 'MG', 'MDG', 450, 'MA', 'Antananarivo', 'Africa', 'AF', '.mg', 'Ariary', 'MGA', '261', 'fr-MG,mg');
INSERT INTO `countries` VALUES (129, NULL, NULL, 'Marshall Islands', 'MH', 'MHL', 584, 'RM', 'Majuro', 'Australia', 'OC', '.mh', 'Dollar', 'USD', '692', 'mh,en-MH');
INSERT INTO `countries` VALUES (130, NULL, NULL, 'Mali', 'ML', 'MLI', 466, 'ML', 'Bamako', 'Africa', 'AF', '.ml', 'Franc', 'XOF', '223', 'fr-ML,bm');
INSERT INTO `countries` VALUES (131, NULL, NULL, 'Myanmar', 'MM', 'MMR', 104, 'BM', 'Nay Pyi Taw', 'Asia', 'AS', '.mm', 'Kyat', 'MMK', '95', 'my');
INSERT INTO `countries` VALUES (132, NULL, NULL, 'Mongolia', 'MN', 'MNG', 496, 'MG', 'Ulan Bator', 'Asia', 'AS', '.mn', 'Tugrik', 'MNT', '976', 'mn,ru');
INSERT INTO `countries` VALUES (133, NULL, NULL, 'Macao', 'MO', 'MAC', 446, 'MC', 'Macao', 'Asia', 'AS', '.mo', 'Pataca', 'MOP', '853', 'zh,zh-MO,pt');
INSERT INTO `countries` VALUES (134, NULL, NULL, 'Northern Mariana Islands', 'MP', 'MNP', 580, 'CQ', 'Saipan', 'Australia', 'OC', '.mp', 'Dollar', 'USD', '+1-670', 'fil,tl,zh,ch-MP,en-MP');
INSERT INTO `countries` VALUES (135, NULL, NULL, 'Martinique', 'MQ', 'MTQ', 474, 'MB', 'Fort-de-France', 'North America', 'NA', '.mq', 'Euro', 'EUR', '596', 'fr-MQ');
INSERT INTO `countries` VALUES (136, NULL, NULL, 'Mauritania', 'MR', 'MRT', 478, 'MR', 'Nouakchott', 'Africa', 'AF', '.mr', 'Ouguiya', 'MRO', '222', 'ar-MR,fuc,snk,fr,mey,wo');
INSERT INTO `countries` VALUES (137, NULL, NULL, 'Montserrat', 'MS', 'MSR', 500, 'MH', 'Plymouth', 'North America', 'NA', '.ms', 'Dollar', 'XCD', '+1-664', 'en-MS');
INSERT INTO `countries` VALUES (138, NULL, NULL, 'Malta', 'MT', 'MLT', 470, 'MT', 'Valletta', 'Europe', 'EU', '.mt', 'Euro', 'EUR', '356', 'mt,en-MT');
INSERT INTO `countries` VALUES (139, NULL, NULL, 'Mauritius', 'MU', 'MUS', 480, 'MP', 'Port Louis', 'Africa', 'AF', '.mu', 'Rupee', 'MUR', '230', 'en-MU,bho,fr');
INSERT INTO `countries` VALUES (140, NULL, NULL, 'Maldives', 'MV', 'MDV', 462, 'MV', 'Male', 'Asia', 'AS', '.mv', 'Rufiyaa', 'MVR', '960', 'dv,en');
INSERT INTO `countries` VALUES (141, NULL, NULL, 'Malawi', 'MW', 'MWI', 454, 'MI', 'Lilongwe', 'Africa', 'AF', '.mw', 'Kwacha', 'MWK', '265', 'ny,yao,tum,swk');
INSERT INTO `countries` VALUES (142, NULL, NULL, 'Mexico', 'MX', 'MEX', 484, 'MX', 'Mexico City', 'North America', 'NA', '.mx', 'Peso', 'MXN', '52', 'es-MX');
INSERT INTO `countries` VALUES (143, NULL, NULL, 'Mozambique', 'MZ', 'MOZ', 508, 'MZ', 'Maputo', 'Africa', 'AF', '.mz', 'Metical', 'MZN', '258', 'pt-MZ,vmw');
INSERT INTO `countries` VALUES (144, NULL, NULL, 'Namibia', 'NA', 'NAM', 516, 'WA', 'Windhoek', 'Africa', 'AF', '.na', 'Dollar', 'NAD', '264', 'en-NA,af,de,hz,naq');
INSERT INTO `countries` VALUES (145, NULL, NULL, 'New Caledonia', 'NC', 'NCL', 540, 'NC', 'Noumea', 'Australia', 'OC', '.nc', 'Franc', 'XPF', '687', 'fr-NC');
INSERT INTO `countries` VALUES (146, NULL, NULL, 'Niger', 'NE', 'NER', 562, 'NG', 'Niamey', 'Africa', 'AF', '.ne', 'Franc', 'XOF', '227', 'fr-NE,ha,kr,dje');
INSERT INTO `countries` VALUES (147, NULL, NULL, 'Norfolk Island', 'NF', 'NFK', 574, 'NF', 'Kingston', 'Australia', 'OC', '.nf', 'Dollar', 'AUD', '672', 'en-NF');
INSERT INTO `countries` VALUES (148, NULL, NULL, 'Nigeria', 'NG', 'NGA', 566, 'NI', 'Abuja', 'Africa', 'AF', '.ng', 'Naira', 'NGN', '234', 'en-NG,ha,yo,ig,ff');
INSERT INTO `countries` VALUES (149, NULL, NULL, 'Nicaragua', 'NI', 'NIC', 558, 'NU', 'Managua', 'North America', 'NA', '.ni', 'Cordoba', 'NIO', '505', 'es-NI,en');
INSERT INTO `countries` VALUES (150, NULL, NULL, 'Netherlands', 'NL', 'NLD', 528, 'NL', 'Amsterdam', 'Europe', 'EU', '.nl', 'Euro', 'EUR', '31', 'nl-NL,fy-NL');
INSERT INTO `countries` VALUES (151, NULL, NULL, 'Norway', 'NO', 'NOR', 578, 'NO', 'Oslo', 'Europe', 'EU', '.no', 'Krone', 'NOK', '47', 'no,nb,nn,se,fi');
INSERT INTO `countries` VALUES (152, NULL, NULL, 'Nepal', 'NP', 'NPL', 524, 'NP', 'Kathmandu', 'Asia', 'AS', '.np', 'Rupee', 'NPR', '977', 'ne,en');
INSERT INTO `countries` VALUES (153, NULL, NULL, 'Nauru', 'NR', 'NRU', 520, 'NR', 'Yaren', 'Australia', 'OC', '.nr', 'Dollar', 'AUD', '674', 'na,en-NR');
INSERT INTO `countries` VALUES (154, NULL, NULL, 'New Zealand', 'NZ', 'NZL', 554, 'NZ', 'Wellington', 'Australia', 'OC', '.nz', 'Dollar', 'NZD', '64', 'en-NZ,mi');
INSERT INTO `countries` VALUES (155, NULL, NULL, 'Oman', 'OM', 'OMN', 512, 'MU', 'Muscat', 'Asia', 'AS', '.om', 'Rial', 'OMR', '968', 'ar-OM,en,bal,ur');
INSERT INTO `countries` VALUES (156, NULL, NULL, 'Panama', 'PA', 'PAN', 591, 'PM', 'Panama City', 'North America', 'NA', '.pa', 'Balboa', 'PAB', '507', 'es-PA,en');
INSERT INTO `countries` VALUES (157, NULL, NULL, 'Peru', 'PE', 'PER', 604, 'PE', 'Lima', 'South America', 'SA', '.pe', 'Sol', 'PEN', '51', 'es-PE,qu,ay');
INSERT INTO `countries` VALUES (158, NULL, NULL, 'French Polynesia', 'PF', 'PYF', 258, 'FP', 'Papeete', 'Australia', 'OC', '.pf', 'Franc', 'XPF', '689', 'fr-PF,ty');
INSERT INTO `countries` VALUES (159, NULL, NULL, 'Papua New Guinea', 'PG', 'PNG', 598, 'PP', 'Port Moresby', 'Australia', 'OC', '.pg', 'Kina', 'PGK', '675', 'en-PG,ho,meu,tpi');
INSERT INTO `countries` VALUES (160, NULL, NULL, 'Ukraine', 'UA', 'UKR', 804, 'UP', 'Kyiv', 'Europe', 'EU', '.ua', 'Hryvnia', 'UAH', '380', 'uk,ru-UA,rom,pl,hu');
INSERT INTO `countries` VALUES (161, NULL, NULL, 'Pakistan', 'PK', 'PAK', 586, 'PK', 'Islamabad', 'Asia', 'AS', '.pk', 'Rupee', 'PKR', '92', 'ur-PK,en-PK,pa,sd,ps,brh');
INSERT INTO `countries` VALUES (162, NULL, NULL, 'Poland', 'PL', 'POL', 616, 'PL', 'Warsaw', 'Europe', 'EU', '.pl', 'Zloty', 'PLN', '48', 'pl');
INSERT INTO `countries` VALUES (163, NULL, NULL, 'Saint Pierre and Miquelon', 'PM', 'SPM', 666, 'SB', 'Saint-Pierre', 'North America', 'NA', '.pm', 'Euro', 'EUR', '508', 'fr-PM');
INSERT INTO `countries` VALUES (164, NULL, NULL, 'Pitcairn', 'PN', 'PCN', 612, 'PC', 'Adamstown', 'Australia', 'OC', '.pn', 'Dollar', 'NZD', '870', 'en-PN');
INSERT INTO `countries` VALUES (165, NULL, NULL, 'Puerto Rico', 'PR', 'PRI', 630, 'RQ', 'San Juan', 'North America', 'NA', '.pr', 'Dollar', 'USD', '+1-787 and 1-939', 'en-PR,es-PR');
INSERT INTO `countries` VALUES (166, NULL, NULL, 'Palestinian Territory', 'PS', 'PSE', 275, 'WE', 'East Jerusalem', 'Asia', 'AS', '.ps', 'Shekel', 'ILS', '970', 'ar-PS');
INSERT INTO `countries` VALUES (167, NULL, NULL, 'Portugal', 'PT', 'PRT', 620, 'PO', 'Lisbon', 'Europe', 'EU', '.pt', 'Euro', 'EUR', '351', 'pt-PT,mwl');
INSERT INTO `countries` VALUES (168, NULL, NULL, 'Palau', 'PW', 'PLW', 585, 'PS', 'Melekeok', 'Australia', 'OC', '.pw', 'Dollar', 'USD', '680', 'pau,sov,en-PW,tox,ja,fil,zh');
INSERT INTO `countries` VALUES (169, NULL, NULL, 'Paraguay', 'PY', 'PRY', 600, 'PA', 'Asuncion', 'South America', 'SA', '.py', 'Guarani', 'PYG', '595', 'es-PY,gn');
INSERT INTO `countries` VALUES (170, NULL, NULL, 'Qatar', 'QA', 'QAT', 634, 'QA', 'Doha', 'Asia', 'AS', '.qa', 'Rial', 'QAR', '974', 'ar-QA,es');
INSERT INTO `countries` VALUES (171, NULL, NULL, 'Reunion', 'RE', 'REU', 638, 'RE', 'Saint-Denis', 'Africa', 'AF', '.re', 'Euro', 'EUR', '262', 'fr-RE');
INSERT INTO `countries` VALUES (172, NULL, NULL, 'Romania', 'RO', 'ROU', 642, 'RO', 'Bucharest', 'Europe', 'EU', '.ro', 'Leu', 'RON', '40', 'ro,hu,rom');
INSERT INTO `countries` VALUES (173, NULL, NULL, 'Serbia', 'RS', 'SRB', 688, 'RI', 'Belgrade', 'Europe', 'EU', '.rs', 'Dinar', 'RSD', '381', 'sr,hu,bs,rom');
INSERT INTO `countries` VALUES (174, NULL, NULL, 'Rwanda', 'RW', 'RWA', 646, 'RW', 'Kigali', 'Africa', 'AF', '.rw', 'Franc', 'RWF', '250', 'rw,en-RW,fr-RW,sw');
INSERT INTO `countries` VALUES (175, NULL, NULL, 'Saudi Arabia', 'SA', 'SAU', 682, 'SA', 'Riyadh', 'Asia', 'AS', '.sa', 'Rial', 'SAR', '966', 'ar-SA');
INSERT INTO `countries` VALUES (176, NULL, NULL, 'Solomon Islands', 'SB', 'SLB', 90, 'BP', 'Honiara', 'Australia', 'OC', '.sb', 'Dollar', 'SBD', '677', 'en-SB,tpi');
INSERT INTO `countries` VALUES (177, NULL, NULL, 'Seychelles', 'SC', 'SYC', 690, 'SE', 'Victoria', 'Africa', 'AF', '.sc', 'Rupee', 'SCR', '248', 'en-SC,fr-SC');
INSERT INTO `countries` VALUES (178, NULL, NULL, 'Sudan', 'SD', 'SDN', 729, 'SU', 'Khartoum', 'Africa', 'AF', '.sd', 'Pound', 'SDG', '249', 'ar-SD,en,fia');
INSERT INTO `countries` VALUES (179, NULL, NULL, 'South Sudan', 'SS', 'SSD', 728, 'OD', 'Juba', 'Africa', 'AF', NULL, 'Pound', 'SSP', '211', 'en');
INSERT INTO `countries` VALUES (180, NULL, NULL, 'Sweden', 'SE', 'SWE', 752, 'SW', 'Stockholm', 'Europe', 'EU', '.se', 'Krona', 'SEK', '46', 'sv-SE,se,sma,fi-SE');
INSERT INTO `countries` VALUES (181, NULL, NULL, 'Singapore', 'SG', 'SGP', 702, 'SN', 'Singapore', 'Asia', 'AS', '.sg', 'Dollar', 'SGD', '65', 'cmn,en-SG,ms-SG,ta-SG,zh-SG');
INSERT INTO `countries` VALUES (182, NULL, NULL, 'Saint Helena', 'SH', 'SHN', 654, 'SH', 'Jamestown', 'Africa', 'AF', '.sh', 'Pound', 'SHP', '290', 'en-SH');
INSERT INTO `countries` VALUES (183, NULL, NULL, 'Slovenia', 'SI', 'SVN', 705, 'SI', 'Ljubljana', 'Europe', 'EU', '.si', 'Euro', 'EUR', '386', 'sl,sh');
INSERT INTO `countries` VALUES (184, NULL, NULL, 'Svalbard and Jan Mayen', 'SJ', 'SJM', 744, 'SV', 'Longyearbyen', 'Europe', 'EU', '.sj', 'Krone', 'NOK', '47', 'no,ru');
INSERT INTO `countries` VALUES (185, NULL, NULL, 'Slovakia', 'SK', 'SVK', 703, 'LO', 'Bratislava', 'Europe', 'EU', '.sk', 'Euro', 'EUR', '421', 'sk,hu');
INSERT INTO `countries` VALUES (186, NULL, NULL, 'Sierra Leone', 'SL', 'SLE', 694, 'SL', 'Freetown', 'Africa', 'AF', '.sl', 'Leone', 'SLL', '232', 'en-SL,men,tem');
INSERT INTO `countries` VALUES (187, NULL, NULL, 'San Marino', 'SM', 'SMR', 674, 'SM', 'San Marino', 'Europe', 'EU', '.sm', 'Euro', 'EUR', '378', 'it-SM');
INSERT INTO `countries` VALUES (188, NULL, NULL, 'Senegal', 'SN', 'SEN', 686, 'SG', 'Dakar', 'Africa', 'AF', '.sn', 'Franc', 'XOF', '221', 'fr-SN,wo,fuc,mnk');
INSERT INTO `countries` VALUES (189, NULL, NULL, 'Somalia', 'SO', 'SOM', 706, 'SO', 'Mogadishu', 'Africa', 'AF', '.so', 'Shilling', 'SOS', '252', 'so-SO,ar-SO,it,en-SO');
INSERT INTO `countries` VALUES (190, NULL, NULL, 'Suriname', 'SR', 'SUR', 740, 'NS', 'Paramaribo', 'South America', 'SA', '.sr', 'Dollar', 'SRD', '597', 'nl-SR,en,srn,hns,jv');
INSERT INTO `countries` VALUES (191, NULL, NULL, 'Sao Tome and Principe', 'ST', 'STP', 678, 'TP', 'Sao Tome', 'Africa', 'AF', '.st', 'Dobra', 'STD', '239', 'pt-ST');
INSERT INTO `countries` VALUES (192, NULL, NULL, 'Sint Maarten', 'SX', 'SXM', 534, 'NN', 'Philipsburg', 'North America', 'NA', '.sx', 'Guilder', 'ANG', '599', 'nl,en');
INSERT INTO `countries` VALUES (193, NULL, NULL, 'Syria', 'SY', 'SYR', 760, 'SY', 'Damascus', 'Asia', 'AS', '.sy', 'Pound', 'SYP', '963', 'ar-SY,ku,hy,arc,fr,en');
INSERT INTO `countries` VALUES (194, NULL, NULL, 'Swaziland', 'SZ', 'SWZ', 748, 'WZ', 'Mbabane', 'Africa', 'AF', '.sz', 'Lilangeni', 'SZL', '268', 'en-SZ,ss-SZ');
INSERT INTO `countries` VALUES (195, NULL, NULL, 'Turks and Caicos Islands', 'TC', 'TCA', 796, 'TK', 'Cockburn Town', 'North America', 'NA', '.tc', 'Dollar', 'USD', '+1-649', 'en-TC');
INSERT INTO `countries` VALUES (196, NULL, NULL, 'Chad', 'TD', 'TCD', 148, 'CD', 'N\'Djamena', 'Africa', 'AF', '.td', 'Franc', 'XAF', '235', 'fr-TD,ar-TD,sre');
INSERT INTO `countries` VALUES (197, NULL, NULL, 'French Southern Territories', 'TF', 'ATF', 260, 'FS', 'Port-aux-Francais', 'Antarctica', 'AN', '.tf', 'Euro  ', 'EUR', NULL, 'fr');
INSERT INTO `countries` VALUES (198, NULL, NULL, 'Togo', 'TG', 'TGO', 768, 'TO', 'Lome', 'Africa', 'AF', '.tg', 'Franc', 'XOF', '228', 'fr-TG,ee,hna,kbp,dag,ha');
INSERT INTO `countries` VALUES (199, NULL, NULL, 'Thailand', 'TH', 'THA', 764, 'TH', 'Bangkok', 'Asia', 'AS', '.th', 'Baht', 'THB', '66', 'th,en');
INSERT INTO `countries` VALUES (200, NULL, NULL, 'Tajikistan', 'TJ', 'TJK', 762, 'TI', 'Dushanbe', 'Asia', 'AS', '.tj', 'Somoni', 'TJS', '992', 'tg,ru');
INSERT INTO `countries` VALUES (201, NULL, NULL, 'Tokelau', 'TK', 'TKL', 772, 'TL', NULL, 'Australia', 'OC', '.tk', 'Dollar', 'NZD', '690', 'tkl,en-TK');
INSERT INTO `countries` VALUES (202, NULL, NULL, 'Turkmenistan', 'TM', 'TKM', 795, 'TX', 'Ashgabat', 'Asia', 'AS', '.tm', 'Manat', 'TMT', '993', 'tk,ru,uz');
INSERT INTO `countries` VALUES (203, NULL, NULL, 'Tunisia', 'TN', 'TUN', 788, 'TS', 'Tunis', 'Africa', 'AF', '.tn', 'Dinar', 'TND', '216', 'ar-TN,fr');
INSERT INTO `countries` VALUES (204, NULL, NULL, 'Tonga', 'TO', 'TON', 776, 'TN', 'Nuku\'alofa', 'Australia', 'OC', '.to', 'Pa\'anga', 'TOP', '676', 'to,en-TO');
INSERT INTO `countries` VALUES (205, NULL, NULL, 'Turkey', 'TR', 'TUR', 792, 'TU', 'Ankara', 'Asia', 'AS', '.tr', 'Lira', 'TRY', '90', 'tr-TR,ku,diq,az,av');
INSERT INTO `countries` VALUES (206, NULL, NULL, 'Trinidad and Tobago', 'TT', 'TTO', 780, 'TD', 'Port of Spain', 'North America', 'NA', '.tt', 'Dollar', 'TTD', '+1-868', 'en-TT,hns,fr,es,zh');
INSERT INTO `countries` VALUES (207, NULL, NULL, 'Tuvalu', 'TV', 'TUV', 798, 'TV', 'Funafuti', 'Australia', 'OC', '.tv', 'Dollar', 'AUD', '688', 'tvl,en,sm,gil');
INSERT INTO `countries` VALUES (208, NULL, NULL, 'Taiwan', 'TW', 'TWN', 158, 'TW', 'Taipei', 'Asia', 'AS', '.tw', 'Dollar', 'TWD', '886', 'zh-TW,zh,nan,hak');
INSERT INTO `countries` VALUES (209, NULL, NULL, 'Tanzania', 'TZ', 'TZA', 834, 'TZ', 'Dodoma', 'Africa', 'AF', '.tz', 'Shilling', 'TZS', '255', 'sw-TZ,en,ar');
INSERT INTO `countries` VALUES (210, NULL, NULL, 'Uganda', 'UG', 'UGA', 800, 'UG', 'Kampala', 'Africa', 'AF', '.ug', 'Shilling', 'UGX', '256', 'en-UG,lg,sw,ar');
INSERT INTO `countries` VALUES (211, NULL, NULL, 'United States', 'US', 'USA', 840, 'US', 'Washington', 'North America', 'NA', '.us', 'Dollar', 'USD', '1', 'en-US,es-US,haw,fr');
INSERT INTO `countries` VALUES (212, NULL, NULL, 'Andorra', 'AD', 'AND', 20, 'AN', 'Andorra la Vella', 'Europe', 'EU', '.ad', 'Euro', 'EUR', '376', 'ca');
INSERT INTO `countries` VALUES (213, NULL, NULL, 'Argentina', 'AR', 'ARG', 32, 'AR', 'Buenos Aires', 'South America', 'SA', '.ar', 'Peso', 'ARS', '54', 'es-AR,en,it,de,fr,gn');
INSERT INTO `countries` VALUES (214, NULL, NULL, 'Belgium', 'BE', 'BEL', 56, 'BE', 'Brussels', 'Europe', 'EU', '.be', 'Euro', 'EUR', '32', 'nl-BE,fr-BE,de-BE');
INSERT INTO `countries` VALUES (215, NULL, NULL, 'Bonaire, Saint Eustatius and Saba ', 'BQ', 'BES', 535, NULL, NULL, 'North America', 'NA', '.bq', 'Dollar', 'USD', '599', 'nl,pap,en');
INSERT INTO `countries` VALUES (216, NULL, NULL, 'Democratic Republic of the Congo', 'CD', 'COD', 180, 'CG', 'Kinshasa', 'Africa', 'AF', '.cd', 'Franc', 'CDF', '243', 'fr-CD,ln,ktu,kg,sw,lua');
INSERT INTO `countries` VALUES (217, NULL, NULL, 'Christmas Island', 'CX', 'CXR', 162, 'KT', 'Flying Fish Cove', 'Australia', 'OC', '.cx', 'Dollar', 'AUD', '61', 'en,zh,ms-CC');
INSERT INTO `countries` VALUES (218, NULL, NULL, 'Dominica', 'DM', 'DMA', 212, 'DO', 'Roseau', 'North America', 'NA', '.dm', 'Dollar', 'XCD', '+1-767', 'en-DM');
INSERT INTO `countries` VALUES (219, NULL, NULL, 'Ethiopia', 'ET', 'ETH', 231, 'ET', 'Addis Ababa', 'Africa', 'AF', '.et', 'Birr', 'ETB', '251', 'am,en-ET,om-ET,ti-ET,so-ET,sid');
INSERT INTO `countries` VALUES (220, NULL, NULL, 'Greenland', 'GL', 'GRL', 304, 'GL', 'Nuuk', 'North America', 'NA', '.gl', 'Krone', 'DKK', '299', 'kl,da-GL,en');
INSERT INTO `countries` VALUES (221, NULL, NULL, 'Honduras', 'HN', 'HND', 340, 'HO', 'Tegucigalpa', 'North America', 'NA', '.hn', 'Lempira', 'HNL', '504', 'es-HN,cab,miq');
INSERT INTO `countries` VALUES (222, NULL, NULL, 'India', 'IN', 'IND', 356, 'IN', 'New Delhi', 'Asia', 'AS', '.in', 'Rupee', 'INR', '91', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc');
INSERT INTO `countries` VALUES (223, NULL, NULL, 'Kiribati', 'KI', 'KIR', 296, 'KR', 'Tarawa', 'Australia', 'OC', '.ki', 'Dollar', 'AUD', '686', 'en-KI,gil');
INSERT INTO `countries` VALUES (224, NULL, NULL, 'Saint Kitts and Nevis', 'KN', 'KNA', 659, 'SC', 'Basseterre', 'North America', 'NA', '.kn', 'Dollar', 'XCD', '+1-869', 'en-KN');
INSERT INTO `countries` VALUES (225, NULL, NULL, 'Lithuania', 'LT', 'LTU', 440, 'LH', 'Vilnius', 'Europe', 'EU', '.lt', 'Euro', 'EUR', '370', 'lt,ru,pl');
INSERT INTO `countries` VALUES (226, NULL, NULL, 'Macedonia', 'MK', 'MKD', 807, 'MK', 'Skopje', 'Europe', 'EU', '.mk', 'Denar', 'MKD', '389', 'mk,sq,tr,rmm,sr');
INSERT INTO `countries` VALUES (227, NULL, NULL, 'Malaysia', 'MY', 'MYS', 458, 'MY', 'Kuala Lumpur', 'Asia', 'AS', '.my', 'Ringgit', 'MYR', '60', 'ms-MY,en,zh,ta,te,ml,pa,th');
INSERT INTO `countries` VALUES (228, NULL, NULL, 'Niue', 'NU', 'NIU', 570, 'NE', 'Alofi', 'Australia', 'OC', '.nu', 'Dollar', 'NZD', '683', 'niu,en-NU');
INSERT INTO `countries` VALUES (229, NULL, NULL, 'Philippines', 'PH', 'PHL', 608, 'RP', 'Manila', 'Asia', 'AS', '.ph', 'Peso', 'PHP', '63', 'tl,en-PH,fil,ceb,tgl,ilo,hil,war,pam,bik,bcl,pag,mrw,tsg,mdh,cbk,krj,sgd,msb,akl,ibg,yka,mta,abx');
INSERT INTO `countries` VALUES (230, NULL, NULL, 'El Salvador', 'SV', 'SLV', 222, 'ES', 'San Salvador', 'North America', 'NA', '.sv', 'Dollar', 'USD', '503', 'es-SV');
INSERT INTO `countries` VALUES (231, NULL, NULL, 'Timor Leste', 'TL', 'TLS', 626, 'TT', 'Dili', 'Australia', 'OC', '.tl', 'Dollar', 'USD', '670', 'tet,pt-TL,id,en');
INSERT INTO `countries` VALUES (232, NULL, NULL, 'United States Minor Outlying Islands', 'UM', 'UMI', 581, NULL, NULL, 'Australia', 'OC', '.um', 'Dollar ', 'USD', '1', 'en-UM');
INSERT INTO `countries` VALUES (233, NULL, NULL, 'Uruguay', 'UY', 'URY', 858, 'UY', 'Montevideo', 'South America', 'SA', '.uy', 'Peso', 'UYU', '598', 'es-UY');
INSERT INTO `countries` VALUES (234, NULL, NULL, 'Uzbekistan', 'UZ', 'UZB', 860, 'UZ', 'Tashkent', 'Asia', 'AS', '.uz', 'Som', 'UZS', '998', 'uz,ru,tg');
INSERT INTO `countries` VALUES (235, NULL, NULL, 'Vatican', 'VA', 'VAT', 336, 'VT', 'Vatican City', 'Europe', 'EU', '.va', 'Euro', 'EUR', '379', 'la,it,fr');
INSERT INTO `countries` VALUES (236, NULL, NULL, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 670, 'VC', 'Kingstown', 'North America', 'NA', '.vc', 'Dollar', 'XCD', '+1-784', 'en-VC,fr');
INSERT INTO `countries` VALUES (237, NULL, NULL, 'Venezuela', 'VE', 'VEN', 862, 'VE', 'Caracas', 'South America', 'SA', '.ve', 'Bolivar Soberano', 'VES', '58', 'es-VE');
INSERT INTO `countries` VALUES (238, NULL, NULL, 'British Virgin Islands', 'VG', 'VGB', 92, 'VI', 'Road Town', 'North America', 'NA', '.vg', 'Dollar', 'USD', '+1-284', 'en-VG');
INSERT INTO `countries` VALUES (239, NULL, NULL, 'U.S. Virgin Islands', 'VI', 'VIR', 850, 'VQ', 'Charlotte Amalie', 'North America', 'NA', '.vi', 'Dollar', 'USD', '+1-340', 'en-VI');
INSERT INTO `countries` VALUES (240, NULL, NULL, 'Vietnam', 'VN', 'VNM', 704, 'VM', 'Hanoi', 'Asia', 'AS', '.vn', 'Dong', 'VND', '84', 'vi,en,fr,zh,km');
INSERT INTO `countries` VALUES (241, NULL, NULL, 'Vanuatu', 'VU', 'VUT', 548, 'NH', 'Port Vila', 'Australia', 'OC', '.vu', 'Vatu', 'VUV', '678', 'bi,en-VU,fr-VU');
INSERT INTO `countries` VALUES (242, NULL, NULL, 'Wallis and Futuna', 'WF', 'WLF', 876, 'WF', 'Mata Utu', 'Australia', 'OC', '.wf', 'Franc', 'XPF', '681', 'wls,fud,fr-WF');
INSERT INTO `countries` VALUES (243, NULL, NULL, 'Samoa', 'WS', 'WSM', 882, 'WS', 'Apia', 'Australia', 'OC', '.ws', 'Tala', 'WST', '685', 'sm,en-WS');
INSERT INTO `countries` VALUES (244, NULL, NULL, 'Yemen', 'YE', 'YEM', 887, 'YM', 'Sanaa', 'Asia', 'AS', '.ye', 'Rial', 'YER', '967', 'ar-YE');
INSERT INTO `countries` VALUES (245, NULL, NULL, 'Mayotte', 'YT', 'MYT', 175, 'MF', 'Mamoudzou', 'Africa', 'AF', '.yt', 'Euro', 'EUR', '262', 'fr-YT');
INSERT INTO `countries` VALUES (246, NULL, NULL, 'South Africa', 'ZA', 'ZAF', 710, 'SF', 'Pretoria', 'Africa', 'AF', '.za', 'Rand', 'ZAR', '27', 'zu,xh,af,nso,en-ZA,tn,st,ts,ss,ve,nr');
INSERT INTO `countries` VALUES (247, NULL, NULL, 'Zambia', 'ZM', 'ZMB', 894, 'ZA', 'Lusaka', 'Africa', 'AF', '.zm', 'Kwacha', 'ZMW', '260', 'en-ZM,bem,loz,lun,lue,ny,toi');
INSERT INTO `countries` VALUES (248, NULL, NULL, 'Zimbabwe', 'ZW', 'ZWE', 716, 'ZI', 'Harare', 'Africa', 'AF', '.zw', 'Dollar', 'ZWL', '263', 'en-ZW,sn,nr,nd');
INSERT INTO `countries` VALUES (249, NULL, NULL, 'Serbia and Montenegro', 'CS', 'SCG', 891, 'YI', 'Belgrade', 'Europe', 'EU', '.cs', 'Dinar', 'RSD', '381', 'cu,hu,sq,sr');
INSERT INTO `countries` VALUES (250, NULL, NULL, 'Netherlands Antilles', 'AN', 'ANT', 530, 'NT', 'Willemstad', 'North America', 'NA', '.an', 'Guilder', 'ANG', '599', 'nl-AN,en,es');
INSERT INTO `countries` VALUES (251, NULL, NULL, 'Russia', 'RU', 'RUS', 643, 'RS', 'Moscow', 'Europe', 'EU', '.ru', 'Ruble', 'RUB', '7', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv,mdf,chm,ba,inh,tut,kbd,krc,av,sah,nog');
INSERT INTO `countries` VALUES (252, NULL, NULL, 'Czech Republic', 'CZ', 'CZE', 203, 'EZ', 'Prague', 'Europe', 'EU', '.cz', 'Koruna', 'CZK', '420', 'cs,sk');

SET FOREIGN_KEY_CHECKS = 1;
