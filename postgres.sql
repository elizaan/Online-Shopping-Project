/*
 Navicat Premium Data Transfer

 Source Server         : Muslim Pro
 Source Server Type    : PostgreSQL
 Source Server Version : 110001
 Source Host           : localhost:5432
 Source Catalog        : corona
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 110001
 File Encoding         : 65001

 Date: 02/04/2020 13:39:05
*/


-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS "public"."business";
CREATE TABLE "public"."business" (
  "id" int4 NOT NULL,
  "region_id" int4 NOT NULL,
  "date" timestamp(6),
  "musk_sold" int4,
  "hand_sanitizer_sold" int4,
  "hand_wash_sold" int4,
  "epidemic_id" int4
)
;

-- ----------------------------
-- Table structure for dengu_info
-- ----------------------------
DROP TABLE IF EXISTS "public"."dengu_info";
CREATE TABLE "public"."dengu_info" (
  "id" int4 NOT NULL,
  "date" date,
  "hosp_id" int4 NOT NULL,
  "dengue_fever" int4,
  "dengue_hemorrhagic" int4,
  "dengu_shock_synd" int4,
  "total" int4,
  "total_admitted" int4,
  "death_basedon_dengue_suspected_investigation" int4,
  "death_basedon_investigation" int4,
  "confirmed_death" int4,
  "patients_with_clearance" int4,
  "currently_admitted" int4
)
;

-- ----------------------------
-- Table structure for dengue_age
-- ----------------------------
DROP TABLE IF EXISTS "public"."dengue_age";
CREATE TABLE "public"."dengue_age" (
  "region_id" int4,
  "date" date,
  "gender" int4,
  "less_one" int4,
  "one_five" int4,
  "five_fifteen" int4,
  "fifteen_tweentyfive" int4,
  "twentyfive_thirtyfive" int4,
  "thirtyfive_fortyfive" int4,
  "fortyfive_fiftyfive" int4,
  "fiftyfive_sixtyfive" int4,
  "greater_sixtyfive" int4,
  "total" int4
)
;

-- ----------------------------
-- Table structure for dengue_daily_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."dengue_daily_data";
CREATE TABLE "public"."dengue_daily_data" (
  "id" int4 NOT NULL,
  "region_id" int4,
  "region_type" varchar(50) COLLATE "pg_catalog"."default",
  "region_name" varchar(50) COLLATE "pg_catalog"."default",
  "hospital_id" int4,
  "hospital_name" varchar(50) COLLATE "pg_catalog"."default",
  "date" date,
  "timeperiod" varchar(50) COLLATE "pg_catalog"."default",
  "dengue_fever" int4,
  "dengue_hemorrhagic" int4,
  "dengu_shock_synd" int4,
  "total" int4,
  "total_admitted" int4
)
;

-- ----------------------------
-- Records of dengue_daily_data
-- ----------------------------
INSERT INTO "public"."dengue_daily_data" VALUES (1, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-11-11', 'daily', 7, 0, 0, 7, 76);
INSERT INTO "public"."dengue_daily_data" VALUES (2, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-11-11', 'daily', 8, 0, 0, 8, 55);
INSERT INTO "public"."dengue_daily_data" VALUES (3, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-11-11', 'daily', 3, 0, 0, 3, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (4, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 40);
INSERT INTO "public"."dengue_daily_data" VALUES (5, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-11-11', 'daily', 3, 0, 0, 3, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (6, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-11-11', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (7, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-11-11', 'daily', 3, 0, 0, 3, 48);
INSERT INTO "public"."dengue_daily_data" VALUES (8, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (9, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 14);
INSERT INTO "public"."dengue_daily_data" VALUES (10, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-11-11', 'daily', 12, 0, 0, 12, 38);
INSERT INTO "public"."dengue_daily_data" VALUES (11, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (12, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (13, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (14, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-11-11', 'daily', 7, 0, 0, 7, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (15, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-11-11', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (16, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (17, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (18, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (19, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (20, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-11-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (21, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (22, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (23, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (24, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (25, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (26, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (27, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-11-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (28, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (29, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (30, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (31, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (32, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (33, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-11-11', 'daily', 2, 0, 0, 2, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (34, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-11-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (35, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (36, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (37, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-11-11', 'daily', 2, 0, 0, 2, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (38, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (39, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (40, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (41, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (42, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (43, 2, 'Division', 'Dhaka Division', NULL, NULL, '2019-11-11', 'daily', 18, 0, 0, 18, 74);
INSERT INTO "public"."dengue_daily_data" VALUES (44, 3, 'Division', 'Chittagong Division', NULL, NULL, '2019-11-11', 'daily', 18, 0, 0, 18, 117);
INSERT INTO "public"."dengue_daily_data" VALUES (45, 6, 'Division', 'Khulna Division', NULL, NULL, '2019-11-11', 'daily', 26, 0, 0, 26, 116);
INSERT INTO "public"."dengue_daily_data" VALUES (46, 8, 'Division', 'Rangpur Division', NULL, NULL, '2019-11-11', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (47, 4, 'Division', 'Rajshahi Division', NULL, NULL, '2019-11-11', 'daily', 4, 0, 0, 4, 26);
INSERT INTO "public"."dengue_daily_data" VALUES (48, 5, 'Division', 'Barishal Division', NULL, NULL, '2019-11-11', 'daily', 2, 0, 0, 2, 48);
INSERT INTO "public"."dengue_daily_data" VALUES (49, 9, 'Division', 'Sylhet Division', NULL, NULL, '2019-11-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (50, 7, 'Division', 'Mymensingh Division', NULL, NULL, '2019-11-11', 'daily', 2, 0, 0, 2, 19);
INSERT INTO "public"."dengue_daily_data" VALUES (51, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-06', 'daily', 6, 0, 0, 6, 41);
INSERT INTO "public"."dengue_daily_data" VALUES (52, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-06', 'daily', 3, 0, 0, 3, 42);
INSERT INTO "public"."dengue_daily_data" VALUES (53, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (54, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-06', 'daily', 3, 0, 0, 3, 21);
INSERT INTO "public"."dengue_daily_data" VALUES (55, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-06', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (56, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-06', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (57, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-06', 'daily', 4, 0, 0, 4, 32);
INSERT INTO "public"."dengue_daily_data" VALUES (58, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (59, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (60, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-06', 'daily', 2, 0, 0, 2, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (61, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (62, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (63, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (64, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (65, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-06', 'daily', 1, 0, 0, 1, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (66, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (67, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (68, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (69, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (70, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (71, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (72, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (73, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (74, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (75, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (76, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (77, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (78, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (79, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (80, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (81, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (82, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (83, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (84, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (85, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (86, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (87, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (88, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (89, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (90, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (91, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (92, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (93, 2, 'Division', 'Dhaka Division', NULL, NULL, '2019-12-06', 'daily', 6, 0, 0, 6, 27);
INSERT INTO "public"."dengue_daily_data" VALUES (94, 3, 'Division', 'Chittagong Division', NULL, NULL, '2019-12-06', 'daily', 3, 0, 0, 3, 34);
INSERT INTO "public"."dengue_daily_data" VALUES (95, 6, 'Division', 'Khulna Division', NULL, NULL, '2019-12-06', 'daily', 4, 0, 0, 4, 36);
INSERT INTO "public"."dengue_daily_data" VALUES (96, 8, 'Division', 'Rangpur Division', NULL, NULL, '2019-12-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (97, 4, 'Division', 'Rajshahi Division', NULL, NULL, '2019-12-06', 'daily', 0, 0, 0, 0, 14);
INSERT INTO "public"."dengue_daily_data" VALUES (98, 5, 'Division', 'Barishal Division', NULL, NULL, '2019-12-06', 'daily', 4, 0, 0, 4, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (99, 9, 'Division', 'Sylhet Division', NULL, NULL, '2019-12-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (100, 7, 'Division', 'Mymensingh Division', NULL, NULL, '2019-12-06', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (101, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-16', 'daily', 2, 0, 0, 2, 35);
INSERT INTO "public"."dengue_daily_data" VALUES (102, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-16', 'daily', 3, 0, 0, 3, 18);
INSERT INTO "public"."dengue_daily_data" VALUES (103, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (104, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (105, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (106, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-16', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (107, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 14);
INSERT INTO "public"."dengue_daily_data" VALUES (108, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (109, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (110, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-16', 'daily', 2, 0, 0, 2, 16);
INSERT INTO "public"."dengue_daily_data" VALUES (111, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (112, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (113, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (114, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (115, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (116, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (117, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (118, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (119, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (120, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (121, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (122, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (123, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (124, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (125, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (126, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (127, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (128, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (129, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (130, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (131, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (132, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (133, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (134, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (135, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (136, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (137, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (138, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (139, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (140, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (141, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (142, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (143, 2, 'Division', 'Dhaka Division', NULL, NULL, '2019-12-16', 'daily', 2, 0, 0, 2, 18);
INSERT INTO "public"."dengue_daily_data" VALUES (144, 3, 'Division', 'Chittagong Division', NULL, NULL, '2019-12-16', 'daily', 4, 0, 0, 4, 26);
INSERT INTO "public"."dengue_daily_data" VALUES (145, 6, 'Division', 'Khulna Division', NULL, NULL, '2019-12-16', 'daily', 2, 0, 0, 2, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (146, 8, 'Division', 'Rangpur Division', NULL, NULL, '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (147, 4, 'Division', 'Rajshahi Division', NULL, NULL, '2019-12-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (148, 5, 'Division', 'Barishal Division', NULL, NULL, '2019-12-16', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (149, 9, 'Division', 'Sylhet Division', NULL, NULL, '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (150, 7, 'Division', 'Mymensingh Division', NULL, NULL, '2019-12-16', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (151, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 28);
INSERT INTO "public"."dengue_daily_data" VALUES (152, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-21', 'daily', 0, 0, 0, 0, 15);
INSERT INTO "public"."dengue_daily_data" VALUES (153, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-21', 'daily', 1, 0, 0, 1, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (154, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-21', 'daily', 1, 0, 0, 1, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (155, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-21', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (156, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-21', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (157, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (158, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-21', 'daily', 2, 0, 0, 2, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (159, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (160, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (161, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (162, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (163, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (164, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (165, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (166, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (167, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (168, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (169, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (170, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (171, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (172, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (173, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (174, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (175, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (176, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (177, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (178, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (179, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (180, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (181, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (182, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (183, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-21', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (184, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (185, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (186, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (187, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (188, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (189, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (190, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (191, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (192, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (193, 2, 'Division', 'Dhaka Division', NULL, NULL, '2019-12-21', 'daily', 2, 0, 0, 2, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (194, 3, 'Division', 'Chittagong Division', NULL, NULL, '2019-12-21', 'daily', 2, 0, 0, 2, 16);
INSERT INTO "public"."dengue_daily_data" VALUES (195, 6, 'Division', 'Khulna Division', NULL, NULL, '2019-12-21', 'daily', 2, 0, 0, 2, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (196, 8, 'Division', 'Rangpur Division', NULL, NULL, '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (197, 4, 'Division', 'Rajshahi Division', NULL, NULL, '2019-12-21', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (198, 5, 'Division', 'Barishal Division', NULL, NULL, '2019-12-21', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (199, 9, 'Division', 'Sylhet Division', NULL, NULL, '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (200, 7, 'Division', 'Mymensingh Division', NULL, NULL, '2019-12-21', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (201, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (202, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-26', 'daily', 1, 0, 0, 1, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (203, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (204, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (205, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-26', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (206, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-26', 'daily', 4, 0, 0, 4, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (207, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (208, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-26', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (209, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (210, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (211, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (212, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (213, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (214, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (215, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (216, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (217, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (218, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (219, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (220, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (221, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (222, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (223, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (224, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (225, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (226, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (227, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (228, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (229, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (230, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (231, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (232, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (233, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (234, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (235, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (236, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (237, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (238, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (239, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (240, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (241, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (242, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (243, 2, 'Division', 'Dhaka Division', NULL, NULL, '2019-12-26', 'daily', 4, 0, 0, 4, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (244, 3, 'Division', 'Chittagong Division', NULL, NULL, '2019-12-26', 'daily', 7, 0, 0, 7, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (245, 6, 'Division', 'Khulna Division', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (246, 8, 'Division', 'Rangpur Division', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (247, 4, 'Division', 'Rajshahi Division', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (248, 5, 'Division', 'Barishal Division', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (249, 9, 'Division', 'Sylhet Division', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (250, 7, 'Division', 'Mymensingh Division', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (251, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (252, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-31', 'daily', 0, 0, 0, 0, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (253, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-31', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (254, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-31', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (255, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (256, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (257, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (258, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (259, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-31', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (260, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (261, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (262, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (263, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (264, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (265, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (266, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (267, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (268, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (269, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (270, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (271, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (272, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (273, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (274, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (275, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-31', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (276, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (277, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (278, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (279, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (280, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (281, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (282, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (283, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (284, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (285, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (286, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (287, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (288, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (289, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (290, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (291, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (292, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (293, 2, 'Division', 'Dhaka Division', NULL, NULL, '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (294, 3, 'Division', 'Chittagong Division', NULL, NULL, '2019-12-31', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (295, 6, 'Division', 'Khulna Division', NULL, NULL, '2019-12-31', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (296, 8, 'Division', 'Rangpur Division', NULL, NULL, '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (297, 4, 'Division', 'Rajshahi Division', NULL, NULL, '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (298, 5, 'Division', 'Barishal Division', NULL, NULL, '2019-12-31', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (299, 9, 'Division', 'Sylhet Division', NULL, NULL, '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (300, 7, 'Division', 'Mymensingh Division', NULL, NULL, '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (301, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-09-27', 'daily', 20, 0, 0, 20, 128);
INSERT INTO "public"."dengue_daily_data" VALUES (302, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-09-27', 'daily', 17, 0, 0, 17, 112);
INSERT INTO "public"."dengue_daily_data" VALUES (303, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 25);
INSERT INTO "public"."dengue_daily_data" VALUES (304, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-09-27', 'daily', 4, 0, 0, 4, 48);
INSERT INTO "public"."dengue_daily_data" VALUES (305, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-09-27', 'daily', 7, 0, 0, 7, 31);
INSERT INTO "public"."dengue_daily_data" VALUES (306, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-09-27', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (307, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-09-27', 'daily', 3, 0, 0, 3, 47);
INSERT INTO "public"."dengue_daily_data" VALUES (308, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (309, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 29);
INSERT INTO "public"."dengue_daily_data" VALUES (310, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-09-27', 'daily', 7, 0, 0, 7, 47);
INSERT INTO "public"."dengue_daily_data" VALUES (311, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (312, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (313, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (314, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (315, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (316, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-09-27', 'daily', 4, 0, 0, 4, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (317, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (318, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (319, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (320, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-09-27', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (321, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (322, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (323, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (324, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (325, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (326, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-09-27', 'daily', 2, 0, 0, 2, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (327, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (328, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (329, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (330, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (331, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-09-27', 'daily', 2, 0, 0, 2, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (332, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-09-27', 'daily', 3, 0, 0, 3, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (333, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (334, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-09-27', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (335, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (336, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (337, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (338, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-09-27', 'daily', 2, 0, 0, 2, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (339, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (340, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (341, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (342, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (343, 2, 'Division', 'Dhaka Division', NULL, NULL, '2019-09-27', 'daily', 52, 0, 0, 52, 190);
INSERT INTO "public"."dengue_daily_data" VALUES (344, 3, 'Division', 'Chittagong Division', NULL, NULL, '2019-09-27', 'daily', 29, 0, 0, 29, 140);
INSERT INTO "public"."dengue_daily_data" VALUES (345, 6, 'Division', 'Khulna Division', NULL, NULL, '2019-09-27', 'daily', 107, 0, 0, 107, 363);
INSERT INTO "public"."dengue_daily_data" VALUES (346, 8, 'Division', 'Rangpur Division', NULL, NULL, '2019-09-27', 'daily', 4, 0, 0, 4, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (347, 4, 'Division', 'Rajshahi Division', NULL, NULL, '2019-09-27', 'daily', 36, 0, 0, 36, 98);
INSERT INTO "public"."dengue_daily_data" VALUES (348, 5, 'Division', 'Barishal Division', NULL, NULL, '2019-09-27', 'daily', 38, 0, 0, 38, 130);
INSERT INTO "public"."dengue_daily_data" VALUES (349, 9, 'Division', 'Sylhet Division', NULL, NULL, '2019-09-27', 'daily', 5, 0, 0, 5, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (350, 7, 'Division', 'Mymensingh Division', NULL, NULL, '2019-09-27', 'daily', 7, 0, 0, 7, 34);
INSERT INTO "public"."dengue_daily_data" VALUES (351, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-10-02', 'daily', 29, 0, 0, 29, 121);
INSERT INTO "public"."dengue_daily_data" VALUES (352, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-10-02', 'daily', 15, 0, 0, 15, 104);
INSERT INTO "public"."dengue_daily_data" VALUES (353, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-10-02', 'daily', 4, 0, 0, 4, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (354, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-10-02', 'daily', 14, 0, 0, 14, 55);
INSERT INTO "public"."dengue_daily_data" VALUES (355, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-10-02', 'daily', 1, 0, 0, 1, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (356, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-10-02', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (357, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-10-02', 'daily', 3, 0, 0, 3, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (358, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-10-02', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (359, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 34);
INSERT INTO "public"."dengue_daily_data" VALUES (360, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-10-02', 'daily', 10, 0, 0, 10, 53);
INSERT INTO "public"."dengue_daily_data" VALUES (361, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (362, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (363, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (364, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (365, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (366, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (367, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (368, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (369, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (370, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-10-02', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (371, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (372, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-10-02', 'daily', 4, 0, 0, 4, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (373, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (374, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (375, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (376, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (377, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-10-02', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (378, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (379, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (380, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (381, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (382, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (383, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (384, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (385, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (386, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (387, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (388, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (389, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (390, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (391, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (392, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (393, 2, 'Division', 'Dhaka Division', NULL, NULL, '2019-10-02', 'daily', 50, 0, 0, 50, 193);
INSERT INTO "public"."dengue_daily_data" VALUES (394, 3, 'Division', 'Chittagong Division', NULL, NULL, '2019-10-02', 'daily', 25, 0, 0, 25, 121);
INSERT INTO "public"."dengue_daily_data" VALUES (395, 6, 'Division', 'Khulna Division', NULL, NULL, '2019-10-02', 'daily', 95, 0, 0, 95, 357);
INSERT INTO "public"."dengue_daily_data" VALUES (396, 8, 'Division', 'Rangpur Division', NULL, NULL, '2019-10-02', 'daily', 7, 0, 0, 7, 30);
INSERT INTO "public"."dengue_daily_data" VALUES (397, 4, 'Division', 'Rajshahi Division', NULL, NULL, '2019-10-02', 'daily', 15, 0, 0, 15, 70);
INSERT INTO "public"."dengue_daily_data" VALUES (398, 5, 'Division', 'Barishal Division', NULL, NULL, '2019-10-02', 'daily', 31, 0, 0, 31, 121);
INSERT INTO "public"."dengue_daily_data" VALUES (399, 9, 'Division', 'Sylhet Division', NULL, NULL, '2019-10-02', 'daily', 5, 0, 0, 5, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (400, 7, 'Division', 'Mymensingh Division', NULL, NULL, '2019-10-02', 'daily', 6, 0, 0, 6, 31);
INSERT INTO "public"."dengue_daily_data" VALUES (401, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-10-07', 'daily', 24, 0, 0, 24, 122);
INSERT INTO "public"."dengue_daily_data" VALUES (402, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-10-07', 'daily', 14, 0, 0, 14, 72);
INSERT INTO "public"."dengue_daily_data" VALUES (403, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (404, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-10-07', 'daily', 7, 0, 0, 7, 43);
INSERT INTO "public"."dengue_daily_data" VALUES (405, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-10-07', 'daily', 11, 0, 0, 11, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (406, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-10-07', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (407, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-10-07', 'daily', 4, 0, 0, 4, 26);
INSERT INTO "public"."dengue_daily_data" VALUES (408, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (409, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-10-07', 'daily', 3, 0, 0, 3, 31);
INSERT INTO "public"."dengue_daily_data" VALUES (410, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-10-07', 'daily', 8, 0, 0, 8, 47);
INSERT INTO "public"."dengue_daily_data" VALUES (411, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (412, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (413, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (414, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (415, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (416, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (417, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (418, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (419, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (420, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-10-07', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (421, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (422, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-10-07', 'daily', 4, 0, 0, 4, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (423, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (424, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (425, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (426, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (427, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-10-07', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (428, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (429, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (430, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (431, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (432, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (433, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-10-07', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (434, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (435, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (436, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (437, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-10-07', 'daily', 2, 0, 0, 2, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (438, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (439, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (440, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (441, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (442, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (443, 2, 'Division', 'Dhaka Division', NULL, NULL, '2019-10-07', 'daily', 59, 0, 0, 59, 138);
INSERT INTO "public"."dengue_daily_data" VALUES (444, 3, 'Division', 'Chittagong Division', NULL, NULL, '2019-10-07', 'daily', 23, 0, 0, 23, 121);
INSERT INTO "public"."dengue_daily_data" VALUES (445, 6, 'Division', 'Khulna Division', NULL, NULL, '2019-10-07', 'daily', 114, 0, 0, 114, 392);
INSERT INTO "public"."dengue_daily_data" VALUES (446, 8, 'Division', 'Rangpur Division', NULL, NULL, '2019-10-07', 'daily', 8, 0, 0, 8, 20);
INSERT INTO "public"."dengue_daily_data" VALUES (447, 4, 'Division', 'Rajshahi Division', NULL, NULL, '2019-10-07', 'daily', 19, 0, 0, 19, 76);
INSERT INTO "public"."dengue_daily_data" VALUES (448, 5, 'Division', 'Barishal Division', NULL, NULL, '2019-10-07', 'daily', 31, 0, 0, 31, 90);
INSERT INTO "public"."dengue_daily_data" VALUES (449, 9, 'Division', 'Sylhet Division', NULL, NULL, '2019-10-07', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (450, 7, 'Division', 'Mymensingh Division', NULL, NULL, '2019-10-07', 'daily', 3, 0, 0, 3, 30);
INSERT INTO "public"."dengue_daily_data" VALUES (451, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-11-06', 'daily', 21, 0, 0, 21, 75);
INSERT INTO "public"."dengue_daily_data" VALUES (452, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-11-06', 'daily', 6, 0, 0, 6, 31);
INSERT INTO "public"."dengue_daily_data" VALUES (453, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-11-06', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (454, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-11-06', 'daily', 4, 0, 0, 4, 25);
INSERT INTO "public"."dengue_daily_data" VALUES (455, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-11-06', 'daily', 3, 0, 0, 3, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (456, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-11-06', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (457, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-11-06', 'daily', 6, 0, 0, 6, 36);
INSERT INTO "public"."dengue_daily_data" VALUES (458, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (459, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-11-06', 'daily', 1, 0, 0, 1, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (460, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-11-06', 'daily', 6, 0, 0, 6, 37);
INSERT INTO "public"."dengue_daily_data" VALUES (461, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (462, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (463, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (464, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-11-06', 'daily', 3, 0, 0, 3, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (465, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-11-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (466, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (467, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-11-06', 'daily', 2, 0, 0, 2, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (468, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (469, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (470, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-11-06', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (471, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (472, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-11-06', 'daily', 3, 0, 0, 3, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (473, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (474, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (475, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (476, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-11-06', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (477, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-11-06', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (478, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (479, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (480, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (481, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-11-06', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (482, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (483, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-11-06', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (484, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (485, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (486, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (487, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (488, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (489, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (490, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-11-06', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (491, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (492, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (493, 2, 'Division', 'Dhaka Division', NULL, NULL, '2019-11-06', 'daily', 18, 0, 0, 18, 76);
INSERT INTO "public"."dengue_daily_data" VALUES (494, 3, 'Division', 'Chittagong Division', NULL, NULL, '2019-11-06', 'daily', 33, 0, 0, 33, 126);
INSERT INTO "public"."dengue_daily_data" VALUES (495, 6, 'Division', 'Khulna Division', NULL, NULL, '2019-11-06', 'daily', 36, 0, 0, 36, 125);
INSERT INTO "public"."dengue_daily_data" VALUES (496, 8, 'Division', 'Rangpur Division', NULL, NULL, '2019-11-06', 'daily', 4, 0, 0, 4, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (497, 4, 'Division', 'Rajshahi Division', NULL, NULL, '2019-11-06', 'daily', 4, 0, 0, 4, 28);
INSERT INTO "public"."dengue_daily_data" VALUES (498, 5, 'Division', 'Barishal Division', NULL, NULL, '2019-11-06', 'daily', 17, 0, 0, 17, 68);
INSERT INTO "public"."dengue_daily_data" VALUES (499, 9, 'Division', 'Sylhet Division', NULL, NULL, '2019-11-06', 'daily', 3, 0, 0, 3, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (500, 7, 'Division', 'Mymensingh Division', NULL, NULL, '2019-11-06', 'daily', 4, 0, 0, 4, 20);
INSERT INTO "public"."dengue_daily_data" VALUES (501, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-09-27', 'daily', 20, 0, 0, 20, 128);
INSERT INTO "public"."dengue_daily_data" VALUES (502, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-09-27', 'daily', 17, 0, 0, 17, 112);
INSERT INTO "public"."dengue_daily_data" VALUES (503, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 25);
INSERT INTO "public"."dengue_daily_data" VALUES (504, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-09-27', 'daily', 4, 0, 0, 4, 48);
INSERT INTO "public"."dengue_daily_data" VALUES (505, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-09-27', 'daily', 7, 0, 0, 7, 31);
INSERT INTO "public"."dengue_daily_data" VALUES (506, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-09-27', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (507, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-09-27', 'daily', 3, 0, 0, 3, 47);
INSERT INTO "public"."dengue_daily_data" VALUES (508, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (509, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 29);
INSERT INTO "public"."dengue_daily_data" VALUES (510, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-09-27', 'daily', 7, 0, 0, 7, 47);
INSERT INTO "public"."dengue_daily_data" VALUES (511, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (512, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (513, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (514, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (515, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (516, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-09-27', 'daily', 4, 0, 0, 4, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (517, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (518, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (519, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (520, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-09-27', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (521, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (522, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (523, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (524, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (525, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (526, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-09-27', 'daily', 2, 0, 0, 2, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (527, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (528, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (529, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (530, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (531, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-09-27', 'daily', 2, 0, 0, 2, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (532, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-09-27', 'daily', 3, 0, 0, 3, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (533, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (534, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-09-27', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (535, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (536, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (537, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (538, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-09-27', 'daily', 2, 0, 0, 2, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (539, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-09-27', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (540, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (541, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-09-27', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (542, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-09-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (543, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-09-27', 'daily', 52, 0, 0, 52, 190);
INSERT INTO "public"."dengue_daily_data" VALUES (544, 3, 'Division', 'Chittagong', NULL, NULL, '2019-09-27', 'daily', 29, 0, 0, 29, 140);
INSERT INTO "public"."dengue_daily_data" VALUES (545, 6, 'Division', 'Khulna', NULL, NULL, '2019-09-27', 'daily', 107, 0, 0, 107, 363);
INSERT INTO "public"."dengue_daily_data" VALUES (546, 8, 'Division', 'Rangpur', NULL, NULL, '2019-09-27', 'daily', 4, 0, 0, 4, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (547, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-09-27', 'daily', 36, 0, 0, 36, 98);
INSERT INTO "public"."dengue_daily_data" VALUES (548, 5, 'Division', 'Barishal', NULL, NULL, '2019-09-27', 'daily', 38, 0, 0, 38, 130);
INSERT INTO "public"."dengue_daily_data" VALUES (549, 9, 'Division', 'Sylhet', NULL, NULL, '2019-09-27', 'daily', 5, 0, 0, 5, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (550, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-09-27', 'daily', 7, 0, 0, 7, 34);
INSERT INTO "public"."dengue_daily_data" VALUES (551, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-10-02', 'daily', 29, 0, 0, 29, 121);
INSERT INTO "public"."dengue_daily_data" VALUES (552, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-10-02', 'daily', 15, 0, 0, 15, 104);
INSERT INTO "public"."dengue_daily_data" VALUES (553, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-10-02', 'daily', 4, 0, 0, 4, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (554, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-10-02', 'daily', 14, 0, 0, 14, 55);
INSERT INTO "public"."dengue_daily_data" VALUES (555, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-10-02', 'daily', 1, 0, 0, 1, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (556, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-10-02', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (557, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-10-02', 'daily', 3, 0, 0, 3, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (558, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-10-02', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (559, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 34);
INSERT INTO "public"."dengue_daily_data" VALUES (560, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-10-02', 'daily', 10, 0, 0, 10, 53);
INSERT INTO "public"."dengue_daily_data" VALUES (1194, 3, 'Division', 'Chittagong', NULL, NULL, '2019-12-06', 'daily', 3, 0, 0, 3, 34);
INSERT INTO "public"."dengue_daily_data" VALUES (561, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (562, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (563, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (564, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (565, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (566, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (567, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (568, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (569, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (570, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-10-02', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (571, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (572, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-10-02', 'daily', 4, 0, 0, 4, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (573, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (574, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (575, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (576, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (577, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-10-02', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (578, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (579, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (580, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (581, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (582, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (583, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (584, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (585, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (586, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (587, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (588, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (589, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-10-02', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (590, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-10-02', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (591, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-10-02', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (592, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-10-02', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (593, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-10-02', 'daily', 50, 0, 0, 50, 193);
INSERT INTO "public"."dengue_daily_data" VALUES (594, 3, 'Division', 'Chittagong', NULL, NULL, '2019-10-02', 'daily', 25, 0, 0, 25, 121);
INSERT INTO "public"."dengue_daily_data" VALUES (595, 6, 'Division', 'Khulna', NULL, NULL, '2019-10-02', 'daily', 95, 0, 0, 95, 357);
INSERT INTO "public"."dengue_daily_data" VALUES (596, 8, 'Division', 'Rangpur', NULL, NULL, '2019-10-02', 'daily', 7, 0, 0, 7, 30);
INSERT INTO "public"."dengue_daily_data" VALUES (597, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-10-02', 'daily', 15, 0, 0, 15, 70);
INSERT INTO "public"."dengue_daily_data" VALUES (598, 5, 'Division', 'Barishal', NULL, NULL, '2019-10-02', 'daily', 31, 0, 0, 31, 121);
INSERT INTO "public"."dengue_daily_data" VALUES (599, 9, 'Division', 'Sylhet', NULL, NULL, '2019-10-02', 'daily', 5, 0, 0, 5, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (600, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-10-02', 'daily', 6, 0, 0, 6, 31);
INSERT INTO "public"."dengue_daily_data" VALUES (601, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-10-07', 'daily', 24, 0, 0, 24, 122);
INSERT INTO "public"."dengue_daily_data" VALUES (602, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-10-07', 'daily', 14, 0, 0, 14, 72);
INSERT INTO "public"."dengue_daily_data" VALUES (603, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (604, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-10-07', 'daily', 7, 0, 0, 7, 43);
INSERT INTO "public"."dengue_daily_data" VALUES (605, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-10-07', 'daily', 11, 0, 0, 11, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (606, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-10-07', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (607, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-10-07', 'daily', 4, 0, 0, 4, 26);
INSERT INTO "public"."dengue_daily_data" VALUES (608, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (609, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-10-07', 'daily', 3, 0, 0, 3, 31);
INSERT INTO "public"."dengue_daily_data" VALUES (610, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-10-07', 'daily', 8, 0, 0, 8, 47);
INSERT INTO "public"."dengue_daily_data" VALUES (611, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (612, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (613, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (614, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (615, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (616, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (617, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (618, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (619, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (620, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-10-07', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (621, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (622, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-10-07', 'daily', 4, 0, 0, 4, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (623, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (624, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (625, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (626, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (627, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-10-07', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (628, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (629, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (630, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1195, 6, 'Division', 'Khulna', NULL, NULL, '2019-12-06', 'daily', 4, 0, 0, 4, 36);
INSERT INTO "public"."dengue_daily_data" VALUES (631, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (632, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (633, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-10-07', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (634, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (635, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (636, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (637, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-10-07', 'daily', 2, 0, 0, 2, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (638, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-10-07', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (639, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (640, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (641, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-10-07', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (642, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-10-07', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (643, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-10-07', 'daily', 59, 0, 0, 59, 138);
INSERT INTO "public"."dengue_daily_data" VALUES (644, 3, 'Division', 'Chittagong', NULL, NULL, '2019-10-07', 'daily', 23, 0, 0, 23, 121);
INSERT INTO "public"."dengue_daily_data" VALUES (645, 6, 'Division', 'Khulna', NULL, NULL, '2019-10-07', 'daily', 114, 0, 0, 114, 392);
INSERT INTO "public"."dengue_daily_data" VALUES (646, 8, 'Division', 'Rangpur', NULL, NULL, '2019-10-07', 'daily', 8, 0, 0, 8, 20);
INSERT INTO "public"."dengue_daily_data" VALUES (647, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-10-07', 'daily', 19, 0, 0, 19, 76);
INSERT INTO "public"."dengue_daily_data" VALUES (648, 5, 'Division', 'Barishal', NULL, NULL, '2019-10-07', 'daily', 31, 0, 0, 31, 90);
INSERT INTO "public"."dengue_daily_data" VALUES (649, 9, 'Division', 'Sylhet', NULL, NULL, '2019-10-07', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (650, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-10-07', 'daily', 3, 0, 0, 3, 30);
INSERT INTO "public"."dengue_daily_data" VALUES (651, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-10-17', 'daily', 17, 0, 0, 17, 95);
INSERT INTO "public"."dengue_daily_data" VALUES (652, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-10-17', 'daily', 5, 0, 0, 5, 81);
INSERT INTO "public"."dengue_daily_data" VALUES (653, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-10-17', 'daily', 1, 0, 0, 1, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (654, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-10-17', 'daily', 13, 0, 0, 13, 49);
INSERT INTO "public"."dengue_daily_data" VALUES (655, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-10-17', 'daily', 8, 0, 0, 8, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (656, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-10-17', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (657, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-10-17', 'daily', 5, 0, 0, 5, 16);
INSERT INTO "public"."dengue_daily_data" VALUES (658, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-10-17', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (659, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-10-17', 'daily', 2, 0, 0, 2, 18);
INSERT INTO "public"."dengue_daily_data" VALUES (660, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-10-17', 'daily', 2, 0, 0, 2, 47);
INSERT INTO "public"."dengue_daily_data" VALUES (661, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (662, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (663, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-10-17', 'daily', 3, 0, 0, 3, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (664, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-10-17', 'daily', 4, 0, 0, 4, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (665, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-10-17', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (666, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (667, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-10-17', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (668, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (669, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (670, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (671, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (672, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-10-17', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (673, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-10-17', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (674, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (675, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-10-17', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (676, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-10-17', 'daily', 1, 0, 0, 1, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (677, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-10-17', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (678, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (679, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (680, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (681, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (682, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (683, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (684, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (685, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (686, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (687, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (688, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (689, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-10-17', 'daily', 2, 0, 0, 2, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (690, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-10-17', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (691, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-10-17', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (692, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-10-17', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (693, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-10-17', 'daily', 33, 0, 0, 33, 120);
INSERT INTO "public"."dengue_daily_data" VALUES (694, 3, 'Division', 'Chittagong', NULL, NULL, '2019-10-17', 'daily', 28, 0, 0, 28, 121);
INSERT INTO "public"."dengue_daily_data" VALUES (695, 6, 'Division', 'Khulna', NULL, NULL, '2019-10-17', 'daily', 47, 0, 0, 47, 236);
INSERT INTO "public"."dengue_daily_data" VALUES (696, 8, 'Division', 'Rangpur', NULL, NULL, '2019-10-17', 'daily', 6, 0, 0, 6, 16);
INSERT INTO "public"."dengue_daily_data" VALUES (697, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-10-17', 'daily', 13, 0, 0, 13, 64);
INSERT INTO "public"."dengue_daily_data" VALUES (698, 5, 'Division', 'Barishal', NULL, NULL, '2019-10-17', 'daily', 44, 0, 0, 44, 84);
INSERT INTO "public"."dengue_daily_data" VALUES (699, 9, 'Division', 'Sylhet', NULL, NULL, '2019-10-17', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (700, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-10-17', 'daily', 5, 0, 0, 5, 19);
INSERT INTO "public"."dengue_daily_data" VALUES (701, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-10-22', 'daily', 15, 0, 0, 15, 81);
INSERT INTO "public"."dengue_daily_data" VALUES (702, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-10-22', 'daily', 14, 0, 0, 14, 70);
INSERT INTO "public"."dengue_daily_data" VALUES (703, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-10-22', 'daily', 3, 0, 0, 3, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (704, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-10-22', 'daily', 15, 0, 0, 15, 63);
INSERT INTO "public"."dengue_daily_data" VALUES (705, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-10-22', 'daily', 2, 0, 0, 2, 15);
INSERT INTO "public"."dengue_daily_data" VALUES (706, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-10-22', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (707, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-10-22', 'daily', 5, 0, 0, 5, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (708, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (709, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-10-22', 'daily', 3, 0, 0, 3, 23);
INSERT INTO "public"."dengue_daily_data" VALUES (710, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-10-22', 'daily', 7, 0, 0, 7, 35);
INSERT INTO "public"."dengue_daily_data" VALUES (711, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (712, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (713, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (714, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-10-22', 'daily', 2, 0, 0, 2, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (715, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-10-22', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (716, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (717, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (718, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (719, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (720, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-10-22', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (721, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (722, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-10-22', 'daily', 3, 0, 0, 3, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (723, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (724, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (725, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-10-22', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (726, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-10-22', 'daily', 3, 0, 0, 3, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (727, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-10-22', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (728, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-10-22', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (729, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (730, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (731, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (732, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-10-22', 'daily', 2, 0, 0, 2, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (733, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (734, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (735, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (736, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (737, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (738, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-10-22', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (739, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (740, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (741, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-10-22', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (742, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-10-22', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (743, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-10-22', 'daily', 31, 0, 0, 31, 87);
INSERT INTO "public"."dengue_daily_data" VALUES (744, 3, 'Division', 'Chittagong', NULL, NULL, '2019-10-22', 'daily', 16, 0, 0, 16, 122);
INSERT INTO "public"."dengue_daily_data" VALUES (745, 6, 'Division', 'Khulna', NULL, NULL, '2019-10-22', 'daily', 45, 0, 0, 45, 172);
INSERT INTO "public"."dengue_daily_data" VALUES (746, 8, 'Division', 'Rangpur', NULL, NULL, '2019-10-22', 'daily', 5, 0, 0, 5, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (747, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-10-22', 'daily', 7, 0, 0, 7, 33);
INSERT INTO "public"."dengue_daily_data" VALUES (748, 5, 'Division', 'Barishal', NULL, NULL, '2019-10-22', 'daily', 32, 0, 0, 32, 91);
INSERT INTO "public"."dengue_daily_data" VALUES (749, 9, 'Division', 'Sylhet', NULL, NULL, '2019-10-22', 'daily', 3, 0, 0, 3, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (750, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-10-22', 'daily', 4, 0, 0, 4, 20);
INSERT INTO "public"."dengue_daily_data" VALUES (751, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-10-27', 'daily', 14, 0, 0, 14, 106);
INSERT INTO "public"."dengue_daily_data" VALUES (752, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-10-27', 'daily', 10, 0, 0, 10, 71);
INSERT INTO "public"."dengue_daily_data" VALUES (753, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-10-27', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (754, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-10-27', 'daily', 9, 0, 0, 9, 47);
INSERT INTO "public"."dengue_daily_data" VALUES (755, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-10-27', 'daily', 3, 0, 0, 3, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (756, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-10-27', 'daily', 3, 0, 0, 3, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (757, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-10-27', 'daily', 14, 0, 0, 14, 20);
INSERT INTO "public"."dengue_daily_data" VALUES (758, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-10-27', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (759, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-10-27', 'daily', 1, 0, 0, 1, 18);
INSERT INTO "public"."dengue_daily_data" VALUES (760, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-10-27', 'daily', 6, 0, 0, 6, 44);
INSERT INTO "public"."dengue_daily_data" VALUES (761, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (762, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (763, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (764, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-10-27', 'daily', 1, 0, 0, 1, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (765, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-10-27', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (766, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (767, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-10-27', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (768, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (769, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (770, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-10-27', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (771, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (772, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-10-27', 'daily', 2, 0, 0, 2, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (773, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (774, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (775, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-10-27', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (776, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-10-27', 'daily', 2, 0, 0, 2, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (777, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-10-27', 'daily', 0, 0, 0, 0, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (778, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (779, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (780, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (781, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-10-27', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (782, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-10-27', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (783, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (784, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (785, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (786, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (787, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-10-27', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (788, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-10-27', 'daily', 2, 0, 0, 2, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (789, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (790, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (791, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (792, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-10-27', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (793, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-10-27', 'daily', 31, 0, 0, 31, 88);
INSERT INTO "public"."dengue_daily_data" VALUES (794, 3, 'Division', 'Chittagong', NULL, NULL, '2019-10-27', 'daily', 33, 0, 0, 33, 126);
INSERT INTO "public"."dengue_daily_data" VALUES (795, 6, 'Division', 'Khulna', NULL, NULL, '2019-10-27', 'daily', 56, 0, 0, 56, 151);
INSERT INTO "public"."dengue_daily_data" VALUES (796, 8, 'Division', 'Rangpur', NULL, NULL, '2019-10-27', 'daily', 3, 0, 0, 3, 20);
INSERT INTO "public"."dengue_daily_data" VALUES (797, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-10-27', 'daily', 15, 0, 0, 15, 35);
INSERT INTO "public"."dengue_daily_data" VALUES (798, 5, 'Division', 'Barishal', NULL, NULL, '2019-10-27', 'daily', 33, 0, 0, 33, 72);
INSERT INTO "public"."dengue_daily_data" VALUES (799, 9, 'Division', 'Sylhet', NULL, NULL, '2019-10-27', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (800, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-10-27', 'daily', 10, 0, 0, 10, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (801, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-11-01', 'daily', 25, 0, 0, 25, 100);
INSERT INTO "public"."dengue_daily_data" VALUES (802, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-11-01', 'daily', 13, 0, 0, 13, 68);
INSERT INTO "public"."dengue_daily_data" VALUES (803, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-11-01', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (804, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-11-01', 'daily', 1, 0, 0, 1, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (805, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-11-01', 'daily', 0, 0, 0, 0, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (806, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-11-01', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (807, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-11-01', 'daily', 12, 0, 0, 12, 51);
INSERT INTO "public"."dengue_daily_data" VALUES (808, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-11-01', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (809, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-11-01', 'daily', 2, 0, 0, 2, 18);
INSERT INTO "public"."dengue_daily_data" VALUES (810, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-11-01', 'daily', 6, 0, 0, 6, 35);
INSERT INTO "public"."dengue_daily_data" VALUES (811, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (812, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (813, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (814, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-11-01', 'daily', 1, 0, 0, 1, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (815, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-11-01', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (816, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-11-01', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (817, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (818, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (819, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (820, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-11-01', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (821, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (822, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (823, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (824, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (825, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (826, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-11-01', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (827, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-11-01', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (828, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-11-01', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (829, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (830, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (831, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (832, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-11-01', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (833, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (834, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (835, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-11-01', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (836, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (837, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-11-01', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (838, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-11-01', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (839, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (840, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (841, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (842, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-11-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (843, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-11-01', 'daily', 16, 0, 0, 16, 84);
INSERT INTO "public"."dengue_daily_data" VALUES (844, 3, 'Division', 'Chittagong', NULL, NULL, '2019-11-01', 'daily', 22, 0, 0, 22, 109);
INSERT INTO "public"."dengue_daily_data" VALUES (845, 6, 'Division', 'Khulna', NULL, NULL, '2019-11-01', 'daily', 57, 0, 0, 57, 183);
INSERT INTO "public"."dengue_daily_data" VALUES (846, 8, 'Division', 'Rangpur', NULL, NULL, '2019-11-01', 'daily', 3, 0, 0, 3, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (847, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-11-01', 'daily', 6, 0, 0, 6, 25);
INSERT INTO "public"."dengue_daily_data" VALUES (848, 5, 'Division', 'Barishal', NULL, NULL, '2019-11-01', 'daily', 34, 0, 0, 34, 96);
INSERT INTO "public"."dengue_daily_data" VALUES (849, 9, 'Division', 'Sylhet', NULL, NULL, '2019-11-01', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (850, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-11-01', 'daily', 4, 0, 0, 4, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (851, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-11-06', 'daily', 21, 0, 0, 21, 75);
INSERT INTO "public"."dengue_daily_data" VALUES (852, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-11-06', 'daily', 6, 0, 0, 6, 31);
INSERT INTO "public"."dengue_daily_data" VALUES (853, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-11-06', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (854, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-11-06', 'daily', 4, 0, 0, 4, 25);
INSERT INTO "public"."dengue_daily_data" VALUES (855, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-11-06', 'daily', 3, 0, 0, 3, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (856, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-11-06', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (857, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-11-06', 'daily', 6, 0, 0, 6, 36);
INSERT INTO "public"."dengue_daily_data" VALUES (858, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (859, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-11-06', 'daily', 1, 0, 0, 1, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (860, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-11-06', 'daily', 6, 0, 0, 6, 37);
INSERT INTO "public"."dengue_daily_data" VALUES (861, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (862, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (863, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (864, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-11-06', 'daily', 3, 0, 0, 3, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (865, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-11-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (866, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (867, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-11-06', 'daily', 2, 0, 0, 2, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (868, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (869, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (870, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-11-06', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (871, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (872, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-11-06', 'daily', 3, 0, 0, 3, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (873, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (874, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (875, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (876, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-11-06', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (877, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-11-06', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (878, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (879, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (880, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (881, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-11-06', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (882, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (883, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-11-06', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (884, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (885, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (886, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (887, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (888, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (889, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (890, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-11-06', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (891, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-11-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (892, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-11-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (893, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-11-06', 'daily', 18, 0, 0, 18, 76);
INSERT INTO "public"."dengue_daily_data" VALUES (894, 3, 'Division', 'Chittagong', NULL, NULL, '2019-11-06', 'daily', 33, 0, 0, 33, 126);
INSERT INTO "public"."dengue_daily_data" VALUES (895, 6, 'Division', 'Khulna', NULL, NULL, '2019-11-06', 'daily', 36, 0, 0, 36, 125);
INSERT INTO "public"."dengue_daily_data" VALUES (896, 8, 'Division', 'Rangpur', NULL, NULL, '2019-11-06', 'daily', 4, 0, 0, 4, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (897, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-11-06', 'daily', 4, 0, 0, 4, 28);
INSERT INTO "public"."dengue_daily_data" VALUES (898, 5, 'Division', 'Barishal', NULL, NULL, '2019-11-06', 'daily', 17, 0, 0, 17, 68);
INSERT INTO "public"."dengue_daily_data" VALUES (899, 9, 'Division', 'Sylhet', NULL, NULL, '2019-11-06', 'daily', 3, 0, 0, 3, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (900, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-11-06', 'daily', 4, 0, 0, 4, 20);
INSERT INTO "public"."dengue_daily_data" VALUES (901, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-11-11', 'daily', 7, 0, 0, 7, 76);
INSERT INTO "public"."dengue_daily_data" VALUES (902, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-11-11', 'daily', 8, 0, 0, 8, 55);
INSERT INTO "public"."dengue_daily_data" VALUES (903, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-11-11', 'daily', 3, 0, 0, 3, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (904, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 40);
INSERT INTO "public"."dengue_daily_data" VALUES (905, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-11-11', 'daily', 3, 0, 0, 3, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (906, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-11-11', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (907, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-11-11', 'daily', 3, 0, 0, 3, 48);
INSERT INTO "public"."dengue_daily_data" VALUES (908, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (909, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 14);
INSERT INTO "public"."dengue_daily_data" VALUES (910, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-11-11', 'daily', 12, 0, 0, 12, 38);
INSERT INTO "public"."dengue_daily_data" VALUES (911, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (912, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (913, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (914, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-11-11', 'daily', 7, 0, 0, 7, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (915, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-11-11', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (916, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (917, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (918, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (919, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (920, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-11-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (921, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (922, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (923, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (924, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (925, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (926, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (927, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-11-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (928, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (929, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (930, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (931, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (932, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (933, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-11-11', 'daily', 2, 0, 0, 2, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (934, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-11-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (935, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (936, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (937, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-11-11', 'daily', 2, 0, 0, 2, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (938, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (939, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (940, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (941, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-11-11', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (942, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-11-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (943, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-11-11', 'daily', 18, 0, 0, 18, 74);
INSERT INTO "public"."dengue_daily_data" VALUES (944, 3, 'Division', 'Chittagong', NULL, NULL, '2019-11-11', 'daily', 18, 0, 0, 18, 117);
INSERT INTO "public"."dengue_daily_data" VALUES (945, 6, 'Division', 'Khulna', NULL, NULL, '2019-11-11', 'daily', 26, 0, 0, 26, 116);
INSERT INTO "public"."dengue_daily_data" VALUES (946, 8, 'Division', 'Rangpur', NULL, NULL, '2019-11-11', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (947, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-11-11', 'daily', 4, 0, 0, 4, 26);
INSERT INTO "public"."dengue_daily_data" VALUES (948, 5, 'Division', 'Barishal', NULL, NULL, '2019-11-11', 'daily', 2, 0, 0, 2, 48);
INSERT INTO "public"."dengue_daily_data" VALUES (949, 9, 'Division', 'Sylhet', NULL, NULL, '2019-11-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (950, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-11-11', 'daily', 2, 0, 0, 2, 19);
INSERT INTO "public"."dengue_daily_data" VALUES (951, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-11-16', 'daily', 13, 0, 0, 13, 65);
INSERT INTO "public"."dengue_daily_data" VALUES (952, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-11-16', 'daily', 1, 0, 0, 1, 38);
INSERT INTO "public"."dengue_daily_data" VALUES (953, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (954, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-11-16', 'daily', 8, 0, 0, 8, 35);
INSERT INTO "public"."dengue_daily_data" VALUES (955, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-11-16', 'daily', 1, 0, 0, 1, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (956, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-11-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (957, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-11-16', 'daily', 3, 0, 0, 3, 44);
INSERT INTO "public"."dengue_daily_data" VALUES (958, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-11-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (959, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-11-16', 'daily', 2, 0, 0, 2, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (960, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-11-16', 'daily', 8, 0, 0, 8, 31);
INSERT INTO "public"."dengue_daily_data" VALUES (961, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (962, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (963, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (964, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (965, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-11-16', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (966, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (967, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-11-16', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (968, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (969, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (970, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-11-16', 'daily', 3, 0, 0, 3, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (971, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (972, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-11-16', 'daily', 3, 0, 0, 3, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (973, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (974, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (975, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (976, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-11-16', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (977, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-11-16', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (978, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-11-16', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (979, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (980, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (981, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-11-16', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (982, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1196, 8, 'Division', 'Rangpur', NULL, NULL, '2019-12-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (983, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-11-16', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (984, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (985, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (986, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (987, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (988, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (989, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-11-16', 'daily', 3, 0, 0, 3, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (990, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (991, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-11-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (992, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-11-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (993, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-11-16', 'daily', 11, 0, 0, 11, 65);
INSERT INTO "public"."dengue_daily_data" VALUES (994, 3, 'Division', 'Chittagong', NULL, NULL, '2019-11-16', 'daily', 20, 0, 0, 20, 116);
INSERT INTO "public"."dengue_daily_data" VALUES (995, 6, 'Division', 'Khulna', NULL, NULL, '2019-11-16', 'daily', 24, 0, 0, 24, 96);
INSERT INTO "public"."dengue_daily_data" VALUES (996, 8, 'Division', 'Rangpur', NULL, NULL, '2019-11-16', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (997, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-11-16', 'daily', 7, 0, 0, 7, 20);
INSERT INTO "public"."dengue_daily_data" VALUES (998, 5, 'Division', 'Barishal', NULL, NULL, '2019-11-16', 'daily', 15, 0, 0, 15, 43);
INSERT INTO "public"."dengue_daily_data" VALUES (999, 9, 'Division', 'Sylhet', NULL, NULL, '2019-11-16', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1000, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-11-16', 'daily', 1, 0, 0, 1, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (1001, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-11-21', 'daily', 13, 0, 0, 13, 47);
INSERT INTO "public"."dengue_daily_data" VALUES (1002, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-11-21', 'daily', 3, 0, 0, 3, 30);
INSERT INTO "public"."dengue_daily_data" VALUES (1003, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-11-21', 'daily', 5, 0, 0, 5, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1004, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-11-21', 'daily', 7, 0, 0, 7, 35);
INSERT INTO "public"."dengue_daily_data" VALUES (1005, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-11-21', 'daily', 0, 0, 0, 0, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (1006, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-11-21', 'daily', 4, 0, 0, 4, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (1007, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-11-21', 'daily', 3, 0, 0, 3, 41);
INSERT INTO "public"."dengue_daily_data" VALUES (1008, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-11-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1009, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-11-21', 'daily', 2, 0, 0, 2, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (1010, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-11-21', 'daily', 5, 0, 0, 5, 26);
INSERT INTO "public"."dengue_daily_data" VALUES (1011, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1012, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-11-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1013, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-11-21', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1014, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1015, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-11-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1016, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1017, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-11-21', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1018, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-11-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1019, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1020, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-11-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1021, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-11-21', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1022, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-11-21', 'daily', 3, 0, 0, 3, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1023, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-11-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1024, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1025, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1026, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-11-21', 'daily', 3, 0, 0, 3, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1027, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-11-21', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1028, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-11-21', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1029, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-11-21', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1030, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1031, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1032, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-11-21', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1033, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1034, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-11-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1035, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-11-21', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1036, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1037, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-11-21', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1038, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1039, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1040, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1041, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-11-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1042, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-11-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1043, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-11-21', 'daily', 8, 0, 0, 8, 35);
INSERT INTO "public"."dengue_daily_data" VALUES (1044, 3, 'Division', 'Chittagong', NULL, NULL, '2019-11-21', 'daily', 24, 0, 0, 24, 117);
INSERT INTO "public"."dengue_daily_data" VALUES (1045, 6, 'Division', 'Khulna', NULL, NULL, '2019-11-21', 'daily', 17, 0, 0, 17, 75);
INSERT INTO "public"."dengue_daily_data" VALUES (1046, 8, 'Division', 'Rangpur', NULL, NULL, '2019-11-21', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1047, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-11-21', 'daily', 6, 0, 0, 6, 19);
INSERT INTO "public"."dengue_daily_data" VALUES (1048, 5, 'Division', 'Barishal', NULL, NULL, '2019-11-21', 'daily', 9, 0, 0, 9, 26);
INSERT INTO "public"."dengue_daily_data" VALUES (1049, 9, 'Division', 'Sylhet', NULL, NULL, '2019-11-21', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1050, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-11-21', 'daily', 1, 0, 0, 1, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (1051, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-11-26', 'daily', 9, 0, 0, 9, 50);
INSERT INTO "public"."dengue_daily_data" VALUES (1052, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-11-26', 'daily', 4, 0, 0, 4, 31);
INSERT INTO "public"."dengue_daily_data" VALUES (1053, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-11-26', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1054, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-11-26', 'daily', 3, 0, 0, 3, 34);
INSERT INTO "public"."dengue_daily_data" VALUES (1055, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-11-26', 'daily', 2, 0, 0, 2, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1056, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-11-26', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1057, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-11-26', 'daily', 3, 0, 0, 3, 25);
INSERT INTO "public"."dengue_daily_data" VALUES (1058, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-11-26', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1059, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-11-26', 'daily', 2, 0, 0, 2, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (1060, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-11-26', 'daily', 2, 0, 0, 2, 23);
INSERT INTO "public"."dengue_daily_data" VALUES (1061, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-11-26', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1062, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1063, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1064, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-11-26', 'daily', 3, 0, 0, 3, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (1065, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-11-26', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1066, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1067, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-11-26', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1068, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1069, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1070, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-11-26', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1071, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1072, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-11-26', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1073, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1074, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1075, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1076, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1077, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-11-26', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1078, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-11-26', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1079, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-11-26', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1080, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1081, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1082, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1083, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-11-26', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1084, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1085, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1086, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1087, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-11-26', 'daily', 4, 0, 0, 4, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (1088, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-11-26', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1089, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1090, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-11-26', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1091, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-11-26', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1092, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-11-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1093, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-11-26', 'daily', 9, 0, 0, 9, 32);
INSERT INTO "public"."dengue_daily_data" VALUES (1094, 3, 'Division', 'Chittagong', NULL, NULL, '2019-11-26', 'daily', 12, 0, 0, 12, 102);
INSERT INTO "public"."dengue_daily_data" VALUES (1095, 6, 'Division', 'Khulna', NULL, NULL, '2019-11-26', 'daily', 14, 0, 0, 14, 56);
INSERT INTO "public"."dengue_daily_data" VALUES (1096, 8, 'Division', 'Rangpur', NULL, NULL, '2019-11-26', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (1097, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-11-26', 'daily', 5, 0, 0, 5, 20);
INSERT INTO "public"."dengue_daily_data" VALUES (1098, 5, 'Division', 'Barishal', NULL, NULL, '2019-11-26', 'daily', 5, 0, 0, 5, 21);
INSERT INTO "public"."dengue_daily_data" VALUES (1099, 9, 'Division', 'Sylhet', NULL, NULL, '2019-11-26', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1100, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-11-26', 'daily', 5, 0, 0, 5, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (1101, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-01', 'daily', 7, 0, 0, 7, 55);
INSERT INTO "public"."dengue_daily_data" VALUES (1102, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-01', 'daily', 7, 0, 0, 7, 34);
INSERT INTO "public"."dengue_daily_data" VALUES (1103, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-01', 'daily', 4, 0, 0, 4, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (1104, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-01', 'daily', 3, 0, 0, 3, 20);
INSERT INTO "public"."dengue_daily_data" VALUES (1105, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-01', 'daily', 5, 0, 0, 5, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1106, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-01', 'daily', 1, 0, 0, 1, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (1107, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-01', 'daily', 3, 0, 0, 3, 27);
INSERT INTO "public"."dengue_daily_data" VALUES (1108, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-01', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1109, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-01', 'daily', 2, 0, 0, 2, 19);
INSERT INTO "public"."dengue_daily_data" VALUES (1110, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-01', 'daily', 3, 0, 0, 3, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (1111, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1112, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1113, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1114, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-01', 'daily', 2, 0, 0, 2, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (1115, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-01', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1116, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1117, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1118, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1119, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1120, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-01', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1121, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1122, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-01', 'daily', 2, 0, 0, 2, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1123, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1197, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-12-06', 'daily', 0, 0, 0, 0, 14);
INSERT INTO "public"."dengue_daily_data" VALUES (1124, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1125, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-01', 'daily', 3, 0, 0, 3, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1126, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-01', 'daily', 2, 0, 0, 2, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1127, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-01', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1128, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1129, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1130, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1131, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1132, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-01', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1133, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1134, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1135, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1136, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1137, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-01', 'daily', 4, 0, 0, 4, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1138, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1139, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1140, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1141, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-01', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1142, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-01', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1143, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-12-01', 'daily', 4, 0, 0, 4, 29);
INSERT INTO "public"."dengue_daily_data" VALUES (1144, 3, 'Division', 'Chittagong', NULL, NULL, '2019-12-01', 'daily', 10, 0, 0, 10, 53);
INSERT INTO "public"."dengue_daily_data" VALUES (1145, 6, 'Division', 'Khulna', NULL, NULL, '2019-12-01', 'daily', 10, 0, 0, 10, 44);
INSERT INTO "public"."dengue_daily_data" VALUES (1146, 8, 'Division', 'Rangpur', NULL, NULL, '2019-12-01', 'daily', 6, 0, 0, 6, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (1147, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-12-01', 'daily', 6, 0, 0, 6, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (1148, 5, 'Division', 'Barishal', NULL, NULL, '2019-12-01', 'daily', 6, 0, 0, 6, 16);
INSERT INTO "public"."dengue_daily_data" VALUES (1149, 9, 'Division', 'Sylhet', NULL, NULL, '2019-12-01', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1150, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-12-01', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1151, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-06', 'daily', 6, 0, 0, 6, 41);
INSERT INTO "public"."dengue_daily_data" VALUES (1152, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-06', 'daily', 3, 0, 0, 3, 42);
INSERT INTO "public"."dengue_daily_data" VALUES (1153, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1154, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-06', 'daily', 3, 0, 0, 3, 21);
INSERT INTO "public"."dengue_daily_data" VALUES (1155, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-06', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1156, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-06', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1157, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-06', 'daily', 4, 0, 0, 4, 32);
INSERT INTO "public"."dengue_daily_data" VALUES (1158, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1159, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (1160, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-06', 'daily', 2, 0, 0, 2, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (1161, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1162, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1163, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1164, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1165, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-06', 'daily', 1, 0, 0, 1, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1166, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1167, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1168, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1169, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1170, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1171, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1172, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (1173, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1174, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1175, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1176, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1177, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1178, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1179, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1180, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1181, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1182, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1183, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1184, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1185, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1186, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1187, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1188, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1189, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1190, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-06', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1191, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-06', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1192, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-06', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1193, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-12-06', 'daily', 6, 0, 0, 6, 27);
INSERT INTO "public"."dengue_daily_data" VALUES (1198, 5, 'Division', 'Barishal', NULL, NULL, '2019-12-06', 'daily', 4, 0, 0, 4, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (1199, 9, 'Division', 'Sylhet', NULL, NULL, '2019-12-06', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1200, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-12-06', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1201, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-10', 'daily', 21, 0, 0, 21, 99);
INSERT INTO "public"."dengue_daily_data" VALUES (1202, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-10', 'daily', 13, 0, 0, 13, 68);
INSERT INTO "public"."dengue_daily_data" VALUES (1203, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-10', 'daily', 2, 0, 0, 2, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (1204, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-10', 'daily', 2, 0, 0, 2, 42);
INSERT INTO "public"."dengue_daily_data" VALUES (1205, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-10', 'daily', 5, 0, 0, 5, 22);
INSERT INTO "public"."dengue_daily_data" VALUES (1206, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-10', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1207, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-10', 'daily', 4, 0, 0, 4, 30);
INSERT INTO "public"."dengue_daily_data" VALUES (1208, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-10', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1209, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 23);
INSERT INTO "public"."dengue_daily_data" VALUES (1210, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-10', 'daily', 4, 0, 0, 4, 53);
INSERT INTO "public"."dengue_daily_data" VALUES (1211, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-10', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1212, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1213, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-10', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1214, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-10', 'daily', 3, 0, 0, 3, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (1215, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-10', 'daily', 4, 0, 0, 4, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1216, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-10', 'daily', 2, 0, 0, 2, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1217, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-10', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1218, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1219, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1220, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-10', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1221, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1222, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-10', 'daily', 0, 1, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (1223, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1224, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1225, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-10', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1226, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1227, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-10', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1228, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-10', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1229, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-10', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1230, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1231, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1232, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1233, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1234, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1235, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1236, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1237, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-10', 'daily', 1, 0, 0, 1, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (1238, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-10', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1239, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1240, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-10', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1241, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-10', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1242, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-10', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1243, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-12-10', 'daily', 31, 0, 0, 31, 136);
INSERT INTO "public"."dengue_daily_data" VALUES (1244, 3, 'Division', 'Chittagong', NULL, NULL, '2019-12-10', 'daily', 30, 0, 0, 30, 105);
INSERT INTO "public"."dengue_daily_data" VALUES (1245, 6, 'Division', 'Khulna', NULL, NULL, '2019-12-10', 'daily', 45, 0, 0, 45, 346);
INSERT INTO "public"."dengue_daily_data" VALUES (1246, 8, 'Division', 'Rangpur', NULL, NULL, '2019-12-10', 'daily', 2, 0, 0, 2, 14);
INSERT INTO "public"."dengue_daily_data" VALUES (1247, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-12-10', 'daily', 15, 0, 0, 15, 72);
INSERT INTO "public"."dengue_daily_data" VALUES (1248, 5, 'Division', 'Barishal', NULL, NULL, '2019-12-10', 'daily', 25, 0, 0, 25, 99);
INSERT INTO "public"."dengue_daily_data" VALUES (1249, 9, 'Division', 'Sylhet', NULL, NULL, '2019-12-10', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1250, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-12-10', 'daily', 5, 0, 0, 5, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (1251, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-11', 'daily', 2, 0, 0, 2, 30);
INSERT INTO "public"."dengue_daily_data" VALUES (1252, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-11', 'daily', 1, 0, 0, 1, 30);
INSERT INTO "public"."dengue_daily_data" VALUES (1253, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1254, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-11', 'daily', 3, 0, 0, 3, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (1255, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-11', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1256, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-11', 'daily', 0, 0, 0, 0, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (1257, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-11', 'daily', 1, 0, 0, 1, 21);
INSERT INTO "public"."dengue_daily_data" VALUES (1258, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-11', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1259, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-11', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1260, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-11', 'daily', 5, 0, 0, 5, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (1261, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1262, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1263, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1264, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-11', 'daily', 2, 0, 0, 2, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1265, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1266, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-11', 'daily', 2, 0, 0, 2, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1267, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1268, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1269, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1270, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-11', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1271, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1272, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1273, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1274, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-11', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1275, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1276, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-11', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1277, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1278, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1279, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1280, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1281, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1282, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1283, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1284, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1285, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1286, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1287, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-11', 'daily', 2, 0, 0, 2, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1288, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1289, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-11', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1290, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1291, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1292, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-11', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1293, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-12-11', 'daily', 3, 0, 0, 3, 13);
INSERT INTO "public"."dengue_daily_data" VALUES (1294, 3, 'Division', 'Chittagong', NULL, NULL, '2019-12-11', 'daily', 4, 0, 0, 4, 23);
INSERT INTO "public"."dengue_daily_data" VALUES (1295, 6, 'Division', 'Khulna', NULL, NULL, '2019-12-11', 'daily', 2, 0, 0, 2, 24);
INSERT INTO "public"."dengue_daily_data" VALUES (1296, 8, 'Division', 'Rangpur', NULL, NULL, '2019-12-11', 'daily', 2, 0, 0, 2, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1297, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-12-11', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1298, 5, 'Division', 'Barishal', NULL, NULL, '2019-12-11', 'daily', 1, 0, 0, 1, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (1299, 9, 'Division', 'Sylhet', NULL, NULL, '2019-12-11', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1300, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-12-11', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1301, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-16', 'daily', 2, 0, 0, 2, 35);
INSERT INTO "public"."dengue_daily_data" VALUES (1302, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-16', 'daily', 3, 0, 0, 3, 18);
INSERT INTO "public"."dengue_daily_data" VALUES (1303, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1304, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 17);
INSERT INTO "public"."dengue_daily_data" VALUES (1305, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1306, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-16', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1307, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 14);
INSERT INTO "public"."dengue_daily_data" VALUES (1308, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1309, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1310, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-16', 'daily', 2, 0, 0, 2, 16);
INSERT INTO "public"."dengue_daily_data" VALUES (1311, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1312, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1313, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1314, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1315, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1316, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1317, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1318, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1319, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1320, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1321, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1322, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1323, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1324, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1325, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1326, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1327, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1328, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1329, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1330, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1331, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1332, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-16', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1333, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1334, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1335, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1336, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1337, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1338, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1339, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1340, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1341, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1342, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1343, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-12-16', 'daily', 2, 0, 0, 2, 18);
INSERT INTO "public"."dengue_daily_data" VALUES (1344, 3, 'Division', 'Chittagong', NULL, NULL, '2019-12-16', 'daily', 4, 0, 0, 4, 26);
INSERT INTO "public"."dengue_daily_data" VALUES (1345, 6, 'Division', 'Khulna', NULL, NULL, '2019-12-16', 'daily', 2, 0, 0, 2, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (1346, 8, 'Division', 'Rangpur', NULL, NULL, '2019-12-16', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1347, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-12-16', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1348, 5, 'Division', 'Barishal', NULL, NULL, '2019-12-16', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1349, 9, 'Division', 'Sylhet', NULL, NULL, '2019-12-16', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1350, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-12-16', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (1351, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 28);
INSERT INTO "public"."dengue_daily_data" VALUES (1352, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-21', 'daily', 0, 0, 0, 0, 15);
INSERT INTO "public"."dengue_daily_data" VALUES (1353, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-21', 'daily', 1, 0, 0, 1, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1354, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-21', 'daily', 1, 0, 0, 1, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (1355, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-21', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1356, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-21', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1357, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (1358, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-21', 'daily', 2, 0, 0, 2, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1359, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (1360, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (1361, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1362, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1363, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1364, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1365, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1366, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1367, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1368, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1369, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1370, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1371, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1372, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1373, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1374, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1375, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1376, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1377, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1378, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1379, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1380, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1381, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1382, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1383, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-21', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1384, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1385, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1386, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1387, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1388, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1389, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1390, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1391, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1392, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1393, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-12-21', 'daily', 2, 0, 0, 2, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (1394, 3, 'Division', 'Chittagong', NULL, NULL, '2019-12-21', 'daily', 2, 0, 0, 2, 16);
INSERT INTO "public"."dengue_daily_data" VALUES (1395, 6, 'Division', 'Khulna', NULL, NULL, '2019-12-21', 'daily', 2, 0, 0, 2, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (1396, 8, 'Division', 'Rangpur', NULL, NULL, '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1397, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-12-21', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1398, 5, 'Division', 'Barishal', NULL, NULL, '2019-12-21', 'daily', 0, 0, 0, 0, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1399, 9, 'Division', 'Sylhet', NULL, NULL, '2019-12-21', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1400, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-12-21', 'daily', 1, 0, 0, 1, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (1401, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (1402, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-26', 'daily', 1, 0, 0, 1, 10);
INSERT INTO "public"."dengue_daily_data" VALUES (1403, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1404, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1405, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-26', 'daily', 1, 0, 0, 1, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1406, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-26', 'daily', 4, 0, 0, 4, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1407, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 5);
INSERT INTO "public"."dengue_daily_data" VALUES (1408, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-26', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1409, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1410, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 8);
INSERT INTO "public"."dengue_daily_data" VALUES (1411, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1412, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1413, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1414, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1415, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1416, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1417, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1418, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1419, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1420, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1421, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1422, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1423, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1424, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1425, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1426, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1427, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1428, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1429, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1430, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1431, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1432, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1433, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1434, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1435, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-26', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1436, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1437, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1438, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1439, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1440, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1441, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1442, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1443, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-12-26', 'daily', 4, 0, 0, 4, 11);
INSERT INTO "public"."dengue_daily_data" VALUES (1444, 3, 'Division', 'Chittagong', NULL, NULL, '2019-12-26', 'daily', 7, 0, 0, 7, 12);
INSERT INTO "public"."dengue_daily_data" VALUES (1445, 6, 'Division', 'Khulna', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 4);
INSERT INTO "public"."dengue_daily_data" VALUES (1446, 8, 'Division', 'Rangpur', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1447, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1448, 5, 'Division', 'Barishal', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1449, 9, 'Division', 'Sylhet', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1450, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-12-26', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1451, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1452, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', '2019-12-31', 'daily', 0, 0, 0, 0, 9);
INSERT INTO "public"."dengue_daily_data" VALUES (1453, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', '2019-12-31', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1454, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', '2019-12-31', 'daily', 2, 0, 0, 2, 6);
INSERT INTO "public"."dengue_daily_data" VALUES (1455, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1456, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1457, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1458, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1459, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', '2019-12-31', 'daily', 1, 0, 0, 1, 3);
INSERT INTO "public"."dengue_daily_data" VALUES (1460, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1461, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1462, 27, 'Hospital', 'Dhaka', 12, 'NITOR', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1463, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1464, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1465, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1466, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1467, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1468, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1469, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1470, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1471, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1472, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1473, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1474, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1475, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', '2019-12-31', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1476, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1477, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1478, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1479, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1480, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1481, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1482, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1483, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1484, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1485, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1486, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1487, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1488, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1489, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1490, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1491, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1492, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1493, 2, 'Division', 'Dhaka(Except Dhaka District)', NULL, NULL, '2019-12-31', 'daily', 0, 0, 0, 0, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1494, 3, 'Division', 'Chittagong', NULL, NULL, '2019-12-31', 'daily', 2, 0, 0, 2, 7);
INSERT INTO "public"."dengue_daily_data" VALUES (1495, 6, 'Division', 'Khulna', NULL, NULL, '2019-12-31', 'daily', 1, 0, 0, 1, 2);
INSERT INTO "public"."dengue_daily_data" VALUES (1496, 8, 'Division', 'Rangpur', NULL, NULL, '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1497, 4, 'Division', 'Rajshahi', NULL, NULL, '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1498, 5, 'Division', 'Barishal', NULL, NULL, '2019-12-31', 'daily', 1, 0, 0, 1, 1);
INSERT INTO "public"."dengue_daily_data" VALUES (1499, 9, 'Division', 'Sylhet', NULL, NULL, '2019-12-31', 'daily', 0, 0, 0, 0, 0);
INSERT INTO "public"."dengue_daily_data" VALUES (1500, 7, 'Division', 'Mymensingh', NULL, NULL, '2019-12-31', 'daily', 0, 0, 0, 0, 1);

-- ----------------------------
-- Table structure for dengue_data
-- ----------------------------
DROP TABLE IF EXISTS "public"."dengue_data";
CREATE TABLE "public"."dengue_data" (
  "id" int4 NOT NULL,
  "region_id" int4,
  "region_type" varchar(50) COLLATE "pg_catalog"."default",
  "region_name" varchar(50) COLLATE "pg_catalog"."default",
  "hospital_id" int4,
  "hospital_name" varchar(50) COLLATE "pg_catalog"."default",
  "timeperiod" varchar(50) COLLATE "pg_catalog"."default",
  "date" date,
  "patients_with_clearance" int4,
  "death_sent_for_investigation" int4,
  "death_confirmed_in_investigation" int4,
  "death_confirmed" int4,
  "total_admitted" int4
)
;

-- ----------------------------
-- Records of dengue_data
-- ----------------------------
INSERT INTO "public"."dengue_data" VALUES (1, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', 'yearly', '2019-11-11', 8318, 40, 23, 11, 8434);
INSERT INTO "public"."dengue_data" VALUES (2, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', 'yearly', '2019-11-11', 4849, 2, 0, 0, 4906);
INSERT INTO "public"."dengue_data" VALUES (3, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', 'yearly', '2019-11-11', 1417, 16, 9, 8, 1436);
INSERT INTO "public"."dengue_data" VALUES (4, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', 'yearly', '2019-11-11', 3580, 7, 8, 5, 3627);
INSERT INTO "public"."dengue_data" VALUES (5, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', 'yearly', '2019-11-11', 1618, 3, 2, 2, 1627);
INSERT INTO "public"."dengue_data" VALUES (6, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', 'yearly', '2019-11-11', 1014, NULL, NULL, 0, 1018);
INSERT INTO "public"."dengue_data" VALUES (7, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', 'yearly', '2019-11-11', 4008, 15, 9, 4, 4071);
INSERT INTO "public"."dengue_data" VALUES (8, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', 'yearly', '2019-11-11', 350, NULL, NULL, 0, 350);
INSERT INTO "public"."dengue_data" VALUES (9, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', 'yearly', '2019-11-11', 1697, NULL, 0, 0, 1711);
INSERT INTO "public"."dengue_data" VALUES (10, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', 'yearly', '2019-11-11', 3039, 3, 2, 2, 3080);
INSERT INTO "public"."dengue_data" VALUES (11, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-11-11', 241, NULL, NULL, NULL, 241);
INSERT INTO "public"."dengue_data" VALUES (12, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-11-11', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (13, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', 'yearly', '2019-11-11', 1199, 3, 3, 1, 1204);
INSERT INTO "public"."dengue_data" VALUES (14, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', 'yearly', '2019-11-11', 1828, 11, 10, 8, 1851);
INSERT INTO "public"."dengue_data" VALUES (15, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', 'yearly', '2019-11-11', 655, 4, 4, 3, 662);
INSERT INTO "public"."dengue_data" VALUES (16, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', 'yearly', '2019-11-11', 741, 8, 7, 4, 752);
INSERT INTO "public"."dengue_data" VALUES (17, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', 'yearly', '2019-11-11', 890, 12, 12, 12, 902);
INSERT INTO "public"."dengue_data" VALUES (18, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', 'yearly', '2019-11-11', 94, NULL, NULL, 0, 94);
INSERT INTO "public"."dengue_data" VALUES (19, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', 'yearly', '2019-11-11', 266, 2, 2, 1, 268);
INSERT INTO "public"."dengue_data" VALUES (20, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', 'yearly', '2019-11-11', 370, 1, 2, 2, 372);
INSERT INTO "public"."dengue_data" VALUES (21, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', 'yearly', '2019-11-11', 207, 1, 1, 0, 208);
INSERT INTO "public"."dengue_data" VALUES (22, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', 'yearly', '2019-11-11', 1678, 2, 1, 1, 1686);
INSERT INTO "public"."dengue_data" VALUES (23, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', 'yearly', '2019-11-11', 221, NULL, NULL, 0, 221);
INSERT INTO "public"."dengue_data" VALUES (24, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', 'yearly', '2019-11-11', 140, 1, 1, 1, 141);
INSERT INTO "public"."dengue_data" VALUES (25, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', 'yearly', '2019-11-11', 672, 4, 4, 1, 678);
INSERT INTO "public"."dengue_data" VALUES (26, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', 'yearly', '2019-11-11', 1385, 6, 6, 4, 1397);
INSERT INTO "public"."dengue_data" VALUES (27, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', 'yearly', '2019-11-11', 757, 8, 8, 7, 766);
INSERT INTO "public"."dengue_data" VALUES (28, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', 'yearly', '2019-11-11', 368, NULL, NULL, 0, 368);
INSERT INTO "public"."dengue_data" VALUES (29, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', 'yearly', '2019-11-11', 478, NULL, NULL, 0, 479);
INSERT INTO "public"."dengue_data" VALUES (30, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', 'yearly', '2019-11-11', 827, NULL, NULL, 0, 828);
INSERT INTO "public"."dengue_data" VALUES (31, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', 'yearly', '2019-11-11', 787, 6, 5, 5, 797);
INSERT INTO "public"."dengue_data" VALUES (32, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', 'yearly', '2019-11-11', 974, NULL, NULL, 0, 980);
INSERT INTO "public"."dengue_data" VALUES (33, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', 'yearly', '2019-11-11', 478, 4, 4, 4, 484);
INSERT INTO "public"."dengue_data" VALUES (34, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', 'yearly', '2019-11-11', 301, 7, 7, 3, 309);
INSERT INTO "public"."dengue_data" VALUES (35, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', 'yearly', '2019-11-11', 710, 7, 6, 5, 720);
INSERT INTO "public"."dengue_data" VALUES (36, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', 'yearly', '2019-11-11', 355, 2, 2, 0, 359);
INSERT INTO "public"."dengue_data" VALUES (37, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', 'yearly', '2019-11-11', 838, 3, 2, 1, 845);
INSERT INTO "public"."dengue_data" VALUES (38, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', 'yearly', '2019-11-11', 782, 2, 2, 0, 785);
INSERT INTO "public"."dengue_data" VALUES (39, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', 'yearly', '2019-11-11', 772, NULL, NULL, 0, 772);
INSERT INTO "public"."dengue_data" VALUES (40, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', 'yearly', '2019-11-11', 302, NULL, NULL, 0, 302);
INSERT INTO "public"."dengue_data" VALUES (41, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', 'yearly', '2019-11-11', 391, 3, 3, 3, 396);
INSERT INTO "public"."dengue_data" VALUES (42, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', 'yearly', '2019-11-11', 0, 10, 6, 3, 10);
INSERT INTO "public"."dengue_data" VALUES (43, 2, 'Division', 'Dhaka Division', NULL, NULL, 'yearly', '2019-11-11', 11291, 13, 6, 4, 11378);
INSERT INTO "public"."dengue_data" VALUES (44, 3, 'Division', 'Chittagong Division', NULL, NULL, 'yearly', '2019-11-11', 7683, 5, 3, 0, 7805);
INSERT INTO "public"."dengue_data" VALUES (45, 6, 'Division', 'Khulna Division', NULL, NULL, 'yearly', '2019-11-11', 11353, 17, 9, 3, 11486);
INSERT INTO "public"."dengue_data" VALUES (46, 8, 'Division', 'Rangpur Division', NULL, NULL, 'yearly', '2019-11-11', 2121, 4, 3, 2, 2132);
INSERT INTO "public"."dengue_data" VALUES (47, 4, 'Division', 'Rajshahi Division', NULL, NULL, 'yearly', '2019-11-11', 4684, 5, 2, 0, 4715);
INSERT INTO "public"."dengue_data" VALUES (48, 5, 'Division', 'Barishal Division', NULL, NULL, 'yearly', '2019-11-11', 6820, 9, 4, 1, 6877);
INSERT INTO "public"."dengue_data" VALUES (49, 9, 'Division', 'Sylhet Division', NULL, NULL, 'yearly', '2019-11-11', 998, 1, 0, 0, 1000);
INSERT INTO "public"."dengue_data" VALUES (50, 7, 'Division', 'Mymensingh Division', NULL, NULL, 'yearly', '2019-11-11', 2301, 4, 1, 1, 2324);
INSERT INTO "public"."dengue_data" VALUES (51, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', 'yearly', '2019-12-06', 8579, 40, 23, 11, 8660);
INSERT INTO "public"."dengue_data" VALUES (52, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', 'yearly', '2019-12-06', 4963, 2, 0, 0, 5007);
INSERT INTO "public"."dengue_data" VALUES (53, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', 'yearly', '2019-12-06', 1444, 16, 12, 11, 1464);
INSERT INTO "public"."dengue_data" VALUES (54, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', 'yearly', '2019-12-06', 3708, 8, 8, 5, 3737);
INSERT INTO "public"."dengue_data" VALUES (55, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', 'yearly', '2019-12-06', 1654, 3, 2, 2, 1663);
INSERT INTO "public"."dengue_data" VALUES (56, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', 'yearly', '2019-12-06', 1047, NULL, NULL, 0, 1052);
INSERT INTO "public"."dengue_data" VALUES (57, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', 'yearly', '2019-12-06', 4136, 15, 12, 5, 4183);
INSERT INTO "public"."dengue_data" VALUES (58, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', 'yearly', '2019-12-06', 353, NULL, NULL, 0, 356);
INSERT INTO "public"."dengue_data" VALUES (59, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', 'yearly', '2019-12-06', 1746, NULL, 0, 0, 1754);
INSERT INTO "public"."dengue_data" VALUES (60, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', 'yearly', '2019-12-06', 3177, 3, 3, 3, 3189);
INSERT INTO "public"."dengue_data" VALUES (61, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-12-06', 245, NULL, NULL, NULL, 247);
INSERT INTO "public"."dengue_data" VALUES (62, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-12-06', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (63, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', 'yearly', '2019-12-06', 1208, 3, 3, 1, 1214);
INSERT INTO "public"."dengue_data" VALUES (64, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', 'yearly', '2019-12-06', 1876, 12, 11, 9, 1890);
INSERT INTO "public"."dengue_data" VALUES (65, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', 'yearly', '2019-12-06', 666, 4, 4, 3, 670);
INSERT INTO "public"."dengue_data" VALUES (66, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', 'yearly', '2019-12-06', 748, 8, 8, 4, 757);
INSERT INTO "public"."dengue_data" VALUES (67, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', 'yearly', '2019-12-06', 905, 12, 12, 12, 920);
INSERT INTO "public"."dengue_data" VALUES (68, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', 'yearly', '2019-12-06', 94, NULL, NULL, 0, 94);
INSERT INTO "public"."dengue_data" VALUES (69, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', 'yearly', '2019-12-06', 266, 2, 2, 1, 268);
INSERT INTO "public"."dengue_data" VALUES (70, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', 'yearly', '2019-12-06', 384, 1, 2, 2, 385);
INSERT INTO "public"."dengue_data" VALUES (71, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', 'yearly', '2019-12-06', 209, 1, 1, 0, 210);
INSERT INTO "public"."dengue_data" VALUES (72, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', 'yearly', '2019-12-06', 1722, 2, 2, 1, 1731);
INSERT INTO "public"."dengue_data" VALUES (73, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', 'yearly', '2019-12-06', 221, NULL, NULL, 0, 221);
INSERT INTO "public"."dengue_data" VALUES (74, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', 'yearly', '2019-12-06', 143, 1, 1, 1, 144);
INSERT INTO "public"."dengue_data" VALUES (75, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', 'yearly', '2019-12-06', 688, 4, 4, 1, 693);
INSERT INTO "public"."dengue_data" VALUES (76, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', 'yearly', '2019-12-06', 1417, 6, 6, 4, 1428);
INSERT INTO "public"."dengue_data" VALUES (77, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', 'yearly', '2019-12-06', 766, 8, 8, 7, 774);
INSERT INTO "public"."dengue_data" VALUES (78, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', 'yearly', '2019-12-06', 377, NULL, NULL, 0, 377);
INSERT INTO "public"."dengue_data" VALUES (79, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', 'yearly', '2019-12-06', 489, NULL, NULL, 0, 489);
INSERT INTO "public"."dengue_data" VALUES (80, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', 'yearly', '2019-12-06', 828, NULL, NULL, 0, 828);
INSERT INTO "public"."dengue_data" VALUES (81, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', 'yearly', '2019-12-06', 812, 6, 6, 6, 820);
INSERT INTO "public"."dengue_data" VALUES (82, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', 'yearly', '2019-12-06', 989, NULL, NULL, 0, 990);
INSERT INTO "public"."dengue_data" VALUES (83, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', 'yearly', '2019-12-06', 494, 4, 4, 4, 498);
INSERT INTO "public"."dengue_data" VALUES (84, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', 'yearly', '2019-12-06', 305, 7, 7, 3, 312);
INSERT INTO "public"."dengue_data" VALUES (85, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', 'yearly', '2019-12-06', 727, 7, 6, 5, 737);
INSERT INTO "public"."dengue_data" VALUES (86, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', 'yearly', '2019-12-06', 357, 2, 2, 0, 361);
INSERT INTO "public"."dengue_data" VALUES (87, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', 'yearly', '2019-12-06', 867, 3, 3, 2, 872);
INSERT INTO "public"."dengue_data" VALUES (88, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', 'yearly', '2019-12-06', 794, 2, 2, 0, 798);
INSERT INTO "public"."dengue_data" VALUES (89, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', 'yearly', '2019-12-06', 779, NULL, NULL, 0, 780);
INSERT INTO "public"."dengue_data" VALUES (90, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', 'yearly', '2019-12-06', 312, NULL, NULL, 0, 313);
INSERT INTO "public"."dengue_data" VALUES (91, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', 'yearly', '2019-12-06', 401, 3, 3, 3, 405);
INSERT INTO "public"."dengue_data" VALUES (92, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', 'yearly', '2019-12-06', 0, 10, 8, 4, 10);
INSERT INTO "public"."dengue_data" VALUES (93, 2, 'Division', 'Dhaka Division', NULL, NULL, 'yearly', '2019-12-06', 11616, 14, 8, 5, 11657);
INSERT INTO "public"."dengue_data" VALUES (94, 3, 'Division', 'Chittagong Division', NULL, NULL, 'yearly', '2019-12-06', 8190, 7, 5, 2, 8231);
INSERT INTO "public"."dengue_data" VALUES (95, 6, 'Division', 'Khulna Division', NULL, NULL, 'yearly', '2019-12-06', 11840, 24, 10, 4, 11900);
INSERT INTO "public"."dengue_data" VALUES (96, 8, 'Division', 'Rangpur Division', NULL, NULL, 'yearly', '2019-12-06', 2162, 4, 4, 2, 2169);
INSERT INTO "public"."dengue_data" VALUES (97, 4, 'Division', 'Rajshahi Division', NULL, NULL, 'yearly', '2019-12-06', 4786, 5, 4, 2, 4805);
INSERT INTO "public"."dengue_data" VALUES (98, 5, 'Division', 'Barishal Division', NULL, NULL, 'yearly', '2019-12-06', 7032, 10, 5, 2, 7055);
INSERT INTO "public"."dengue_data" VALUES (99, 9, 'Division', 'Sylhet Division', NULL, NULL, 'yearly', '2019-12-06', 1007, 1, 0, 0, 1010);
INSERT INTO "public"."dengue_data" VALUES (100, 7, 'Division', 'Mymensingh Division', NULL, NULL, 'yearly', '2019-12-06', 2355, 4, 3, 2, 2364);
INSERT INTO "public"."dengue_data" VALUES (101, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', 'yearly', '2019-12-16', 8633, 40, 25, 13, 8708);
INSERT INTO "public"."dengue_data" VALUES (102, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', 'yearly', '2019-12-16', 5010, 2, 0, 0, 5030);
INSERT INTO "public"."dengue_data" VALUES (103, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', 'yearly', '2019-12-16', 1448, 16, 13, 12, 1467);
INSERT INTO "public"."dengue_data" VALUES (104, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', 'yearly', '2019-12-16', 3740, 8, 8, 5, 3765);
INSERT INTO "public"."dengue_data" VALUES (105, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', 'yearly', '2019-12-16', 1662, 3, 3, 2, 1668);
INSERT INTO "public"."dengue_data" VALUES (106, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', 'yearly', '2019-12-16', 1063, NULL, NULL, 0, 1065);
INSERT INTO "public"."dengue_data" VALUES (107, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', 'yearly', '2019-12-16', 4174, 15, 14, 5, 4203);
INSERT INTO "public"."dengue_data" VALUES (108, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', 'yearly', '2019-12-16', 357, NULL, NULL, 0, 360);
INSERT INTO "public"."dengue_data" VALUES (109, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', 'yearly', '2019-12-16', 1756, NULL, 0, 0, 1760);
INSERT INTO "public"."dengue_data" VALUES (110, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', 'yearly', '2019-12-16', 3203, 3, 3, 3, 3222);
INSERT INTO "public"."dengue_data" VALUES (111, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-12-16', 247, NULL, NULL, NULL, 248);
INSERT INTO "public"."dengue_data" VALUES (112, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-12-16', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (113, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', 'yearly', '2019-12-16', 1211, 3, 3, 1, 1215);
INSERT INTO "public"."dengue_data" VALUES (114, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', 'yearly', '2019-12-16', 1880, 12, 11, 9, 1894);
INSERT INTO "public"."dengue_data" VALUES (115, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', 'yearly', '2019-12-16', 666, 4, 4, 3, 670);
INSERT INTO "public"."dengue_data" VALUES (116, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', 'yearly', '2019-12-16', 756, 8, 8, 4, 765);
INSERT INTO "public"."dengue_data" VALUES (117, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', 'yearly', '2019-12-16', 910, 12, 12, 12, 924);
INSERT INTO "public"."dengue_data" VALUES (118, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', 'yearly', '2019-12-16', 94, NULL, NULL, 0, 94);
INSERT INTO "public"."dengue_data" VALUES (119, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', 'yearly', '2019-12-16', 266, 2, 2, 1, 268);
INSERT INTO "public"."dengue_data" VALUES (120, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', 'yearly', '2019-12-16', 388, 1, 2, 2, 389);
INSERT INTO "public"."dengue_data" VALUES (121, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', 'yearly', '2019-12-16', 209, 1, 1, 0, 210);
INSERT INTO "public"."dengue_data" VALUES (122, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', 'yearly', '2019-12-16', 1734, 2, 2, 1, 1740);
INSERT INTO "public"."dengue_data" VALUES (123, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', 'yearly', '2019-12-16', 221, NULL, NULL, 0, 221);
INSERT INTO "public"."dengue_data" VALUES (124, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', 'yearly', '2019-12-16', 145, 1, 1, 1, 147);
INSERT INTO "public"."dengue_data" VALUES (125, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', 'yearly', '2019-12-16', 689, 4, 4, 1, 693);
INSERT INTO "public"."dengue_data" VALUES (126, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', 'yearly', '2019-12-16', 1425, 6, 6, 4, 1432);
INSERT INTO "public"."dengue_data" VALUES (127, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', 'yearly', '2019-12-16', 768, 8, 8, 7, 777);
INSERT INTO "public"."dengue_data" VALUES (128, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', 'yearly', '2019-12-16', 378, NULL, NULL, 0, 378);
INSERT INTO "public"."dengue_data" VALUES (129, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', 'yearly', '2019-12-16', 489, NULL, NULL, 0, 489);
INSERT INTO "public"."dengue_data" VALUES (130, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', 'yearly', '2019-12-16', 828, NULL, NULL, 0, 828);
INSERT INTO "public"."dengue_data" VALUES (131, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', 'yearly', '2019-12-16', 814, 6, 6, 6, 822);
INSERT INTO "public"."dengue_data" VALUES (132, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', 'yearly', '2019-12-16', 992, NULL, NULL, 0, 997);
INSERT INTO "public"."dengue_data" VALUES (133, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', 'yearly', '2019-12-16', 497, 4, 4, 4, 502);
INSERT INTO "public"."dengue_data" VALUES (134, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', 'yearly', '2019-12-16', 305, 7, 7, 3, 312);
INSERT INTO "public"."dengue_data" VALUES (135, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', 'yearly', '2019-12-16', 734, 7, 7, 6, 743);
INSERT INTO "public"."dengue_data" VALUES (136, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', 'yearly', '2019-12-16', 359, 2, 2, 0, 361);
INSERT INTO "public"."dengue_data" VALUES (137, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', 'yearly', '2019-12-16', 873, 3, 3, 2, 877);
INSERT INTO "public"."dengue_data" VALUES (138, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', 'yearly', '2019-12-16', 797, 2, 2, 0, 800);
INSERT INTO "public"."dengue_data" VALUES (139, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', 'yearly', '2019-12-16', 781, NULL, NULL, 0, 781);
INSERT INTO "public"."dengue_data" VALUES (140, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', 'yearly', '2019-12-16', 313, NULL, NULL, 0, 313);
INSERT INTO "public"."dengue_data" VALUES (141, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', 'yearly', '2019-12-16', 403, 3, 3, 3, 406);
INSERT INTO "public"."dengue_data" VALUES (142, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', 'yearly', '2019-12-16', 0, 10, 8, 4, 10);
INSERT INTO "public"."dengue_data" VALUES (143, 2, 'Division', 'Dhaka Division', NULL, NULL, 'yearly', '2019-12-16', 11676, 14, 8, 5, 11708);
INSERT INTO "public"."dengue_data" VALUES (144, 3, 'Division', 'Chittagong Division', NULL, NULL, 'yearly', '2019-12-16', 8267, 7, 5, 2, 8300);
INSERT INTO "public"."dengue_data" VALUES (145, 6, 'Division', 'Khulna Division', NULL, NULL, 'yearly', '2019-12-16', 11912, 24, 10, 4, 11948);
INSERT INTO "public"."dengue_data" VALUES (146, 8, 'Division', 'Rangpur Division', NULL, NULL, 'yearly', '2019-12-16', 2167, 4, 4, 2, 2172);
INSERT INTO "public"."dengue_data" VALUES (147, 4, 'Division', 'Rajshahi Division', NULL, NULL, 'yearly', '2019-12-16', 4802, 5, 4, 2, 4810);
INSERT INTO "public"."dengue_data" VALUES (148, 5, 'Division', 'Barishal Division', NULL, NULL, 'yearly', '2019-12-16', 7058, 10, 5, 2, 7074);
INSERT INTO "public"."dengue_data" VALUES (149, 9, 'Division', 'Sylhet Division', NULL, NULL, 'yearly', '2019-12-16', 1010, 1, 0, 0, 1011);
INSERT INTO "public"."dengue_data" VALUES (150, 7, 'Division', 'Mymensingh Division', NULL, NULL, 'yearly', '2019-12-16', 2363, 4, 3, 2, 2375);
INSERT INTO "public"."dengue_data" VALUES (151, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', 'yearly', '2019-12-21', 8660, 40, 35, 19, 8728);
INSERT INTO "public"."dengue_data" VALUES (152, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', 'yearly', '2019-12-21', 5024, 2, 0, 0, 5041);
INSERT INTO "public"."dengue_data" VALUES (153, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', 'yearly', '2019-12-21', 1451, 16, 15, 14, 1467);
INSERT INTO "public"."dengue_data" VALUES (154, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', 'yearly', '2019-12-21', 3755, 8, 8, 5, 3770);
INSERT INTO "public"."dengue_data" VALUES (155, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', 'yearly', '2019-12-21', 1666, 3, 3, 2, 1670);
INSERT INTO "public"."dengue_data" VALUES (156, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', 'yearly', '2019-12-21', 1065, NULL, NULL, 0, 1069);
INSERT INTO "public"."dengue_data" VALUES (157, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', 'yearly', '2019-12-21', 4184, 15, 14, 5, 4208);
INSERT INTO "public"."dengue_data" VALUES (158, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', 'yearly', '2019-12-21', 358, NULL, NULL, 0, 360);
INSERT INTO "public"."dengue_data" VALUES (159, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', 'yearly', '2019-12-21', 1759, NULL, 0, 0, 1767);
INSERT INTO "public"."dengue_data" VALUES (160, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', 'yearly', '2019-12-21', 3212, 3, 3, 3, 3227);
INSERT INTO "public"."dengue_data" VALUES (161, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-12-21', 247, NULL, NULL, NULL, 250);
INSERT INTO "public"."dengue_data" VALUES (162, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-12-21', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (163, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', 'yearly', '2019-12-21', 1212, 3, 3, 1, 1215);
INSERT INTO "public"."dengue_data" VALUES (164, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', 'yearly', '2019-12-21', 1884, 12, 11, 9, 1897);
INSERT INTO "public"."dengue_data" VALUES (165, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', 'yearly', '2019-12-21', 666, 4, 4, 3, 670);
INSERT INTO "public"."dengue_data" VALUES (166, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', 'yearly', '2019-12-21', 757, 8, 8, 4, 766);
INSERT INTO "public"."dengue_data" VALUES (167, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', 'yearly', '2019-12-21', 913, 12, 12, 12, 927);
INSERT INTO "public"."dengue_data" VALUES (168, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', 'yearly', '2019-12-21', 94, NULL, NULL, 0, 94);
INSERT INTO "public"."dengue_data" VALUES (169, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', 'yearly', '2019-12-21', 266, 2, 2, 1, 268);
INSERT INTO "public"."dengue_data" VALUES (170, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', 'yearly', '2019-12-21', 388, 1, 2, 2, 389);
INSERT INTO "public"."dengue_data" VALUES (171, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', 'yearly', '2019-12-21', 209, 1, 1, 0, 210);
INSERT INTO "public"."dengue_data" VALUES (172, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', 'yearly', '2019-12-21', 1738, 2, 2, 1, 1744);
INSERT INTO "public"."dengue_data" VALUES (173, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', 'yearly', '2019-12-21', 221, NULL, NULL, 0, 221);
INSERT INTO "public"."dengue_data" VALUES (174, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', 'yearly', '2019-12-21', 146, 1, 1, 1, 148);
INSERT INTO "public"."dengue_data" VALUES (175, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', 'yearly', '2019-12-21', 689, 4, 4, 1, 693);
INSERT INTO "public"."dengue_data" VALUES (176, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', 'yearly', '2019-12-21', 1427, 6, 6, 4, 1434);
INSERT INTO "public"."dengue_data" VALUES (177, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', 'yearly', '2019-12-21', 769, 9, 8, 7, 779);
INSERT INTO "public"."dengue_data" VALUES (178, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', 'yearly', '2019-12-21', 378, NULL, NULL, 0, 378);
INSERT INTO "public"."dengue_data" VALUES (179, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', 'yearly', '2019-12-21', 489, NULL, NULL, 0, 489);
INSERT INTO "public"."dengue_data" VALUES (180, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', 'yearly', '2019-12-21', 828, NULL, NULL, 0, 828);
INSERT INTO "public"."dengue_data" VALUES (181, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', 'yearly', '2019-12-21', 818, 6, 6, 6, 824);
INSERT INTO "public"."dengue_data" VALUES (182, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', 'yearly', '2019-12-21', 997, NULL, NULL, 0, 998);
INSERT INTO "public"."dengue_data" VALUES (183, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', 'yearly', '2019-12-21', 498, 4, 4, 4, 504);
INSERT INTO "public"."dengue_data" VALUES (184, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', 'yearly', '2019-12-21', 305, 7, 7, 3, 312);
INSERT INTO "public"."dengue_data" VALUES (185, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', 'yearly', '2019-12-21', 737, 7, 7, 6, 744);
INSERT INTO "public"."dengue_data" VALUES (186, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', 'yearly', '2019-12-21', 359, 2, 2, 0, 364);
INSERT INTO "public"."dengue_data" VALUES (187, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', 'yearly', '2019-12-21', 874, 3, 3, 2, 879);
INSERT INTO "public"."dengue_data" VALUES (188, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', 'yearly', '2019-12-21', 799, 2, 2, 0, 802);
INSERT INTO "public"."dengue_data" VALUES (189, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', 'yearly', '2019-12-21', 781, NULL, NULL, 0, 781);
INSERT INTO "public"."dengue_data" VALUES (190, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', 'yearly', '2019-12-21', 314, NULL, NULL, 0, 314);
INSERT INTO "public"."dengue_data" VALUES (191, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', 'yearly', '2019-12-21', 403, 3, 3, 3, 406);
INSERT INTO "public"."dengue_data" VALUES (192, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', 'yearly', '2019-12-21', 0, 10, 8, 4, 10);
INSERT INTO "public"."dengue_data" VALUES (193, 2, 'Division', 'Dhaka Division', NULL, NULL, 'yearly', '2019-12-21', 11700, 14, 8, 5, 11723);
INSERT INTO "public"."dengue_data" VALUES (194, 3, 'Division', 'Chittagong Division', NULL, NULL, 'yearly', '2019-12-21', 8301, 7, 5, 2, 8324);
INSERT INTO "public"."dengue_data" VALUES (195, 6, 'Division', 'Khulna Division', NULL, NULL, 'yearly', '2019-12-21', 11930, 24, 10, 4, 11966);
INSERT INTO "public"."dengue_data" VALUES (196, 8, 'Division', 'Rangpur Division', NULL, NULL, 'yearly', '2019-12-21', 2169, 4, 4, 2, 2173);
INSERT INTO "public"."dengue_data" VALUES (197, 4, 'Division', 'Rajshahi Division', NULL, NULL, 'yearly', '2019-12-21', 4805, 5, 4, 2, 4812);
INSERT INTO "public"."dengue_data" VALUES (198, 5, 'Division', 'Barishal Division', NULL, NULL, 'yearly', '2019-12-21', 7066, 10, 5, 2, 7082);
INSERT INTO "public"."dengue_data" VALUES (199, 9, 'Division', 'Sylhet Division', NULL, NULL, 'yearly', '2019-12-21', 1010, 1, 0, 0, 1011);
INSERT INTO "public"."dengue_data" VALUES (200, 7, 'Division', 'Mymensingh Division', NULL, NULL, 'yearly', '2019-12-21', 2366, 5, 3, 2, 2379);
INSERT INTO "public"."dengue_data" VALUES (201, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', 'yearly', '2019-12-26', 8690, 40, 36, 19, 8741);
INSERT INTO "public"."dengue_data" VALUES (202, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', 'yearly', '2019-12-26', 5033, 2, 1, 0, 5045);
INSERT INTO "public"."dengue_data" VALUES (203, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', 'yearly', '2019-12-26', 1453, 16, 16, 14, 1471);
INSERT INTO "public"."dengue_data" VALUES (204, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', 'yearly', '2019-12-26', 3761, 8, 8, 5, 3774);
INSERT INTO "public"."dengue_data" VALUES (205, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', 'yearly', '2019-12-26', 1666, 3, 3, 2, 1673);
INSERT INTO "public"."dengue_data" VALUES (206, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', 'yearly', '2019-12-26', 1069, NULL, NULL, 0, 1073);
INSERT INTO "public"."dengue_data" VALUES (207, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', 'yearly', '2019-12-26', 4190, 15, 15, 5, 4210);
INSERT INTO "public"."dengue_data" VALUES (208, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', 'yearly', '2019-12-26', 358, NULL, NULL, 0, 361);
INSERT INTO "public"."dengue_data" VALUES (209, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', 'yearly', '2019-12-26', 1768, NULL, 0, 0, 1774);
INSERT INTO "public"."dengue_data" VALUES (210, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', 'yearly', '2019-12-26', 3219, 3, 3, 3, 3230);
INSERT INTO "public"."dengue_data" VALUES (548, 64, 'District', 'Kurigram', NULL, NULL, 'yearly', '2019-12-31', 206, 0, 0, 0, 206);
INSERT INTO "public"."dengue_data" VALUES (211, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-12-26', 251, NULL, NULL, NULL, 251);
INSERT INTO "public"."dengue_data" VALUES (212, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-12-26', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (213, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', 'yearly', '2019-12-26', 1213, 3, 3, 1, 1216);
INSERT INTO "public"."dengue_data" VALUES (214, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', 'yearly', '2019-12-26', 1885, 12, 11, 9, 1897);
INSERT INTO "public"."dengue_data" VALUES (215, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', 'yearly', '2019-12-26', 666, 4, 4, 3, 670);
INSERT INTO "public"."dengue_data" VALUES (216, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', 'yearly', '2019-12-26', 758, 8, 8, 4, 766);
INSERT INTO "public"."dengue_data" VALUES (217, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', 'yearly', '2019-12-26', 916, 12, 12, 12, 928);
INSERT INTO "public"."dengue_data" VALUES (218, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', 'yearly', '2019-12-26', 94, NULL, NULL, 0, 94);
INSERT INTO "public"."dengue_data" VALUES (219, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', 'yearly', '2019-12-26', 266, 2, 2, 1, 268);
INSERT INTO "public"."dengue_data" VALUES (220, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', 'yearly', '2019-12-26', 388, 1, 2, 2, 389);
INSERT INTO "public"."dengue_data" VALUES (221, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', 'yearly', '2019-12-26', 209, 1, 1, 0, 210);
INSERT INTO "public"."dengue_data" VALUES (222, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', 'yearly', '2019-12-26', 1741, 2, 2, 1, 1745);
INSERT INTO "public"."dengue_data" VALUES (223, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', 'yearly', '2019-12-26', 221, NULL, NULL, 0, 221);
INSERT INTO "public"."dengue_data" VALUES (224, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', 'yearly', '2019-12-26', 147, 1, 1, 1, 148);
INSERT INTO "public"."dengue_data" VALUES (225, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', 'yearly', '2019-12-26', 689, 4, 4, 1, 693);
INSERT INTO "public"."dengue_data" VALUES (226, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', 'yearly', '2019-12-26', 1428, 6, 6, 4, 1435);
INSERT INTO "public"."dengue_data" VALUES (227, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', 'yearly', '2019-12-26', 770, 9, 9, 8, 779);
INSERT INTO "public"."dengue_data" VALUES (228, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', 'yearly', '2019-12-26', 378, NULL, NULL, 0, 378);
INSERT INTO "public"."dengue_data" VALUES (229, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', 'yearly', '2019-12-26', 489, NULL, NULL, 0, 489);
INSERT INTO "public"."dengue_data" VALUES (230, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', 'yearly', '2019-12-26', 828, NULL, NULL, 0, 828);
INSERT INTO "public"."dengue_data" VALUES (231, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', 'yearly', '2019-12-26', 818, 6, 6, 6, 824);
INSERT INTO "public"."dengue_data" VALUES (232, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', 'yearly', '2019-12-26', 998, NULL, NULL, 0, 999);
INSERT INTO "public"."dengue_data" VALUES (233, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', 'yearly', '2019-12-26', 499, 4, 4, 4, 504);
INSERT INTO "public"."dengue_data" VALUES (234, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', 'yearly', '2019-12-26', 305, 7, 7, 3, 312);
INSERT INTO "public"."dengue_data" VALUES (235, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', 'yearly', '2019-12-26', 738, 7, 7, 6, 747);
INSERT INTO "public"."dengue_data" VALUES (236, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', 'yearly', '2019-12-26', 361, 2, 2, 0, 364);
INSERT INTO "public"."dengue_data" VALUES (237, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', 'yearly', '2019-12-26', 875, 3, 3, 2, 879);
INSERT INTO "public"."dengue_data" VALUES (238, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', 'yearly', '2019-12-26', 800, 2, 2, 0, 802);
INSERT INTO "public"."dengue_data" VALUES (239, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', 'yearly', '2019-12-26', 781, NULL, NULL, 0, 782);
INSERT INTO "public"."dengue_data" VALUES (240, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', 'yearly', '2019-12-26', 314, NULL, NULL, 0, 314);
INSERT INTO "public"."dengue_data" VALUES (241, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', 'yearly', '2019-12-26', 403, 3, 3, 3, 406);
INSERT INTO "public"."dengue_data" VALUES (242, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', 'yearly', '2019-12-26', 0, 10, 8, 4, 10);
INSERT INTO "public"."dengue_data" VALUES (243, 2, 'Division', 'Dhaka Division', NULL, NULL, 'yearly', '2019-12-26', 11716, 14, 9, 6, 11741);
INSERT INTO "public"."dengue_data" VALUES (244, 3, 'Division', 'Chittagong Division', NULL, NULL, 'yearly', '2019-12-26', 8329, 7, 5, 2, 8348);
INSERT INTO "public"."dengue_data" VALUES (245, 6, 'Division', 'Khulna Division', NULL, NULL, 'yearly', '2019-12-26', 11943, 24, 12, 6, 11971);
INSERT INTO "public"."dengue_data" VALUES (246, 8, 'Division', 'Rangpur Division', NULL, NULL, 'yearly', '2019-12-26', 2170, 4, 4, 2, 2174);
INSERT INTO "public"."dengue_data" VALUES (247, 4, 'Division', 'Rajshahi Division', NULL, NULL, 'yearly', '2019-12-26', 4807, 5, 4, 2, 4812);
INSERT INTO "public"."dengue_data" VALUES (248, 5, 'Division', 'Barishal Division', NULL, NULL, 'yearly', '2019-12-26', 7073, 10, 7, 4, 7084);
INSERT INTO "public"."dengue_data" VALUES (249, 9, 'Division', 'Sylhet Division', NULL, NULL, 'yearly', '2019-12-26', 1010, 1, 1, 1, 1011);
INSERT INTO "public"."dengue_data" VALUES (250, 7, 'Division', 'Mymensingh Division', NULL, NULL, 'yearly', '2019-12-26', 2374, 5, 3, 2, 2381);
INSERT INTO "public"."dengue_data" VALUES (261, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-12-31', 252, NULL, NULL, NULL, 252);
INSERT INTO "public"."dengue_data" VALUES (262, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-12-31', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (301, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', 'yearly', '2019-09-27', 7409, 40, 18, 8, 7577);
INSERT INTO "public"."dengue_data" VALUES (302, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', 'yearly', '2019-09-27', 4303, 2, 0, 0, 4417);
INSERT INTO "public"."dengue_data" VALUES (303, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', 'yearly', '2019-09-27', 1324, 15, 4, 4, 1364);
INSERT INTO "public"."dengue_data" VALUES (304, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', 'yearly', '2019-09-27', 3267, 7, 3, 0, 3322);
INSERT INTO "public"."dengue_data" VALUES (305, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', 'yearly', '2019-09-27', 1419, 3, 2, 2, 1453);
INSERT INTO "public"."dengue_data" VALUES (306, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', 'yearly', '2019-09-27', 968, NULL, NULL, 0, 974);
INSERT INTO "public"."dengue_data" VALUES (307, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', 'yearly', '2019-09-27', 3716, 15, 7, 3, 3778);
INSERT INTO "public"."dengue_data" VALUES (308, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', 'yearly', '2019-09-27', 337, NULL, NULL, 0, 338);
INSERT INTO "public"."dengue_data" VALUES (309, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', 'yearly', '2019-09-27', 1606, 1, 0, 0, 1636);
INSERT INTO "public"."dengue_data" VALUES (310, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', 'yearly', '2019-09-27', 2724, 2, 2, 2, 2773);
INSERT INTO "public"."dengue_data" VALUES (311, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-09-27', 236, NULL, NULL, NULL, 236);
INSERT INTO "public"."dengue_data" VALUES (312, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-09-27', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (313, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', 'yearly', '2019-09-27', 1162, 3, 2, 1, 1170);
INSERT INTO "public"."dengue_data" VALUES (314, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', 'yearly', '2019-09-27', 1729, 11, 7, 5, 1750);
INSERT INTO "public"."dengue_data" VALUES (315, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', 'yearly', '2019-09-27', 627, 4, 2, 1, 632);
INSERT INTO "public"."dengue_data" VALUES (316, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', 'yearly', '2019-09-27', 703, 8, 5, 3, 719);
INSERT INTO "public"."dengue_data" VALUES (317, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', 'yearly', '2019-09-27', 849, 12, 12, 12, 861);
INSERT INTO "public"."dengue_data" VALUES (318, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', 'yearly', '2019-09-27', 94, NULL, NULL, 0, 94);
INSERT INTO "public"."dengue_data" VALUES (319, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', 'yearly', '2019-09-27', 265, 2, 2, 1, 267);
INSERT INTO "public"."dengue_data" VALUES (320, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', 'yearly', '2019-09-27', 337, 1, 1, 1, 343);
INSERT INTO "public"."dengue_data" VALUES (321, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', 'yearly', '2019-09-27', 206, 1, 1, 0, 207);
INSERT INTO "public"."dengue_data" VALUES (322, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', 'yearly', '2019-09-27', 1586, 1, 1, 1, 1594);
INSERT INTO "public"."dengue_data" VALUES (323, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', 'yearly', '2019-09-27', 218, NULL, NULL, 0, 219);
INSERT INTO "public"."dengue_data" VALUES (324, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', 'yearly', '2019-09-27', 138, 1, 1, 1, 140);
INSERT INTO "public"."dengue_data" VALUES (325, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', 'yearly', '2019-09-27', 648, 4, 4, 1, 653);
INSERT INTO "public"."dengue_data" VALUES (326, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', 'yearly', '2019-09-27', 1296, 6, 6, 4, 1311);
INSERT INTO "public"."dengue_data" VALUES (327, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', 'yearly', '2019-09-27', 719, 8, 7, 6, 728);
INSERT INTO "public"."dengue_data" VALUES (328, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', 'yearly', '2019-09-27', 344, NULL, NULL, 0, 345);
INSERT INTO "public"."dengue_data" VALUES (329, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', 'yearly', '2019-09-27', 455, NULL, NULL, 0, 459);
INSERT INTO "public"."dengue_data" VALUES (330, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', 'yearly', '2019-09-27', 818, NULL, NULL, 0, 821);
INSERT INTO "public"."dengue_data" VALUES (331, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', 'yearly', '2019-09-27', 760, 6, 5, 5, 770);
INSERT INTO "public"."dengue_data" VALUES (332, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', 'yearly', '2019-09-27', 937, NULL, NULL, 0, 944);
INSERT INTO "public"."dengue_data" VALUES (333, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', 'yearly', '2019-09-27', 462, 4, 4, 4, 466);
INSERT INTO "public"."dengue_data" VALUES (334, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', 'yearly', '2019-09-27', 297, 7, 7, 3, 306);
INSERT INTO "public"."dengue_data" VALUES (335, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', 'yearly', '2019-09-27', 679, 7, 5, 4, 691);
INSERT INTO "public"."dengue_data" VALUES (336, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', 'yearly', '2019-09-27', 352, 2, 2, 0, 354);
INSERT INTO "public"."dengue_data" VALUES (337, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', 'yearly', '2019-09-27', 777, 2, 1, 0, 786);
INSERT INTO "public"."dengue_data" VALUES (338, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', 'yearly', '2019-09-27', 734, 2, 2, 0, 740);
INSERT INTO "public"."dengue_data" VALUES (339, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', 'yearly', '2019-09-27', 757, NULL, NULL, 0, 759);
INSERT INTO "public"."dengue_data" VALUES (340, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', 'yearly', '2019-09-27', 277, NULL, NULL, 0, 280);
INSERT INTO "public"."dengue_data" VALUES (341, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', 'yearly', '2019-09-27', 381, 3, 3, 3, 386);
INSERT INTO "public"."dengue_data" VALUES (342, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', 'yearly', '2019-09-27', 0, 9, 5, 2, 9);
INSERT INTO "public"."dengue_data" VALUES (343, 2, 'Division', 'Dhaka Division', NULL, NULL, 'yearly', '2019-09-27', 9743, 9, 2, 1, 9942);
INSERT INTO "public"."dengue_data" VALUES (344, 3, 'Division', 'Chittagong Division', NULL, NULL, 'yearly', '2019-09-27', 6499, 4, 2, 0, 6643);
INSERT INTO "public"."dengue_data" VALUES (345, 6, 'Division', 'Khulna Division', NULL, NULL, 'yearly', '2019-09-27', 8355, 11, 7, 2, 8729);
INSERT INTO "public"."dengue_data" VALUES (346, 8, 'Division', 'Rangpur Division', NULL, NULL, 'yearly', '2019-09-27', 1928, 4, 1, 1, 1956);
INSERT INTO "public"."dengue_data" VALUES (347, 4, 'Division', 'Rajshahi Division', NULL, NULL, 'yearly', '2019-09-27', 4119, 5, 0, 0, 4222);
INSERT INTO "public"."dengue_data" VALUES (348, 5, 'Division', 'Barishal Division', NULL, NULL, 'yearly', '2019-09-27', 5473, 5, 3, 0, 5608);
INSERT INTO "public"."dengue_data" VALUES (349, 9, 'Division', 'Sylhet Division', NULL, NULL, 'yearly', '2019-09-27', 917, 0, 0, 0, 928);
INSERT INTO "public"."dengue_data" VALUES (350, 7, 'Division', 'Mymensingh Division', NULL, NULL, 'yearly', '2019-09-27', 2090, 4, 0, 0, 2128);
INSERT INTO "public"."dengue_data" VALUES (351, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', 'yearly', '2019-10-02', 7538, 40, 18, 8, 7699);
INSERT INTO "public"."dengue_data" VALUES (352, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', 'yearly', '2019-10-02', 4382, 2, 0, 0, 4488);
INSERT INTO "public"."dengue_data" VALUES (353, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', 'yearly', '2019-10-02', 1349, 15, 4, 4, 1377);
INSERT INTO "public"."dengue_data" VALUES (354, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', 'yearly', '2019-10-02', 3317, 7, 3, 0, 3379);
INSERT INTO "public"."dengue_data" VALUES (355, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', 'yearly', '2019-10-02', 1460, 3, 2, 2, 1480);
INSERT INTO "public"."dengue_data" VALUES (356, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', 'yearly', '2019-10-02', 974, NULL, NULL, 0, 981);
INSERT INTO "public"."dengue_data" VALUES (357, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', 'yearly', '2019-10-02', 3764, 15, 7, 3, 3803);
INSERT INTO "public"."dengue_data" VALUES (358, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', 'yearly', '2019-10-02', 338, NULL, NULL, 0, 341);
INSERT INTO "public"."dengue_data" VALUES (359, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', 'yearly', '2019-10-02', 1617, 0, 0, 0, 1651);
INSERT INTO "public"."dengue_data" VALUES (360, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', 'yearly', '2019-10-02', 2769, 2, 2, 2, 2824);
INSERT INTO "public"."dengue_data" VALUES (361, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-10-02', 236, NULL, NULL, NULL, 237);
INSERT INTO "public"."dengue_data" VALUES (362, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-10-02', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (363, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', 'yearly', '2019-10-02', 1168, 3, 2, 1, 1174);
INSERT INTO "public"."dengue_data" VALUES (364, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', 'yearly', '2019-10-02', 1736, 11, 7, 5, 1759);
INSERT INTO "public"."dengue_data" VALUES (365, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', 'yearly', '2019-10-02', 628, 4, 2, 1, 632);
INSERT INTO "public"."dengue_data" VALUES (366, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', 'yearly', '2019-10-02', 708, 8, 5, 3, 723);
INSERT INTO "public"."dengue_data" VALUES (367, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', 'yearly', '2019-10-02', 850, 12, 12, 12, 862);
INSERT INTO "public"."dengue_data" VALUES (368, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', 'yearly', '2019-10-02', 94, NULL, NULL, 0, 94);
INSERT INTO "public"."dengue_data" VALUES (369, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', 'yearly', '2019-10-02', 265, 2, 2, 1, 267);
INSERT INTO "public"."dengue_data" VALUES (370, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', 'yearly', '2019-10-02', 342, 1, 1, 1, 346);
INSERT INTO "public"."dengue_data" VALUES (371, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', 'yearly', '2019-10-02', 206, 1, 1, 0, 207);
INSERT INTO "public"."dengue_data" VALUES (372, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', 'yearly', '2019-10-02', 1597, 1, 1, 1, 1611);
INSERT INTO "public"."dengue_data" VALUES (373, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', 'yearly', '2019-10-02', 219, NULL, NULL, 0, 219);
INSERT INTO "public"."dengue_data" VALUES (374, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', 'yearly', '2019-10-02', 140, 1, 1, 1, 141);
INSERT INTO "public"."dengue_data" VALUES (375, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', 'yearly', '2019-10-02', 649, 4, 4, 1, 654);
INSERT INTO "public"."dengue_data" VALUES (376, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', 'yearly', '2019-10-02', 1313, 6, 6, 4, 1325);
INSERT INTO "public"."dengue_data" VALUES (377, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', 'yearly', '2019-10-02', 722, 8, 7, 6, 733);
INSERT INTO "public"."dengue_data" VALUES (378, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', 'yearly', '2019-10-02', 347, NULL, NULL, 0, 347);
INSERT INTO "public"."dengue_data" VALUES (379, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', 'yearly', '2019-10-02', 463, NULL, NULL, 0, 466);
INSERT INTO "public"."dengue_data" VALUES (380, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', 'yearly', '2019-10-02', 820, NULL, NULL, 0, 823);
INSERT INTO "public"."dengue_data" VALUES (381, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', 'yearly', '2019-10-02', 763, 6, 5, 5, 771);
INSERT INTO "public"."dengue_data" VALUES (382, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', 'yearly', '2019-10-02', 944, NULL, NULL, 0, 952);
INSERT INTO "public"."dengue_data" VALUES (383, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', 'yearly', '2019-10-02', 465, 4, 4, 4, 472);
INSERT INTO "public"."dengue_data" VALUES (384, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', 'yearly', '2019-10-02', 299, 7, 7, 3, 306);
INSERT INTO "public"."dengue_data" VALUES (385, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', 'yearly', '2019-10-02', 683, 7, 5, 4, 695);
INSERT INTO "public"."dengue_data" VALUES (386, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', 'yearly', '2019-10-02', 353, 2, 2, 0, 355);
INSERT INTO "public"."dengue_data" VALUES (387, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', 'yearly', '2019-10-02', 783, 2, 1, 0, 791);
INSERT INTO "public"."dengue_data" VALUES (388, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', 'yearly', '2019-10-02', 740, 2, 2, 0, 750);
INSERT INTO "public"."dengue_data" VALUES (389, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', 'yearly', '2019-10-02', 761, NULL, NULL, 0, 764);
INSERT INTO "public"."dengue_data" VALUES (390, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', 'yearly', '2019-10-02', 283, NULL, NULL, 0, 284);
INSERT INTO "public"."dengue_data" VALUES (391, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', 'yearly', '2019-10-02', 383, 3, 3, 3, 388);
INSERT INTO "public"."dengue_data" VALUES (392, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', 'yearly', '2019-10-02', 0, 9, 5, 2, 9);
INSERT INTO "public"."dengue_data" VALUES (393, 2, 'Division', 'Dhaka Division', NULL, NULL, 'yearly', '2019-10-02', 10029, 10, 2, 1, 10232);
INSERT INTO "public"."dengue_data" VALUES (394, 3, 'Division', 'Chittagong Division', NULL, NULL, 'yearly', '2019-10-02', 6659, 5, 2, 0, 6785);
INSERT INTO "public"."dengue_data" VALUES (395, 6, 'Division', 'Khulna Division', NULL, NULL, 'yearly', '2019-10-02', 8832, 13, 7, 2, 9202);
INSERT INTO "public"."dengue_data" VALUES (396, 8, 'Division', 'Rangpur Division', NULL, NULL, 'yearly', '2019-10-02', 1962, 4, 1, 1, 1996);
INSERT INTO "public"."dengue_data" VALUES (397, 4, 'Division', 'Rajshahi Division', NULL, NULL, 'yearly', '2019-10-02', 4231, 5, 0, 0, 4306);
INSERT INTO "public"."dengue_data" VALUES (398, 5, 'Division', 'Barishal Division', NULL, NULL, 'yearly', '2019-10-02', 5653, 7, 3, 0, 5781);
INSERT INTO "public"."dengue_data" VALUES (399, 9, 'Division', 'Sylhet Division', NULL, NULL, 'yearly', '2019-10-02', 932, 0, 0, 0, 945);
INSERT INTO "public"."dengue_data" VALUES (549, 63, 'District', 'Gaibandha', NULL, NULL, 'yearly', '2019-12-31', 199, 0, 0, 0, 199);
INSERT INTO "public"."dengue_data" VALUES (400, 7, 'Division', 'Mymensingh Division', NULL, NULL, 'yearly', '2019-10-02', 2123, 4, 0, 0, 2158);
INSERT INTO "public"."dengue_data" VALUES (401, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', 'yearly', '2019-10-07', 7639, 40, 18, 8, 7801);
INSERT INTO "public"."dengue_data" VALUES (402, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', 'yearly', '2019-10-07', 4474, 2, 0, 0, 4548);
INSERT INTO "public"."dengue_data" VALUES (403, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', 'yearly', '2019-10-07', 1362, 15, 4, 4, 1385);
INSERT INTO "public"."dengue_data" VALUES (404, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', 'yearly', '2019-10-07', 3363, 7, 3, 0, 3413);
INSERT INTO "public"."dengue_data" VALUES (405, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', 'yearly', '2019-10-07', 1483, 3, 2, 2, 1510);
INSERT INTO "public"."dengue_data" VALUES (406, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', 'yearly', '2019-10-07', 981, NULL, NULL, 0, 984);
INSERT INTO "public"."dengue_data" VALUES (407, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', 'yearly', '2019-10-07', 3788, 15, 7, 3, 3829);
INSERT INTO "public"."dengue_data" VALUES (408, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', 'yearly', '2019-10-07', 341, NULL, NULL, 0, 341);
INSERT INTO "public"."dengue_data" VALUES (409, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', 'yearly', '2019-10-07', 1627, NULL, 0, 0, 1658);
INSERT INTO "public"."dengue_data" VALUES (410, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', 'yearly', '2019-10-07', 2810, 3, 2, 2, 2860);
INSERT INTO "public"."dengue_data" VALUES (411, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-10-07', 236, NULL, NULL, NULL, 237);
INSERT INTO "public"."dengue_data" VALUES (412, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-10-07', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (413, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', 'yearly', '2019-10-07', 1172, 3, 2, 1, 1177);
INSERT INTO "public"."dengue_data" VALUES (414, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', 'yearly', '2019-10-07', 1745, 11, 7, 5, 1765);
INSERT INTO "public"."dengue_data" VALUES (415, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', 'yearly', '2019-10-07', 631, 4, 2, 1, 635);
INSERT INTO "public"."dengue_data" VALUES (416, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', 'yearly', '2019-10-07', 714, 8, 5, 3, 726);
INSERT INTO "public"."dengue_data" VALUES (417, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', 'yearly', '2019-10-07', 850, 12, 12, 12, 864);
INSERT INTO "public"."dengue_data" VALUES (418, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', 'yearly', '2019-10-07', 94, NULL, NULL, 0, 94);
INSERT INTO "public"."dengue_data" VALUES (419, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', 'yearly', '2019-10-07', 265, 2, 2, 1, 267);
INSERT INTO "public"."dengue_data" VALUES (420, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', 'yearly', '2019-10-07', 344, 1, 1, 1, 348);
INSERT INTO "public"."dengue_data" VALUES (421, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', 'yearly', '2019-10-07', 207, 1, 1, 0, 208);
INSERT INTO "public"."dengue_data" VALUES (422, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', 'yearly', '2019-10-07', 1613, 1, 1, 1, 1624);
INSERT INTO "public"."dengue_data" VALUES (423, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', 'yearly', '2019-10-07', 219, NULL, NULL, 0, 219);
INSERT INTO "public"."dengue_data" VALUES (424, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', 'yearly', '2019-10-07', 140, 1, 1, 1, 141);
INSERT INTO "public"."dengue_data" VALUES (425, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', 'yearly', '2019-10-07', 650, 4, 4, 1, 655);
INSERT INTO "public"."dengue_data" VALUES (426, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', 'yearly', '2019-10-07', 1320, 6, 6, 4, 1332);
INSERT INTO "public"."dengue_data" VALUES (427, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', 'yearly', '2019-10-07', 732, 8, 7, 6, 742);
INSERT INTO "public"."dengue_data" VALUES (428, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', 'yearly', '2019-10-07', 350, NULL, NULL, 0, 353);
INSERT INTO "public"."dengue_data" VALUES (429, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', 'yearly', '2019-10-07', 467, NULL, NULL, 0, 469);
INSERT INTO "public"."dengue_data" VALUES (430, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', 'yearly', '2019-10-07', 825, NULL, NULL, 0, 826);
INSERT INTO "public"."dengue_data" VALUES (431, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', 'yearly', '2019-10-07', 765, 6, 5, 5, 775);
INSERT INTO "public"."dengue_data" VALUES (432, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', 'yearly', '2019-10-07', 952, NULL, NULL, 0, 954);
INSERT INTO "public"."dengue_data" VALUES (433, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', 'yearly', '2019-10-07', 467, 4, 4, 4, 474);
INSERT INTO "public"."dengue_data" VALUES (434, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', 'yearly', '2019-10-07', 299, 7, 7, 3, 306);
INSERT INTO "public"."dengue_data" VALUES (435, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', 'yearly', '2019-10-07', 687, 7, 5, 4, 699);
INSERT INTO "public"."dengue_data" VALUES (436, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', 'yearly', '2019-10-07', 354, 2, 2, 0, 356);
INSERT INTO "public"."dengue_data" VALUES (437, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', 'yearly', '2019-10-07', 791, 2, 1, 0, 801);
INSERT INTO "public"."dengue_data" VALUES (438, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', 'yearly', '2019-10-07', 747, 2, 2, 0, 751);
INSERT INTO "public"."dengue_data" VALUES (439, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', 'yearly', '2019-10-07', 765, NULL, NULL, 0, 767);
INSERT INTO "public"."dengue_data" VALUES (440, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', 'yearly', '2019-10-07', 283, NULL, NULL, 0, 289);
INSERT INTO "public"."dengue_data" VALUES (441, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', 'yearly', '2019-10-07', 385, 3, 3, 3, 389);
INSERT INTO "public"."dengue_data" VALUES (442, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', 'yearly', '2019-10-07', 0, 9, 5, 2, 9);
INSERT INTO "public"."dengue_data" VALUES (443, 2, 'Division', 'Dhaka Division', NULL, NULL, 'yearly', '2019-10-07', 10299, 11, 2, 1, 10448);
INSERT INTO "public"."dengue_data" VALUES (444, 3, 'Division', 'Chittagong Division', NULL, NULL, 'yearly', '2019-10-07', 6811, 5, 2, 0, 6937);
INSERT INTO "public"."dengue_data" VALUES (445, 6, 'Division', 'Khulna Division', NULL, NULL, 'yearly', '2019-10-07', 9344, 15, 7, 2, 9751);
INSERT INTO "public"."dengue_data" VALUES (446, 8, 'Division', 'Rangpur Division', NULL, NULL, 'yearly', '2019-10-07', 1989, 4, 1, 1, 2013);
INSERT INTO "public"."dengue_data" VALUES (447, 4, 'Division', 'Rajshahi Division', NULL, NULL, 'yearly', '2019-10-07', 4305, 5, 0, 0, 4386);
INSERT INTO "public"."dengue_data" VALUES (448, 5, 'Division', 'Barishal Division', NULL, NULL, 'yearly', '2019-10-07', 5855, 8, 3, 0, 5953);
INSERT INTO "public"."dengue_data" VALUES (449, 9, 'Division', 'Sylhet Division', NULL, NULL, 'yearly', '2019-10-07', 946, 1, 0, 0, 952);
INSERT INTO "public"."dengue_data" VALUES (450, 7, 'Division', 'Mymensingh Division', NULL, NULL, 'yearly', '2019-10-07', 2148, 4, 0, 0, 2182);
INSERT INTO "public"."dengue_data" VALUES (451, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', 'yearly', '2019-11-06', 8249, 40, 23, 11, 8364);
INSERT INTO "public"."dengue_data" VALUES (452, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', 'yearly', '2019-11-06', 4837, 2, 0, 0, 4870);
INSERT INTO "public"."dengue_data" VALUES (453, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', 'yearly', '2019-11-06', 1410, 16, 9, 8, 1431);
INSERT INTO "public"."dengue_data" VALUES (454, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', 'yearly', '2019-11-06', 3565, 7, 8, 5, 3597);
INSERT INTO "public"."dengue_data" VALUES (455, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', 'yearly', '2019-11-06', 1611, 3, 2, 2, 1622);
INSERT INTO "public"."dengue_data" VALUES (456, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', 'yearly', '2019-11-06', 1013, NULL, NULL, 0, 1016);
INSERT INTO "public"."dengue_data" VALUES (457, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', 'yearly', '2019-11-06', 3992, 15, 9, 4, 4043);
INSERT INTO "public"."dengue_data" VALUES (458, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', 'yearly', '2019-11-06', 348, NULL, NULL, 0, 349);
INSERT INTO "public"."dengue_data" VALUES (459, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', 'yearly', '2019-11-06', 1690, NULL, 0, 0, 1702);
INSERT INTO "public"."dengue_data" VALUES (460, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', 'yearly', '2019-11-06', 3016, 3, 2, 2, 3056);
INSERT INTO "public"."dengue_data" VALUES (461, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-11-06', 240, NULL, NULL, NULL, 241);
INSERT INTO "public"."dengue_data" VALUES (462, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-11-06', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (463, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', 'yearly', '2019-11-06', 1198, 3, 3, 1, 1203);
INSERT INTO "public"."dengue_data" VALUES (464, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', 'yearly', '2019-11-06', 1820, 11, 10, 8, 1839);
INSERT INTO "public"."dengue_data" VALUES (465, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', 'yearly', '2019-11-06', 652, 4, 4, 3, 659);
INSERT INTO "public"."dengue_data" VALUES (466, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', 'yearly', '2019-11-06', 738, 8, 7, 4, 749);
INSERT INTO "public"."dengue_data" VALUES (467, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', 'yearly', '2019-11-06', 878, 12, 12, 12, 900);
INSERT INTO "public"."dengue_data" VALUES (468, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', 'yearly', '2019-11-06', 94, NULL, NULL, 0, 94);
INSERT INTO "public"."dengue_data" VALUES (469, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', 'yearly', '2019-11-06', 266, 2, 2, 1, 268);
INSERT INTO "public"."dengue_data" VALUES (470, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', 'yearly', '2019-11-06', 366, 1, 2, 2, 371);
INSERT INTO "public"."dengue_data" VALUES (471, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', 'yearly', '2019-11-06', 207, 1, 1, 0, 208);
INSERT INTO "public"."dengue_data" VALUES (472, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', 'yearly', '2019-11-06', 1676, 2, 1, 1, 1682);
INSERT INTO "public"."dengue_data" VALUES (473, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', 'yearly', '2019-11-06', 221, NULL, NULL, 0, 221);
INSERT INTO "public"."dengue_data" VALUES (474, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', 'yearly', '2019-11-06', 140, 1, 1, 1, 141);
INSERT INTO "public"."dengue_data" VALUES (475, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', 'yearly', '2019-11-06', 671, 4, 4, 1, 675);
INSERT INTO "public"."dengue_data" VALUES (476, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', 'yearly', '2019-11-06', 1378, 6, 6, 4, 1391);
INSERT INTO "public"."dengue_data" VALUES (477, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', 'yearly', '2019-11-06', 750, 8, 8, 7, 765);
INSERT INTO "public"."dengue_data" VALUES (478, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', 'yearly', '2019-11-06', 367, NULL, NULL, 0, 368);
INSERT INTO "public"."dengue_data" VALUES (479, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', 'yearly', '2019-11-06', 477, NULL, NULL, 0, 478);
INSERT INTO "public"."dengue_data" VALUES (480, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', 'yearly', '2019-11-06', 827, NULL, NULL, 0, 827);
INSERT INTO "public"."dengue_data" VALUES (481, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', 'yearly', '2019-11-06', 784, 6, 5, 5, 794);
INSERT INTO "public"."dengue_data" VALUES (482, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', 'yearly', '2019-11-06', 974, NULL, NULL, 0, 976);
INSERT INTO "public"."dengue_data" VALUES (483, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', 'yearly', '2019-11-06', 476, 4, 4, 4, 481);
INSERT INTO "public"."dengue_data" VALUES (484, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', 'yearly', '2019-11-06', 300, 7, 7, 3, 308);
INSERT INTO "public"."dengue_data" VALUES (485, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', 'yearly', '2019-11-06', 704, 7, 6, 5, 717);
INSERT INTO "public"."dengue_data" VALUES (486, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', 'yearly', '2019-11-06', 355, 2, 2, 0, 358);
INSERT INTO "public"."dengue_data" VALUES (487, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', 'yearly', '2019-11-06', 831, 3, 2, 1, 840);
INSERT INTO "public"."dengue_data" VALUES (488, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', 'yearly', '2019-11-06', 779, 2, 2, 0, 783);
INSERT INTO "public"."dengue_data" VALUES (489, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', 'yearly', '2019-11-06', 772, NULL, NULL, 0, 772);
INSERT INTO "public"."dengue_data" VALUES (490, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', 'yearly', '2019-11-06', 300, NULL, NULL, 0, 301);
INSERT INTO "public"."dengue_data" VALUES (491, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', 'yearly', '2019-11-06', 391, 3, 3, 3, 395);
INSERT INTO "public"."dengue_data" VALUES (492, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', 'yearly', '2019-11-06', 0, 10, 6, 3, 10);
INSERT INTO "public"."dengue_data" VALUES (493, 2, 'Division', 'Dhaka Division', NULL, NULL, 'yearly', '2019-11-06', 11203, 13, 6, 4, 11292);
INSERT INTO "public"."dengue_data" VALUES (494, 3, 'Division', 'Chittagong Division', NULL, NULL, 'yearly', '2019-11-06', 7577, 5, 3, 0, 7708);
INSERT INTO "public"."dengue_data" VALUES (495, 6, 'Division', 'Khulna Division', NULL, NULL, 'yearly', '2019-11-06', 11185, 17, 9, 3, 11327);
INSERT INTO "public"."dengue_data" VALUES (496, 8, 'Division', 'Rangpur Division', NULL, NULL, 'yearly', '2019-11-06', 2108, 4, 3, 2, 2123);
INSERT INTO "public"."dengue_data" VALUES (497, 4, 'Division', 'Rajshahi Division', NULL, NULL, 'yearly', '2019-11-06', 4653, 5, 2, 0, 4686);
INSERT INTO "public"."dengue_data" VALUES (498, 5, 'Division', 'Barishal Division', NULL, NULL, 'yearly', '2019-11-06', 6736, 9, 4, 1, 6813);
INSERT INTO "public"."dengue_data" VALUES (499, 9, 'Division', 'Sylhet Division', NULL, NULL, 'yearly', '2019-11-06', 989, 1, 0, 0, 993);
INSERT INTO "public"."dengue_data" VALUES (500, 7, 'Division', 'Mymensingh Division', NULL, NULL, 'yearly', '2019-11-06', 2287, 4, 1, 1, 2311);
INSERT INTO "public"."dengue_data" VALUES (501, 27, 'District', 'Dhaka', NULL, NULL, 'yearly', '2019-12-31', 1504, 2, 2, 2, 1506);
INSERT INTO "public"."dengue_data" VALUES (502, 34, 'District', 'Munshiganj', NULL, NULL, 'yearly', '2019-12-31', 96, 0, 0, 0, 96);
INSERT INTO "public"."dengue_data" VALUES (503, 31, 'District', 'Kishorganj', NULL, NULL, 'yearly', '2019-12-31', 1300, 0, 0, 0, 1300);
INSERT INTO "public"."dengue_data" VALUES (504, 35, 'District', 'Narayanganj', NULL, NULL, 'yearly', '2019-12-31', 618, 1, 1, 0, 619);
INSERT INTO "public"."dengue_data" VALUES (505, 30, 'District', 'Gopalganj', NULL, NULL, 'yearly', '2019-12-31', 593, 0, 0, 0, 593);
INSERT INTO "public"."dengue_data" VALUES (506, 32, 'District', 'Madaripur', NULL, NULL, 'yearly', '2019-12-31', 723, 1, 1, 0, 724);
INSERT INTO "public"."dengue_data" VALUES (507, 33, 'District', 'Manikganj', NULL, NULL, 'yearly', '2019-12-31', 1836, 1, 1, 0, 1838);
INSERT INTO "public"."dengue_data" VALUES (508, 36, 'District', 'Narsingdi', NULL, NULL, 'yearly', '2019-12-31', 616, 0, 0, 0, 616);
INSERT INTO "public"."dengue_data" VALUES (509, 37, 'District', 'Rajbari', NULL, NULL, 'yearly', '2019-12-31', 474, 0, 0, 0, 474);
INSERT INTO "public"."dengue_data" VALUES (510, 38, 'District', 'Shariatpur', NULL, NULL, 'yearly', '2019-12-31', 686, 0, 0, 0, 686);
INSERT INTO "public"."dengue_data" VALUES (511, 39, 'District', 'Tangail', NULL, NULL, 'yearly', '2019-12-31', 864, 0, 0, 0, 864);
INSERT INTO "public"."dengue_data" VALUES (512, 28, 'District', 'Faridpur', NULL, NULL, 'yearly', '2019-12-31', 1133, 9, 9, 6, 1142);
INSERT INTO "public"."dengue_data" VALUES (513, 29, 'District', 'Gazipur', NULL, NULL, 'yearly', '2019-12-31', 753, 0, 0, 0, 753);
INSERT INTO "public"."dengue_data" VALUES (514, 50, 'District', 'Jamalpur', NULL, NULL, 'yearly', '2019-12-31', 445, 0, 0, 0, 445);
INSERT INTO "public"."dengue_data" VALUES (515, 53, 'District', 'Sherpur', NULL, NULL, 'yearly', '2019-12-31', 166, 0, 0, 0, 166);
INSERT INTO "public"."dengue_data" VALUES (516, 52, 'District', 'Netrokona', NULL, NULL, 'yearly', '2019-12-31', 103, 0, 0, 0, 103);
INSERT INTO "public"."dengue_data" VALUES (517, 51, 'District', 'Mymensingh', NULL, NULL, 'yearly', '2019-12-31', 1638, 5, 5, 2, 1644);
INSERT INTO "public"."dengue_data" VALUES (518, 22, 'District', 'Feni', NULL, NULL, 'yearly', '2019-12-31', 607, 0, 0, 0, 609);
INSERT INTO "public"."dengue_data" VALUES (519, 20, 'District', 'Comilla', NULL, NULL, 'yearly', '2019-12-31', 1263, 0, 0, 0, 1263);
INSERT INTO "public"."dengue_data" VALUES (520, 18, 'District', 'Chandpur', NULL, NULL, 'yearly', '2019-12-31', 1389, 0, 0, 0, 1389);
INSERT INTO "public"."dengue_data" VALUES (521, 17, 'District', 'Brahmanbaria', NULL, NULL, 'yearly', '2019-12-31', 458, 0, 0, 0, 458);
INSERT INTO "public"."dengue_data" VALUES (522, 25, 'District', 'Noakhali', NULL, NULL, 'yearly', '2019-12-31', 698, 1, 1, 0, 699);
INSERT INTO "public"."dengue_data" VALUES (523, 21, 'District', 'Cox''s Bazar', NULL, NULL, 'yearly', '2019-12-31', 376, 1, 1, 0, 378);
INSERT INTO "public"."dengue_data" VALUES (524, 24, 'District', 'Lakshmipur', NULL, NULL, 'yearly', '2019-12-31', 454, 0, 0, 0, 454);
INSERT INTO "public"."dengue_data" VALUES (525, 23, 'District', 'Khagrachari', NULL, NULL, 'yearly', '2019-12-31', 215, 0, 0, 0, 215);
INSERT INTO "public"."dengue_data" VALUES (526, 26, 'District', 'Rangamati', NULL, NULL, 'yearly', '2019-12-31', 101, 0, 0, 0, 101);
INSERT INTO "public"."dengue_data" VALUES (527, 16, 'District', 'Bandarban', NULL, NULL, 'yearly', '2019-12-31', 264, 0, 0, 0, 264);
INSERT INTO "public"."dengue_data" VALUES (528, 19, 'District', 'Chittagong', NULL, NULL, 'yearly', '2019-12-31', 1702, 1, 1, 1, 1706);
INSERT INTO "public"."dengue_data" VALUES (529, 45, 'District', 'Kushtia', NULL, NULL, 'yearly', '2019-12-31', 1570, 1, 1, 0, 1571);
INSERT INTO "public"."dengue_data" VALUES (530, 46, 'District', 'Magura', NULL, NULL, 'yearly', '2019-12-31', 576, 1, 1, 1, 577);
INSERT INTO "public"."dengue_data" VALUES (531, 48, 'District', 'Narail', NULL, NULL, 'yearly', '2019-12-31', 613, 0, 0, 0, 613);
INSERT INTO "public"."dengue_data" VALUES (532, 42, 'District', 'Jessore', NULL, NULL, 'yearly', '2019-12-31', 4063, 4, 4, 3, 4068);
INSERT INTO "public"."dengue_data" VALUES (533, 43, 'District', 'Jhenaidah', NULL, NULL, 'yearly', '2019-12-31', 759, 1, 1, 1, 760);
INSERT INTO "public"."dengue_data" VALUES (534, 40, 'District', 'Bagerhat', NULL, NULL, 'yearly', '2019-12-31', 350, 0, 0, 0, 350);
INSERT INTO "public"."dengue_data" VALUES (535, 38, 'District', 'Satkhira', NULL, NULL, 'yearly', '2019-12-31', 971, 0, 0, 0, 971);
INSERT INTO "public"."dengue_data" VALUES (536, 41, 'District', 'Chuadanga', NULL, NULL, 'yearly', '2019-12-31', 161, 1, 1, 0, 162);
INSERT INTO "public"."dengue_data" VALUES (537, 47, 'District', 'Meherpur', NULL, NULL, 'yearly', '2019-12-31', 255, 1, 1, 0, 256);
INSERT INTO "public"."dengue_data" VALUES (538, 44, 'District', 'Khulna', NULL, NULL, 'yearly', '2019-12-31', 1806, 11, 11, 8, 1817);
INSERT INTO "public"."dengue_data" VALUES (539, 54, 'District', 'Bogura', NULL, NULL, 'yearly', '2019-12-31', 1079, 0, 0, 0, 1079);
INSERT INTO "public"."dengue_data" VALUES (540, 58, 'District', 'Pabna', NULL, NULL, 'yearly', '2019-12-31', 766, 1, 1, 0, 767);
INSERT INTO "public"."dengue_data" VALUES (541, 60, 'District', 'Shirajganj', NULL, NULL, 'yearly', '2019-12-31', 1094, 0, 0, 0, 1094);
INSERT INTO "public"."dengue_data" VALUES (542, 56, 'District', 'Naogaon', NULL, NULL, 'yearly', '2019-12-31', 282, 1, 1, 0, 283);
INSERT INTO "public"."dengue_data" VALUES (543, 61, 'District', 'chapainawabganj', NULL, NULL, 'yearly', '2019-12-31', 379, 0, 0, 0, 379);
INSERT INTO "public"."dengue_data" VALUES (544, 57, 'District', 'Natore', NULL, NULL, 'yearly', '2019-12-31', 177, 0, 0, 0, 177);
INSERT INTO "public"."dengue_data" VALUES (545, 55, 'District', 'Jaipurhat', NULL, NULL, 'yearly', '2019-12-31', 113, 0, 0, 0, 113);
INSERT INTO "public"."dengue_data" VALUES (546, 59, 'District', 'Rajshahi', NULL, NULL, 'yearly', '2019-12-31', 919, 3, 2, 2, 922);
INSERT INTO "public"."dengue_data" VALUES (547, 65, 'District', 'Lalmonirhat', NULL, NULL, 'yearly', '2019-12-31', 119, 0, 0, 0, 119);
INSERT INTO "public"."dengue_data" VALUES (550, 66, 'District', 'Nilphamari', NULL, NULL, 'yearly', '2019-12-31', 209, 0, 0, 0, 209);
INSERT INTO "public"."dengue_data" VALUES (551, 62, 'District', 'Dinajpur', NULL, NULL, 'yearly', '2019-12-31', 293, 1, 1, 1, 294);
INSERT INTO "public"."dengue_data" VALUES (552, 67, 'District', 'Panchagarh', NULL, NULL, 'yearly', '2019-12-31', 51, 0, 0, 0, 51);
INSERT INTO "public"."dengue_data" VALUES (553, 69, 'District', 'Thakurgaon', NULL, NULL, 'yearly', '2019-12-31', 179, 0, 0, 0, 179);
INSERT INTO "public"."dengue_data" VALUES (554, 68, 'District', 'Rangpur', NULL, NULL, 'yearly', '2019-12-31', 785, 3, 3, 1, 788);
INSERT INTO "public"."dengue_data" VALUES (555, 14, 'District', 'Patuakhali', NULL, NULL, 'yearly', '2019-12-31', 718, 0, 0, 0, 718);
INSERT INTO "public"."dengue_data" VALUES (556, 11, 'District', 'Bhola', NULL, NULL, 'yearly', '2019-12-31', 752, 0, 0, 0, 752);
INSERT INTO "public"."dengue_data" VALUES (557, 15, 'District', 'Pirojpur', NULL, NULL, 'yearly', '2019-12-31', 1207, 0, 0, 0, 1207);
INSERT INTO "public"."dengue_data" VALUES (558, 13, 'District', 'Jhalokathi', NULL, NULL, 'yearly', '2019-12-31', 136, 0, 0, 0, 136);
INSERT INTO "public"."dengue_data" VALUES (559, 12, 'District', 'Barguna', NULL, NULL, 'yearly', '2019-12-31', 618, 1, 1, 0, 619);
INSERT INTO "public"."dengue_data" VALUES (560, 10, 'District', 'Barishal
', NULL, NULL, 'yearly', '2019-12-31', 3034, 9, 9, 5, 3044);
INSERT INTO "public"."dengue_data" VALUES (561, 72, 'District', 'Sunamganj', NULL, NULL, 'yearly', '2019-12-31', 47, 0, 0, 0, 47);
INSERT INTO "public"."dengue_data" VALUES (562, 70, 'District', 'Habiganj', NULL, NULL, 'yearly', '2019-12-31', 189, 0, 0, 0, 189);
INSERT INTO "public"."dengue_data" VALUES (563, 71, 'District', 'Moulvibazar', NULL, NULL, 'yearly', '2019-12-31', 114, 0, 0, 0, 114);
INSERT INTO "public"."dengue_data" VALUES (564, 73, 'District', 'Sylhet', NULL, NULL, 'yearly', '2019-12-31', 480, 0, 0, 0, 480);
INSERT INTO "public"."dengue_data" VALUES (565, 27, 'Hospital', 'Dhaka', 1, 'Dhaka Medical College Hospital', 'yearly', '2019-12-31', 8703, 40, 40, 22, 8746);
INSERT INTO "public"."dengue_data" VALUES (566, 27, 'Hospital', 'Dhaka', 2, 'SSMC Mitford Hospital, Dhaka', 'yearly', '2019-12-31', 5037, 2, 1, 0, 5048);
INSERT INTO "public"."dengue_data" VALUES (567, 27, 'Hospital', 'Dhaka', 3, 'Dhaka Shishu Hospital', 'yearly', '2019-12-31', 1454, 16, 16, 14, 1476);
INSERT INTO "public"."dengue_data" VALUES (568, 27, 'Hospital', 'Dhaka', 4, 'Shaheed Suhrawardy Medical College & Hospital', 'yearly', '2019-12-31', 3765, 8, 8, 5, 3779);
INSERT INTO "public"."dengue_data" VALUES (569, 27, 'Hospital', 'Dhaka', 5, 'BSMMU', 'yearly', '2019-12-31', 1670, 3, 3, 2, 1673);
INSERT INTO "public"."dengue_data" VALUES (570, 27, 'Hospital', 'Dhaka', 6, 'Police hospital, Rajarbagh', 'yearly', '2019-12-31', 1073, NULL, NULL, 0, 1073);
INSERT INTO "public"."dengue_data" VALUES (571, 27, 'Hospital', 'Dhaka', 7, 'Mugda Medical College and Hospital', 'yearly', '2019-12-31', 4196, 15, 15, 5, 4214);
INSERT INTO "public"."dengue_data" VALUES (572, 27, 'Hospital', 'Dhaka', 8, 'BGB Hospital, Pilkhana, Dhaka', 'yearly', '2019-12-31', 360, NULL, NULL, 0, 361);
INSERT INTO "public"."dengue_data" VALUES (573, 27, 'Hospital', 'Dhaka', 9, 'Combined Military Hospital', 'yearly', '2019-12-31', 1773, NULL, 0, 0, 1776);
INSERT INTO "public"."dengue_data" VALUES (574, 27, 'Hospital', 'Dhaka', 10, 'Kurmitola General Hospital', 'yearly', '2019-12-31', 3229, 3, 3, 3, 3233);
INSERT INTO "public"."dengue_data" VALUES (575, 27, 'Hospital', 'Dhaka', 11, 'Kuwait Bangladesh Friendship Government Hospital', 'yearly', '2019-12-31', 252, NULL, NULL, NULL, 252);
INSERT INTO "public"."dengue_data" VALUES (576, 27, 'Hospital', 'Dhaka', 12, 'NITOR', 'yearly', '2019-12-31', 75, NULL, NULL, NULL, 75);
INSERT INTO "public"."dengue_data" VALUES (577, 27, 'Hospital', 'Dhaka', 13, 'Bangladesh Medical College Hospital', 'yearly', '2019-12-31', 1213, 3, 3, 1, 1216);
INSERT INTO "public"."dengue_data" VALUES (578, 27, 'Hospital', 'Dhaka', 14, 'Holy Family Red Crescent Hospital', 'yearly', '2019-12-31', 1885, 12, 12, 10, 1897);
INSERT INTO "public"."dengue_data" VALUES (579, 27, 'Hospital', 'Dhaka', 15, 'BIRDEM', 'yearly', '2019-12-31', 666, 4, 4, 3, 670);
INSERT INTO "public"."dengue_data" VALUES (580, 27, 'Hospital', 'Dhaka', 16, 'Ibn Sina Hospital', 'yearly', '2019-12-31', 758, 8, 8, 4, 766);
INSERT INTO "public"."dengue_data" VALUES (581, 27, 'Hospital', 'Dhaka', 17, 'Square Hospital', 'yearly', '2019-12-31', 916, 12, 12, 12, 929);
INSERT INTO "public"."dengue_data" VALUES (582, 27, 'Hospital', 'Dhaka', 18, 'Comfort nursing', 'yearly', '2019-12-31', 94, NULL, NULL, 0, 94);
INSERT INTO "public"."dengue_data" VALUES (583, 27, 'Hospital', 'Dhaka', 19, 'Samorita Hospital', 'yearly', '2019-12-31', 266, 2, 2, 1, 268);
INSERT INTO "public"."dengue_data" VALUES (584, 27, 'Hospital', 'Dhaka', 20, 'Delta Medical College', 'yearly', '2019-12-31', 388, 1, 2, 2, 389);
INSERT INTO "public"."dengue_data" VALUES (585, 27, 'Hospital', 'Dhaka', 21, 'Lab Aid Hospital', 'yearly', '2019-12-31', 209, 1, 1, 0, 210);
INSERT INTO "public"."dengue_data" VALUES (586, 27, 'Hospital', 'Dhaka', 22, 'Central Hospital', 'yearly', '2019-12-31', 1743, 2, 2, 1, 1746);
INSERT INTO "public"."dengue_data" VALUES (587, 27, 'Hospital', 'Dhaka', 23, 'High Care Hospital Limited', 'yearly', '2019-12-31', 221, NULL, NULL, 0, 221);
INSERT INTO "public"."dengue_data" VALUES (588, 27, 'Hospital', 'Dhaka', 24, 'Health and Hope Hospital', 'yearly', '2019-12-31', 147, 1, 1, 1, 148);
INSERT INTO "public"."dengue_data" VALUES (589, 27, 'Hospital', 'Dhaka', 25, 'Green Life Medical Hospital', 'yearly', '2019-12-31', 689, 4, 4, 1, 694);
INSERT INTO "public"."dengue_data" VALUES (590, 27, 'Hospital', 'Dhaka', 26, 'Islami Bank Central Hospital', 'yearly', '2019-12-31', 1429, 6, 6, 4, 1436);
INSERT INTO "public"."dengue_data" VALUES (591, 27, 'Hospital', 'Dhaka', 27, 'United Hospital Limited', 'yearly', '2019-12-31', 769, 9, 9, 8, 779);
INSERT INTO "public"."dengue_data" VALUES (592, 27, 'Hospital', 'Dhaka', 28, 'khidma hospital', 'yearly', '2019-12-31', 378, NULL, NULL, 0, 378);
INSERT INTO "public"."dengue_data" VALUES (593, 27, 'Hospital', 'Dhaka', 29, 'Shaheed Mansur Ali Medical College Hospital', 'yearly', '2019-12-31', 489, NULL, NULL, 0, 489);
INSERT INTO "public"."dengue_data" VALUES (594, 27, 'Hospital', 'Dhaka', 30, 'Sirajul Islam Medical College Hospital', 'yearly', '2019-12-31', 828, NULL, NULL, 0, 828);
INSERT INTO "public"."dengue_data" VALUES (595, 27, 'Hospital', 'Dhaka', 31, 'Apollo hospital', 'yearly', '2019-12-31', 818, 6, 6, 6, 824);
INSERT INTO "public"."dengue_data" VALUES (596, 27, 'Hospital', 'Dhaka', 32, 'Ad-Din Medical College Hospital', 'yearly', '2019-12-31', 1000, NULL, NULL, 0, 1000);
INSERT INTO "public"."dengue_data" VALUES (597, 27, 'Hospital', 'Dhaka', 33, 'Universal Medical College and Hospital', 'yearly', '2019-12-31', 501, 4, 4, 4, 505);
INSERT INTO "public"."dengue_data" VALUES (598, 27, 'Hospital', 'Dhaka', 34, 'BRB Hospital Ltd', 'yearly', '2019-12-31', 305, 7, 7, 3, 312);
INSERT INTO "public"."dengue_data" VALUES (599, 27, 'Hospital', 'Dhaka', 35, 'Asghar Ali Hospital', 'yearly', '2019-12-31', 740, 7, 7, 6, 747);
INSERT INTO "public"."dengue_data" VALUES (600, 27, 'Hospital', 'Dhaka', 36, 'Bangladesh Specialized Hospital', 'yearly', '2019-12-31', 362, 2, 2, 0, 364);
INSERT INTO "public"."dengue_data" VALUES (601, 27, 'Hospital', 'Dhaka', 37, 'Uttara Modern Medical College Hospital', 'yearly', '2019-12-31', 876, 3, 3, 2, 879);
INSERT INTO "public"."dengue_data" VALUES (602, 27, 'Hospital', 'Dhaka', 38, 'Salahuddin Hospital', 'yearly', '2019-12-31', 800, 2, 2, 0, 802);
INSERT INTO "public"."dengue_data" VALUES (603, 27, 'Hospital', 'Dhaka', 39, 'Popular Medical College Hospital', 'yearly', '2019-12-31', 781, NULL, NULL, 0, 783);
INSERT INTO "public"."dengue_data" VALUES (604, 27, 'Hospital', 'Dhaka', 40, 'Uttara Crescent Hospital', 'yearly', '2019-12-31', 314, NULL, NULL, 0, 314);
INSERT INTO "public"."dengue_data" VALUES (605, 27, 'Hospital', 'Dhaka', 41, 'Anwar Khan Modern Medical College Hospital', 'yearly', '2019-12-31', 403, 3, 3, 3, 406);
INSERT INTO "public"."dengue_data" VALUES (606, 27, 'Hospital', 'Dhaka', 42, 'Other private clinic / hospitals', 'yearly', '2019-12-31', 0, 10, 8, 4, 10);
INSERT INTO "public"."dengue_data" VALUES (607, 2, 'Division', 'Dhaka Division', NULL, NULL, 'yearly', '2019-12-31', 11728, 14, 14, 8, 11743);
INSERT INTO "public"."dengue_data" VALUES (608, 3, 'Division', 'Chittagong Division', NULL, NULL, 'yearly', '2019-12-31', 8345, 7, 7, 2, 8359);
INSERT INTO "public"."dengue_data" VALUES (609, 6, 'Division', 'Khulna Division', NULL, NULL, 'yearly', '2019-12-31', 11949, 24, 24, 15, 11975);
INSERT INTO "public"."dengue_data" VALUES (610, 8, 'Division', 'Rangpur Division', NULL, NULL, 'yearly', '2019-12-31', 2171, 4, 4, 2, 2175);
INSERT INTO "public"."dengue_data" VALUES (611, 4, 'Division', 'Rajshahi Division', NULL, NULL, 'yearly', '2019-12-31', 4809, 5, 4, 2, 4814);
INSERT INTO "public"."dengue_data" VALUES (612, 5, 'Division', 'Barishal Division', NULL, NULL, 'yearly', '2019-12-31', 7075, 10, 10, 5, 7086);
INSERT INTO "public"."dengue_data" VALUES (613, 9, 'Division', 'Sylhet Division', NULL, NULL, 'yearly', '2019-12-31', 1010, 1, 1, 1, 1011);
INSERT INTO "public"."dengue_data" VALUES (614, 7, 'Division', 'Mymensingh Division', NULL, NULL, 'yearly', '2019-12-31', 2375, 5, 5, 2, 2381);

-- ----------------------------
-- Table structure for economic
-- ----------------------------
DROP TABLE IF EXISTS "public"."economic";
CREATE TABLE "public"."economic" (
  "id" int4 NOT NULL,
  "region_id" int4 NOT NULL,
  "date" timestamp(6),
  "gdp" float4,
  "unemployement_rate" float4,
  "population_below_poverty_line" int4,
  "per_capita_income" float4,
  "epidemic_id" int4
)
;

-- ----------------------------
-- Table structure for environmental
-- ----------------------------
DROP TABLE IF EXISTS "public"."environmental";
CREATE TABLE "public"."environmental" (
  "id" int4 NOT NULL,
  "region_id" int4 NOT NULL,
  "date" timestamp(6),
  "temp" numeric(6,3),
  "air_pollution_index" int4,
  "water_pollution_index" float4,
  "epidemic_id" int4
)
;

-- ----------------------------
-- Table structure for epidemic
-- ----------------------------
DROP TABLE IF EXISTS "public"."epidemic";
CREATE TABLE "public"."epidemic" (
  "id" int4 NOT NULL,
  "name" varchar(200) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of epidemic
-- ----------------------------
INSERT INTO "public"."epidemic" VALUES (1, 'corona');
INSERT INTO "public"."epidemic" VALUES (2, 'dengue');

-- ----------------------------
-- Table structure for hospitals
-- ----------------------------
DROP TABLE IF EXISTS "public"."hospitals";
CREATE TABLE "public"."hospitals" (
  "hosp_id" int4 NOT NULL,
  "region_id" int4,
  "name" varchar(100) COLLATE "pg_catalog"."default" NOT NULL,
  "type" varchar(100) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of hospitals
-- ----------------------------
INSERT INTO "public"."hospitals" VALUES (1, 27, 'Dhaka Medical College Hospital', '1');
INSERT INTO "public"."hospitals" VALUES (2, 27, 'SSMC Mitford Hospital, Dhaka', '1');
INSERT INTO "public"."hospitals" VALUES (3, 27, 'Dhaka Shishu Hospital', '1');
INSERT INTO "public"."hospitals" VALUES (4, 27, 'Shaheed Suhrawardy Medical College & Hospital', '1');
INSERT INTO "public"."hospitals" VALUES (5, 27, 'BSMMU', '1');
INSERT INTO "public"."hospitals" VALUES (6, 27, 'Police hospital, Rajarbagh', '1');
INSERT INTO "public"."hospitals" VALUES (7, 27, 'Mugda Medical College and Hospital', '1');
INSERT INTO "public"."hospitals" VALUES (8, 27, 'BGB Hospital, Pilkhana, Dhaka', '1');
INSERT INTO "public"."hospitals" VALUES (9, 27, 'Combined Military Hospital', '1');
INSERT INTO "public"."hospitals" VALUES (10, 27, 'Kurmitola General Hospital', '1');
INSERT INTO "public"."hospitals" VALUES (11, 27, 'Kuwait Bangladesh Friendship Government Hospital', '1');
INSERT INTO "public"."hospitals" VALUES (12, 27, 'NITOR', '1');
INSERT INTO "public"."hospitals" VALUES (13, 27, 'Bangladesh Medical College Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (14, 27, 'Holy Family Red Crescent Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (15, 27, 'BIRDEM', '2');
INSERT INTO "public"."hospitals" VALUES (16, 27, 'Ibn Sina Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (17, 27, 'Square Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (18, 27, 'Comfort nursing', '2');
INSERT INTO "public"."hospitals" VALUES (19, 27, 'Samorita Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (20, 27, 'Delta Medical College', '2');
INSERT INTO "public"."hospitals" VALUES (21, 27, 'Lab Aid Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (22, 27, 'Central Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (23, 27, 'High Care Hospital Limited', '2');
INSERT INTO "public"."hospitals" VALUES (24, 27, 'Health and Hope Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (25, 27, 'Green Life Medical Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (26, 27, 'Islami Bank Central Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (27, 27, 'United Hospital Limited', '2');
INSERT INTO "public"."hospitals" VALUES (28, 27, 'khidma hospital', '2');
INSERT INTO "public"."hospitals" VALUES (29, 27, 'Shaheed Mansur Ali Medical College Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (30, 27, 'Sirajul Islam Medical College Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (31, 27, 'Apollo hospital', '2');
INSERT INTO "public"."hospitals" VALUES (32, 27, 'Ad-Din Medical College Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (33, 27, 'Universal Medical College and Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (34, 27, 'BRB Hospital Ltd', '2');
INSERT INTO "public"."hospitals" VALUES (35, 27, 'Asghar Ali Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (36, 27, 'Bangladesh Specialized Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (37, 27, 'Uttara Modern Medical College Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (38, 27, 'Salahuddin Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (39, 27, 'Popular Medical College Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (40, 27, 'Uttara Crescent Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (41, 27, 'Anwar Khan Modern Medical College Hospital', '2');
INSERT INTO "public"."hospitals" VALUES (42, 27, 'Other private clinic / hospitals', '2');

-- ----------------------------
-- Table structure for liveupdate
-- ----------------------------
DROP TABLE IF EXISTS "public"."liveupdate";
CREATE TABLE "public"."liveupdate" (
  "id" int4 NOT NULL,
  "region_id" int4 NOT NULL,
  "affected" int4,
  "recovered" int4,
  "dead" int4,
  "date" timestamp(6) NOT NULL,
  "newly_affected" int4,
  "newly_recovered" int4,
  "newly_dead" int4,
  "epidemic_id" int4
)
;

-- ----------------------------
-- Records of liveupdate
-- ----------------------------
INSERT INTO "public"."liveupdate" VALUES (1, 121354, 53, 36, 47, '2019-12-05 03:54:45', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (2, 121416, 96, 62, 9, '2020-01-04 20:31:06', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (3, 121342, 36, 18, 20, '2020-01-22 23:58:59', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (4, 121276, 18, 61, 73, '2019-04-28 20:41:21', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (5, 121350, 46, 31, 9, '2019-10-27 10:26:18', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (6, 121496, 20, 10, 91, '2019-07-18 07:35:04', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (7, 121342, 72, 81, 78, '2019-05-25 19:25:27', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (8, 121274, 6, 69, 31, '2019-10-03 10:09:20', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (9, 121386, 75, 93, 35, '2019-12-04 10:58:45', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (10, 121314, 8, 24, 80, '2019-06-20 08:24:32', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (11, 121369, 73, 50, 99, '2019-12-01 18:07:38', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (12, 121430, 67, 14, 13, '2019-04-23 02:44:31', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (13, 121314, 99, 8, 38, '2019-06-08 19:10:15', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (14, 121348, 10, 39, 12, '2019-11-10 18:13:16', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (15, 121271, 45, 58, 32, '2020-01-28 10:35:19', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (16, 121268, 53, 34, 40, '2020-02-23 06:15:40', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (17, 121446, 92, 74, 86, '2019-08-23 01:37:27', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (18, 121418, 5, 16, 26, '2019-04-14 17:35:23', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (19, 121349, 19, 18, 9, '2020-03-01 02:31:16', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (20, 121329, 97, 39, 48, '2019-03-31 18:28:26', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (21, 121483, 45, 69, 95, '2019-11-24 13:45:32', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (22, 121352, 24, 45, 95, '2019-05-15 11:54:50', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (23, 121424, 43, 88, 76, '2019-04-16 01:28:11', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (24, 121316, 67, 31, 51, '2019-12-14 17:00:12', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (25, 121264, 29, 45, 22, '2019-08-06 16:37:40', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (26, 121316, 89, 51, 39, '2019-09-22 22:12:53', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (27, 121434, 74, 26, 72, '2019-06-01 14:25:17', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (28, 121332, 14, 20, 72, '2019-05-19 23:57:10', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (29, 121486, 69, 35, 41, '2019-07-23 12:41:53', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (30, 121300, 57, 56, 36, '2019-04-07 23:11:21', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (31, 121259, 44, 15, 21, '2019-10-31 01:36:34', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (32, 121406, 27, 34, 51, '2019-05-13 13:15:35', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (33, 121315, 90, 21, 87, '2019-11-09 23:59:13', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (34, 121409, 78, 5, 84, '2019-04-28 15:59:30', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (35, 121263, 100, 69, 57, '2019-11-06 00:02:18', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (36, 121314, 34, 27, 100, '2020-01-25 21:47:54', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (37, 121360, 73, 77, 45, '2019-10-10 18:12:31', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (38, 121313, 68, 96, 73, '2019-08-27 04:34:50', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (39, 121464, 57, 47, 75, '2019-07-31 21:00:59', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (40, 121360, 57, 47, 17, '2020-02-28 19:00:30', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (41, 121456, 81, 16, 62, '2019-10-28 13:05:55', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (42, 121383, 73, 68, 12, '2020-03-10 16:19:07', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (43, 121275, 17, 98, 69, '2019-11-07 09:43:27', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (44, 121422, 60, 75, 56, '2019-11-08 00:44:14', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (45, 121470, 85, 72, 47, '2020-01-21 07:18:24', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (46, 121330, 12, 80, 93, '2019-07-19 03:30:41', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (47, 121356, 93, 73, 20, '2019-05-10 00:17:38', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (48, 121421, 99, 62, 11, '2019-09-12 00:08:50', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (49, 121296, 31, 43, 48, '2020-03-11 09:22:53', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (50, 121369, 26, 35, 1, '2019-10-19 22:42:55', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (51, 121456, 74, 91, 85, '2019-09-08 23:59:28', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (52, 121472, 50, 32, 63, '2020-01-12 08:22:39', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (53, 121400, 40, 71, 98, '2019-05-20 15:08:41', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (54, 121447, 58, 46, 27, '2019-12-12 00:55:18', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (55, 121413, 91, 29, 61, '2019-11-02 10:19:22', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (56, 121304, 87, 14, 24, '2019-12-24 16:22:34', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (57, 121314, 80, 4, 93, '2020-02-25 16:41:34', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (58, 121269, 97, 86, 24, '2020-01-29 11:54:20', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (59, 121369, 5, 64, 58, '2020-01-18 22:11:22', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (60, 121478, 81, 30, 22, '2019-12-30 22:43:15', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (61, 121303, 80, 71, 89, '2020-03-21 14:22:47', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (62, 121362, 28, 48, 25, '2019-12-18 20:25:27', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (63, 121422, 51, 74, 69, '2020-02-26 08:55:52', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (64, 121489, 29, 96, 35, '2019-06-24 19:46:06', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (65, 121388, 68, 8, 86, '2019-05-01 11:35:26', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (66, 121346, 75, 51, 91, '2019-10-30 23:16:50', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (67, 121464, 74, 95, 86, '2019-06-06 04:05:28', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (68, 121266, 19, 97, 56, '2020-01-31 03:28:08', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (69, 121291, 55, 57, 50, '2019-08-16 12:24:10', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (70, 121312, 70, 6, 66, '2020-02-03 16:35:24', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (71, 121256, 39, 58, 2, '2020-03-01 22:26:31', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (72, 121434, 98, 30, 6, '2019-06-20 23:25:21', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (73, 121411, 41, 14, 53, '2019-08-13 03:29:06', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (74, 121453, 27, 84, 63, '2020-02-25 21:24:12', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (75, 121255, 69, 58, 76, '2019-06-20 09:04:04', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (76, 121425, 23, 27, 61, '2019-10-16 06:28:52', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (77, 121331, 95, 76, 68, '2020-03-07 22:50:27', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (78, 121354, 78, 69, 97, '2019-05-29 10:12:15', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (79, 121297, 63, 34, 100, '2019-07-13 22:43:22', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (80, 121458, 57, 17, 3, '2020-03-26 13:26:00', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (81, 121487, 44, 56, 98, '2019-04-11 22:29:08', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (82, 121402, 98, 23, 46, '2019-09-22 11:20:49', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (83, 121360, 42, 83, 4, '2019-11-30 07:18:03', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (84, 121294, 30, 74, 100, '2019-12-22 13:59:49', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (85, 121316, 53, 75, 30, '2019-05-13 21:52:28', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (86, 121433, 84, 99, 75, '2019-11-11 23:11:03', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (87, 121413, 56, 17, 39, '2019-07-27 22:40:01', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (88, 121336, 28, 98, 26, '2020-03-17 06:28:42', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (89, 121420, 54, 90, 63, '2019-08-26 01:34:22', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (90, 121345, 88, 80, 54, '2019-10-23 11:42:27', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (91, 121307, 49, 12, 74, '2019-11-13 12:37:32', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (92, 121257, 38, 1, 7, '2019-10-20 15:29:04', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (93, 121487, 3, 46, 35, '2019-06-13 14:39:24', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (94, 121381, 89, 79, 23, '2020-01-02 13:08:04', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (95, 121318, 6, 1, 22, '2019-06-02 18:43:39', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (96, 121475, 27, 57, 61, '2020-03-18 07:45:09', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (97, 121366, 83, 60, 19, '2019-07-10 03:50:43', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (98, 121458, 47, 86, 20, '2019-07-31 01:37:24', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (99, 121442, 61, 26, 31, '2019-05-23 05:18:48', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (100, 121272, 64, 62, 25, '2019-10-16 07:39:50', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (101, 121456, 17, 31, 27, '2019-11-30 12:20:56', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (102, 121284, 33, 34, 71, '2019-08-23 19:20:07', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (103, 121482, 86, 11, 13, '2019-11-18 18:03:15', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (104, 121473, 1, 34, 5, '2019-03-30 09:45:27', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (105, 121310, 43, 54, 13, '2019-07-16 08:36:52', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (106, 121490, 88, 83, 64, '2019-10-06 20:20:50', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (107, 121487, 14, 100, 88, '2019-07-03 17:20:04', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (108, 121309, 18, 76, 37, '2019-09-03 23:49:07', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (109, 121370, 31, 18, 51, '2020-01-21 20:47:56', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (110, 121381, 81, 51, 95, '2019-05-16 05:11:07', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (111, 121483, 63, 56, 49, '2019-06-20 11:12:21', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (112, 121268, 26, 35, 36, '2019-05-06 14:23:14', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (113, 121255, 12, 28, 15, '2019-09-01 09:09:57', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (114, 121426, 16, 62, 13, '2020-01-10 07:42:04', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (115, 121424, 92, 71, 54, '2019-12-17 01:47:17', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (116, 121419, 81, 13, 63, '2020-01-28 19:06:00', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (117, 121332, 75, 24, 50, '2019-05-22 16:48:26', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (118, 121441, 27, 26, 62, '2019-04-01 03:56:14', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (119, 121417, 56, 15, 91, '2019-10-09 08:48:38', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (120, 121329, 43, 71, 40, '2020-03-24 11:43:33', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (121, 121338, 88, 42, 89, '2019-09-13 23:53:08', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (122, 121484, 63, 45, 68, '2019-12-17 02:14:29', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (123, 121348, 38, 93, 6, '2020-01-16 14:21:49', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (124, 121335, 17, 37, 82, '2019-12-22 11:42:39', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (125, 121408, 93, 60, 10, '2019-07-05 00:03:24', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (126, 121251, 2, 40, 45, '2019-05-05 21:05:31', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (127, 121489, 91, 60, 4, '2019-04-13 06:38:57', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (128, 121348, 24, 35, 36, '2019-04-02 05:58:38', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (129, 121272, 7, 58, 38, '2020-02-01 07:15:30', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (130, 121384, 12, 72, 52, '2019-11-12 17:06:38', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (131, 121496, 31, 96, 65, '2020-02-05 11:29:12', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (132, 121363, 3, 52, 6, '2019-08-18 23:13:45', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (133, 121263, 53, 53, 24, '2019-06-13 17:26:51', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (134, 121324, 81, 3, 55, '2019-07-29 11:16:32', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (135, 121343, 32, 39, 33, '2020-02-10 13:39:24', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (136, 121326, 40, 2, 54, '2019-03-31 10:44:55', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (137, 121500, 99, 19, 27, '2019-06-03 09:32:54', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (138, 121479, 100, 79, 88, '2019-04-09 00:37:58', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (139, 121424, 27, 90, 21, '2019-07-30 16:12:26', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (140, 121424, 64, 72, 79, '2019-09-20 15:28:25', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (141, 121430, 27, 19, 28, '2019-12-20 11:57:19', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (142, 121463, 83, 67, 16, '2019-05-03 16:06:47', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (143, 121277, 78, 54, 97, '2019-05-06 18:10:59', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (144, 121347, 95, 40, 82, '2019-08-07 18:28:08', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (145, 121457, 67, 32, 37, '2019-06-03 19:00:44', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (146, 121330, 65, 62, 100, '2020-03-13 08:45:00', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (147, 121367, 79, 64, 26, '2019-10-18 22:51:54', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (148, 121434, 73, 37, 36, '2020-02-11 20:50:35', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (149, 121315, 28, 82, 7, '2019-11-21 21:24:34', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (150, 121470, 60, 100, 54, '2019-11-09 06:59:32', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (151, 121409, 25, 31, 64, '2019-04-03 22:05:18', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (152, 121343, 11, 14, 85, '2019-12-07 09:30:10', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (153, 121463, 3, 81, 32, '2019-05-07 00:09:38', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (154, 121340, 38, 21, 95, '2019-04-09 13:52:13', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (155, 121465, 41, 78, 20, '2019-05-05 17:54:25', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (156, 121274, 55, 4, 79, '2019-07-25 15:57:36', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (157, 121436, 74, 43, 63, '2020-03-24 11:56:59', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (158, 121487, 55, 49, 93, '2019-04-14 08:06:39', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (159, 121338, 4, 27, 82, '2019-07-21 05:35:06', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (160, 121321, 7, 96, 39, '2020-02-27 07:23:31', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (161, 121306, 74, 31, 17, '2020-03-20 04:02:15', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (162, 121400, 85, 14, 63, '2019-08-28 15:14:38', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (163, 121436, 73, 90, 71, '2019-08-01 16:41:37', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (164, 121255, 65, 86, 34, '2019-08-30 02:43:24', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (165, 121439, 15, 6, 14, '2019-11-20 06:07:00', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (166, 121372, 73, 31, 13, '2020-01-09 20:42:31', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (167, 121312, 53, 42, 82, '2019-07-29 08:56:46', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (168, 121466, 82, 80, 49, '2019-06-23 01:51:44', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (169, 121469, 14, 63, 33, '2019-11-19 21:53:39', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (170, 121469, 99, 42, 25, '2019-11-17 18:28:43', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (171, 121310, 38, 79, 60, '2020-01-06 13:09:06', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (172, 121356, 70, 31, 70, '2019-10-27 07:35:58', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (173, 121416, 80, 75, 12, '2019-10-31 05:05:35', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (174, 121337, 86, 1, 70, '2019-10-06 21:34:04', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (175, 121451, 67, 9, 98, '2019-05-18 23:57:06', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (176, 121463, 24, 94, 61, '2019-07-22 12:37:00', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (177, 121379, 17, 25, 11, '2019-05-31 17:09:24', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (178, 121449, 61, 58, 98, '2020-03-13 21:20:00', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (179, 121333, 73, 44, 16, '2019-05-29 05:08:28', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (180, 121414, 75, 13, 92, '2019-09-04 01:54:35', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (181, 121391, 64, 5, 6, '2020-02-23 04:37:00', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (182, 121356, 64, 28, 42, '2020-03-04 04:47:27', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (183, 121381, 91, 29, 2, '2019-11-13 16:38:44', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (184, 121347, 89, 30, 51, '2019-03-29 14:51:25', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (185, 121381, 87, 27, 2, '2019-06-02 15:20:11', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (186, 121332, 71, 69, 37, '2020-03-11 13:06:04', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (187, 121264, 18, 42, 52, '2020-02-07 03:39:09', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (188, 121416, 68, 17, 39, '2019-05-25 20:50:28', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (189, 121390, 27, 40, 81, '2019-09-16 07:02:43', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (190, 121309, 85, 28, 3, '2019-07-08 02:25:30', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (191, 121337, 12, 70, 36, '2019-05-12 20:07:38', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (192, 121426, 78, 94, 33, '2020-01-01 16:30:40', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (193, 121367, 78, 85, 100, '2020-03-03 18:51:36', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (194, 121275, 55, 22, 3, '2019-07-24 13:11:32', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (195, 121280, 33, 45, 84, '2019-08-14 21:30:33', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (196, 121418, 67, 49, 47, '2020-01-07 21:18:00', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (197, 121465, 100, 49, 70, '2019-11-04 15:03:36', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (198, 121348, 78, 75, 79, '2019-04-25 12:33:30', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (199, 121418, 14, 40, 53, '2019-07-27 17:40:37', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (200, 121498, 91, 46, 61, '2019-06-06 01:51:13', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (201, 121358, 72, 21, 20, '2019-10-16 09:49:25', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (202, 121426, 36, 44, 1, '2019-07-14 18:55:11', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (203, 121343, 71, 47, 6, '2020-03-09 08:56:24', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (204, 121287, 76, 3, 20, '2019-05-19 03:53:23', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (205, 121379, 68, 25, 52, '2020-03-07 15:18:47', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (206, 121394, 42, 78, 16, '2019-09-17 20:26:09', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (207, 121382, 76, 6, 13, '2019-12-15 02:44:25', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (208, 121308, 33, 59, 70, '2019-04-13 07:44:41', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (209, 121473, 11, 62, 5, '2019-10-23 12:12:51', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (210, 121409, 41, 46, 33, '2020-03-23 14:27:14', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (211, 121481, 42, 64, 65, '2019-12-02 20:29:30', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (212, 121339, 35, 53, 90, '2019-06-22 00:37:51', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (213, 121292, 1, 35, 39, '2019-12-18 06:13:44', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (214, 121473, 31, 48, 45, '2020-01-21 19:22:29', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (215, 121370, 24, 71, 7, '2020-02-20 15:04:45', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (216, 121393, 7, 90, 88, '2019-05-11 19:48:07', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (217, 121385, 32, 11, 61, '2020-03-03 11:08:56', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (218, 121331, 72, 42, 45, '2019-07-09 04:55:30', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (219, 121315, 50, 67, 46, '2019-11-08 06:37:53', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (220, 121461, 6, 87, 11, '2019-11-10 18:53:27', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (221, 121328, 37, 24, 24, '2019-10-05 03:49:13', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (222, 121302, 51, 74, 46, '2019-08-08 00:47:00', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (223, 121379, 52, 7, 35, '2019-07-14 12:23:42', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (224, 121252, 27, 43, 89, '2019-12-05 10:39:19', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (225, 121252, 85, 96, 83, '2020-02-03 18:20:32', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (226, 121321, 49, 1, 25, '2019-08-26 11:33:42', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (227, 121396, 76, 100, 3, '2019-06-10 09:17:48', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (228, 121458, 19, 85, 61, '2019-07-29 14:42:02', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (229, 121488, 98, 23, 91, '2019-12-19 02:01:28', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (230, 121475, 82, 55, 20, '2019-11-17 18:38:10', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (231, 121258, 58, 11, 83, '2019-09-26 16:49:52', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (232, 121429, 78, 78, 44, '2020-02-07 19:38:17', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (233, 121284, 12, 32, 97, '2019-08-15 23:40:07', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (234, 121391, 39, 38, 50, '2019-10-14 18:57:48', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (235, 121304, 45, 52, 91, '2019-08-16 17:20:24', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (236, 121363, 9, 69, 17, '2019-12-15 19:12:10', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (237, 121447, 83, 71, 16, '2019-07-25 05:46:35', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (238, 121388, 11, 46, 55, '2019-09-27 22:32:56', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (239, 121380, 71, 86, 36, '2019-09-14 14:58:33', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (240, 121365, 66, 9, 14, '2019-05-20 22:28:41', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (241, 121427, 30, 40, 63, '2019-08-07 21:32:45', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (242, 121268, 97, 71, 23, '2019-06-15 00:29:28', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (243, 121349, 18, 40, 66, '2019-08-12 01:36:27', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (244, 121405, 86, 61, 69, '2019-04-25 23:58:00', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (245, 121344, 87, 74, 55, '2019-07-11 22:39:19', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (246, 121344, 46, 58, 61, '2019-05-15 07:33:38', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (247, 121268, 99, 32, 46, '2019-06-09 11:04:57', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (248, 121285, 51, 21, 23, '2020-03-18 12:12:37', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (249, 121400, 43, 34, 37, '2019-06-15 16:54:36', NULL, NULL, NULL, 1);
INSERT INTO "public"."liveupdate" VALUES (250, 121352, 21, 50, 71, '2019-11-29 02:53:15', NULL, NULL, NULL, 1);

-- ----------------------------
-- Table structure for medical
-- ----------------------------
DROP TABLE IF EXISTS "public"."medical";
CREATE TABLE "public"."medical" (
  "id" int4 NOT NULL,
  "region_id" int4,
  "date" timestamp(6),
  "no_of_doctors" int4,
  "no_of_health_workers" int4,
  "no_of_hospitals" int4,
  "no_of_beds_in_hospitals" int4,
  "no_of_icu" int4,
  "epidemic_id" int4
)
;

-- ----------------------------
-- Table structure for regions
-- ----------------------------
DROP TABLE IF EXISTS "public"."regions";
CREATE TABLE "public"."regions" (
  "id" int4 NOT NULL,
  "name" varchar(200) COLLATE "pg_catalog"."default" NOT NULL,
  "area" int4,
  "population" int4,
  "latitude" numeric(10,8),
  "longitude" numeric(11,8),
  "division_value" int4 NOT NULL,
  "super_region_id" int4
)
;

-- ----------------------------
-- Records of regions
-- ----------------------------
INSERT INTO "public"."regions" VALUES (1, 'World', 127343220, 777480797, 21.42248700, 39.82620600, 1, NULL);
INSERT INTO "public"."regions" VALUES (2, 'Dhaka Division', 31051, 47424418, 23.95360000, 90.14950000, 4, 121269);
INSERT INTO "public"."regions" VALUES (3, 'Chittagong Division', 33771, 28423019, 23.17930000, 91.98820000, 4, 121269);
INSERT INTO "public"."regions" VALUES (4, 'Rajshahi Division', 18174, 18484858, 24.71060000, 88.94140000, 4, 121269);
INSERT INTO "public"."regions" VALUES (5, 'Barishal Division', 13645, 8325666, 22.38110000, 90.33720000, 4, 121269);
INSERT INTO "public"."regions" VALUES (6, 'Khulna Division', 22285, 15563000, 22.80880000, 89.24670000, 4, 121269);
INSERT INTO "public"."regions" VALUES (7, 'Mymensingh Division', 10485, 11370000, 24.71360000, 90.45020000, 4, 121269);
INSERT INTO "public"."regions" VALUES (8, 'Rangpur Division', 16185, 15665000, 25.84830000, 88.94140000, 4, 121269);
INSERT INTO "public"."regions" VALUES (9, 'Sylhet Division', 12298, 12100000, 24.70500000, 91.67610000, 4, 121269);
INSERT INTO "public"."regions" VALUES (10, 'Barishal
', 2791, 2415000, 22.70100000, 90.35350000, 5, 5);
INSERT INTO "public"."regions" VALUES (11, 'Bhola', 3403, 1946000, 22.68592300, 90.64817900, 5, 5);
INSERT INTO "public"."regions" VALUES (12, 'Barguna', 1939, 928000, 22.09530000, 90.11210000, 5, 5);
INSERT INTO "public"."regions" VALUES (13, 'Jhalokathi', 735, 710000, 22.64060000, 90.19870000, 5, 5);
INSERT INTO "public"."regions" VALUES (14, 'Patuakhali', 3220, 1596000, 22.35963160, 90.32987120, 5, 5);
INSERT INTO "public"."regions" VALUES (15, 'Pirojpur', 1278, 1277000, 22.57910000, 89.97590000, 5, 5);
INSERT INTO "public"."regions" VALUES (16, 'Bandarban', 4479, 405000, 22.19532750, 92.21837730, 5, 3);
INSERT INTO "public"."regions" VALUES (17, 'Brahmanbaria', 1927, 2954000, 23.95709040, 91.11192860, 5, 3);
INSERT INTO "public"."regions" VALUES (18, 'Chandpur', 1704, 2514000, 23.23325850, 90.67129120, 5, 3);
INSERT INTO "public"."regions" VALUES (19, 'Chittagong', 5283, 7913000, 22.33510900, 91.83407300, 5, 3);
INSERT INTO "public"."regions" VALUES (20, 'Comilla', 3085, 6003000, 23.46827470, 91.17881350, 5, 3);
INSERT INTO "public"."regions" VALUES (21, 'Cox''s Bazar', 2492, 2382000, 21.42720000, 92.00580000, 5, 3);
INSERT INTO "public"."regions" VALUES (22, 'Feni', 928, 1496000, 23.02323100, 91.38408440, 5, 3);
INSERT INTO "public"."regions" VALUES (23, 'Khagrachari', 2700, 639000, 23.11928500, 91.98466300, 5, 3);
INSERT INTO "public"."regions" VALUES (24, 'Lakshmipur', 1456, 1798000, 22.94247700, 90.84118400, 5, 3);
INSERT INTO "public"."regions" VALUES (25, 'Noakhali', 2202, 3232000, 22.86956300, 91.09939800, 5, 3);
INSERT INTO "public"."regions" VALUES (26, 'Rangamati', 6116, 620000, 22.73240000, 92.29850000, 5, 3);
INSERT INTO "public"."regions" VALUES (27, 'Dhaka', 1464, 12518000, 23.71152530, 90.41114510, 5, 2);
INSERT INTO "public"."regions" VALUES (28, 'Faridpur', 2073, 1989000, 23.60708220, 89.84294060, 5, 2);
INSERT INTO "public"."regions" VALUES (29, 'Gazipur', 1800, 3548000, 24.00228580, 90.42642830, 5, 2);
INSERT INTO "public"."regions" VALUES (30, 'Gopalganj', 1490, 1218000, 23.00508570, 89.82660590, 5, 2);
INSERT INTO "public"."regions" VALUES (31, 'Kishorganj', 2689, 3029000, 24.44493700, 90.77657500, 5, 2);
INSERT INTO "public"."regions" VALUES (32, 'Madaripur', 1145, 1212000, 23.16410200, 90.18968050, 5, 2);
INSERT INTO "public"."regions" VALUES (33, 'Manikganj', 1379, 1447000, 23.86170000, 90.00030000, 5, 2);
INSERT INTO "public"."regions" VALUES (34, 'Munshiganj', 955, 1503000, 23.49810000, 90.41270000, 5, 2);
INSERT INTO "public"."regions" VALUES (35, 'Narayanganj', 683, 3074000, 23.63366000, 90.49648200, 5, 2);
INSERT INTO "public"."regions" VALUES (36, 'Narsingdi', 1141, 2315000, 23.93223300, 90.71541000, 5, 2);
INSERT INTO "public"."regions" VALUES (37, 'Rajbari', 1192, 1091000, 23.75743050, 89.64446650, 5, 2);
INSERT INTO "public"."regions" VALUES (38, 'Shariatpur', 1182, 1202000, 23.24230000, 90.43480000, 5, 2);
INSERT INTO "public"."regions" VALUES (39, 'Tangail', 3414, 3750000, 24.39170000, 89.99480000, 5, 2);
INSERT INTO "public"."regions" VALUES (40, 'Bagerhat', 3959, 1461000, 22.65156800, 89.78593800, 5, 6);
INSERT INTO "public"."regions" VALUES (41, 'Chuadanga', 1177, 1123000, 23.64019610, 88.84184100, 5, 6);
INSERT INTO "public"."regions" VALUES (42, 'Jessore', 2567, 2742000, 23.16643000, 89.20811260, 5, 6);
INSERT INTO "public"."regions" VALUES (43, 'Jhenaidah', 1961, 1756000, 23.54481760, 89.15392130, 5, 6);
INSERT INTO "public"."regions" VALUES (44, 'Khulna', 4394, 2294000, 22.81577400, 89.56867900, 5, 6);
INSERT INTO "public"."regions" VALUES (45, 'Kushtia', 1601, 1933000, 23.90125800, 89.12048200, 5, 6);
INSERT INTO "public"."regions" VALUES (46, 'Magura', 1049, 913000, 23.48733700, 89.41995600, 5, 6);
INSERT INTO "public"."regions" VALUES (47, 'Meherpur', 716, 652000, 23.76221300, 88.63182100, 5, 6);
INSERT INTO "public"."regions" VALUES (48, 'Narail', 990, 715000, 23.17253400, 89.51267200, 5, 6);
INSERT INTO "public"."regions" VALUES (49, 'Satkhira', 3858, 1973000, 22.31550000, 89.11150000, 5, 6);
INSERT INTO "public"."regions" VALUES (50, 'Jamalpur', 2032, 2265000, 24.93753300, 89.93777500, 5, 7);
INSERT INTO "public"."regions" VALUES (51, 'Mymensingh', 4363, 5042000, 24.74710000, 90.42030000, 5, 7);
INSERT INTO "public"."regions" VALUES (52, 'Netrokona', 2810, 2207000, 24.87095500, 90.72788700, 5, 7);
INSERT INTO "public"."regions" VALUES (53, 'Sherpur', 1364, 1334000, 25.02049330, 90.01529660, 5, 7);
INSERT INTO "public"."regions" VALUES (54, 'Bogura', 2919, 3370000, 24.84652280, 89.37775500, 5, 4);
INSERT INTO "public"."regions" VALUES (55, 'Jaipurhat', 965, 909000, 25.09470000, 89.09450000, 5, 4);
INSERT INTO "public"."regions" VALUES (56, 'Naogaon', 3436, 2576000, 24.79360000, 88.93180000, 5, 4);
INSERT INTO "public"."regions" VALUES (57, 'Natore', 0, 1696000, 24.42055600, 89.00028200, 5, 4);
INSERT INTO "public"."regions" VALUES (58, 'Pabna', 2372, 2497000, 23.99852400, 89.23364500, 5, 4);
INSERT INTO "public"."regions" VALUES (59, 'Rajshahi', 2407, 2573000, 24.37450000, 88.60420000, 5, 4);
INSERT INTO "public"."regions" VALUES (60, 'Shirajganj', 2498, 3072000, 24.45339780, 89.70068150, 5, 4);
INSERT INTO "public"."regions" VALUES (61, 'Chapainawabganj', 1703, 1647000, 24.59650340, 88.27751220, 5, 4);
INSERT INTO "public"."regions" VALUES (62, 'Dinajpur', 3438, 2980000, 25.62170610, 88.63545040, 5, 8);
INSERT INTO "public"."regions" VALUES (63, 'Gaibandha', 2179, 2349000, 25.32875100, 89.52808800, 5, 8);
INSERT INTO "public"."regions" VALUES (64, 'Kurigram', 2296, 2050000, 25.80544500, 89.63617400, 5, 8);
INSERT INTO "public"."regions" VALUES (65, 'Lalmonirhat', 1241, 1249000, 25.99230000, 89.28470000, 5, 8);
INSERT INTO "public"."regions" VALUES (66, 'Nilphamari', 1580, 1820000, 25.93179400, 88.85600600, 5, 8);
INSERT INTO "public"."regions" VALUES (67, 'Panchagarh', 1405, 981000, 26.34110000, 88.55416060, 5, 8);
INSERT INTO "public"."regions" VALUES (68, 'Rangpur', 2368, 2866000, 25.75580960, 89.24446200, 5, 8);
INSERT INTO "public"."regions" VALUES (69, 'Thakurgaon', 1810, 1380000, 26.03369450, 88.46168340, 5, 8);
INSERT INTO "public"."regions" VALUES (70, 'Habiganj', 2059, 2637000, 24.37494500, 91.41553000, 5, 9);
INSERT INTO "public"."regions" VALUES (71, 'Moulvibazar', 1902, 1984000, 24.48293400, 91.77741700, 5, 9);
INSERT INTO "public"."regions" VALUES (72, 'Sunamganj', 3670, 2443000, 25.06580420, 91.39501150, 5, 9);
INSERT INTO "public"."regions" VALUES (73, 'Sylhet', 5316, 1782000, 24.88979560, 91.86978940, 5, 9);
INSERT INTO "public"."regions" VALUES (121251, 'Afghanistan', 652230, 27657145, 33.00000000, 65.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121252, 'Aland Islands', 1580, 28875, 60.11666700, 19.90000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121253, 'Albania', 28748, 2886026, 41.00000000, 20.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121254, 'Algeria', 2381741, 40400000, 28.00000000, 3.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121255, 'American Samoa', 199, 57100, -14.33333333, -170.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121256, 'Andorra', 468, 78014, 42.50000000, 1.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121257, 'Angola', 1246700, 25868000, -12.50000000, 18.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121258, 'Anguilla', 91, 13452, 18.25000000, -63.16666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121259, 'Antarctica', 14000000, 1000, -74.65000000, 4.48000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121260, 'Antigua and Barbuda', 442, 86295, 17.05000000, -61.80000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121261, 'Argentina', 2780400, 43590400, -34.00000000, -64.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121262, 'Armenia', 29743, 2994400, 40.00000000, 45.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121263, 'Aruba', 180, 107394, 12.50000000, -69.96666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121264, 'Australia', 7692024, 24117360, -27.00000000, 133.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121265, 'Austria', 83871, 8725931, 47.33333333, 13.33333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121266, 'Azerbaijan', 86600, 9730500, 40.50000000, 47.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121267, 'Bahamas', 13943, 378040, 24.25000000, -76.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121268, 'Bahrain', 765, 1404900, 26.00000000, 50.55000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121269, 'Bangladesh', 147570, 161006790, 24.00000000, 90.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121270, 'Barbados', 430, 285000, 13.16666666, -59.53333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121271, 'Belarus', 207600, 9498700, 53.00000000, 28.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121272, 'Belgium', 30528, 11319511, 50.83333333, 4.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121273, 'Belize', 22966, 370300, 17.25000000, -88.75000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121274, 'Benin', 112622, 10653654, 9.50000000, 2.25000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121275, 'Bermuda', 54, 61954, 32.33333333, -64.75000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121276, 'Bhutan', 38394, 775620, 27.50000000, 90.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121277, 'Bolivia (Plurinational State of)', 1098581, 10985059, -17.00000000, -65.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121278, 'Bonaire, Sint Eustatius and Saba', 294, 17408, 12.15000000, -68.26666700, 3, NULL);
INSERT INTO "public"."regions" VALUES (121279, 'Bosnia and Herzegovina', 51209, 3531159, 44.00000000, 18.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121280, 'Botswana', 582000, 2141206, -22.00000000, 24.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121281, 'Bouvet Island', 49, 0, -54.43333333, 3.40000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121282, 'Brazil', 8515767, 206135893, -10.00000000, -55.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121283, 'British Indian Ocean Territory', 60, 3000, -6.00000000, 71.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121284, 'United States Minor Outlying Islands', NULL, 300, 19.28230000, 166.64700000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121285, 'Virgin Islands (British)', 151, 28514, 18.43138300, -64.62305000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121286, 'Virgin Islands (U.S.)', 346, 114743, 18.34000000, -64.93000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121287, 'Brunei Darussalam', 5765, 411900, 4.50000000, 114.66666670, 3, NULL);
INSERT INTO "public"."regions" VALUES (121288, 'Bulgaria', 110879, 7153784, 43.00000000, 25.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121289, 'Burkina Faso', 272967, 19034397, 13.00000000, -2.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121290, 'Burundi', 27834, 10114505, -3.50000000, 30.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121291, 'Cambodia', 181035, 15626444, 13.00000000, 105.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121292, 'Cameroon', 475442, 22709892, 6.00000000, 12.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121293, 'Canada', 9984670, 36155487, 60.00000000, -95.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121294, 'Cabo Verde', 4033, 531239, 16.00000000, -24.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121295, 'Cayman Islands', 264, 58238, 19.50000000, -80.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121296, 'Central African Republic', 622984, 4998000, 7.00000000, 21.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121297, 'Chad', 1284000, 14497000, 15.00000000, 19.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121298, 'Chile', 756102, 18191900, -30.00000000, -71.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121299, 'China', 9640011, 1377422166, 35.00000000, 105.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121300, 'Christmas Island', 135, 2072, -10.50000000, 105.66666670, 3, NULL);
INSERT INTO "public"."regions" VALUES (121301, 'Cocos (Keeling) Islands', 14, 550, -12.50000000, 96.83333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121302, 'Colombia', 1141748, 48759958, 4.00000000, -72.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121303, 'Comoros', 1862, 806153, -12.16666666, 44.25000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121304, 'Congo', 342000, 4741000, -1.00000000, 15.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121305, 'Congo (Democratic Republic of the)', 2344858, 85026000, 0.00000000, 25.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121306, 'Cook Islands', 236, 18100, -21.23333333, -159.76666670, 3, NULL);
INSERT INTO "public"."regions" VALUES (121307, 'Costa Rica', 51100, 4890379, 10.00000000, -84.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121308, 'Croatia', 56594, 4190669, 45.16666666, 15.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121309, 'Cuba', 109884, 11239004, 21.50000000, -80.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121310, 'Curacao', 444, 154843, 12.11666700, -68.93333300, 3, NULL);
INSERT INTO "public"."regions" VALUES (121311, 'Cyprus', 9251, 847000, 35.00000000, 33.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121312, 'Czech Republic', 78865, 10558524, 49.75000000, 15.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121313, 'Denmark', 43094, 5717014, 56.00000000, 10.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121314, 'Djibouti', 23200, 900000, 11.50000000, 43.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121315, 'Dominica', 751, 71293, 15.41666666, -61.33333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121316, 'Dominican Republic', 48671, 10075045, 19.00000000, -70.66666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121317, 'Ecuador', 276841, 16545799, -2.00000000, -77.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121318, 'Egypt', 1002450, 91290000, 27.00000000, 30.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121319, 'El Salvador', 21041, 6520675, 13.83333333, -88.91666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121320, 'Equatorial Guinea', 28051, 1222442, 2.00000000, 10.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121321, 'Eritrea', 117600, 5352000, 15.00000000, 39.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121322, 'Estonia', 45227, 1315944, 59.00000000, 26.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121323, 'Ethiopia', 1104300, 92206005, 8.00000000, 38.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121324, 'Falkland Islands (Malvinas)', 12173, 2563, -51.75000000, -59.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121325, 'Faroe Islands', 1393, 49376, 62.00000000, -7.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121326, 'Fiji', 18272, 867000, -18.00000000, 175.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121327, 'Finland', 338424, 5491817, 64.00000000, 26.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121328, 'France', 640679, 66710000, 46.00000000, 2.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121329, 'French Guiana', 83534, 254541, 4.00000000, -53.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121330, 'French Polynesia', 4167, 271800, -15.00000000, -140.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121331, 'French Southern Territories', 7747, 140, -49.25000000, 69.16700000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121332, 'Gabon', 267668, 1802278, -1.00000000, 11.75000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121333, 'Gambia', 11295, 1882450, 13.46666666, -16.56666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121334, 'Georgia', 69700, 3720400, 42.00000000, 43.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121335, 'Germany', 357114, 81770900, 51.00000000, 9.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121336, 'Ghana', 238533, 27670174, 8.00000000, -2.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121337, 'Gibraltar', 6, 33140, 36.13333333, -5.35000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121338, 'Greece', 131990, 10858018, 39.00000000, 22.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121339, 'Greenland', 2166086, 55847, 72.00000000, -40.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121340, 'Grenada', 344, 103328, 12.11666666, -61.66666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121341, 'Guadeloupe', NULL, 400132, 16.25000000, -61.58333300, 3, NULL);
INSERT INTO "public"."regions" VALUES (121342, 'Guam', 549, 184200, 13.46666666, 144.78333330, 3, NULL);
INSERT INTO "public"."regions" VALUES (121343, 'Guatemala', 108889, 16176133, 15.50000000, -90.25000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121344, 'Guernsey', 78, 62999, 49.46666666, -2.58333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121345, 'Guinea', 245857, 12947000, 11.00000000, -10.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121346, 'Guinea-Bissau', 36125, 1547777, 12.00000000, -15.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121347, 'Guyana', 214969, 746900, 5.00000000, -59.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121348, 'Haiti', 27750, 11078033, 19.00000000, -72.41666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121349, 'Heard Island and McDonald Islands', 412, 0, -53.10000000, 72.51666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121350, 'Holy See', 0, 451, 41.90000000, 12.45000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121351, 'Honduras', 112492, 8576532, 15.00000000, -86.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121352, 'Hong Kong', 1104, 7324300, 22.25000000, 114.16666670, 3, NULL);
INSERT INTO "public"."regions" VALUES (121353, 'Hungary', 93028, 9823000, 47.00000000, 20.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121354, 'Iceland', 103000, 334300, 65.00000000, -18.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121355, 'India', 3287590, 1295210000, 20.00000000, 77.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121356, 'Indonesia', 1904569, 258705000, -5.00000000, 120.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121357, 'Cote d''Ivoire', 322463, 22671331, 8.00000000, -5.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121358, 'Iran (Islamic Republic of)', 1648195, 79369900, 32.00000000, 53.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121359, 'Iraq', 438317, 37883543, 33.00000000, 44.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121360, 'Ireland', 70273, 6378000, 53.00000000, -8.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121361, 'Isle of Man', 572, 84497, 54.25000000, -4.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121362, 'Israel', 20770, 8527400, 31.50000000, 34.75000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121363, 'Italy', 301336, 60665551, 42.83333333, 12.83333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121364, 'Jamaica', 10991, 2723246, 18.25000000, -77.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121365, 'Japan', 377930, 126960000, 36.00000000, 138.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121366, 'Jersey', 116, 100800, 49.25000000, -2.16666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121367, 'Jordan', 89342, 9531712, 31.00000000, 36.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121368, 'Kazakhstan', 2724900, 17753200, 48.00000000, 68.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121369, 'Kenya', 580367, 47251000, 1.00000000, 38.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121370, 'Kiribati', 811, 113400, 1.41666666, 173.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121371, 'Kuwait', 17818, 4183658, 29.50000000, 45.75000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121372, 'Kyrgyzstan', 199951, 6047800, 41.00000000, 75.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121373, 'Lao People''s Democratic Republic', 236800, 6492400, 18.00000000, 105.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121374, 'Latvia', 64559, 1961600, 57.00000000, 25.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121375, 'Lebanon', 10452, 5988000, 33.83333333, 35.83333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121376, 'Lesotho', 30355, 1894194, -29.50000000, 28.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121377, 'Liberia', 111369, 4615000, 6.50000000, -9.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121378, 'Libya', 1759540, 6385000, 25.00000000, 17.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121379, 'Liechtenstein', 160, 37623, 47.26666666, 9.53333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121380, 'Lithuania', 65300, 2872294, 56.00000000, 24.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121381, 'Luxembourg', 2586, 576200, 49.75000000, 6.16666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121382, 'Macao', 30, 649100, 22.16666666, 113.55000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121383, 'Macedonia (the former Yugoslav Republic of)', 25713, 2058539, 41.83333333, 22.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121384, 'Madagascar', 587041, 22434363, -20.00000000, 47.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121385, 'Malawi', 118484, 16832910, -13.50000000, 34.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121386, 'Malaysia', 330803, 31405416, 2.50000000, 112.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121387, 'Maldives', 300, 344023, 3.25000000, 73.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121388, 'Mali', 1240192, 18135000, 17.00000000, -4.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121389, 'Malta', 316, 425384, 35.83333333, 14.58333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121390, 'Marshall Islands', 181, 54880, 9.00000000, 168.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121391, 'Martinique', NULL, 378243, 14.66666700, -61.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121392, 'Mauritania', 1030700, 3718678, 20.00000000, -12.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121393, 'Mauritius', 2040, 1262879, -20.28333333, 57.55000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121394, 'Mayotte', NULL, 226915, -12.83333333, 45.16666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121395, 'Mexico', 1964375, 122273473, 23.00000000, -102.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121396, 'Micronesia (Federated States of)', 702, 102800, 6.91666666, 158.25000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121397, 'Moldova (Republic of)', 33846, 3553100, 47.00000000, 29.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121398, 'Monaco', 2, 38400, 43.73333333, 7.40000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121399, 'Mongolia', 1564110, 3093100, 46.00000000, 105.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121400, 'Montenegro', 13812, 621810, 42.50000000, 19.30000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121401, 'Montserrat', 102, 4922, 16.75000000, -62.20000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121402, 'Morocco', 446550, 33337529, 32.00000000, -5.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121403, 'Mozambique', 801590, 26423700, -18.25000000, 35.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121404, 'Myanmar', 676578, 51419420, 22.00000000, 98.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121405, 'Namibia', 825615, 2324388, -22.00000000, 17.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121406, 'Nauru', 21, 10084, -0.53333333, 166.91666670, 3, NULL);
INSERT INTO "public"."regions" VALUES (121407, 'Nepal', 147181, 28431500, 28.00000000, 84.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121408, 'Netherlands', 41850, 17019800, 52.50000000, 5.75000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121409, 'New Caledonia', 18575, 268767, -21.50000000, 165.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121410, 'New Zealand', 270467, 4697854, -41.00000000, 174.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121411, 'Nicaragua', 130373, 6262703, 13.00000000, -85.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121412, 'Niger', 1267000, 20715000, 16.00000000, 8.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121413, 'Nigeria', 923768, 186988000, 10.00000000, 8.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121414, 'Niue', 260, 1470, -19.03333333, -169.86666670, 3, NULL);
INSERT INTO "public"."regions" VALUES (121415, 'Norfolk Island', 36, 2302, -29.03333333, 167.95000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121416, 'Korea (Democratic People''s Republic of)', 120538, 25281000, 40.00000000, 127.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121417, 'Northern Mariana Islands', 464, 56940, 15.20000000, 145.75000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121418, 'Norway', 323802, 5223256, 62.00000000, 10.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121419, 'Oman', 309500, 4420133, 21.00000000, 57.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121420, 'Pakistan', 881912, 194125062, 30.00000000, 70.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121421, 'Palau', 459, 17950, 7.50000000, 134.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121422, 'Palestine, State of', 6220, 4682467, 31.90000000, 35.20000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121423, 'Panama', 75417, 3814672, 9.00000000, -80.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121424, 'Papua New Guinea', 462840, 8083700, -6.00000000, 147.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121425, 'Paraguay', 406752, 6854536, -23.00000000, -58.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121426, 'Peru', 1285216, 31488700, -10.00000000, -76.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121427, 'Philippines', 342353, 103279800, 13.00000000, 122.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121428, 'Pitcairn', 47, 56, -25.06666666, -130.10000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121429, 'Poland', 312679, 38437239, 52.00000000, 20.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121430, 'Portugal', 92090, 10374822, 39.50000000, -8.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121431, 'Puerto Rico', 8870, 3474182, 18.25000000, -66.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121432, 'Qatar', 11586, 2587564, 25.50000000, 51.25000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121433, 'Republic of Kosovo', 10908, 1733842, 42.66666700, 21.16666700, 3, NULL);
INSERT INTO "public"."regions" VALUES (121434, 'Reunion', NULL, 840974, -21.15000000, 55.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121435, 'Romania', 238391, 19861408, 46.00000000, 25.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121436, 'Russian Federation', 17124442, 146599183, 60.00000000, 100.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121437, 'Rwanda', 26338, 11553188, -2.00000000, 30.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121438, 'Saint Barthelemy', 21, 9417, 18.50000000, -63.41666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121439, 'Saint Helena, Ascension and Tristan da Cunha', NULL, 4255, -15.95000000, -5.70000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121440, 'Saint Kitts and Nevis', 261, 46204, 17.33333333, -62.75000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121441, 'Saint Lucia', 616, 186000, 13.88333333, -60.96666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121442, 'Saint Martin (French part)', 53, 36979, 18.08333333, -63.95000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121443, 'Saint Pierre and Miquelon', 242, 6069, 46.83333333, -56.33333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121444, 'Saint Vincent and the Grenadines', 389, 109991, 13.25000000, -61.20000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121445, 'Samoa', 2842, 194899, -13.58333333, -172.33333330, 3, NULL);
INSERT INTO "public"."regions" VALUES (121446, 'San Marino', 61, 33005, 43.76666666, 12.41666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121447, 'Sao Tome and Principe', 964, 187356, 1.00000000, 7.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121448, 'Saudi Arabia', 2149690, 32248200, 25.00000000, 45.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121449, 'Senegal', 196722, 14799859, 14.00000000, -14.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121450, 'Serbia', 88361, 7076372, 44.00000000, 21.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121451, 'Seychelles', 452, 91400, -4.58333333, 55.66666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121452, 'Sierra Leone', 71740, 7075641, 8.50000000, -11.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121453, 'Singapore', 710, 5535000, 1.36666666, 103.80000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121454, 'Sint Maarten (Dutch part)', 34, 38247, 18.03333300, -63.05000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121455, 'Slovakia', 49037, 5426252, 48.66666666, 19.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121456, 'Slovenia', 20273, 2064188, 46.11666666, 14.81666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121457, 'Solomon Islands', 28896, 642000, -8.00000000, 159.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121458, 'Somalia', 637657, 11079000, 10.00000000, 49.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121459, 'South Africa', 1221037, 55653654, -29.00000000, 24.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121460, 'South Georgia and the South Sandwich Islands', NULL, 30, -54.50000000, -37.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121461, 'Korea (Republic of)', 100210, 50801405, 37.00000000, 127.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121462, 'South Sudan', 619745, 12131000, 7.00000000, 30.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121463, 'Spain', 505992, 46438422, 40.00000000, -4.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121464, 'Sri Lanka', 65610, 20966000, 7.00000000, 81.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121465, 'Sudan', 1886068, 39598700, 15.00000000, 30.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121466, 'Suriname', 163820, 541638, 4.00000000, -56.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121467, 'Svalbard and Jan Mayen', NULL, 2562, 78.00000000, 20.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121468, 'Swaziland', 17364, 1132657, -26.50000000, 31.50000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121469, 'Sweden', 450295, 9894888, 62.00000000, 15.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121470, 'Switzerland', 41284, 8341600, 47.00000000, 8.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121471, 'Syrian Arab Republic', 185180, 18564000, 35.00000000, 38.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121472, 'Taiwan', 36193, 23503349, 23.50000000, 121.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121473, 'Tajikistan', 143100, 8593600, 39.00000000, 71.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121474, 'Tanzania, United Republic of', 945087, 55155000, -6.00000000, 35.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121475, 'Thailand', 513120, 65327652, 15.00000000, 100.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121476, 'Timor-Leste', 14874, 1167242, -8.83333333, 125.91666670, 3, NULL);
INSERT INTO "public"."regions" VALUES (121477, 'Togo', 56785, 7143000, 8.00000000, 1.16666666, 3, NULL);
INSERT INTO "public"."regions" VALUES (121478, 'Tokelau', 12, 1411, -9.00000000, -172.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121479, 'Tonga', 747, 103252, -20.00000000, -175.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121480, 'Trinidad and Tobago', 5130, 1349667, 11.00000000, -61.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121481, 'Tunisia', 163610, 11154400, 34.00000000, 9.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121482, 'Turkey', 783562, 78741053, 39.00000000, 35.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121483, 'Turkmenistan', 488100, 4751120, 40.00000000, 60.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121484, 'Turks and Caicos Islands', 948, 31458, 21.75000000, -71.58333333, 3, NULL);
INSERT INTO "public"."regions" VALUES (121485, 'Tuvalu', 26, 10640, -8.00000000, 178.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121486, 'Uganda', 241550, 33860700, 1.00000000, 32.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121487, 'Ukraine', 603700, 42692393, 49.00000000, 32.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121488, 'United Arab Emirates', 83600, 9856000, 24.00000000, 54.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121489, 'United Kingdom of Great Britain and Northern Ireland', 242900, 65110000, 54.00000000, -2.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121490, 'United States of America', 9629091, 323947000, 38.00000000, -97.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121491, 'Uruguay', 181034, 3480222, -33.00000000, -56.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121492, 'Uzbekistan', 447400, 31576400, 41.00000000, 64.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121493, 'Vanuatu', 12189, 277500, -16.00000000, 167.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121494, 'Venezuela (Bolivarian Republic of)', 916445, 31028700, 8.00000000, -66.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121495, 'Viet Nam', 331212, 92700000, 16.16666666, 107.83333330, 3, NULL);
INSERT INTO "public"."regions" VALUES (121496, 'Wallis and Futuna', 142, 11750, -13.30000000, -176.20000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121497, 'Western Sahara', 266000, 510713, 24.50000000, -13.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121498, 'Yemen', 527968, 27478000, 15.00000000, 48.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121499, 'Zambia', 752612, 15933883, -15.00000000, 30.00000000, 3, NULL);
INSERT INTO "public"."regions" VALUES (121500, 'Zimbabwe', 390757, 14240168, -20.00000000, 30.00000000, 3, NULL);

-- ----------------------------
-- Table structure for social
-- ----------------------------
DROP TABLE IF EXISTS "public"."social";
CREATE TABLE "public"."social" (
  "id" int4 NOT NULL,
  "region_id" int4 NOT NULL,
  "date" timestamp(6),
  "no_of_quarantined_regions" int4,
  "quarantined_area" float4,
  "epidemic_id" int4
)
;

-- ----------------------------
-- Table structure for summery
-- ----------------------------
DROP TABLE IF EXISTS "public"."summery";
CREATE TABLE "public"."summery" (
  "Year" int4,
  "January" int4,
  "February" int4,
  "March" int4,
  "April" int4,
  "May" int4,
  "June" int4,
  "July" int4,
  "August" int4,
  "September" int4,
  "October" int4,
  "November" int4,
  "December" varchar(255) COLLATE "pg_catalog"."default",
  "Total" varchar(255) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of summery
-- ----------------------------
INSERT INTO "public"."summery" VALUES (2008, 0, 0, 0, 0, 0, 0, 160, 473, 334, 184, 0, '0', '1151');
INSERT INTO "public"."summery" VALUES (2009, 0, 0, 0, 0, 1, 0, 4, 125, 188, 154, 0, '0', '472');
INSERT INTO "public"."summery" VALUES (2010, 0, 0, 0, 0, 0, 0, 61, 183, 120, 45, 0, '0', '409');
INSERT INTO "public"."summery" VALUES (2011, 0, 0, 0, 0, 0, 61, 255, 691, 193, 114, 36, '9', '1359');
INSERT INTO "public"."summery" VALUES (2012, 0, 0, 0, 0, 0, 10, 129, 122, 246, 107, 27, '0', '641');
INSERT INTO "public"."summery" VALUES (2013, 6, 7, 3, 3, 12, 50, 172, 339, 385, 501, 218, '53', '1749');
INSERT INTO "public"."summery" VALUES (2014, 15, 7, 2, 0, 8, 9, 82, 80, 76, 63, 22, '11', '375');
INSERT INTO "public"."summery" VALUES (2015, 0, 0, 2, 6, 10, 28, 171, 765, 965, 869, 271, '75', '3162');
INSERT INTO "public"."summery" VALUES (2016, 13, 3, 17, 38, 70, 254, 926, 1451, 1544, 1077, 522, '145', '6060');
INSERT INTO "public"."summery" VALUES (2017, 92, 58, 36, 73, 134, 267, 286, 346, 430, 512, 409, '126', '2769');
INSERT INTO "public"."summery" VALUES (2018, 26, 7, 19, 29, 52, 295, 946, 1796, 3087, 2406, 1192, '293', '10148');
INSERT INTO "public"."summery" VALUES (2019, 38, 18, 17, 58, 193, 1884, 16253, 52636, 16856, 6076, NULL, NULL, '94029');

-- ----------------------------
-- Indexes structure for table business
-- ----------------------------
CREATE INDEX "business_epidemic_id_fk" ON "public"."business" USING btree (
  "epidemic_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "businessfactor_regions_id_fk" ON "public"."business" USING btree (
  "region_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table business
-- ----------------------------
ALTER TABLE "public"."business" ADD CONSTRAINT "business_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table dengu_info
-- ----------------------------
CREATE INDEX "fk_categ" ON "public"."dengu_info" USING btree (
  "hosp_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table dengu_info
-- ----------------------------
ALTER TABLE "public"."dengu_info" ADD CONSTRAINT "dengu_info_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table dengue_daily_data
-- ----------------------------
ALTER TABLE "public"."dengue_daily_data" ADD CONSTRAINT "dengue_daily_data_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table dengue_data
-- ----------------------------
ALTER TABLE "public"."dengue_data" ADD CONSTRAINT "dengue_data_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table economic
-- ----------------------------
CREATE INDEX "economic_regions_id_fk" ON "public"."economic" USING btree (
  "region_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table economic
-- ----------------------------
ALTER TABLE "public"."economic" ADD CONSTRAINT "economic_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table environmental
-- ----------------------------
CREATE INDEX "environmental_epidemic_id_fk" ON "public"."environmental" USING btree (
  "epidemic_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "environmental_regions_id_fk" ON "public"."environmental" USING btree (
  "region_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table environmental
-- ----------------------------
ALTER TABLE "public"."environmental" ADD CONSTRAINT "environmental_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table epidemic
-- ----------------------------
CREATE INDEX "epidemic_name_uindex" ON "public"."epidemic" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table epidemic
-- ----------------------------
ALTER TABLE "public"."epidemic" ADD CONSTRAINT "epidemic_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table hospitals
-- ----------------------------
CREATE INDEX "fk_category" ON "public"."hospitals" USING btree (
  "region_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table hospitals
-- ----------------------------
ALTER TABLE "public"."hospitals" ADD CONSTRAINT "hospitals_pkey" PRIMARY KEY ("hosp_id");

-- ----------------------------
-- Indexes structure for table liveupdate
-- ----------------------------
CREATE INDEX "liveupdate_epidemic_id_fk" ON "public"."liveupdate" USING btree (
  "epidemic_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "liveupdate_regions_id_fk" ON "public"."liveupdate" USING btree (
  "region_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table liveupdate
-- ----------------------------
ALTER TABLE "public"."liveupdate" ADD CONSTRAINT "liveupdate_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table medical
-- ----------------------------
CREATE INDEX "medical_epidemic_id_fk" ON "public"."medical" USING btree (
  "epidemic_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "medical_regions_id_fk" ON "public"."medical" USING btree (
  "region_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table medical
-- ----------------------------
ALTER TABLE "public"."medical" ADD CONSTRAINT "medical_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table regions
-- ----------------------------
CREATE INDEX "regions_name_uindex" ON "public"."regions" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table regions
-- ----------------------------
ALTER TABLE "public"."regions" ADD CONSTRAINT "regions_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table social
-- ----------------------------
CREATE INDEX "social_epidemic_id_fk" ON "public"."social" USING btree (
  "epidemic_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "social_regions_id_fk" ON "public"."social" USING btree (
  "region_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table social
-- ----------------------------
ALTER TABLE "public"."social" ADD CONSTRAINT "social_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table business
-- ----------------------------
ALTER TABLE "public"."business" ADD CONSTRAINT "businessfactor_regions_id_fk" FOREIGN KEY ("region_id") REFERENCES "public"."regions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table dengu_info
-- ----------------------------
ALTER TABLE "public"."dengu_info" ADD CONSTRAINT "fk_categ" FOREIGN KEY ("hosp_id") REFERENCES "public"."hospitals" ("hosp_id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table economic
-- ----------------------------
ALTER TABLE "public"."economic" ADD CONSTRAINT "economic_regions_id_fk" FOREIGN KEY ("region_id") REFERENCES "public"."regions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table environmental
-- ----------------------------
ALTER TABLE "public"."environmental" ADD CONSTRAINT "environmental_regions_id_fk" FOREIGN KEY ("region_id") REFERENCES "public"."regions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table hospitals
-- ----------------------------
ALTER TABLE "public"."hospitals" ADD CONSTRAINT "fk_category" FOREIGN KEY ("region_id") REFERENCES "public"."regions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table liveupdate
-- ----------------------------
ALTER TABLE "public"."liveupdate" ADD CONSTRAINT "liveupdate_epidemic_id_fk" FOREIGN KEY ("epidemic_id") REFERENCES "public"."epidemic" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."liveupdate" ADD CONSTRAINT "liveupdate_regions_id_fk" FOREIGN KEY ("region_id") REFERENCES "public"."regions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table medical
-- ----------------------------
ALTER TABLE "public"."medical" ADD CONSTRAINT "medical_regions_id_fk" FOREIGN KEY ("region_id") REFERENCES "public"."regions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table social
-- ----------------------------
ALTER TABLE "public"."social" ADD CONSTRAINT "social_regions_id_fk" FOREIGN KEY ("region_id") REFERENCES "public"."regions" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
