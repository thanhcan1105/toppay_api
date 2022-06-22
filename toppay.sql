/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50735
 Source Host           : localhost:3306
 Source Schema         : toppay

 Target Server Type    : MySQL
 Target Server Version : 50735
 File Encoding         : 65001

 Date: 21/06/2022 21:51:43
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2022_06_10_043922_create_topup_table', 2);
COMMIT;

-- ----------------------------
-- Table structure for newsfeed
-- ----------------------------
DROP TABLE IF EXISTS `newsfeed`;
CREATE TABLE `newsfeed` (
  `id` int(10) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT ' ',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of newsfeed
-- ----------------------------
BEGIN;
INSERT INTO `newsfeed` VALUES (1, 'Hội Nhà văn từ chối vé máy bay hỗ trợ đại biểu Hà Nội', '27 nhà văn tự mua vé bay vào Đà Nẵng dự hội nghị, do Ủy ban Nhân dân thành phố Hà Nội phản hồi chậm việc hỗ trợ.', 'Theo đại diện Hội Nhà văn, trưa 14/6, Thư ký Văn phòng Ủy ban Nhân dân thành phố Hà Nội gọi điện cho Thường trực Hội, đề nghị cung cấp danh sách đại biểu tham dự để hỗ trợ. Tuy nhiên, lãnh đạo hội trả lời rằng sau hai lần gửi công văn cho thành phố nhưng không được phản hồi, các nhà văn trẻ đã tự túc. Chi phí sẽ được hội tìm cách thanh toán sau hội nghị.\n\nĐơn vị cho biết mỗi khi tổ chức sự kiện, ngoài thư mời đại biểu, Hội đều có công văn gửi chính quyền và hội văn học nghệ thuật địa phương, đề nghị tạo thuận lợi về thời gian nghỉ việc và chi phí đi lại. Nếu tỉnh thành nào từ chối, ban tổ chức sẽ tự lo liệu. Lần này, đến trước ngày 13/6, Hội nhận được sự đóng góp của hầu hết tỉnh thành, ngoại trừ đại diện tỉnh Lạng Sơn từ chối cấp kinh phí. Riêng thành phố Hà Nội, do có số lượng đại biểu đông nhất (27 người) và là địa phương ít có tiền lệ hỗ trợ vé tàu xe cho đại biểu (do các hội nghị trước đây chủ yếu tổ chức ở thủ đô) nên Hội Nhà văn đã hai lần gửi công văn cho lãnh đạo thành phố nhưng không được phản hồi.\n\nTrong họp báo cùng ngày, ông Nguyễn Quang Thiều - Chủ tịch Hội - cho biết thất vọng khi không được thành phố hồi đáp, hỗ trợ. Thông tin khiến dư luận dậy sóng, cho rằng Hội Nhà văn nên tự túc, hạn chế cơ chế xin - cho.\n\nVài năm qua, chủ đề xóa bỏ bao cấp cho các hội, tổ chức nghề nghiệp, nhất là Hội Nhà văn Việt Nam, gây chú ý. Mỗi năm, ngân sách nhà nước cấp cho Hội khoảng 5 tỷ đồng để hoạt động và tổ chức các sự kiện. Trong buổi họp báo ra mắt trang thông tin của hội năm ngoái, ông Nguyễn Quang Thiều cho biết mong muốn sớm xã hội hóa bởi kinh phí từ ngân sách nhà nước ngày một hẹp hòi. Ông cho biết muốn cải tạo trụ sở của Nhà xuất bản Hội Nhà văn ở 65 Nguyễn Du (Hà Nội), đồng thời tổ chức nhiều giải thưởng văn học từ nguồn xã hội hóa. Ngoài ra, lãnh đạo đơn vị mong muốn có nhiều cuộc thi, cuộc vận động sáng tác dành cho các cây bút trẻ.\n\nHội nghị Những người viết văn trẻ toàn quốc do Hội Nhà văn Việt Nam tổ chức 5 năm một lần, mục đích tạo điều kiện cho tác giả trẻ cả nước gặp gỡ, giao lưu, học hỏi các nhà văn lão thành, từ đó có thêm động lực, cảm hứng sáng tác. Năm nay, ở lần thứ 10 tổ chức, sự kiện quy tụ 138 đại biểu, trong đó có 119 người là cây bút trẻ trên cả nước, 19 người là thành viên Hội Nhà văn Việt Nam. Tuổi trung bình của các đại biểu là 20 đến 30, chủ yếu hoạt động ở mảng sáng tác văn, thơ. Người trẻ nhất tham gia hội nghị là Trần Phú Minh Anh (15 tuổi), đang là học sinh phổ thông ở TP HCM.', 'https://i1-giaitri.vnecdn.net/2022/06/15/Nguyen-Quang-Thieu-jpeg-7245-1655279574.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=mBM62uwIRQnx7xWdxMjxyQ', '2022-06-16 11:03:55', '2022-06-16 11:03:55');
INSERT INTO `newsfeed` VALUES (2, 'Phí tuyến Trung Lương – Mỹ Thuận đề xuất cao nhất 432.000 đồng mỗi lượt', 'Cao tốc Trung Lương – Mỹ Thuận dự kiến thu phí từ đầu tháng 7, với mức đề xuất 108.000-432.000 đồng mỗi lượt.', 'Sáng 15/6, ông Trần Văn Bon, Giám đốc Sở Giao thông Vận tải Tiền Giang thông tin, Công ty cổ phần BOT Trung Lương - Mỹ Thuận đã đề xuất giá vé qua trạm thu phí cao tốc nối Long An và Vĩnh Long (đi qua 5 huyện Tiền Giang).\n\nLoại ôtô	Tính theo km (đồng)	Toàn tuyến (đồng)\nXe dưới 12 chỗ; xe tải dưới hai tấn; xe buýt	2.100	108.000\nXe 12-30 chỗ, xe tải từ hai đến dưới 4 tấn	3.000	154.000\nXe khách từ 31 chỗ trở lên; xe tải từ 4 đến dưới 10 tấn	3.700	190.000\nXe tải từ 10 đến dưới 18 tấn, xe container 20 feet	6.000	309.000\nXe từ 18 tấn trở lên, xe container 40 feet	8.400	432.000\nVới phương án này, cao tốc sẽ hoàn vốn trong 14 năm 8 tháng 12 ngày, cứ ba năm giá vé tăng 15%. Theo ông Bon, đây chỉ là mức phí theo phương án tài chính dự án được tỉnh phê duyệt cuối năm 2019. Về quy trình, sau khi các bên đề xuất, Bộ Giao thông Vận tải là cơ quan cuối cùng phê duyệt.\n\n\"Chúng tôi sẽ tiếp tục xem xét chi phí đầu tư và lưu lượng xe thực tế để có quyết định cuối cùng\", ông Bon nói.\n\nLãnh đạo Công ty cổ phần BOT Trung Lương- Mỹ Thuận cũng lý giải, giá vé nói trên đúng theo quy định Bộ Giao thông Vận tải, không vượt giá trần và nhằm đảm bảo phương án tài chính khả thi.\n\nMức phí đề xuất của cao tốc Trung Lương - Mỹ Thuận tương đương tuyến TP HCM - Trung Lương nằm liền kề (dài 62 km, hoạt động từ năm 2010, phí 1.000 - 8.000 đồng mỗi km, tùy xe). Song về lâu dài phí của cao tốc Trung Lương - Mỹ Thuận sẽ cao hơn bởi mỗi ba năm sẽ tăng 15%.\n\nCao tốc Trung Lương - Mỹ Thuận có mức phí đề xuất từ 108.000 – 432.000 đồng mỗi lượt.. Đồ họa: Trần Nam\nHướng tuyến cao tốc Trung Lương - Mỹ Thuận. Đồ họa: Trần Nam\n\nCao tốc Trung Lương - Mỹ Thuận dài 51 km, tổng vốn đầu tư 12.000 tỷ đồng. Tuyến rộng 16 m, gồm 4 làn xe, giai đoạn đầu không có làn khẩn cấp, thay vào đó mỗi chiều bố trí 6 điểm dừng khẩn cấp. Giai đoạn mở rộng sau này, cao tốc sẽ nâng lên 6 làn. Hiện, dự án đã được giải phóng mặt bằng cho 6 làn xe.\n\nTuyến đường hoạt động chính thức từ 30/4. Sau 40 ngày, có gần 800.000 lượt xe đi trên tuyến, trung bình 23.000 lượt xe mỗi ngày đêm, 225 xe hỏng, chết máy nổ lốp và hết xăng dầu.', 'https://i1-vnexpress.vnecdn.net/2022/06/15/282130681-1765764040482252-838-7461-3362-1655271745.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=DDnA8L4h522v_dkFXZ57Ug', '2022-06-16 11:04:38', '2022-06-16 11:04:38');
INSERT INTO `newsfeed` VALUES (3, 'tittle', 'description', 'content', 'https://i1-vnexpress.vnecdn.net/2022/06/15/282130681-1765764040482252-838-7461-3362-1655271745.jpg?w=680&h=0&q=100&dpr=2&fit=crop&s=DDnA8L4h522v_dkFXZ57Ug', '2022-06-16 11:17:57', '2022-06-16 11:17:57');
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for transactions
-- ----------------------------
DROP TABLE IF EXISTS `transactions`;
CREATE TABLE `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `amount` bigint(20) NOT NULL,
  `received` bigint(20) NOT NULL,
  `status` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `transaction_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` int(10) NOT NULL,
  `date_expected` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of transactions
-- ----------------------------
BEGIN;
INSERT INTO `transactions` VALUES (19, 1, 88828, 8880135, 4, 1, 'GD-884256', 'ZaloPay', 3, '2022-06-21 15:22:47', '2022-06-21 08:00:14', '2022-06-21 08:22:35');
INSERT INTO `transactions` VALUES (20, 1, 5658, 565800, 2, 1, 'GD-666742', 'ZaloPay', 0, '2022-06-21 18:56:27', '2022-06-21 08:02:34', '2022-06-21 11:56:27');
INSERT INTO `transactions` VALUES (21, 1, 56588085, 5658808500, 1, 1, 'GD-427610', 'ZaloPay', 0, '2022-06-21 15:23:15', '2022-06-21 08:19:01', '2022-06-21 08:19:23');
INSERT INTO `transactions` VALUES (22, 1, 53588, 5357192, 2, 1, 'GD-371896', 'ZaloPay', 3, '2022-06-21 15:22:14', '2022-06-21 08:21:37', '2022-06-21 08:22:14');
INSERT INTO `transactions` VALUES (23, 1, 6586866, 6389260, 3, 1, 'GD-591775', 'ZaloPay', 3, '2022-06-21 19:47:54', '2022-06-21 12:47:54', '2022-06-21 12:47:54');
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `binding` decimal(20,0) NOT NULL DEFAULT '0',
  `balance` decimal(20,0) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, 'Cao Thanh Can', '0123456789', 'thanhcan1105@gmail.com', NULL, '$2y$10$XDJvW8nL4F91eirvwJiiXOV1Al91LZCToqGr7mjPDHSL8ms4XlCRG', 650000, 0, NULL, '2022-06-08 12:24:08', '2022-06-08 12:24:08');
INSERT INTO `users` VALUES (3, 'bhhhh', '0123456789', 'thanhcan1105@gmail', NULL, '$2y$10$XDJvW8nL4F91eirvwJiiXOV1Al91LZCToqGr7mjPDHSL8ms4XlCRG', 0, 0, NULL, '2022-06-09 08:26:27', '2022-06-09 08:26:27');
INSERT INTO `users` VALUES (4, 'Thanh Can', '0123456789', 'thanhcan11052000@gmail.com', NULL, '$2y$10$XDJvW8nL4F91eirvwJiiXOV1Al91LZCToqGr7mjPDHSL8ms4XlCRG', 0, 0, NULL, '2022-06-09 10:33:08', '2022-06-09 10:33:08');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
