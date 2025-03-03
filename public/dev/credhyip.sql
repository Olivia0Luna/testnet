-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2022 at 09:58 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vjmhoaaj_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `first_name`, `last_name`, `email`, `password`, `role`, `profile_photo`, `created_at`, `updated_at`) VALUES
(1, 'Okwor', 'Uchenna', 'ezegwuokwor@gmail.com', '$2y$10$CCNpgjOf64m4nGkIWl0jZegwSFCf3.u2Nm6Ns..szjqjJQFf1jpua', 'admin', 'user.png', '2022-10-13 06:14:11', '2022-10-13 06:14:11');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Admin',
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `snippet` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `detail` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Finance',
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `type`, `uuid`, `author`, `title`, `snippet`, `detail`, `category`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(1, 'auto', 'ecc39c25-2170-4683-82fb-98ca30b6e8c1', 'Admin', 'FG TD calls for AIB management to appear at committee', 'A Fine Gael TD has called for management at AIB to appear before the Oireachtas Committee on Finance next week over what he called their \"callous decision\" to r...', '\"A Fine Gael TD has called for management at AIB to appear before the Oireachtas Committee on Finance next week over what he called their \\\"callous decision\\\" to remove cash facilities at 70 branches.\"', 'Finance', 'https://www.rte.ie/news/politics/2022/0721/1311474-aib/', 'https://img.rasset.ie/0014585f-1600.jpg', '2022-07-21 12:18:06', '2022-07-21 12:18:06'),
(2, 'auto', '155b3912-5034-4e2e-b82e-96c57275e74e', 'Admin', 'Karnataka, Manipur And Chandigarh Top Niti Aayog’s India Innovation Index 2021', 'Karnataka, Manipur and Chandigarh have topped in their respective categories in the third edition of Niti Aayog’s India Innovation Index 2021 which was releas...', '\"The index was released in the presence of member VK Saraswat, CEO Parameswaran Iyer and Senior Adviser Neeraj Sinha and Institute for Competitiveness Chairman Amit Kapoor\\r\\n, , karnataka, manipur, chandigarh, niti aayog, India Innovation Index 2021\"', 'Finance', 'https://www.businessworld.in/article/Karnataka-Manipur-And-Chandigarh-Top-Niti-Aayog-s-India-Innovation-Index-2021/21-07-2022-438035/', 'https://static.businessworld.in/article/article_extra_large_image/1629809882_54XN2T_NI.jpg', '2022-07-21 12:18:06', '2022-07-21 12:18:06'),
(3, 'auto', '00c95f05-db26-45c2-85ec-7e932dacac11', 'Admin', 'WRC orders compensation payout over non wearing of mask', 'A State watchdog has ordered its first compensation payout concerning the non-wearing of a mask during the Covid-19 pandemic.\n\nAt the Workplace Relations Commis...', '\"A State watchdog has ordered its first compensation payout concerning the non-wearing of a mask during the Covid-19 pandemic.\"', 'Finance', 'https://www.rte.ie/news/business/2022/0721/1311475-wrc-orders-compensation-payout-over-non-wearing-of-mask/', 'https://img.rasset.ie/0016159b-1600.jpg', '2022-07-21 12:18:06', '2022-07-21 12:18:06'),
(4, 'auto', 'b51763dd-9a74-46d7-82bb-9198ec3ccf00', 'Admin', 'Italian Bonds Sell Off as Government Close to Collapse', 'Italians bonds fell on Thursday after Prime Minister Mario Draghi tendered his resignation for a second time.\n\nThe yield on the 10-year bond, which moves invers...', '\"The yield on the 10-year bond traded at the highest level since the end of June, just after the European Central Bank said it would soon start raising...\"', 'Finance', 'https://www.marketwatch.com/articles/italian-bonds-government-collapse-51658399655', 'https://images.barrons.com/im-58457/social', '2022-07-21 12:18:06', '2022-07-21 12:18:06'),
(5, 'auto', '7a1d70ae-da4a-43b9-855f-f8ede8ff1483', 'Admin', 'AT&T Adds Subscribers in Its First Stand-Alone Quarter. They Came at a Cost.', 'In its first three months as a telecom pureplay in years, AT&T showed big subscriber growth from the year-ago period but fell flat on its free cash flow generat...', '\"AT&T reported postpaid net additions, or customers who pay a monthly bill, of almost 1.1 million, including 813,000 phones.\"', 'Finance', 'https://www.marketwatch.com/articles/at-t-added-subscribers-51658356458', 'https://images.barrons.com/im-587338/social', '2022-07-21 12:18:06', '2022-07-21 12:18:06'),
(6, 'auto', '33e88baf-0c6f-4dd6-af7e-da032abb1ac9', 'Admin', 'Century Plyboards Q1 Profit Rises 3-fold To 92.62 Cr; Revenue Up 94.3% At Rs 888.78 Cr', 'Century Plyboards (India) Ltd on Wednesday reported a nearly three-fold rise in its consolidated net profit to 92.62 crore for the first quarter ended on June 2...', '\"Its revenue from the operation rose 94.25 per cent to Rs 888.78 crore during the quarter under review. It was Rs 457.54 crore in the corresponding quarter previous fiscal, , Century Plyboards, bse nse\"', 'Finance', 'https://www.businessworld.in/article/Century-Plyboards-Q1-Profit-Rises-3-fold-To-92-62-Cr-Revenue-Up-94-3-At-Rs-888-78-Cr/21-07-2022-438032/', 'https://static.businessworld.in/article/article_extra_large_image/1499854010_bxHrJL_assetsmanagement-T.jpg', '2022-07-21 12:18:06', '2022-07-21 12:18:06'),
(7, 'auto', 'ebc76987-0f77-49a3-9816-661f9ac68deb', 'Admin', 'CSO: Govt supports to households down €2.2bn', 'Government supports to households, in the form of the Employment Wage Subsidy Scheme (EWSS) and the Pandemic Unemployment Payment (PUP) were down €2.2bn in th...', '\"Government supports to households, in the form of the Employment Wage Subsidy Scheme (EWSS) and the Pandemic Unemployment Payment (PUP) were down \\u20ac2.2bn in the first quarter of this year, compared to the same time last year.\"', 'Finance', 'https://www.rte.ie/news/business/2022/0721/1311465-cso-govt-supports-to-households-down-2-2bn/', 'https://img.rasset.ie/001be734-1600.jpg', '2022-07-21 12:18:07', '2022-07-21 12:18:07'),
(8, 'auto', '11d58551-2ed8-4ff4-b5c0-4d4aba7effbb', 'Admin', 'Are You There, Margaret? It’s Me, Liz...', 'Comment Gift Article Share\n\nThe surest indication that we live in a decadent age is the surfeit of repeats. Hollywood is a franchise machine for producing new i...', '\"Truss had made it to the final two to replace Boris Johnson as leader of the Conservative Party \\u2014 and British\\u00a0prime minister.\"', 'Finance', 'https://www.washingtonpost.com/business/are-you-there-margaret-its-me-liz/2022/07/21/1687b70c-08de-11ed-80b6-43f2bfcc6662_story.html', 'https://www.washingtonpost.com/resizer/2CjPNwqvXHPS_2RpuRTKY-p3eVo=/1484x0/www.washingtonpost.com/pb/resources/img/twp-social-share.png', '2022-07-21 12:18:07', '2022-07-21 12:18:07'),
(9, 'auto', 'e25158e8-2837-4767-ad04-ef731dce4e74', 'Admin', 'Documenta Art Fair Turned Ugly by Antisemitism and Agitprop', 'Comment Gift Article Share\n\nBy the time my wife and I got to Kassel to see the latest edition of the Documenta — the once-in-five-years event that, in the con...', '\"At one of the world\\u2019s great art festivals in Kassel, Germany,\\u00a0any groundbreaking works\\u00a0were overshadowed by\\u00a0far left rhetoric of every national flavor.\"', 'Finance', 'https://www.washingtonpost.com/business/documenta-art-fair-turned-ugly-by-antisemitism-and-agitprop/2022/07/21/b7e0058e-08dc-11ed-80b6-43f2bfcc6662_story.html', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/W5AX2BQI3QI63AFWIPZL7TDGMI.jpg&w=1440', '2022-07-21 12:18:07', '2022-07-21 12:18:07'),
(10, 'auto', 'fa8c1c1b-5b9f-4165-ba61-1ba47e6d763a', 'Admin', 'Big Tech builds AI with bad data. So scientists sought better sets.', 'Listen 8 min Comment Gift Article Share\n\nYacine Jernite’s fears about bias in artificial intelligence were vividly affirmed in 2017, when a Facebook translati...', '\"BigScience is a global effort to build a more transparent, accountable AI, with less of the bias that infects so many Big Tech initiatives.\"', 'Finance', 'https://www.washingtonpost.com/technology/2022/07/21/big-science-ai-open-source-language-model/', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/IIOTKPAC7QI63C7LFNHEQGYVAA.jpg&w=1440', '2022-07-21 12:18:07', '2022-07-21 12:18:07'),
(11, 'auto', '1c4ee1f9-72f9-4605-942a-61e937d2d065', 'Admin', 'Odisha Will Soon Have All Time Grain Dispensing Machines To Provide Foodgrains', 'Odisha will soon have All Time Grain (ATG) dispensing machines to provide foodgrains to beneficiaries under the public distribution system.\n\n\n\nThis was stated b...', '\"The ATG will be similar to ATM machines but will dispense foodgrains and will be introduced in the urban areas of the state in the preliminary phase, , All Time Grain, odisha government\"', 'Finance', 'https://www.businessworld.in/article/Odisha-Will-Soon-Have-All-Time-Grain-Dispensing-Machines-To-Provide-Foodgrains/21-07-2022-438048/', 'https://static.businessworld.in/article/article_extra_large_image/1654337088_3yKW3T_naveen_patnaik.jpeg', '2022-07-21 12:22:03', '2022-07-21 12:22:03'),
(12, 'auto', '5249b820-8406-4960-881e-c1e2a5212bd5', 'Admin', 'Europe’s Central Bank Raises Key Rate by More Than Expected in Inflation Fight', 'The European Central Bank lifted its key rate by a bigger-than-expected half point as it followed the Federal Reserve in picking up the fight against inflation....', '\"ECB President Christine Lagarde may also announce details today of a program to soften the differences in bond yields between countries.\"', 'Finance', 'https://www.marketwatch.com/articles/ecb-meeting-interest-rate-hike-decision-51658245484', 'https://images.barrons.com/im-560557/social', '2022-07-21 12:22:03', '2022-07-21 12:22:03'),
(13, 'auto', '2e8ccd07-5bde-4b2a-a7a8-9fc69c3d4593', 'Admin', 'European Central Bank hikes interest rates by 50 basis points, approves anti-fragmentation tool', 'The European Central Bank on Thursday lifted interest rates by 50 basis points, or half a percentage point, and approved a new tool designed to keep yields on b...', '\"The European Central Bank on Thursday lifted interest rates by 50 basis points, or half a percentage point, and approved a new tool designed to keep yields...\"', 'Finance', 'https://www.marketwatch.com/story/european-central-bank-hikes-interest-rates-by-50-basis-points-approves-anti-fragmentation-tool-2022-07-21', 'https://s.wsj.net/public/resources/MWimages/MW-GP644_MicroS_ZG_20180906154215.jpg', '2022-07-21 12:22:03', '2022-07-21 12:22:03'),
(14, 'auto', '5e951e86-7e68-4c04-a60d-c12b352e1c5d', 'Admin', 'Google Stock Is A Steal (NASDAQ:GOOG)', 'Alena Kravchenko\n\nThe valuation of Alphabet Inc. (NASDAQ:GOOG) (NASDAQ:GOOGL) is out of line with the tech company\'s sturdy and recession-resistant market posit...', '\"Google\\u2019s businesses are dirt cheap and management is shareholder friendly. Click here to read why GOOG shares are a steal at the current price.\"', 'Finance', 'https://seekingalpha.com/article/4525265-google-is-a-steal', 'https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1364485108/image_1364485108.jpg?io=getty-c-w750', '2022-07-24 00:02:22', '2022-07-24 00:02:22'),
(15, 'auto', '5f232553-38b7-47be-b7bc-a7e76fe7853e', 'Admin', 'News: Bloomberg: Cowen shares why President Biden\'s Covid diagnosis is a wake up call that the pandemic isn\'t over', 'We use cookies and similar technologies to improve your website experience and help us understand how you use our website. By continuing to use this website, yo...', '\"\"', 'Finance', 'https://economics.gmu.edu/articles/17749', 'https://economics.gmu.edu/assets/placeholders/default_news-96e8888ee571b46ffeb956f85c68165e081ba65ff2609cee778c67b356619d39.jpg', '2022-07-24 00:02:22', '2022-07-24 00:02:22'),
(16, 'auto', '27ae8e60-8b3c-4ad0-a32b-877318e4a196', 'Admin', 'News: Washington Examiner: Recent PHD graduate, Bjoerkheim, comments on Pennsylvania bill regulating nursing home staffing agencies', 'We use cookies and similar technologies to improve your website experience and help us understand how you use our website. By continuing to use this website, yo...', '\"\"', 'Finance', 'https://economics.gmu.edu/articles/17750', 'https://economics.gmu.edu/assets/placeholders/default_news-96e8888ee571b46ffeb956f85c68165e081ba65ff2609cee778c67b356619d39.jpg', '2022-07-24 00:02:22', '2022-07-24 00:02:22'),
(17, 'auto', '74b1eea8-e683-45d1-acbb-1f4037879461', 'Admin', 'The ESG disruption of financial services: A roadmap for Experience Management teams', 'Customers, colleagues and citizens all care increasingly about issues including single-use plastic, carbon emissions, labor conditions and whether an organizati...', '\"Customers, colleagues and citizens all care increasingly about issues including single-use plastic, ...\"', 'Finance', 'https://www.finextra.com/blogposting/22629/the-esg-disruption-of-financial-services-a-roadmap-for-experience-management-teams', 'https://www.finextra.com/finextra-images/member_photos/thumb_144613_christopher_colley.png', '2022-07-24 00:02:22', '2022-07-24 00:02:22'),
(18, 'auto', 'bce7bf61-ad9b-45c9-972d-0aa6ca5749ee', 'Admin', 'Direct Investment by Country and Industry, 2021', 'Resources\n\nDefinitions\n\nDirect investmentis a category of cross-border investment associated with a resident in one economy having control or a significant degr...', '\"The U.S. direct investment abroad position, or cumulative level of investment, increased $403.3 billion to $6.49 trillion at the end of 2021 from $6.09 trillion at the end of 2020, according to statistics released today by the U.S. Bureau of Economic Analysis (BEA). The increase reflected a $352.6 billion increase in the position in Europe, primarily in Ireland and the United Kingdom. By industry, holding company affiliates owned by U.S. manufacturers had the largest increase.\"', 'Finance', 'https://www.bea.gov/news/2022/direct-investment-country-and-industry-2021', 'https://www.bea.gov/themes/custom/beagov_theme/logo.ico', '2022-07-24 00:02:22', '2022-07-24 00:02:22'),
(19, 'auto', '7473ca64-c7f4-429e-be7f-c6efdd23b4cc', 'Admin', 'Italian PM Mario Draghi Expected To Resign Soon', 'Italian Prime Minister Mario Draghi told parliament on Thursday that he was going to see President Sergio Mattarella and inform him of his intentions after thre...', '\"Three of Prime Minister Mario Draghi\'s main coalition partners snubbed a confidence vote he had called to try to end divisions and renew their fractious alliance, , italian government, mario draghi\"', 'Finance', 'https://www.businessworld.in/article/Italian-PM-Mario-Draghi-Expected-To-Resign-Soon/21-07-2022-438051/', 'https://static.businessworld.in/article/article_extra_large_image/1658390418_zogI9r_mario_draghi.jpeg', '2022-07-24 00:02:22', '2022-07-24 00:02:22'),
(20, 'auto', '8c5703c0-26e2-4de2-8035-30f3b84f0531', 'Admin', 'Embassy Office Parks REIT Q1 - Stable Occupancy; RFPs In Bengaluru Support Grade A Office Demand: Nirmal Bang', 'Embassy Office Parks real estate investment trust delivered good numbers for Q1 FY23, with revenue coming in at Rs 8,294 million, up 12.4% YoY and 10.8% QoQ.\n\nT...', '\"Embassy Office Parks real estate investment trust delivered good numbers for Q1 FY23, with revenue coming in at Rs 8,294 mn \\n\\n backed by healthy \\u2018return to work\\u2019 trajectory, coupled with robust hiring by IT\\/IT enabled services and global captive centres. \\n\\nEmbassy REIT leased ~1.8 million square feet across 25 deals in Q1 FY23, of which ~0.42 million area was released at 31% re-leasing spread to new tenants and ~0.85 million area was renewed at 9% renewable spread. \\n\\nThe company has pre-leased ~0.55 million square feet to JP Morgan at ETV.\"', 'Finance', 'https://www.bqprime.com/research-reports/embassy-office-parks-reit-q1-stable-occupancy-rfps-in-bengaluru-support-grade-a-office-demand-nirmal-bang', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F2d9b231b-046b-41b1-823b-31e9054e8d8d%2FEmbassy_TechVillage_in_Bengaluru___Source_Company_website_.png?rect=0%2C13%2C443%2C233&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-24 13:40:06', '2022-07-24 13:40:06'),
(21, 'auto', '62e11c8f-e8e1-486f-be66-d58efc7435de', 'Admin', 'Can Fin Homes Q1 Review - Outcome Of Branch Audits Benign; Provision Write-Backs Drive Earnings: Motilal Oswal', 'Can Fin Homes Ltd. said the audit of all its branches has been completed. The same was initiated after a few fraudulent accounts came to light. The outcome of t...', '\"Can Fin Homes Ltd. said the audit of all its branches has been completed. The same was initiated after a few fraudulent accounts came to light. The outcome of the investigation has been covered in greater detail inside. \\n\\nWhile disbursements in Q1 FY23 were arguably below our expectations, the same will gather pace in subsequent quarters. \\n \\n\\nValuations can get re-rated to two times price\\/book value, if Can Fin Homes can continue to deliver the same pristine asset quality over the next few quarters.\"', 'Finance', 'https://www.bqprime.com/research-reports/can-fin-homes-q1-review-outcome-of-branch-audits-benign-provision-write-backs-drive-earnings-motilal-oswal', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F574c1d4b-0cde-416c-89c6-083428b5cec7%2FResidential_buildings___Source_pxhere_com_.jpg?rect=0%2C421%2C3008%2C1579&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-24 13:40:06', '2022-07-24 13:40:06'),
(22, 'auto', 'aba2ea75-9e37-4ad2-bee9-a54f88894670', 'Admin', 'Meta Could Crush Q2: 4 Key Metrics To Watch (NASDAQ:META)', 'Fritz Jorgensen\n\nThesis\n\nBuying Meta stock at levels < $200/share is arguably the best investment opportunity that I have seen for over a decade (read my articl...', '\"I am very bullish on Meta as I believe the company is undervalued relative to the company\'s fundamentals and long-term potential.\"', 'Finance', 'https://seekingalpha.com/article/4525371-meta-will-crush-q2-four-key-metrics-to-watch', 'https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1350448399/image_1350448399.jpg?io=getty-c-w750', '2022-07-24 13:40:06', '2022-07-24 13:40:06'),
(23, 'auto', '0e65d0d8-33f5-481e-95e1-8564856f6910', 'Admin', 'Waimate ends Temuka\'s reign as South Canterbury club rugby champion', 'Mud and water flies as Malakai Uasi (holding the ball) of Harlequins struggles to maintain his feet in the conditions during the South Canterbury senior club ru...', '\"Waimate has stunned defending South Canterbury senior club rugby champions Temuka and will now play Celtic in the grand final.\"', 'Finance', 'https://www.stuff.co.nz/timaru-herald/sport/129365746/waimate-ends-temukas-reign-as-south-canterbury-club-rugby-champion', 'https://resources.stuff.co.nz/content/dam/images/4/y/z/u/w/r/image.related.StuffLandscapeSixteenByNine.1420x800.250r8y.png/1658623092939.jpg', '2022-07-24 13:40:06', '2022-07-24 13:40:06'),
(24, 'auto', 'a33996ec-247e-424e-b044-e6d667d6d25b', 'Admin', 'Covid-19: 5535 new community cases and 14 further deaths', 'The Ministry of Health and Te Whatu Ora (Health New Zealand) are monitoring the continued increase of Covid-19 cases and hospitalisations.\n\nThe Ministry of Heal...', '\"The seven-day rolling average of community case numbers is 8563 on Sunday.\"', 'Finance', 'https://www.stuff.co.nz/national/health/coronavirus/129365775/covid19-5535-new-community-cases-and-14-further-deaths', 'https://resources.stuff.co.nz/content/dam/images/4/y/z/a/p/s/image.related.StuffLandscapeSixteenByNine.1420x800.250r9r.png/1658624734674.jpg', '2022-07-24 13:40:07', '2022-07-24 13:40:07'),
(25, 'auto', '99d4bb97-0bbb-4245-b546-d06c63f9eb97', 'Admin', 'Energy stocks begin to bounce even with lethargic crude prices (NYSEARCA:XLE)', 'The energy sector (NYSEARCA:XLE) gained 3.7% this week for its biggest weekly gain since the end of May, even with crude oil prices finishing flat after back-to...', '\"The energy sector (XLE) gained 3.7% this week for its biggest weekly gain since the end of May, even with crude oil prices finishing flat after back-to-back weekly declines, as a...\"', 'Finance', 'https://seekingalpha.com/news/3859822-energy-stocks-begin-to-bounce-even-with-lethargic-crude-prices', 'https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1213764535/image_1213764535.jpg?io=getty-c-w750', '2022-07-24 13:40:07', '2022-07-24 13:40:07'),
(26, 'auto', '6a075a86-f10c-4266-a69e-7ba2c5e28ba2', 'Admin', 'Bank of Ireland triples length of paid paternity leave', 'Bank of Ireland has introduced a new policy that triples the bank’s current paternity leave, allowing an employee to take six weeks of paid leave within the f...', '\"Bank of Ireland has introduced a new policy that triples the bank\\u2019s current paternity leave, allowing an employee to take six weeks of paid leave within the first six months of the new child\\u2019s life.\"', 'Finance', 'https://www.finextra.com/newsarticle/40699/bank-of-ireland-triples-length-of-paid-paternity-leave', 'https://www.finextra.com/finextra-images/top_pics/xl/bank-of-ireland-3.jpg', '2022-07-25 09:21:55', '2022-07-25 09:21:55'),
(27, 'auto', '6a017c0b-4f69-4b17-bbf8-e6e1d11010c6', 'Admin', 'China Belt & Road Spending Dips In H1, With No Investment In Russia', 'China\'s finance and investment spending in Belt and Road countries fell slightly in the first half compared to a year earlier, with no new coal projects and inv...', '\"China\'s finance and investment spending in Belt and Road countries fell slightly in the first half compared to a year earlier, with no new coal projects and investments in Russia, Egypt and Sri Lanka falling to zero, new research showed, , china, road projects, russia\"', 'Finance', 'https://www.businessworld.in/article/China-Belt-Road-Spending-Dips-In-H1-With-No-Investment-In-Russia/25-07-2022-438533/', 'https://static.businessworld.in/article/article_extra_large_image/1590060359_0R25ZY_2020_05_21T081456Z_1_LYNXMPEG4K0IN_RTROPTP_4_CHINA_PARLIAMENT.JPG', '2022-07-25 09:21:55', '2022-07-25 09:21:55'),
(28, 'auto', '8b0b2ba3-b8bf-4b34-a5ed-a37404d1287f', 'Admin', 'Dow Rises, Oil Prices Fall, Earnings and Fed Decision Loom—and What Else Is Happening in the Stock Market Today', 'Stocks rose Monday as investors looked ahead to a busy week, including a decision from the Federal Reserve on interest rates and earnings from Big Tech.\n\nFuture...', '\"In a busy week, investors will get an interest-rate decision from the Fed, GDP and inflation data, and a wave of corporate earnings, including from Big Tech.\"', 'Finance', 'https://www.marketwatch.com/articles/stock-market-today-51658740833', 'https://images.barrons.com/im-532073/social', '2022-07-25 09:21:55', '2022-07-25 09:21:55'),
(29, 'auto', '7e0c9e82-e6f5-44f1-a047-7cfa3769db71', 'Admin', 'Permission is a building block of leadership', 'Permission is a building block of leadership\n\nWhen leaders give themselves permission to listen, relax, be imperfect and gain clarity before making decisions, t...', '\"When leaders give themselves permission to listen, relax, be imperfect and gain clarity before making decisions, their teams will follow and become more engaged, writes Alaina Love, the CEO of Purpose Linked Consulting.\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=EFB0EF8E-4F58-4C01-8C3B-4ADDF7829AC6&issueId=E091171F-F68A-4797-B623-9A992273874A&copyId=0ACF9CC8-D809-4072-8FD0-CC957C0D0509', 'https://alquemie.smartbrief.com/contentrepo/website/workforce/0000-d7e4/logo.gif', '2022-07-27 18:11:36', '2022-07-27 18:11:36'),
(30, 'auto', '429421cb-1405-4dc2-a9c8-6eefec043431', 'Admin', 'Kanoe Namahoe 2022', 'Other organizations are picking up the idea, as we see in today’s top story. Companywide breaks are giving employees the opportunity to get away from email an...', '\"<div>Take a break.<\\/div>\\r\\n<div>\\u00a0<\\/div>\\r\\n<div>Future PLC, our parent company, closes its offices for one week during the Christmas holiday. In February, our CEO, Zillah Byng-Thorne, made the decision to do something similar during the summer. Next month, employees will be offered two long weekends off -- a Friday through Monday -- with pay. I am looking forward to the reprieve.<\\/div>\\r\\n<div>\\u00a0<\\/div>\\r\\n<div><a href=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=EFB0EF8E-4F58-4C01-8C3B-4ADDF7829AC6&issueId=E091171F-F68A-4797-B623-9A992273874A&copyId=F4E9FD1B-C75F-499B-AC46-B41DD8445395', 'https://alquemie.smartbrief.com/contentrepo/website/workforce/0000-d7e4/logo.gif', '2022-07-27 18:11:36', '2022-07-27 18:11:36'),
(31, 'auto', 'ff712973-2c55-4c32-bb07-bca5ccaae70f', 'Admin', 'We\'re all one beat away from becoming elevator music.', 'SmartBrief on Workforce\n\nEssential reading for HR professionals\n\nDesigned specifically for managers and HR professionals, SmartBrief on Workforce is a FREE dail...', '\"<a href=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=EFB0EF8E-4F58-4C01-8C3B-4ADDF7829AC6&issueId=E091171F-F68A-4797-B623-9A992273874A&copyId=AB3550CF-C736-49D4-907F-0FBE4AB080BF', 'https://alquemie.smartbrief.com/contentrepo/website/workforce/0000-d7e4/logo.gif', '2022-07-27 18:11:36', '2022-07-27 18:11:36'),
(32, 'auto', '34206f2e-f4ab-49ca-bd74-5e4fc7e0e189', 'Admin', 'Plan Harmony - Collaborative trip planning tool', 'Why should the fun have to wait for the trip? Work with your friends to build the perfect itinerary and keep track of it while you\'re traveling. Leave the sprea...', '\"Why should the fun have to wait for the trip? Work with your friends to build the perfect itinerary and keep track of it while you\'re traveling. Leave the spreadsheets at work and let Plan Harmony help you plan your next adventure.\"', 'Finance', 'https://www.producthunt.com/posts/plan-harmony', 'https://ph-files.imgix.net/b9b3e1c9-b3a9-4e30-bddd-6de07cf736ac.png?auto=format&fit=crop&frame=1&h=512&w=1024', '2022-07-27 18:11:36', '2022-07-27 18:11:36'),
(33, 'auto', '58bac075-5567-4590-9ff7-b8ca56f2c343', 'Admin', 'Oil rises for a second day on supply tightness concerns', 'Oil prices rose today for a second day on increasing concerns about tightening European supply after Russia, a key oil and natural gas supplier to the region, c...', '\"Oil prices rose today for a second day on increasing concerns about tightening European supply after Russia, a key oil and natural gas supplier to the region, cut gas supply through a major pipeline.\"', 'Finance', 'https://www.rte.ie/news/business/2022/0726/1312248-oil-rises-for-a-second-day-on-supply-tightness-concerns/', 'https://img.rasset.ie/001b22f6-1600.jpg', '2022-07-27 18:11:37', '2022-07-27 18:11:37'),
(34, 'auto', 'f99a370a-16bb-4fea-8315-fd4c4ca19637', 'Admin', 'The Surging Dollar Means Trouble, and Bargains, in Emerging Markets', 'Just when emerging market assets seemed ready to revive a bit, the surging U.S. dollar knocked them into a fresh tailspin.\n\nThe Bloomberg Dollar Spot Index has ...', '\"Key emerging markets like Brazil and Mexico have been ahead of the U.S. Federal Reserve in hiking rates to fight inflation, setting the stage for a loosening...\"', 'Finance', 'https://www.marketwatch.com/articles/the-surging-dollar-means-trouble-and-bargains-in-emerging-markets-51658779780', 'https://images.barrons.com/im-590464/social', '2022-07-27 18:11:37', '2022-07-27 18:11:37'),
(35, 'auto', 'b0187741-02cc-44ba-aec9-fb2db5157340', 'Admin', 'Amazon ad sales up 18% for Q2', 'Amazon ad sales up 18% for Q2\n\nAmazon ad sales increased 18% year-over-year for the second quarter to $8.76 billion, while the retailer generated $121.2 billion...', '\"Amazon ad sales increased 18% year-over-year for the second quarter to $8.76 billion, while the retailer generated $121.2 billion in overall sales for the period. Amazon touted its ad platform updates that included the launch of Amazon Marketing Stream, which provides real-time analytics for sponsored products ads.\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=7325D171-85C1-4A99-9773-4FE6659490B5&issueId=D5ED9B66-9041-414F-8094-6281A50E84DE&copyId=94995BE6-5B01-479F-96F3-FC8853BDF3CB', 'https://alquemie.smartbrief.com/contentrepo/website/aaaa/0000-21ae/logo.gif', '2022-07-29 18:15:40', '2022-07-29 18:15:40'),
(36, 'auto', '0701463e-d61c-4112-b9c9-aaccd1f830a5', 'Admin', 'Who Said It? How desperate do you have to be to start doing push-ups to solve your problems?', 'Who Said It?\n\n\n\nHow desperate do you have to be to start doing push-ups to solve your problems?\n\nDon DeLillo or Karl Ove Knausgaard\n\n\n\nCheck your answer here.', '\"<span style=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=7325D171-85C1-4A99-9773-4FE6659490B5&issueId=D5ED9B66-9041-414F-8094-6281A50E84DE&copyId=467C338C-520E-48E4-93BE-4FBEA1152CAA', 'https://alquemie.smartbrief.com/contentrepo/website/aaaa/0000-21ae/logo.gif', '2022-07-29 18:15:40', '2022-07-29 18:15:40'),
(37, 'auto', 'b6a0c1dc-bc72-404e-b59c-77e5b237e197', 'Admin', 'New Stocks and Trading Ideas for Mining, Automotive, Defense, Health & Wellness (CSE: VBAM) (TSX: XTC) (OTCQX: ACCMF) (NASDAQ: MOB) (OTCPink: CAVR)', 'Vancouver, Kelowna, Delta, BC - July 29, 2022 (Investorideas.com Newswire) Investorideas.com, a global news source and expert investing resource, announces its ...', '\"\"', 'Finance', 'https://www.investorideas.com/news/2022/main/07291Stocks.asp', 'https://www.investorideas.com/images/logos/logo-1024x576-2.jpg', '2022-07-29 18:15:40', '2022-07-29 18:15:40'),
(38, 'auto', 'e1cabdd9-7050-443d-b805-ea31e0aa7174', 'Admin', 'U.S. stocks trade higher as S&P 500 heads for its best month since November 2020', 'U.S. stocks are trading higher Friday morning, with all three major benchmarks heading for weekly gains as investors weigh the latest inflation reading as well ...', '\"U.S. stocks are trading higher Friday morning, with all three major benchmarks heading for weekly gains as investors weigh the latest inflation reading as...\"', 'Finance', 'https://www.marketwatch.com/story/us-stocks-trade-higher-as-sp-500-heads-for-its-best-month-since-november-2020-2022-07-29', 'https://s.wsj.net/public/resources/MWimages/MW-GP644_MicroS_ZG_20180906154215.jpg', '2022-07-29 18:40:27', '2022-07-29 18:40:27'),
(39, 'auto', '7d1290d1-7b83-4447-99b8-732b4f027274', 'Admin', 'AR Chowdhury Row: Lok Saba Gets Adjourned For A Day Amid Protests', 'Lok Sabha proceedings were adjourned for the day on Friday amid protests and counter protests by BJP members and the Opposition over the row triggered by Congre...', '\"On Friday, Lok Sabha proceedings were adjourned amid uproar of protests and counter protests by ruling and opposition party over the remark by Congress MP Adhir Ranjan Chowdhury on President Droupadi Murmu, , lok sabha, adhir ranjan chowdhury, Droupadi Murmu, president of india\"', 'Finance', 'https://www.businessworld.in/article/AR-Chowdhury-Row-Lok-Saba-Gets-Adjourned-For-A-Day-Amid-Protests/29-07-2022-439444/', 'https://static.businessworld.in/article/article_extra_large_image/1580539705_q2mJHo_Adhir_Ranjan_Chowdhury.jpg', '2022-07-29 18:40:27', '2022-07-29 18:40:27'),
(40, 'auto', '32dda15e-d06c-49fa-a8f4-3ec4903d45f8', 'Admin', 'Live Updates: Death Toll in Kentucky Flooding Rises to 15', 'Floods can surge all year round, in every region of the world. But discerning the relationship between any given flood and climate change is no small feat, expe...', '\"The state\\u2019s governor said he expected the number to rise further after heavy rain and severe flooding.\"', 'Finance', 'https://www.nytimes.com/live/2022/07/29/us/kentucky-flooding-west-virginia', 'https://static01.nyt.com/images/2022/07/29/us/29kentuckyPromo-9amEST/29vid-kentucky-flood2-facebookJumbo.jpg', '2022-07-29 18:40:27', '2022-07-29 18:40:27'),
(41, 'auto', 'a19d03c6-6b12-4408-bb25-60742bf3952e', 'Admin', 'Why leaders need to get SMART about DUMB goals', 'Why leaders need to get SMART about DUMB goals\n\nSMART goals can keep leaders focused on specific objectives that are measured and realistic, but DUMB goals are ...', '\"SMART goals can keep leaders focused on specific objectives that are measured and realistic, but DUMB goals are worthy too, because, as Robert Whipple writes, they are\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=77F8DA5B-9982-431B-9E20-444163A3CF79&issueId=67F52CF7-2E01-4641-AB6D-67373B0F3C24&copyId=8E88FC89-3C7E-4CCB-91DD-5DB625E5AF3A', 'https://alquemie.smartbrief.com/contentrepo/website/leadership/0000-acf5/logo.gif', '2022-07-29 18:55:21', '2022-07-29 18:55:21'),
(42, 'auto', 'fb4be023-8ff9-4075-9b35-8e214db118a3', 'Admin', 'Funny dogs, llamas and cats vie for top photo award', 'Funny dogs, llamas and cats vie for top photo award\n\nA happily crazed dog in the snow, dogs frolicking in water and shaking it off, along with llamas, mules and...', '\"A happily crazed dog in the snow, dogs frolicking in water and shaking it off, along with llamas, mules and a cat playing chess are among the finalists selected in the annual Animal Friend Comedy Pet Photography Awards. Winners will be announced on Sept. 14 and will receive a cash prize with more than $6,000 going to the animal charity of their choice.\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=77F8DA5B-9982-431B-9E20-444163A3CF79&issueId=67F52CF7-2E01-4641-AB6D-67373B0F3C24&copyId=F55E9FE1-E790-47DF-8095-F1A1D7A4AB19', 'https://alquemie.smartbrief.com/contentrepo/website/leadership/0000-acf5/logo.gif', '2022-07-29 18:55:21', '2022-07-29 18:55:21'),
(43, 'auto', 'cb70ab08-4cc4-4840-a1cb-2c8a15cb23dd', 'Admin', 'Who Said It? How desperate do you have to be to start doing push-ups to solve your problems?', 'Who Said It?\n\n\n\nHow desperate do you have to be to start doing push-ups to solve your problems?\n\nDon DeLillo or Karl Ove Knausgaard\n\n\n\nCheck your answer here.', '\"<span style=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=77F8DA5B-9982-431B-9E20-444163A3CF79&issueId=67F52CF7-2E01-4641-AB6D-67373B0F3C24&copyId=467C338C-520E-48E4-93BE-4FBEA1152CAA', 'https://alquemie.smartbrief.com/contentrepo/website/leadership/0000-acf5/logo.gif', '2022-07-29 18:55:21', '2022-07-29 18:55:21'),
(44, 'auto', 'cc3ff3af-67e8-4e6c-a4c5-0b7fbf41a0de', 'Admin', 'Dow jumps nearly 125 points on gains in Chevron, Apple Inc. shares', 'The Dow Jones Industrial Average is climbing Friday morning with shares of Chevron and Apple Inc. seeing positive gains for the index. The Dow DJIA, +0.33% was ...', '\"The Dow Jones Industrial Average is climbing Friday morning with shares of Chevron and Apple Inc. seeing positive gains for the index. The Dow was most...\"', 'Finance', 'https://www.marketwatch.com/story/dow-jumps-nearly-125-points-on-gains-in-chevron-apple-inc-shares-01659103389', 'https://mw3.wsj.net/mw5/content/logos/mw_logo_social.png', '2022-07-29 19:05:49', '2022-07-29 19:05:49'),
(45, 'auto', 'd6fc0992-51e6-4c6c-b192-68909d37d34a', 'Admin', 'TrueCar sees more incentives to buy new cars in July for first time in nearly 20 months as affordability declined', 'TrueCar Inc. TRUE, -1.34% , the online used and new car buying and selling company, said it expects total new vehicle sales of 1.12 million vehicles in July, do...', '\"TrueCar Inc. undefined, the online used and new car buying and selling company, said it expects total new vehicle sales of 1.12 million vehicles in July,...\"', 'Finance', 'https://www.marketwatch.com/story/truecar-sees-more-incentives-to-buy-new-cars-in-july-for-first-time-in-nearly-20-months-as-affordability-declined-2022-07-29', 'https://s.wsj.net/public/resources/MWimages/MW-GP644_MicroS_ZG_20180906154215.jpg', '2022-07-29 19:05:49', '2022-07-29 19:05:49'),
(46, 'auto', '4d26ae73-77c0-4aa2-93b0-b251c46c2c6d', 'Admin', 'Cannabis Stock News: Curaleaf (CSE: CURA) (OTCQX: CURLF) Celebrates Opening Of Tampa Citrus Park Dispensary', 'WAKEFIELD, Mass. - July 29, 2022 (Investorideas.com Newswire) Curaleaf Holdings, Inc. (CSE: CURA / OTCQX: CURLF) (\"Curaleaf\" or the \"Company\"), a leading intern...', '\"\"', 'Finance', 'https://www.investorideas.com/news/2022/cannabis/07291CSE-CURA.asp', 'https://www.investorideas.com/images/potcastsrss.jpg', '2022-07-29 19:05:49', '2022-07-29 19:05:49'),
(47, 'auto', '5790b731-3808-44fa-9f93-0bbf85b0b197', 'Admin', 'Why Is Berkshire So Undervalued?', 'I believe Berkshire Hathaway ( BRK.A, Financial) (BRk.B) looks cheap at the moment, and as the company keeps growing its earnings and balance sheet, it is only ...', '\"GuruFocus Article or News written by Rupert Hargreaves and the topic is about: The stock keeps getting cheaper despite growing its underlying value\"', 'Finance', 'https://www.gurufocus.com/news/1838343/why-is-berkshire-so-undervalued', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-29 19:30:28', '2022-07-29 19:30:28'),
(48, 'auto', 'c598d27d-762c-416f-bb48-054b2a94cbbc', 'Admin', 'META PROTOCOL (MPC) Is Now Available for Trading on LBank Exchange', 'Internet City, Dubai - July 29, 2022 (Newsfile Corp.) (Investorideas.com Newswire) LBank Exchange, a global digital asset trading platform, has listed META PROT...', '\"\"', 'Finance', 'https://www.investorideas.com/news/2022/cryptocurrency/07291META-PROTOCOL.asp', 'https://images.newsfilecorp.com/files/8831/132295_3d1afe4b342eea3e_001full.jpg', '2022-07-29 19:30:28', '2022-07-29 19:30:28'),
(49, 'auto', 'f17fc596-205e-4f7d-a4c6-e16f454f02f6', 'Admin', 'Reserve Bank of India', '', '\"\"', 'Finance', 'https://www.rbi.org.in/scripts/BS_PressReleaseDisplay.aspx?prid=54117', 'https://www.rbi.org.in/images/Rbinote.jpeg', '2022-07-29 19:30:28', '2022-07-29 19:30:28'),
(50, 'auto', '12a1f4dc-dd25-4812-8298-5720ee00dc67', 'Admin', 'Consolidation Now', 'July 29, 2022 (Investorideas.com Newswire) S&P 500 did a brief intraday downswing yesterday - very fast erased. Bonds strong, market breadth further improving, ...', '\"\"', 'Finance', 'https://www.investorideas.com/news/2022/main/07292MonicaKingsley-SP500.asp', 'https://www.investorideas.com/images/top-sectors/news-investorideas.gif', '2022-07-29 19:45:38', '2022-07-29 19:45:38'),
(51, 'auto', '4cec3b63-6b9b-414f-8d00-bcb4c9ccf82b', 'Admin', 'Sarepta Will Seek Approval of Gene Therapy Before Completing Phase 3 Trial', 'Sarepta Therapeutics shocked Wall Street with news that it will submit its treatment for Duchenne muscular dystrophy for accelerated approval by the Food and Dr...', '\"The company had said it was in talks with the FDA about seeking early approval, but Wall Street analysts thought the agency would make it wait to apply.\"', 'Finance', 'https://www.marketwatch.com/articles/sarepta-gene-therapy-fda-approval-51659105360', 'https://images.barrons.com/im-593617/social', '2022-07-29 19:45:38', '2022-07-29 19:45:38'),
(52, 'auto', '9358f0d8-991c-44ba-9ae7-664452f31c33', 'Admin', 'Payroll startup B9 raises $2.6m', 'Source: B9\n\nB9 Inc, a fast-growing payroll solution platform, aimed at promoting creditworthiness through employment data and economic behavior, has announced a...', '\"B9 Inc, a fast-growing payroll solution platform, aimed at promoting creditworthiness through employment data and economic behavior, has announced a $2.6M funding round led by Sky Light Invest with participation from prominent FinTech investors Mbanq and the founders of Wrike, a project management application.\"', 'Finance', 'https://www.finextra.com/pressarticle/93577/payroll-startup-b9-raises-26m', 'https://www.finextra.com/about/finextra-logo.png', '2022-07-29 19:45:38', '2022-07-29 19:45:38'),
(53, 'auto', '02f74718-b5d3-4024-902f-96c1c46fc410', 'Admin', 'Reserve Bank of India', 'RBI/2022-2023/96\n\nDOR.AML.REC.57/14.06.001/2022-23 July 29, 2022 The Chairpersons/ CEOs of all the Regulated Entities Madam/Dear Sir, United Nations Security Co...', '\"\"', 'Finance', 'https://www.rbi.org.in/scripts/NotificationUser.aspx?Id=12364&Mode=0', 'https://www.rbi.org.in/images/Rbinote.jpeg', '2022-07-29 20:05:01', '2022-07-29 20:05:01'),
(54, 'auto', 'da38580b-f192-4138-bdc3-c2487f0ac2da', 'Admin', 'Indian Oil Q1 Results: Reports Standalone Net Loss Of Rs 1,993 Cr', 'State-owned refiner Indian Oil Corporation on Friday released its financial numbers for the quarter ended June 30, 2022 and reported a standalone net loss of Rs...', '\"Its revenue from operations surged 62.47 per cent YoY to Rs 2,51,933 crore compared with Rs 1,55,056 crore in the year-ago quarter, , indian oil corporation\"', 'Finance', 'https://www.businessworld.in/article/Indian-Oil-Q1-Results-Reports-Standalone-Net-Loss-Of-Rs-1-993-Cr/29-07-2022-439458/', 'https://static.businessworld.in/article/article_extra_large_image/1474375972_Sq3PwG_indianoil.jpg', '2022-07-29 20:05:01', '2022-07-29 20:05:01'),
(55, 'auto', 'f8707d57-e56e-404c-874d-79e89a72bac9', 'Admin', 'Elon Musk Says Inflation Might Be Trending Down', 'Inflation is a problem. It feels like prices for everything have been going up for months. But Tesla CEO Elon Musk is offering some hope for investors that this...', '\"It feels like prices for everything have been going up for months. Elon Musk hopes that trend is reversing.\"', 'Finance', 'https://www.marketwatch.com/articles/elon-musk-inflation-tesla-51659093585', 'https://images.barrons.com/im-557006/social', '2022-07-29 20:05:01', '2022-07-29 20:05:01'),
(56, 'auto', '9764e37d-3abf-4b4f-958b-db060f2e0a6f', 'Admin', 'Meta, Google, Apple and others reveal the messy state of digital advertising', 'Meta of course owns Facebook and Instagram, and the company is in unique circumstances as a lumbering ad giant that is competing with Chinese-owned TikTok in so...', '\"Quarterly reports reveal winners and losers among platforms vying for advertising dollars in a tough climate.\"', 'Finance', 'https://adage.com/article/digital-marketing-ad-tech-news/meta-google-amazon-apple-earnings-reveal-state-internet-advertising/2424951', 'https://adage.com/s3/files/styles/1200x630/public/20220729_tech_earnings_3x2.jpg', '2022-07-29 20:20:23', '2022-07-29 20:20:23'),
(57, 'auto', 'bff736b4-ca64-4a28-9b4e-28c21eeba16d', 'Admin', 'D-street Bulls End July On Positive Note, Indices Extend Their Winning Streak', 'D-street bulls ended the last trading day of July on a high as benchmark indices extended their winning streak to third day and ended the session with significa...', '\"The 30-share pack Sensex jumped 712 points or 1.25 per cent to close at 57,570.25. Its broader peer, Nifty50, rose 229 points or 1.35 per cent to end at a 3-month high and close above the 17,100 mark, , stock market, sensex, nifty\"', 'Finance', 'https://www.businessworld.in/article/D-street-Bulls-End-July-On-Positive-Note-Indices-Extend-Their-Winning-Streak/29-07-2022-439464/', 'https://static.businessworld.in/article/article_extra_large_image/1584936280_CHwEex_2020_03_23T031354Z_1_LYNXMPEG2M040_RTROPTP_3_YESBANK_INDIA.JPG', '2022-07-29 20:20:23', '2022-07-29 20:20:23'),
(58, 'auto', '7c814694-bde2-43dc-befc-20d19205f6d4', 'Admin', 'Watch the newest commercials from Subaru, Gap Kids, Speedo and more', 'Once registered, you can:\n\n- Read additional free articles each month\n\n- Comment on articles and featured creative work\n\n- Get our curated newsletters delivered...', '\"Subaru serves up another new spot starring members of the canine Barkley family.\"', 'Finance', 'https://adage.com/article/hot-spots/new-commercials-subaru-gap-kids-speedo-ancestry-cdw/2424971', 'https://s3-prod.adage.com/s3fs-public/styles/1200x630/public/20220729_subaruDog_3x2.jpg', '2022-07-29 20:20:23', '2022-07-29 20:20:23'),
(59, 'auto', '2ba7e591-0189-4d82-8b42-6d66fee68666', 'Admin', 'US Bank fined $37.5M, accused of opening fake accounts', 'SmartBrief for CFOs\n\nFinancial news and best practices that affect your bottom line\n\nDesigned specifically for CFOs and decision makers who need to stay smart a...', '\"\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=D1550287-8823-448B-9116-E82A667D4000&issueId=AE0FEAA4-746B-4E8D-9C87-CFB9F31E1DD7&copyId=DC4CBDC0-F566-4EFA-8B3E-F950584FF398', 'https://alquemie.smartbrief.com/contentrepo/website/cfo/0000-205d/logo.gif', '2022-07-29 20:35:36', '2022-07-29 20:35:36'),
(60, 'auto', 'c5d39fdb-5aef-4073-98a0-b6c7a91a8da1', 'Admin', 'Colin Hogan', 'shoot me an email.\n\n\n\nGot a friend or a colleague who would benefit from reading SmartBrief for CFOs? Pass this link along. And, while you\'re at it, check out t...', '\"<em>I\'m the editor of several SmartBrief newsletters focused on the global financial system and capital markets. <\\/em><br \\/><br \\/><em>If you have any thoughts on SmartBrief for CFOs or want to submit a story, <strong><a href=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=D1550287-8823-448B-9116-E82A667D4000&issueId=AE0FEAA4-746B-4E8D-9C87-CFB9F31E1DD7&copyId=DA56D8C3-DA61-4682-B1B7-9955B8406C16', 'https://alquemie.smartbrief.com/contentrepo/website/cfo/0000-205d/logo.gif', '2022-07-29 20:35:36', '2022-07-29 20:35:36'),
(61, 'auto', '6597fc5d-02a0-4070-af0c-661455f5fb6d', 'Admin', 'Who Said It? How desperate do you have to be to start doing push-ups to solve your problems?', 'Who Said It?\n\n\n\nHow desperate do you have to be to start doing push-ups to solve your problems?\n\nDon DeLillo or Karl Ove Knausgaard\n\n\n\nCheck your answer here.', '\"<span style=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=D1550287-8823-448B-9116-E82A667D4000&issueId=AE0FEAA4-746B-4E8D-9C87-CFB9F31E1DD7&copyId=467C338C-520E-48E4-93BE-4FBEA1152CAA', 'https://alquemie.smartbrief.com/contentrepo/website/cfo/0000-205d/logo.gif', '2022-07-29 20:35:36', '2022-07-29 20:35:36'),
(62, 'auto', '3c9a1883-bfc3-46ed-a276-4435c019efe4', 'Admin', 'MRPL Net Profit Zooms To Rs 2,707Cr In Q1', 'Mangalore Refinery and Petrochemicals Ltd (MRPL) net profit zoomed to Rs 2,707 crore in the first quarter of the current fiscal on the back of record refining m...', '\"Mangalore Refinery and Petrochemicals Ltd (MRPL) net profit zoomed to Rs 2,707 crore in first quarter of current fiscal year., , mangalore refinery and petrochemical ltd, oil and natural gas corp\"', 'Finance', 'https://www.businessworld.in/article/MRPL-Net-Profit-Zooms-To-Rs-2-707Cr-In-Q1/29-07-2022-439488/', 'https://static.businessworld.in/article/article_extra_large_image/1475054803_WmfMHL_oil.jpg', '2022-07-29 20:50:47', '2022-07-29 20:50:47'),
(63, 'auto', '37e8a03b-9493-42d5-96d1-7196dea190cc', 'Admin', 'Pepperfry Rehauls Business Structure Ahead Of Stock Market Debut', 'With plans to debut in the Indian Stock Market, Pepperfry has started rehauling its business structure. As contrary to the initial plans of settling the base ou...', '\"With plans to debut in the Indian Stock Market, Pepperfry has started rehauling its business structure. , , pepperfry.com, Pepperfry, stockmarkets\"', 'Finance', 'https://www.businessworld.in/article/Pepperfry-Rehauls-Business-Structure-Ahead-Of-Stock-Market-Debut/29-07-2022-439491/', 'https://static.businessworld.in/article/article_extra_large_image/1479983809_KM5BTS_1474371618_xTWjuP_sebi.jpg', '2022-07-29 20:50:47', '2022-07-29 20:50:47'),
(64, 'auto', 'ad894abb-5640-4c32-96f7-ded66e1b8518', 'Admin', 'Cipla Reports Decline In Net Profit To Rs 706 Cr In Q1 Results', 'Drug major Cipla on Friday posted a marginal decline in its consolidated net profit to Rs 706 crore for the first quarter ended June 30, 2022.\n\nThe Mumbai-based...', '\"The Mumbai-based company had reported a net profit of Rs 710 crore in the April-June quarter of the last fiscal, , cipla\"', 'Finance', 'https://www.businessworld.in/article/Cipla-Reports-Decline-In-Net-Profit-To-Rs-706-Cr-In-Q1-Results-/29-07-2022-439492/', 'https://static.businessworld.in/article/article_extra_large_image/1611752815_EEhdYW_cipla.jpg', '2022-07-29 20:50:47', '2022-07-29 20:50:47'),
(65, 'auto', 'cfc05b21-6556-4fef-bf32-8c16778c291d', 'Admin', 'Who Said It? How desperate do you have to be to start doing push-ups to solve your problems?', 'Who Said It?\n\n\n\nHow desperate do you have to be to start doing push-ups to solve your problems?\n\nDon DeLillo or Karl Ove Knausgaard\n\n\n\nCheck your answer here.', '\"<span style=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=F4A6DC0C-289A-4415-BEFC-67C50DE258AA&issueId=DE989C58-8AF3-48DA-898B-868D2DAF88F6&copyId=467C338C-520E-48E4-93BE-4FBEA1152CAA', 'https://alquemie.smartbrief.com/contentrepo/website/yourcareer/0000-e6d9/logo.gif', '2022-07-29 21:10:49', '2022-07-29 21:10:49'),
(66, 'auto', '49cbe50a-0238-47f2-9ad4-59f3ef0130d4', 'Admin', 'Wayfair Stock Has Plunged This Year. Two Reasons Why Things Could Get Worse.', 'Wayfair shares have lost nearly three-quarters of their value in 2022. Wells Fargo warns that the pain still might not be over.\n\nAnalyst Zachary Fadem reiterate...', '\"Wayfair faces tough questions about its revenue outlook, and it continues to spend aggressively on long-term growth, which has one analyst cautious on the...\"', 'Finance', 'https://www.marketwatch.com/articles/wayfair-stock-has-plunged-this-year-two-reasons-why-things-could-get-worse-51659110542', 'https://images.barrons.com/im-593655/social', '2022-07-29 21:10:49', '2022-07-29 21:10:49'),
(67, 'auto', '261cec61-de0d-4437-b1e5-ac49edeb9d3b', 'Admin', 'Reserve Bank of India', '', '\"\"', 'Finance', 'https://www.rbi.org.in/scripts/BS_PressReleaseDisplay.aspx?prid=54120', 'https://www.rbi.org.in/images/Rbinote.jpeg', '2022-07-29 21:10:49', '2022-07-29 21:10:49'),
(68, 'auto', '5469a894-da6f-4ade-b32c-34da6a32546c', 'Admin', '18 Million Dishes Served With Kikkoman In The First Year Alone; Indians Taste The Magic Of Kikkoman Soy Sauce', 'In one year, Kikkoman Soy Sauce was served in 18 million* dishes across India.\n\n\n\n\n\nApart from the fact that this number is remarkable, the circumstances in whi...', '\"18 Million Dishes Served With Kikkoman In The First Year Alone Indians Taste The Magic Of Kikkoman Soy Sauce\"', 'Finance', 'https://www.businessworld.in/article/18-Million-Dishes-Served-With-Kikkoman-In-The-First-Year-Alone-Indians-Taste-The-Magic-Of-Kikkoman-Soy-Sauce/29-07-2022-439501/', 'https://static.businessworld.in/article/article_extra_large_image/1659095100_I5VxWh_2.jpg', '2022-07-29 21:25:39', '2022-07-29 21:25:39');
INSERT INTO `blogs` (`id`, `type`, `uuid`, `author`, `title`, `snippet`, `detail`, `category`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(69, 'auto', '2ff01c40-0990-48eb-b914-1bf6d83bfafe', 'Admin', 'Is Palo Alto Attractive Amid Economic Uncertainties?', 'Technology stocks have been on a wild ride this year due to rising inflation and interest rates. The Nasdaq Composite is down more than 23% this year.\n\nAlthough...', '\"GuruFocus Article or News written by Dilantha De Silva and the topic is about: Morgan Stanley analyst says Palo Alto is too cheap to ignore\"', 'Finance', 'https://www.gurufocus.com/news/1838452/is-palo-alto-attractive-amid-economic-uncertainties', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-29 21:25:39', '2022-07-29 21:25:39'),
(70, 'auto', '5b1ae9ca-0789-4bce-a0a1-e441db67137b', 'Admin', 'Alibaba leads sharp drop in Chinese internet stocks as it heads for worst month since November', 'U.S.-listed shares of Chinese internet stocks including Alibaba Group Holdings Ltd. BABA, -9.36% were sinking Friday to cap off an eventful week that saw Chines...', '\"U.S.-listed shares of Chinese internet stocks including Alibaba Group Holdings Ltd. undefined were sinking Friday to cap off an eventful week that saw...\"', 'Finance', 'https://www.marketwatch.com/story/alibaba-leads-sharp-drop-in-chinese-internet-stocks-as-it-heads-for-worst-month-since-november-2022-07-29', 'https://s.wsj.net/public/resources/MWimages/MW-GP644_MicroS_ZG_20180906154215.jpg', '2022-07-29 21:25:39', '2022-07-29 21:25:39'),
(71, 'auto', '5199b89f-9dd1-45b5-9f43-15c54bd24fe8', 'Admin', 'How US soccer champion Briana Scurry won her life back', 'How US soccer champion Briana Scurry won her life back\n\nBrandi Chastain might have landed the famous Sports Illustrated cover, but goalkeeper Briana Scurry was ...', '\"Brandi Chastain might have landed the famous Sports Illustrated cover, but goalkeeper Briana Scurry was the one who made the save that set the stage for Team USA to win the 1999 FIFA Women\'s World Cup. Here, Scurry talks about that iconic moment, the brain injury that ended her career and her difficult road to recovery -- which included pawning her gold medals and shaming her insurance company into paying for the surgery she needed to address her chronic pain.\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=EFB0EF8E-4F58-4C01-8C3B-4ADDF7829AC6&issueId=27CE34DB-4F17-4F80-9926-D69C9A39AF8A&copyId=3E29767D-663D-4A0A-BBB5-D2D3FE8BBF60', 'https://alquemie.smartbrief.com/contentrepo/website/workforce/0000-d7e4/logo.gif', '2022-07-29 21:45:51', '2022-07-29 21:45:51'),
(72, 'auto', 'b7ad0114-c3a7-4e3d-94fd-02fa1100cebc', 'Admin', 'Kanoe Namahoe 2022', 'here at minute 1:41.)\n\nI had to say something. Scurry was strolling leisurely through the casino, hands in her pockets and earbuds in her ear. She was almost pa...', '\"<div>Three years ago, I was rushing across the casino floor at the Mirage hotel in Las Vegas on my way to catch my Lyft to the airport when I spotted someone and stopped dead in my tracks.<\\/div>\\r\\n<div>\\u00a0<\\/div>\\r\\n<div>It was legendary US women\\u2019s soccer goalkeeper Briana Scurry -- the one who set up the win for the US Women to win the World Cup in 1999. I\\u2019m not big on celebrities -- I won\\u2019t chase anyone down -- but this was different. That save ranks in my top five favorite sports moments of all time. (See it <a href=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=EFB0EF8E-4F58-4C01-8C3B-4ADDF7829AC6&issueId=27CE34DB-4F17-4F80-9926-D69C9A39AF8A&copyId=995233DB-4BBA-4A71-B5BC-328A17FCAF7E', 'https://alquemie.smartbrief.com/contentrepo/website/workforce/0000-d7e4/logo.gif', '2022-07-29 21:45:51', '2022-07-29 21:45:51'),
(73, 'auto', '20cde523-9793-4a63-ac82-9e406a592c00', 'Admin', 'Who Said It? How desperate do you have to be to start doing push-ups to solve your problems?', 'Who Said It?\n\n\n\nHow desperate do you have to be to start doing push-ups to solve your problems?\n\nDon DeLillo or Karl Ove Knausgaard\n\n\n\nCheck your answer here.', '\"<span style=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=EFB0EF8E-4F58-4C01-8C3B-4ADDF7829AC6&issueId=27CE34DB-4F17-4F80-9926-D69C9A39AF8A&copyId=467C338C-520E-48E4-93BE-4FBEA1152CAA', 'https://alquemie.smartbrief.com/contentrepo/website/workforce/0000-d7e4/logo.gif', '2022-07-29 21:45:51', '2022-07-29 21:45:51'),
(74, 'auto', '734e55d1-c14c-4bff-bbd1-af52e0d75164', 'Admin', 'Corporate gifting startup Evabot raises $10.83 million', 'SmartBrief on Entrepreneurs\n\nInformation entrepreneurs need in their quest to turn good ideas into great business\n\nDesigned specifically for leaders of new vent...', '\"\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=D40C5D5F-372F-450F-8AF8-B4574B9A50B1&issueId=A0E264DB-9D85-413C-AA41-F701BB51DB7F&copyId=D7AE3543-F9D4-4CDE-B97C-82D9D7A8FB9D', 'https://alquemie.smartbrief.com/contentrepo/website/entrepreneurs/0000-2235/logo.gif', '2022-07-29 22:00:29', '2022-07-29 22:00:29'),
(75, 'auto', '7bcb5cf9-0e93-41c6-b125-e521cb356f96', 'Admin', 'Candace Chellew', 'Candace Chellew\n\nHi, it\'s your SmartBrief on Entrepreneurs editor! Thank you for reading and subscribing. I know you don\'t need to read SmartBrief on Entreprene...', '\"<em>Hi, it\'s your SmartBrief on Entrepreneurs editor! Thank you for reading and subscribing. I know you don\'t <strong>need<\\/strong> to read SmartBrief on Entrepreneurs. Rather, you\'re here because you are dedicated to creating your new venture, securing the capital you need to scale your ideas and understanding the market you\'re pursuing. <br \\/><br \\/><\\/em><em>If this newsletter helps you, please tell your colleagues, friends or anyone who can benefit. Forward them this email, or <a href=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=D40C5D5F-372F-450F-8AF8-B4574B9A50B1&issueId=A0E264DB-9D85-413C-AA41-F701BB51DB7F&copyId=89E2589E-E6D5-459E-8C8B-639BE6D54BA1', 'https://alquemie.smartbrief.com/contentrepo/website/entrepreneurs/0000-2235/logo.gif', '2022-07-29 22:00:29', '2022-07-29 22:00:29'),
(76, 'auto', 'a5905d45-a9ac-4c1b-b5bf-8553f01ab81a', 'Admin', 'A good product is only as good as the team behind it.', 'SmartBrief on Entrepreneurs\n\nInformation entrepreneurs need in their quest to turn good ideas into great business\n\nDesigned specifically for leaders of new vent...', '\"Alex Skryl, co-founder and CEO of NutriSense, writing in <a href=\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=D40C5D5F-372F-450F-8AF8-B4574B9A50B1&issueId=A0E264DB-9D85-413C-AA41-F701BB51DB7F&copyId=8BDF29C3-C09B-4076-AE16-09C5F5EBC190', 'https://alquemie.smartbrief.com/contentrepo/website/entrepreneurs/0000-2235/logo.gif', '2022-07-29 22:00:29', '2022-07-29 22:00:29'),
(77, 'auto', 'd4091216-03a2-47bf-9ab6-88d3a18be0cd', 'Admin', 'Amazon could make one improvement to help future earnings results, analyst says', 'Considering all the challenges retailers are currently facing, analysts say Amazon.com Inc.’s results were pretty good, but GlobalData suggests there is somet...', '\"Amazon is facing the same challenges as other retailers, including inflation and continued supply chain hurdles, but one change could give it a boost\"', 'Finance', 'https://www.marketwatch.com/story/amazon-could-make-one-improvement-to-help-future-earnings-results-analyst-says-11659114544', 'https://images.mktw.net/im-313530/social', '2022-07-29 22:15:29', '2022-07-29 22:15:29'),
(78, 'auto', '61a8b359-65a6-4adc-a141-44eca764e8f7', 'Admin', 'Reserve Bank of India', 'Directions under Section 35 A read with section 56 of the Banking Regulation Act, 1949 (As Applicable to Co-operative Societies) – The Karmala Urban Co-operat...', '\"\"', 'Finance', 'https://www.rbi.org.in/scripts/BS_PressReleaseDisplay.aspx?prid=54123', 'https://www.rbi.org.in/images/Rbinote.jpeg', '2022-07-29 22:15:29', '2022-07-29 22:15:29'),
(79, 'auto', '2bfbf853-1748-459c-9f2b-dcc9c01a92fe', 'Admin', 'AOC slams Alito for ‘politicized’ and ‘alarming’ Roe v. Wade remarks', '““Remember: it was Alito’s opinion that leaked. That fact paired with his politicized remarks below should be alarming to anyone.” ”\n\nThat was Rep. Al...', '\"Supreme Court Justice Samuel Alito mocked foreign leaders who criticized overturning Roe v. Wade, and called out \\u2018hostility to religion\\u2019 in viral Rome speech.\"', 'Finance', 'https://www.marketwatch.com/story/aoc-slams-alito-for-politicized-and-alarming-roe-v-wade-remarks-11659114835', 'https://images.mktw.net/im-593900/social', '2022-07-29 22:15:29', '2022-07-29 22:15:29'),
(80, 'auto', '8320a4bf-7527-4a6f-b3ce-30ad64790231', 'Admin', 'Over 4 Crore Income Tax Returns Filed So Far', '\"Over 4.09 crore ITRs filed till 28th July, 2022 & more than 36 lakh ITRs filed on 28th July, 2022 itself. The due date to file ITR for AY 2022-23 is 31st July,...', '\"The Income Tax Department on Friday said that more than 4 crore returns have been filed through e-filing portal till date for the financial year 2021-22.\\n   \\n\\\"Over 4.09 crore ITRs filed till 28th July, 2022 & more than 36 lakh ITRs filed on 28th July, 2022 itself.\"', 'Finance', 'https://www.bqprime.com/pti/over-4-crore-income-tax-returns-filed-so-far', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2Faed190b7-73ac-4276-827a-8b030330da9b%2F2013_04_16T120000Z_168126079_GM1E94G0YMC01_RTRMADP_3_INDIA_TAX.JPG?rect=0%2C291%2C3500%2C1838&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-29 22:35:35', '2022-07-29 22:35:35'),
(81, 'auto', '59674dce-58df-4a32-bad5-716b3a44703c', 'Admin', 'Why engineering firm AKRF built the quietest room in Midtown', '“Clients wanted to know what it sounds like in a condo when a train goes by,” explained Nathaniel Fletcher, senior acoustical consultant at AKRF. Though the...', '\"Imagining quieter construction options can be a challenge\"', 'Finance', 'https://www.crainsnewyork.com/real-estate/why-engineering-consulting-firm-akrf-built-quietest-room-midtown', 'https://s3-prod.crainsnewyork.com/styles/1200x630/s3/AKRF_1_Inspection%20of%20Isolated%20Double%20Stud%20Wall%20Framing.jpg', '2022-07-29 22:35:35', '2022-07-29 22:35:35'),
(82, 'auto', '23ae3ea8-6401-4352-8f88-7aed35d2f467', 'Admin', 'Reserve Bank of India', 'Premature redemption under Sovereign Gold Bond (SGB) Scheme - Redemption Price for premature redemption due on August 05, 2022 (Series I of SGB 2016 - 17)', '\"\"', 'Finance', 'https://www.rbi.org.in/scripts/BS_PressReleaseDisplay.aspx?prid=54125', 'https://www.rbi.org.in/images/Rbinote.jpeg', '2022-07-29 22:35:35', '2022-07-29 22:35:35'),
(83, 'auto', '8f99a581-1b1a-4718-964f-3b95bec18ae4', 'Admin', 'Gold Dec 2022 Overview', 'Baker Hughes on Friday reported that the was up by 6 to 605 this week. The total active U.S. rig count, which includes those drilling for natural gas, also clim...', '\"GCZ22 | A complete Gold Dec 2022 futures overview by MarketWatch. View the futures and commodity market news, futures pricing and futures trading.\"', 'Finance', 'https://www.marketwatch.com/investing/future/GCZ22', 'https://s.wsj.net/public/resources/MWimages/MW-EG169_articl_NS_20160223171404.png', '2022-07-29 22:50:46', '2022-07-29 22:50:46'),
(84, 'auto', '6293a6f5-1e3c-4c91-8e66-720373d28c12', 'Admin', 'Blinken Urges Russia To Accept ‘Substantial’ Griner And Whelan Offer', 'Topline\n\nSecretary of State Anthony Blinken said Friday he spoke with Russian Foreign Minister Sergey Lavrov over the “substantial” deal the U.S. offered th...', '\"Secretary Anthony Blinken has not confirmed terms of the proposal.\"', 'Finance', 'https://www.forbes.com/sites/marisadellatto/2022/07/29/blinken-urges-russia-to-accept-substantial-griner-and-whelan-offer/', 'https://imageio.forbes.com/specials-images/imageserve/62d075ba7c55665af9c4a0f6/0x0.jpg?format=jpg&crop=2962,1666,x0,y0,safe&width=1200', '2022-07-29 22:50:46', '2022-07-29 22:50:46'),
(85, 'auto', '942fcd24-2744-41a9-9b4f-e56fdfe43737', 'Admin', 'Alibaba Added to SEC Delisting Watchlist. It’s One More Reason the Stock Is Slumping.', 'Alibaba shares have slumped since the company said it would apply for a primary listing in Hong Kong. (Photo by GREG BAKER/AFP via Getty Images)\n\nShares of Alib...', '\"The Chinese e-commerce giant has been added to the list of Chinese companies that face possible delisting from the Securities and Exchange Commission.\"', 'Finance', 'https://www.marketwatch.com/articles/alibaba-stock-price-earnings-hong-kong-51659081535', 'https://images.barrons.com/im-438243/social', '2022-07-29 22:50:46', '2022-07-29 22:50:46'),
(86, 'auto', '96a92174-0092-48e1-8da4-aec480f40660', 'Admin', 'Some builders want wood, if they could', 'Regulations lack clarity\n\n\n\nBut the bigger roadblock in the way of a citywide rollout of mass-timber buildings, which usually use wood for their columns and bea...', '\"Despite being hailed as the next wave in green technology, the city has few mass-timber apartment buildings, though some developers have grand plans\"', 'Finance', 'https://www.crainsnewyork.com/residential-real-estate/climate-friendly-wood-apartment-buildings-nyc-face-regulations-supply-chain', 'https://s3-prod.crainsnewyork.com/styles/1200x630/s3/283_greene.png', '2022-07-29 23:15:29', '2022-07-29 23:15:29'),
(87, 'auto', '287be8d6-6024-4ebb-85c0-c41548f39e07', 'Admin', 'GeM Achieves Total Procurement Value Of Rs 2,70,384 Cr: Centre', 'The Government e-Marketplace (GeM) has achieved a total procurement value of Rs 2,70,384 crore as on 25 July 2022, since its inception in 2016, said Minister of...', '\"GeM is an open marketplace wherein it promotes open access to information in a  transparent manner. Relevant information on sellers, goods and services is easy to find and readily available for users, , government e-marketplace, gem, india, economy\"', 'Finance', 'https://www.businessworld.in/article/GeM-Achieves-Total-Procurement-Value-Of-Rs-2-70-384-Cr-Centre/29-07-2022-439512/', 'https://static.businessworld.in/article/article_extra_large_image/1592899063_6b9HRz_GeM_1.jpg', '2022-07-29 23:15:29', '2022-07-29 23:15:29'),
(88, 'auto', '2e53ce92-57d8-476e-ba0a-73344b4ea132', 'Admin', 'Dementia caregivers have a steep learning curve. Here’s how to catch up — fast.', 'When you’re a caregiver for someone with dementia, you want answers. Fast.\n\nYou don’t want to hear about the importance of self-care. (I’d love to take ti...', '\"Where do you turn for help solving problems?\"', 'Finance', 'https://www.marketwatch.com/story/dementia-caregivers-have-a-steep-learning-curve-heres-how-to-catch-up-fast-11659116895', 'https://images.mktw.net/im-593156/social', '2022-07-29 23:15:29', '2022-07-29 23:15:29'),
(89, 'auto', '388ec19d-ee06-48a1-a906-f2df7485e497', 'Admin', 'Junior Says ESG Is More Than an Acronym', 'Source: Streetwise Reports\n\nJuly 29, 2022 (Investorideas.com Newswire) This junior is trying new ways to involve the local population in its project, hoping to ...', '\"\"', 'Finance', 'https://www.investorideas.com/news/2022/main/07293ESG.asp', 'https://www.streetwisereports.com/images/Libero_ESG_Magaly_Rodriguez.jpg', '2022-07-29 23:30:35', '2022-07-29 23:30:35'),
(90, 'auto', 'e4644f39-9df3-41c9-8bfd-d3b4b26e3b08', 'Admin', 'McDonald\'s Comparable Sales Impress Once Again', 'With inflation running at levels not seen in decades, consumer dollars are limited. One way to conserve capital is to trade down to a lower price point for good...', '\"GuruFocus Article or News written by Nathan Parsh and the topic is about: A look at the company\'s most recent quarter\"', 'Finance', 'https://www.gurufocus.com/news/1838695/mcdonalds-comparable-sales-impress-once-again', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-29 23:30:35', '2022-07-29 23:30:35'),
(91, 'auto', 'fe08b807-7232-4d06-b02f-f9d261522382', 'Admin', 'Insider Alert: An Insider Just Sold StoneX Group Inc Shares', 'The latest data from GuruFocus shows that CEO/President Sean Oconnor sold 19700 shares of StoneX Group Inc (SNEX) on 2022-07-28.\n\nInvestors may be concerned whe...', '\"GuruFocus Article or News written by insider and the topic is about:\"', 'Finance', 'https://www.gurufocus.com/news/1838747/insider-alert-an-insider-just-sold-stonex-group-inc-shares', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-29 23:30:35', '2022-07-29 23:30:35'),
(92, 'auto', '567cba26-303a-4e2b-be89-cf666e7daea1', 'Admin', 'AbbVie Inc. (ABBV) CEO Rick Gonzalez on Q2 2022 Results - Earnings Call Transcript', 'AbbVie Inc. (NYSE:ABBV) Q2 2022 Results Conference Call July 29, 2022 9:00 AM ET\n\nCompany Participants\n\nLiz Shea - Head, IR\n\nRick Gonzalez - Chairman and CEO\n\nR...', '\"AbbVie Inc. (NYSE:NYSE:ABBV) Q2 2022 Results Conference Call July 29, 2022 09:00 AM ET Company Participants Liz Shea - Head, IR Rick Gonzalez - Chairman and CEO Rob Michael - Vice Chairman...\"', 'Finance', 'https://seekingalpha.com/article/4527609-abbvie-inc-abbv-ceo-rick-gonzalez-on-q2-2022-results-earnings-call-transcript', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-29 23:50:05', '2022-07-29 23:50:05'),
(93, 'auto', 'b387b822-8863-46e9-97f9-f668598375ea', 'Admin', 'Dow jumps nearly 300 points on gains in shares of Chevron, Caterpillar', 'Shares of Chevron and Caterpillar are trading higher Friday afternoon, sending the Dow Jones Industrial Average into positive territory. Shares of Chevron CVX, ...', '\"Shares of Chevron and Caterpillar are trading higher Friday afternoon, sending the Dow Jones Industrial Average into positive territory. Shares of Chevron...\"', 'Finance', 'https://www.marketwatch.com/story/dow-jumps-nearly-300-points-on-gains-in-shares-of-chevron-caterpillar-01659119832', 'https://mw3.wsj.net/mw5/content/logos/mw_logo_social.png', '2022-07-29 23:50:05', '2022-07-29 23:50:05'),
(94, 'auto', '4c962ff9-e83a-4414-862d-200c2d2e74fa', 'Admin', 'Biotech Co. Granted New Patent for Breast Cancer Vaccine', 'July 29, 2022 (Investorideas.com Newswire) Last Thursday, Anixa Biosciences Inc. announced that the USPTO granted an extension for the firm\'s patented breast ca...', '\"\"', 'Finance', 'https://www.investorideas.com/news/2022/biotech/07291Breast-Cancer-Vaccine.asp', 'https://www.streetwisereports.com/images/angiola-harry-nJv6xnlpNaA-unsplash.jpg', '2022-07-29 23:50:05', '2022-07-29 23:50:05'),
(95, 'auto', '3f5ad164-ffeb-412c-a65c-db5b3cc56176', 'Admin', 'Nazara Technologies Posts 70% Q1 Revenue Growth', 'Diversified gaming and sports media platform, Nazara Technologies Limited, has announced its un-audited Standalone and Consolidated results for the Quarter 1 (Q...', '\"The company cited it\'s successful diversification and investment in its new growth engine Datawrkz, as reason for its positive showing in the first quarter of FY 2022, , Nazara Technologies\"', 'Finance', 'https://www.businessworld.in/article/Nazara-Technologies-Posts-70-Q1-Revenue-Growth-/29-07-2022-439521/', 'https://static.businessworld.in/static/images/bw_favicon.ico', '2022-07-30 00:10:15', '2022-07-30 00:10:15'),
(96, 'auto', 'abaeed5c-d1f3-4dc1-a063-436ac71ecc27', 'Admin', 'Drexler’s Nanotech Forecast', 'Drexler’s Nanotech Forecast\n\nIn 1986, Drexler predicted (in Engines of Creation) that we’d have molecular assemblers in 30 years. They would roughly act as ...', '\"In 1986, Drexler predicted (in Engines of Creation) that we\\u2019d have molecular assemblers in 30 years. They would roughly act as fast, atomically precise 3-d printers. That was the standard mea\\u2026\"', 'Finance', 'http://www.bayesianinvestor.com/blog/index.php/2022/07/29/drexlers-nanotech-forecast/', 'https://s0.wp.com/i/blank.jpg', '2022-07-30 00:10:15', '2022-07-30 00:10:15'),
(97, 'auto', 'a2d71b84-7fdb-4f22-b3af-380fad8cc2ee', 'Admin', 'U.S. oil prices settle higher for the week, down for the month', 'U.S. oil futures climbed on Friday, posting a gain for the week on tight supplies, but prices were down for the month as worries about a potential U.S. recessio...', '\"U.S. oil futures climbed on Friday, posting a gain for the week on tight supplies, but prices were down for the month as worries about a potential U.S....\"', 'Finance', 'https://www.marketwatch.com/story/us-oil-prices-settle-higher-for-the-week-down-for-the-month-2022-07-29', 'https://s.wsj.net/public/resources/MWimages/MW-GP644_MicroS_ZG_20180906154215.jpg', '2022-07-30 00:10:15', '2022-07-30 00:10:15'),
(98, 'auto', '57324df8-3d0c-42df-8dcd-74347c7eb573', 'Admin', 'Reserve Bank of India', 'Directions under Section 35 A read with section 56 of the Banking Regulation Act, 1949 (As Applicable to Co-operative Societies) – Durga Co-operative Urban Ba...', '\"\"', 'Finance', 'https://www.rbi.org.in/scripts/BS_PressReleaseDisplay.aspx?prid=54126', 'https://www.rbi.org.in/images/Rbinote.jpeg', '2022-07-30 00:25:44', '2022-07-30 00:25:44'),
(99, 'auto', 'baf3b88d-fd38-43ce-befc-37714c88f732', 'Admin', 'Housing’s ‘great slowdown’ is here, as mortgage originations and spending fall, Bank of America says', 'A “great slowdown” is happening in the U.S. housing market, a new report from Bank of America says, as mortgage originations shrink and spending on househol...', '\"A new report from Bank of America Institute adds two more gloomy data points illustrating that the U.S. housing sector is in a downturn.\"', 'Finance', 'https://www.marketwatch.com/story/housings-great-slowdown-is-here-as-mortgage-originations-and-spending-fall-bank-of-america-says-11659122221', 'https://images.mktw.net/im-593922/social', '2022-07-30 00:25:44', '2022-07-30 00:25:44'),
(100, 'auto', '1968e4f0-f90d-456c-8e0b-f75ed95b1a18', 'Admin', 'Fairholme Focused Income Fund Ups Bet on Enterprise Products Partners, Commercial Metals', 'Last week, the Fairholme Focused Income Fund (Trades, Portfolio) released its equity portfolio for the second quarter of 2022, which ended May 31.\n\nThe fund is ...', '\"GuruFocus Article or News written by Sydnee Gatewood and the topic is about: Fund managed by Bruce Berkowitz reveals 2nd-quarter portfolio\"', 'Finance', 'https://www.gurufocus.com/news/1838759/fairholme-focused-income-fund-ups-bet-on-enterprise-products-partners-commercial-metals', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 00:25:44', '2022-07-30 00:25:44'),
(101, 'auto', '1e01164d-de33-428e-b271-3d6f9c4fc8f3', 'Admin', 'When Clients Think They Are Immortal: A Cautionary Tale', 'Our job as financial advisors is not just to protect and grow the assets of our clients, but to see that those assets pass to the next generation. While this mi...', '\"Even a brilliant trusts and estates scholar died without a valid will, highlighting the urgency of making sure clients\\u2019 plans are in good order well before they pass.\"', 'Finance', 'https://www.barrons.com/advisor/articles/estate-planning-intestate-advisor-51659123430', 'https://images.barrons.com/im-573745/social', '2022-07-30 00:40:47', '2022-07-30 00:40:47'),
(102, 'auto', 'e0d0ee90-9d2d-4021-a0af-59c917a0cc92', 'Admin', '5 New Yorkers to know: July 29', 'New York City has a new deputy commissioner of film, the Department of Sanitation vows to clean up the streets with new city funding and a DUMBO-based startup w...', '\"Leaders from the mayor\\u2019s Office of Media and Entertainment, the Department of Sanitation and JLL are among those making headlines in the city\\u2019s business world\"', 'Finance', 'https://www.crainsnewyork.com/people/5-new-yorkers-know-july-29', 'https://s3-prod.crainsnewyork.com/styles/1200x630/s3/Notable%20Marketing%20Advertising%20PR_0.jpg', '2022-07-30 00:40:47', '2022-07-30 00:40:47'),
(103, 'auto', '2614cfd3-b940-422a-8eb5-2808d49c35af', 'Admin', 'William Blair Commentary: Clouds Clearing for Emerging Markets Debt?', 'While the near-term outlook for global economic growth remains clouded by a combination of recession fears, inflationary pressures, and the possibility of faste...', '\"GuruFocus Article or News written by Sydnee Gatewood and the topic is about: By Marco Ruijer, CFA\"', 'Finance', 'https://www.gurufocus.com/news/1838760/william-blair-commentary-clouds-clearing-for-emerging-markets-debt', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 00:40:47', '2022-07-30 00:40:47'),
(104, 'auto', 'b02c77a7-4b46-4f2c-be02-9041ccc2e2fc', 'Admin', 'YES Bank Announces Capital Raise Of Rs 8,900 Cr From Two Global Private Equity Investors', 'YES Bank on Friday announced raising equity capital of ~USD 1.1 billion (~Rs 8,900 crore) from funds affiliated with two global private equity investors - Carly...', '\"The bank proposes to issue ~ 370 crore equity shares on a preferential basis at a price of Rs 13.78 per share, , yes bank\"', 'Finance', 'https://www.businessworld.in/article/YES-Bank-Announces-Capital-Raise-Of-Rs-8-900-Cr-From-Two-Global-Private-Equity-Investors/29-07-2022-439500/', 'https://static.businessworld.in/article/article_extra_large_image/1594278325_DaG0zQ_1000x_1.jpg', '2022-07-30 01:00:46', '2022-07-30 01:00:46'),
(105, 'auto', 'f947cffa-71e8-4c67-b433-57c7adebd72f', 'Admin', 'Royce Investment Partners Commentary: Pounding the Table for Small-Caps', 'We can appreciate that small-cap investors, having just endured the worst first half in the more than 40-year history of the Russell 2000 Index, a loss of 23.4%...', '\"GuruFocus Article or News written by Sydnee Gatewood and the topic is about: By Steve Lipper\"', 'Finance', 'https://www.gurufocus.com/news/1838761/royce-investment-partners-commentary-pounding-the-table-for-smallcaps', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 01:00:46', '2022-07-30 01:00:46'),
(106, 'auto', 'e0329d4f-7dfd-4711-aa55-091465361ccc', 'Admin', 'Two U.S. cost gauges surpass estimates, stoking inflation concern', 'Two-year Treasury yields climbed after the data and US stocks also gained on Friday. Federal funds futures markets showed traders increased bets on a 75 basis-p...', '\"Both the employment cost index and the personal consumption expenditures price index rose by more than 1%\"', 'Finance', 'https://www.crainsnewyork.com/economy/two-us-cost-gauges-surpass-estimates-stoking-inflation-concern', 'https://s3-prod.crainsnewyork.com/styles/1200x630/s3/361305251.jpg', '2022-07-30 01:00:46', '2022-07-30 01:00:46'),
(107, 'auto', 'a5d71816-a595-4675-b854-3df24d3cd017', 'Admin', 'Market Analysts Need to Own Their Prediction Failures, from Trump to Inflation', 'About the author: Edward Price, a former British economic official, is a nonresident senior fellow at New York University’s Center for Global Affairs.\n\nI anal...', '\"Analysts are hiding the information that\\u2019s most useful to society: their failures, writes Edward Price.\"', 'Finance', 'https://www.marketwatch.com/articles/what-are-analysts-for-anyway-51659125386', 'https://images.barrons.com/im-594150/social', '2022-07-30 01:20:17', '2022-07-30 01:20:17'),
(108, 'auto', 'e5401d02-dc29-4bea-b25e-01dd76878b55', 'Admin', 'Miami RIA GenTrust Sells Minority Stake to Kudu Investment', 'GenTrust, a Miami-based registered investment advisor with about $3 billion in assets, has sold a minority passive stake in its business to Kudu Investment Mana...', '\"GenTrust says the capital infusion will help it grow organically and inorganically.\"', 'Finance', 'https://www.barrons.com/advisor/articles/ria-gentrust-sells-minority-stake-kudu-investment-51659125383', 'https://images.barrons.com/im-464359/social', '2022-07-30 01:20:17', '2022-07-30 01:20:17'),
(109, 'auto', '56608a08-7686-41f1-a1bf-26397fc426e0', 'Admin', 'Opinion: Fidelity’s bitcoin move getting all the wrong publicity', 'What would Ned Johnson do?\n\nThe late, great Fidelity Investments honcho built his family’s Boston-based money management firm into one of the biggest in the w...', '\"What would Ned Johnson say?\"', 'Finance', 'https://www.marketwatch.com/story/fidelitys-bitcoin-move-getting-all-the-wrong-publicity-11659125503', 'https://images.mktw.net/im-594104/social', '2022-07-30 01:20:17', '2022-07-30 01:20:17'),
(110, 'auto', 'ee057743-74c2-45aa-8b0c-3110c070a236', 'Admin', 'Knutsford Express Services Limited (KEX) Delay in the Audited Financials for the year ended May 31, 2022 and the 2022 Annual Report', 'Knutsford Express Services Limited (KEX) has advised that due to the COVID-19 pandemic the Audited Financials for the year ended May 31, 2022, and the 2022 Annu...', '\"Knutsford Express Services Limited (KEX) has advised that due to the COVID-19 pandemic the Audited Financials for the year ended May 31, 2022, and the 2022 Annual Report will be \\u2026 Knutsford Express Services Limited (KEX) Delay in the Audited Financials for the year ended May 31, 2022 and the 2022 Annual Report Read More \\u00bb\"', 'Finance', 'https://www.jamstockex.com/knutsford-express-services-limited-kex-delay-in-the-audited-financials-for-the-year-ended-may-31-2022-and-the-2022-annual-report/', 'https://www.jamstockex.com/wp-content/uploads/2022/01/JTraderPro.jpg', '2022-07-30 01:40:17', '2022-07-30 01:40:17'),
(111, 'auto', '00ce3e40-ad37-46ae-b479-122a433175c7', 'Admin', 'This startup founded by former Airbnb employees lets you try out vacation homes before you buy them', 'This article is reprinted by permission from The Escape Home, a newsletter for second homeowners and those who want to be. Subscribe here. © 2022. All rights r...', '\"Try before you buy: second-home edition.\"', 'Finance', 'https://www.marketwatch.com/story/this-startup-founded-by-former-airbnb-employees-lets-you-try-out-vacation-homes-before-you-buy-them-11659126108', 'https://images.mktw.net/im-594174/social', '2022-07-30 01:40:17', '2022-07-30 01:40:17'),
(112, 'auto', '966fec16-062d-4a31-8f47-327f97717838', 'Admin', 'Why Tilray Stock Was a Laggard on Friday', 'What happened\n\nThere was no spark and no flame in Tilray Brands (TLRY 0.00%) stock on Friday. Shares of the Canadian marijuana company traded flat across the tr...', '\"An analyst downgrades his recommendation to \\\"sell.\\\"\"', 'Finance', 'https://www.fool.com/investing/2022/07/29/why-tilray-stock-was-a-laggard-on-friday/', 'https://g.foolcdn.com/editorial/images/693102/person-in-a-field-smoking-a-marijuana-cigarette.jpg', '2022-07-30 01:40:17', '2022-07-30 01:40:17'),
(113, 'auto', '32fd31c4-eaef-4cc3-9c6c-11371655e76f', 'Admin', 'Southern CEO Fanning preparing to announce retirement - Bloomberg (NYSE:SO)', 'Southern Co. (NYSE:SO) has begun a search to replace longtime CEO Tom Fanning, who plans to announce his retirement from the job by the end of this year, althou...', '\"Southern Co. (SO) has begun a search to replace longtime CEO Tom Fanning, who plans to announce his retirement from the job by the end of this year, although he may remain with the...\"', 'Finance', 'https://seekingalpha.com/news/3863452-southern-ceo-fanning-preparing-to-announce-retirement-bloomberg', 'https://static.seekingalpha.com/cdn/s3/uploads/getty_images/165773720/image_165773720.jpg?io=getty-c-w750', '2022-07-30 01:55:21', '2022-07-30 01:55:21'),
(114, 'auto', '6f8f6a9c-3aa6-44ef-b99d-fb5a3aa85e57', 'Admin', 'Talk To The Hand: Upstream Industry Eyeing Returns More Than Rigs', 'Second quarter earnings for publicly traded upstream producers are trickling in, and profitability has returned to the energy sector. In the meantime, governmen...', '\"Producers have been holding the course towards returns and deleveraging, snubbing pressure from the Biden administration. It has been tempting for producers to ramp up production amid current oil and gas prices. However, with supply chain issues and labor shortages, the appeal has been dampened.\"', 'Finance', 'https://www.forbes.com/sites/bryceerickson1/2022/07/29/talk-to-the-hand-upstream-industry-eyeing-returns-more-than-rigs/', 'https://imageio.forbes.com/specials-images/imageserve/62e451540846a0a7a95398d4/0x0.jpg?format=jpg&crop=4663,2623,x0,y133,safe&width=1200', '2022-07-30 01:55:21', '2022-07-30 01:55:21'),
(115, 'auto', 'c19092a1-101d-4ed7-adba-934035e9ec9c', 'Admin', 'Howard Marks Releases Memo: \'I Beg to Differ\'', 'In one of his famous “memos” released on July 26, Howard Marks (Trades, Portfolio), co-chairman of multibillion-dollar asset management firm Oaktree Capital...', '\"GuruFocus Article or News written by Sydnee Gatewood and the topic is about: Legendary investor highlights how being different can lead to strong performance\"', 'Finance', 'https://www.gurufocus.com/news/1838784/howard-marks-releases-memo-i-beg-to-differ', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 01:55:21', '2022-07-30 01:55:21'),
(116, 'auto', '9a0db319-00ae-426f-9107-a58e93d55cba', 'Admin', 'Kinross Gold gets new COO (NYSE:KGC)', 'To ensure this doesn’t happen in the future, please enable Javascript and cookies in your browser.\n\nIf you have an ad-blocker enabled you may be blocked from ...', '\"Kinross Gold (KGC)\\u00a0appoints\\u00a0Claude Schimper\\u00a0as Executive VP and COO, effective immediately.\\u00a0Paul Tomory, Executive VP and Chief Technical Officer, will be leaving the company on August...\"', 'Finance', 'https://seekingalpha.com/news/3863457-kinross-gold-gets-new-coo', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-30 02:10:15', '2022-07-30 02:10:15'),
(117, 'auto', 'e7107c6f-82f1-4d74-ac5b-5059ae5a7e93', 'Admin', 'Snam S.p.A. Net Profit of €646M, revenue of €1.68B', 'To ensure this doesn’t happen in the future, please enable Javascript and cookies in your browser.\n\nIf you have an ad-blocker enabled you may be blocked from ...', '\"Snam S.p.A. press release  (SNMRF): 1H\\u00a0Net Profit of\\u00a0\\u20ac646M.Revenue of\\u00a0\\u20ac1.68B (+9.8% Y\\/Y).\"', 'Finance', 'https://seekingalpha.com/news/3863458-snam-spa-net-profit-of-646m-revenue-of-168b', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-30 02:10:15', '2022-07-30 02:10:15'),
(118, 'auto', '598facc9-fb6e-4741-aad5-7062593d5ddb', 'Admin', '5 Undervalued Dividend Growth Stocks', 'PM Images\n\nThe stock market is recovering from its lows of several weeks ago. Declining gas prices, potential grain shipments from Ukraine, improving supply cha...', '\"We screen for nine criteria to determine undervalued dividend growth stocks and come up with BBY, BEN, LNC, TROW, and WHR. Read about all 5 here.\"', 'Finance', 'https://seekingalpha.com/article/4527671-5-undervalued-dividend-growth-stocks', 'https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1345558469/image_1345558469.jpg?io=getty-c-w750', '2022-07-30 02:10:15', '2022-07-30 02:10:15'),
(119, 'auto', 'efb3da2d-45c6-4d0d-8465-db695a46665d', 'Admin', 'Surging Ethereum (ETH) Scaling Solution Sees Rise in Network and Developer Activity Despite Crypto Bear Market', 'Polygon (MATIC) is witnessing surging network and developer activity in the second quarter of 2022 despite the ongoing crypto bear market.\n\nPolygon is a scaling...', '\"Polygon (MATIC) is witnessing surging network and developer activity in the second quarter of 2022 despite the ongoing crypto bear market.\"', 'Finance', 'https://dailyhodl.com/2022/07/29/surging-ethereum-eth-scaling-solution-sees-rise-in-network-and-developer-activity-despite-crypto-bear-market/', 'https://dailyhodl.com/wp-content/uploads/2022/07/eth-scaling-activity.jpg', '2022-07-30 02:25:44', '2022-07-30 02:25:44'),
(120, 'auto', 'fac5e789-4838-4009-adc0-f849956c402a', 'Admin', 'Person dies in Saturday morning crash in New Plymouth', 'A damaged vehicle is loaded on to a tow truck following a crash on Saturday morning.\n\nA person has died following an early morning car crash in New Plymouth on ...', '\"One person died after a crash in New Plymouth early on Saturday.\"', 'Finance', 'https://www.stuff.co.nz/taranaki-daily-news/news/300649898/person-dies-in-saturday-morning-crash-in-new-plymouth', 'https://resources.stuff.co.nz/content/dam/images/4/y/z/y/y/6/image.related.StuffLandscapeSixteenByNine.1420x800.4yzyy2.png/1659132345226.jpg', '2022-07-30 02:25:44', '2022-07-30 02:25:44'),
(121, 'auto', '28500c61-aefd-4906-bb87-599b1dd3c51d', 'Admin', 'The Real Reason Mortgage Rates Are Dropping at a Record Pace', 'The Real Reason Mortgage Rates Are Dropping at a Record Pace\n\n(Much of the following is adapted from yesterday\'s coverage, but with additional charts and exampl...', '\"(Much of the following is adapted from yesterday\'s coverage, but with additional charts and examples.\\u00a0 As far as brass tacks go, if you got the message yesterday, today\'s version is just a little bit more of the same.) \\r\\n Mortgage rates have been all over the map recently, both in terms of their movement and in their variation between lenders.\\u00a0 The disconnects are so big as to require a deeper explanation.\\u00a0\\u00a0 \\r\\n Let\'s quantify\"', 'Finance', 'https://www.mortgagenewsdaily.com/markets/mortgage-rates-07292022', 'https://reports.mortgagenewsdaily.com/image/article/62e45a6ec87c7e5a1741f929?provider=facebook', '2022-07-30 02:25:44', '2022-07-30 02:25:44'),
(122, 'auto', '3b203cd6-56ef-48bc-b408-040c155f7e28', 'Admin', 'Instagram Rolls Back TikTok-Like Features Amidst User Backlash', 'Meta Platforms-owned photo-sharing platform Instagram is going to pause features that emulate chinese-owned Bytedance Limited\'s TikTok-like features. After faci...', '\"The move comes after a viral campaign seeked to\"', 'Finance', 'https://www.businessworld.in/article/Instagram-Rolls-Back-TikTok-Like-Features-Amidst-User-Backlash-/29-07-2022-439546/', 'https://static.businessworld.in/static/images/bw_favicon.ico', '2022-07-30 02:45:41', '2022-07-30 02:45:41'),
(123, 'auto', '749c0c69-01fa-41b7-b512-f2a8bf99db08', 'Admin', 'Instagram Rolls Back TikTok-Like Features Amidst User Backlash', 'Meta Platforms-owned photo-sharing platform Instagram is going to pause features that emulate chinese-owned Bytedance Limited\'s TikTok-like features. After faci...', '\"The move comes after a viral campaign seeked to\"', 'Finance', 'https://www.businessworld.in/article/Instagram-Rolls-Back-TikTok-Like-Features-Amidst-User-Backlash-/29-07-2022-439547/', 'https://static.businessworld.in/static/images/bw_favicon.ico', '2022-07-30 02:45:41', '2022-07-30 02:45:41'),
(124, 'auto', '2102e08a-6100-4ee4-9ae0-b39cb198c9a3', 'Admin', 'Financing Here, Financing There, Financing Everywhere', 'With the rise of online price comparison shopping, many sellers have come to appreciate that consumers will purchase a product or service at the lowest possible...', '\"With the rise of online price comparison shopping, many sellers have come to appreciate that consumers will purchase a product or service at the lowest possible price offered, with little tolerance to pay a higher price among similarly situated substitutions. Perhaps this has always been the case, but the ubiquity of consumer access to pricing [\\u2026]\"', 'Finance', 'https://theconservativeincomeinvestor.com/financing-here-financing-there-financing-everywhere/', '', '2022-07-30 02:45:41', '2022-07-30 02:45:41'),
(125, 'auto', '920ec832-aff5-4a97-b1db-b359255df1c0', 'Admin', 'Top 5 2nd Quarter Trades of Colorado Capital Management, Inc.', 'Colorado Capital Management, Inc. recently filed their 13F report for the second quarter of 2022, which ended on 2022-06-30.\n\nThe 13F report details which stock...', '\"GuruFocus Article or News written by insider and the topic is about:\"', 'Finance', 'https://www.gurufocus.com/news/1838883/top-5-2nd-quarter-trades-of-colorado-capital-management-inc', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 03:00:36', '2022-07-30 03:00:36'),
(126, 'auto', '4807a4a4-cf0c-42fb-b074-ae76375a758e', 'Admin', 'Arcus Capital Partners, LLC Buys 1, Sells 4 in 2nd Quarter', 'Arcus Capital Partners, LLC recently filed their 13F report for the second quarter of 2022, which ended on 2022-06-30.\n\nThe 13F report details which stocks were...', '\"GuruFocus Article or News written by insider and the topic is about:\"', 'Finance', 'https://www.gurufocus.com/news/1838884/arcus-capital-partners-llc-buys-1-sells-4-in-2nd-quarter', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 03:00:36', '2022-07-30 03:00:36'),
(127, 'auto', 'ec1f614a-f3ba-4bd7-a144-a2396ffd7d8d', 'Admin', 'Top 5 2nd Quarter Trades of Simmons Bank', 'Simmons Bank recently filed their 13F report for the second quarter of 2022, which ended on 2022-06-30.\n\nThe 13F report details which stocks were in a guru’s ...', '\"GuruFocus Article or News written by insider and the topic is about:\"', 'Finance', 'https://www.gurufocus.com/news/1838886/top-5-2nd-quarter-trades-of-simmons-bank', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 03:00:36', '2022-07-30 03:00:36'),
(128, 'auto', '8d272ec0-9b95-4fa3-9726-eeccb81e7ddb', 'Admin', 'How Do You Structure Your React Project’s Folder?', 'How Do You Structure Your React Project’s Folder?\n\nHere is my experience.\n\nReact doesn’t enforce how you put files into folders, they leave it entirely up t...', '\"React doesn\\u2019t enforce how you put files into folders, they leave it entirely up to you how you want to do this structuring. But it also makes us hard to make choices.\"', 'Finance', 'https://medium.com/frontend-canteen/how-do-you-structure-your-react-projects-folder-b3ac30642e8c', 'https://miro.medium.com/max/1200/1*MBUrj4YulVS9k2bF5w4Ktg.jpeg', '2022-07-30 03:25:12', '2022-07-30 03:25:12'),
(129, 'auto', '716b5903-3939-4927-8728-22026bad2324', 'Admin', 'Asian and European Markets Remain Undervalued to End July', 'According to Global Market Valuation pages, several Asian and European stock markets remain undervalued as of Friday based on Berkshire Hathaway Inc. ( BRK.A, F...', '\"GuruFocus Article or News written by James Li and the topic is about: A look at global market valuations as US market finishes best month in over a year\"', 'Finance', 'https://www.gurufocus.com/news/1838835/asian-and-european-markets-remain-undervalued-to-end-july', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 03:25:12', '2022-07-30 03:25:12'),
(130, 'auto', '5192598a-bd55-4d8b-95df-da2c79ae61ef', 'Admin', 'Instagram Rolls Back TikTok-Like Features Amidst User Backlash', 'After experiencing strong criticism, Meta-owned Instagram has decided to roll back some recent changes to the product, including a full-screen home feed and tem...', '\"The move comes after a viral campaign seeked to\"', 'Finance', 'https://www.businessworld.in/article/Instagram-Rolls-Back-TikTok-Like-Features-Amidst-User-Backlash-/29-07-2022-439549/', 'https://static.businessworld.in/article/article_extra_large_image/1659116351_2UYjiX_png_20220729_223622_0000.png', '2022-07-30 03:25:12', '2022-07-30 03:25:12'),
(131, 'auto', 'f3cd65c2-b413-4fe5-8b3d-b819c3663f9a', 'Admin', 'Employed Involuntary Part-Time for New Mexico (INVOLPTEMPNM)', 'NOTES\n\nSource: U.S. Bureau of Labor Statistics\n\nRelease: Alternative Measures of Labor Underutilization for States\n\nUnits: Persons, 4-Quarter Moving Average, No...', '\"Graph and download economic data for Employed Involuntary Part-Time for New Mexico (INVOLPTEMPNM) from Q4 2003 to Q2 2022 about part-time, labor underutilization, NM, 16 years +, labor force, labor, household survey, employment, and USA.\"', 'Finance', 'https://fred.stlouisfed.org/series/INVOLPTEMPNM/', 'https://fred.stlouisfed.org/graph/fredgraph.png?width=880&height=440&id=INVOLPTEMPNM', '2022-07-30 03:45:39', '2022-07-30 03:45:39'),
(132, 'auto', '24fed2fe-8023-457a-b218-595a9a305370', 'Admin', 'Total Unemployed, as a Percent of the Civilian Labor Force for Oregon (U3UNEM3OR)', '× Confirm Delete\n\nAre you sure you want to remove this series from the graph? This can not be undone.', '\"Graph and download economic data for Total Unemployed, as a Percent of the Civilian Labor Force for Oregon (U3UNEM3OR) from Q4 2003 to Q2 2022 about labor underutilization, OR, civilian, 16 years +, labor force, labor, household survey, unemployment, rate, and USA.\"', 'Finance', 'https://fred.stlouisfed.org/series/U3UNEM3OR/', 'https://fred.stlouisfed.org/graph/fredgraph.png?width=880&height=440&id=U3UNEM3OR', '2022-07-30 03:45:39', '2022-07-30 03:45:39'),
(133, 'auto', 'c439ca36-07a2-421c-8ea5-1f1c20ba74e1', 'Admin', 'The Stock Market Had a Great July. Why August Could Be Tougher.', 'Stocks rallied this past week as investors bet that the Federal Reserve has reached peak hawkishness. That’s wishful thinking.\n\nThe Dow Jones Industrial Avera...', '\"While the pace of the Fed\\u2019s rate tightening may be moderating and inflation may have peaked, it\\u2019s far from a green light for investors.\"', 'Finance', 'https://www.marketwatch.com/articles/the-stock-market-had-a-great-july-why-august-could-be-tougher-51659134397', 'https://images.barrons.com/im-593961/social', '2022-07-30 03:45:39', '2022-07-30 03:45:39'),
(134, 'auto', '90966959-8fb6-44d2-ad59-3b48fcdb30e0', 'Admin', 'How to position your portfolio when the Fed, stock-market investors differ on recession calls', 'Federal Reserve Chair Jerome Powell’s optimistic comments about the U.S. economy on Wednesday added to a debate among investors about whether stocks have reac...', '\"Federal Reserve Chair Jerome Powell is trying to assure Americans that the U.S. economy isn\'t in a recession, but some investors are bracing for a different...\"', 'Finance', 'https://www.marketwatch.com/story/how-to-position-your-portfolio-when-the-fed-stock-market-investors-differ-on-recession-calls-11659134768', 'https://images.mktw.net/im-594329/social', '2022-07-30 04:00:39', '2022-07-30 04:00:39'),
(135, 'auto', '7a92344d-79b2-42b5-925f-6f4cdee60376', 'Admin', 'Shopify stumbling, Rogers resilient, recession fundraising', 'All bets are off.\n\nIt has been a tough week for Canadian tech.\n\nIt started well enough, with the BetaKit Podcast being nominated for “Outstanding Technology S...', '\"Special guest Amber Mac joins to answer listener questions on the award-nominated BetaKit Podcast.\"', 'Finance', 'https://betakit.com/shopify-stumbling-rogers-resilient-recession-fundraising/', 'https://cdn.betakit.com/wp-content/uploads/2022/07/tobi_lutke_collision.jpg', '2022-07-30 04:00:39', '2022-07-30 04:00:39'),
(136, 'auto', '844d3793-aa58-4877-90c5-a5a76d3a4a07', 'Admin', '3M Is Making Big Changes. It’s Still Not Time to Buy the Stock.', '3M is taking bold steps to turn around its lousy stock performance. Investors should still be wary.\n\n3M (ticker: MMM) has had a terrible run in recent years. Si...', '\"Since peaking in 2018, 3M shares have fallen some 45%. It has been plagued by falling profitability as well as legal issues that could burden it with...\"', 'Finance', 'https://www.marketwatch.com/articles/3m-is-making-big-changes-its-still-not-time-to-buy-the-stock-51659135201', 'https://images.barrons.com/im-593769/social', '2022-07-30 04:00:39', '2022-07-30 04:00:39'),
(137, 'auto', '2b3320dc-c147-4841-bc38-d016c426dcbc', 'Admin', 'Top Economic Events to Sept 30', 'This advertisement has not loaded yet, but your article continues below.\n\nTop Economic Events to Sept 30\n\nArticle content July 30 (Reuters) – We apologize, bu...', '\"July 30 (Reuters) \\u2013\"', 'Finance', 'https://financialpost.com/pmn/business-pmn/top-economic-events-to-sept-30-15', 'https://dcs-static.gprod.postmedia.digital/11.2.1/websites/images/fp/favicon-fp.ico', '2022-07-30 04:15:31', '2022-07-30 04:15:31'),
(138, 'auto', 'aef0e927-81fc-488a-94b1-01a1e82e1afb', 'Admin', 'Mexican Gold Announces Non-Brokered Private Placement', 'This advertisement has not loaded yet, but your article continues below.\n\nMexican Gold Announces Non-Brokered Private Placement\n\nArticle content // THIS PRESS R...', '\"\\/\\/ THIS PRESS RELEASE IS NOT INTENDED FOR RELEASE OR DISSEMINATION IN THE UNITED STATES \\/\\/\"', 'Finance', 'https://financialpost.com/globe-newswire/mexican-gold-announces-non-brokered-private-placement', 'https://dcs-static.gprod.postmedia.digital/11.2.1/websites/images/fp/favicon-fp.ico', '2022-07-30 04:15:31', '2022-07-30 04:15:31'),
(139, 'auto', '0223ca6e-00fe-426e-b02c-0c7753139fc4', 'Admin', 'Small-Cap Stocks Have Been Big Winners. Why They Can Keep Outperforming.', 'Good things are supposed to come in small packages, but that hasn’t been the case for small-company stocks this year. That could be about to change.\n\nThe rece...', '\"Small-caps appear to be following a familiar pattern, underperforming before a recession and then outperforming coming out of one. Here are some to consider.\"', 'Finance', 'https://www.marketwatch.com/articles/small-cap-stocks-have-been-big-winners-why-they-can-keep-outperforming-51659136236', 'https://images.barrons.com/im-593735/social', '2022-07-30 04:15:31', '2022-07-30 04:15:31'),
(140, 'auto', '13d97891-2511-4bc9-a7a7-b1f7a1b0961f', 'Admin', 'Finovate Global Germany: Ecolytiq Partners with Tatra Banka; Airbank Inks Deal with Klarna Kosma', 'This week’s edition of Finovate Global takes a look at recent fintech developments in Germany where green banking, embedded finance, and open banking are the ...', '\"Finovate Global\"', 'Finance', 'https://finovate.com/finovate-global-germany-ecolytiq-partners-with-tatra-banka-airbank-inks-deal-with-klarna-kosma/', 'https://finovate-wpengine.netdna-ssl.com/wp-content/uploads/2022/07/pexels-xu-chen-234315.jpg', '2022-07-30 04:35:35', '2022-07-30 04:35:35');
INSERT INTO `blogs` (`id`, `type`, `uuid`, `author`, `title`, `snippet`, `detail`, `category`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(141, 'auto', '20f817ba-53ab-417d-a676-b48dc4dcc90e', 'Admin', 'See pics: Rare endangered Bengal tiger born 20 years after attempts to breed', 'Just over a year after four of the striped and gorgeous newborn animals, among them a rare white tiger, graced the grounds, zookeepers announced on Friday that ...', '\"The jungles of India, Bangladesh, and Nepal previously housed thousands of Bengal tigers.\"', 'Finance', 'https://www.livemint.com/news/world/see-pics-rare-endangered-bengal-tiger-born-20-years-after-attempts-to-breed-11659139000465.html', 'https://images.livemint.com/img/2022/07/30/600x338/CUBA-ZOO-TIGER-3_1659139283533_1659139283533_1659139411537_1659139411537.JPG', '2022-07-30 04:35:35', '2022-07-30 04:35:35'),
(142, 'auto', '3f1b3895-1f24-4882-b360-7be6fbfc9013', 'Admin', 'Esprit bets on economic rebound with ambitious global comeback', 'The chief executive of Esprit Holdings struck an upbeat tone as the company embarks on a global expansion, predicting the worst is over for fashion retail despi...', '\"Chief executive says the worst may be over for fashion retailers despite soaring inflation\"', 'Finance', 'https://www.ft.com/content/73217edb-3ce2-4ac2-9bcc-37ba2fb3a529', 'https://www.ft.com/__origami/service/image/v2/images/raw/https%3A%2F%2Fd1e00ek4ebabms.cloudfront.net%2Fproduction%2Fb6fa46d3-7bac-463c-aa17-f643bb5db968.jpg?source=next-opengraph&fit=scale-down&width=900', '2022-07-30 04:35:35', '2022-07-30 04:35:35'),
(143, 'auto', '53307e0d-f709-4cc2-9a9a-c199c86a22c6', 'Admin', 'Credit Bubble Stocks', '', '\"\"', 'Finance', 'http://www.creditbubblestocks.com/feeds/5591124814919972428/comments/default', '', '2022-07-30 04:50:37', '2022-07-30 04:50:37'),
(144, 'auto', '387d4d30-6681-4732-a4d9-e69edbd29361', 'Admin', 'RF Filters Market Size to Grow by USD 7.10 billion with 38% of the Contribution from APAC - Exclusive Technavio Report', 'RF Filters Market Vendor Landscape\n\nThe market is fragmented, and the degree of fragmentation will decelerate during the forecast period. To make the most of th...', '\"\\/PRNewswire\\/ -- The latest market analysis report titled Radio Frequency Filters Market by Application, Technology, and Geography - Forecast and Analysis...\"', 'Finance', 'https://www.prnewswire.com:443/news-releases/rf-filters-market-size-to-grow-by-usd-7-10-billion-with-38-of-the-contribution-from-apac---exclusive-technavio-report-301595492.html', 'https://mma.prnewswire.com/media/1868533/Technavio___Radio_Frequency_Filters_Market.jpg?p=facebook', '2022-07-30 04:50:37', '2022-07-30 04:50:37'),
(145, 'auto', 'a95644c1-7281-4660-abc9-d355b04fcc39', 'Admin', 'These money and investing tips can float your portfolio whether there’s a recession or not', 'Don’t miss these top money and investing features:\n\nSign up here to get MarketWatch’s best mutual funds and ETF stories emailed to you weekly!\n\nSurvey respo...', '\"Money and investing stories popular with MarketWatch readers over the past week.\"', 'Finance', 'https://www.marketwatch.com/story/these-money-and-investing-tips-can-float-your-portfolio-whether-theres-a-recession-or-not-11659138018', 'https://images.mktw.net/im-547962/social', '2022-07-30 04:50:37', '2022-07-30 04:50:37'),
(146, 'auto', '3415dc60-2b7e-48b5-ab81-742cc4272230', 'Admin', 'Coal Has Staged a Sudden Recovery. Why It Probably Won’t Last.', 'Coal has been fading for a decade. But in 2021, it roared back; more was used to generate electricity than in any other year, notes BP’s annual statistical re...', '\"Coal began to rebound in 2021 for a number of different reasons: high demand for electricity, supply chain problems with renewable project, and the Ukraine...\"', 'Finance', 'https://www.marketwatch.com/articles/coal-has-staged-a-sudden-recovery-why-it-probably-wont-last-51659139016', 'https://images.barrons.com/im-593814/social', '2022-07-30 05:10:30', '2022-07-30 05:10:30'),
(147, 'auto', 'a35b2856-e6e1-439c-afc8-be6f24dacef1', 'Admin', 'Assault-weapons ban passes House nearly two decades after lapse', 'WASHINGTON (AP) — The House passed legislation Friday to revive a ban on semiautomatic guns, the first vote of its kind in years and a direct response to the ...', '\"Legislation expected to stall in evenly divided Senate.\"', 'Finance', 'https://www.marketwatch.com/story/assault-weapons-ban-passes-house-nearly-two-decades-after-lapse-01659139092', 'https://images.mktw.net/im-594345/social', '2022-07-30 05:10:30', '2022-07-30 05:10:30'),
(148, 'auto', '2817ceff-ac2b-48fb-a9fb-dfa0094c7664', 'Admin', 'Stocks Rally on Hopes That Rate Hikes Will Soon Wind Down', 'Markets can stay irrational longer than you can remain solvent, John Maynard Keynes famously observed. Unlike most practitioners of the dismal science, Keynes w...', '\"But a premature end to Fed tightening could ensure a long run for inflation. Will Jerome Powell & Co. stay the course or back off?\"', 'Finance', 'https://www.marketwatch.com/articles/stocks-rally-on-hopes-that-rate-hikes-will-soon-wind-down-51659139519', 'https://images.barrons.com/im-594288/social', '2022-07-30 05:10:30', '2022-07-30 05:10:30'),
(149, 'auto', '48ed5c56-f555-4a93-a061-2718fc9543dc', 'Admin', 'Business Law Prof Blog', 'Friday, July 29, 2022\n\nMillions of law school graduates around the US just took the bar exam. Others are preparing to enter colleges and graduates schools in a ...', '\"Information about the Law Professor Blogs Network.\"', 'Finance', 'https://lawprofessors.typepad.com/business_law/2022/07/practical-tips-for-teaching-or-training-adult-learners.html', 'http://lawprofessors.typepad.com/lpbn.png', '2022-07-30 05:25:29', '2022-07-30 05:25:29'),
(150, 'auto', '4825f5b2-714d-400a-8cef-2bddd1faec14', 'Admin', 'Is PayPal about to cut its forecast yet again?', 'PayPal Holdings Inc. has been bringing down expectations all year. Is the company done yet?\n\nExecutives in November shared a rough prediction for 18% revenue gr...', '\"PayPal Holdings Inc. has been bringing down expectations all year. Is the company done yet?\"', 'Finance', 'https://www.marketwatch.com/story/is-paypal-about-to-cut-its-forecast-yet-again-11659140326', 'https://images.mktw.net/im-594346/horizontal', '2022-07-30 05:25:29', '2022-07-30 05:25:29'),
(151, 'auto', '61c3d8c8-1f75-4b64-b146-6c2db9b9ab0e', 'Admin', 'ITR filing: Do I need to show the profits made on sale of agricultural land?', 'Any profit made on Sale of an agricultural land is exempt as it is not a capital asset. Do I need to show the profits made on sale of agricultural land in the I...', '\"In case your agricultural land falls within the definition of agricultural land as per income tax laws, the same is not treated as capital asset for taxation purpose\"', 'Finance', 'https://www.livemint.com/money/personal-finance/itr-filing-do-i-need-to-show-the-profits-made-on-sale-of-agricultural-land-11659088484464.html', 'https://images.livemint.com/img/2022/07/29/600x338/agriculture_1659088599734_1659088599879_1659088599879.jpg', '2022-07-30 05:40:42', '2022-07-30 05:40:42'),
(152, 'auto', 'b1c3c1c9-631e-43df-a52f-d2377467b3cc', 'Admin', 'Investing-Intensive Gen Z Confronts a Bear Market', 'Welcome to a bear market, Gen Z. Some Gen Zers may recall the 2008 recession and the short Covid crash, but mostly they’ve seen stocks rise. Take Ella Gupta, ...', '\"The youngest generation, which is both financially active and adept online, comes of age dealing with a new experience: a protracted period of falling stocks.\"', 'Finance', 'https://www.marketwatch.com/articles/investing-intensive-gen-z-confronts-a-bear-market-51659141516', 'https://images.barrons.com/im-593787/social', '2022-07-30 05:40:42', '2022-07-30 05:40:42'),
(153, 'auto', 'cc7e2794-29d7-4f64-bab8-a17945ea67d5', 'Admin', 'Curb Your Enthusiasm for Amazon', 'To the Editor:\n\nAmazon.com is a must-have in every portfolio, but I think the degree of enthusiasm and optimism in this article is misplaced (“Amazon Unboxed,...', '\"Readers weigh in on Amazon, the Federal Reserve, the European Central Bank, the euro, and gold\"', 'Finance', 'https://www.marketwatch.com/articles/curb-your-enthusiasm-for-amazon-51659141916', 'https://images.barrons.com/im-592041/social', '2022-07-30 06:05:36', '2022-07-30 06:05:36'),
(154, 'auto', '30783f7b-b694-42a6-ae70-93e5a76515a6', 'Admin', 'Floods kill at least 53 in Iran, rescuers hunt for the missing', 'RESCUERS searched for the missing in Iran on Friday after landslides and floods triggered by heavy rains killed at least 53 people, officials said.\n\nMehdi Valip...', '\"RESCUERS searched for the missing in Iran on Friday after landslides and floods triggered by heavy rains killed at least 53 people, officials said. Me...\"', 'Finance', 'https://www.thesundaily.my/home/floods-kill-at-least-53-in-iran-rescuers-hunt-for-the-missing-BB9517605', 'https://www.thesundaily.my/binrepository/480x321/0c21/480d250/none/11808/FWWE/iran-weather-flood-120230_2527284_20220730094736.jpg', '2022-07-30 06:05:36', '2022-07-30 06:05:36'),
(155, 'auto', '540b3250-ba33-4e05-8db6-feed53e8e295', 'Admin', 'This Week at REV3AL', 'Hey, REV3ALers, we appreciate you following our progress! Here is a quick breakdown of what’s been going on with REV3AL Tech and the team at REV3AL this week....', '\"Hey, REV3ALers, we appreciate you following our progress! Here is a quick breakdown of what\\u2019s been going on with REV3AL Tech and the team at REV3AL this week. Last week we mentioned that we would be\\u2026\"', 'Finance', 'https://rev3altechnology.medium.com/this-week-at-rev3al-26ddd92993d', 'https://miro.medium.com/max/1200/0*b1--5iMzy7NcSjK-', '2022-07-30 06:05:37', '2022-07-30 06:05:37'),
(156, 'auto', 'c2d41a1d-9a01-4edc-82c9-a2a8fd1faa0f', 'Admin', 'Lucky Numbers and Horoscopes for today 30 July 2022', 'These are uncertain times, but if you want to find out what your future has in store keep up to date with our daily horoscope forecasts and astrology readings. ...', '\"Find out what the day has in store for you with our up-to date horoscope. Lucky Numbers and Horoscopes for today, 30 July 2022.\"', 'Finance', 'https://www.thelondoneconomic.com/lifestyle/horoscopes/lucky-numbers-and-horoscopes-for-today-30-july-2022-330708/', 'https://cdn.thelondoneconomic.com/wp-content/uploads/2020/05/865d63ca-a-hole-lot-near-512909.jpg', '2022-07-30 06:25:10', '2022-07-30 06:25:10'),
(157, 'auto', 'b7dec4ae-29c2-45e9-8817-04ab04723bee', 'Admin', 'Lifes Work News, Opinion, and Analysis—The New Yorker', 'Get the best of The New Yorker in your in-box every day.\n\nSubmit', '\"A collection of articles about Lifes Work from The New Yorker, including news, in-depth reporting, commentary, and analysis.\"', 'Finance', 'https://www.newyorker.com/magazine/lifes-work', 'https://www.newyorker.com/favicon.ico', '2022-07-30 06:25:10', '2022-07-30 06:25:10'),
(158, 'auto', '7c999b16-adaf-4437-a99a-5c0ad9eaf38b', 'Admin', 'U.S. approves Boeing inspection, rework plan to resume 787 deliveries', 'This advertisement has not loaded yet, but your article continues below.\n\nU.S. approves Boeing inspection, rework plan to resume 787 deliveries\n\nArticle content...', '\"WASHINGTON \\u2014 The U.S. Federal Aviation Administration (FAA) on Friday approved Boeing\\u2019s inspection and modification plan to resume deliveries of 787\\u2026\"', 'Finance', 'https://financialpost.com/pmn/business-pmn/u-s-approves-boeing-inspection-rework-plan-to-resume-787-deliveries-2', 'https://dcs-static.gprod.postmedia.digital/11.2.1/websites/images/fp/favicon-fp.ico', '2022-07-30 06:25:10', '2022-07-30 06:25:10'),
(159, 'auto', '0bcc4630-89b6-434f-9202-e84a1f8cd4d6', 'Admin', 'Gurugram: Massive waterlogging witnessed as heavy rain lashed city. See photos', 'Massive waterlogging was witnessed in Haryana\'s Gurugram city adjoining the national capital on Friday after heavy rainfall lashed the city. Areas like Suncity ...', '\"Gurugram rains: Areas like Suncity ATS Chowk, Sector 55, 56 road and stretches of the Golf Course road were under knee-deep waters and cars parked outside societies were completely\"', 'Finance', 'https://www.livemint.com/news/india/gurugram-massive-waterlogging-witnessed-as-heavy-rain-lashed-city-see-photos-11659146596150.html', 'https://images.livemint.com/img/2022/07/30/600x338/wl1_1659147010559_1659147025141_1659147025141.jpg', '2022-07-30 06:40:42', '2022-07-30 06:40:42'),
(160, 'auto', 'be7817a5-3d13-455e-94c3-9e102c1ddf67', 'Admin', 'US citizens struggle to make ends meet amid record high inflation: CNN', 'NEW YORK: Suffering from historic high inflation, many US residents living in the worst-hit regions are struggling to make ends meet, reported Xinhua.\n\nA featur...', '\"NEW YORK: Suffering from historic high inflation, many US residents living in the worst-hit regions are struggling to make ends meet, reported Xinhua....\"', 'Finance', 'https://www.thesundaily.my/home/us-citizens-struggle-to-make-ends-meet-amid-record-high-inflation-cnn-DB9517757', 'https://www.thesundaily.my/binrepository/480x320/0c35/480d250/none/11808/IMKO/pexels-photo-868110-1_2527321_20220730101950.jpg', '2022-07-30 06:40:42', '2022-07-30 06:40:42'),
(161, 'auto', 'c2da6ca3-d8e1-4c1f-afeb-c24b818c6e97', 'Admin', 'Morning Digest | SC allows 6 new petitions challenging Places of Worship Act; cigarette products to display ‘Tobacco causes painful death’ warning from Dec. 1, and more', 'A select list of stories to read before you start your day\n\nA view of the Supreme Court of India, in New Delhi on November 25, 2019. | Photo Credit: SUSHIL KUMA...', '\"A select list of stories to read before you start your day\"', 'Finance', 'https://www.thehindu.com/news/cities/chennai/chen-news/morning-digest-july-30-2022/article65700259.ece', 'https://th-i.thgim.com/public/incoming/ulsz1n/article65700092.ece/alternates/LANDSCAPE_615/IMG_INDEX_SUPREME_COURT__2_1_5SA02LKG.jpg', '2022-07-30 06:40:42', '2022-07-30 06:40:42'),
(162, 'auto', '6e12c203-e5e0-41c4-948b-33125d17c732', 'Admin', 'TPG Financial Advisors, LLC Buys 4, Sells 1 in 2nd Quarter', 'TPG Financial Advisors, LLC recently filed their 13F report for the second quarter of 2022, which ended on 2022-06-30.\n\nThe 13F report details which stocks were...', '\"GuruFocus Article or News written by insider and the topic is about:\"', 'Finance', 'https://www.gurufocus.com/news/1838936/tpg-financial-advisors-llc-buys-4-sells-1-in-2nd-quarter', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 07:00:34', '2022-07-30 07:00:34'),
(163, 'auto', '80952ac5-cb47-44aa-923a-1733a460db9f', 'Admin', 'Top 5 2nd Quarter Trades of Compton Wealth Advisory Group, LLC', 'Compton Wealth Advisory Group, LLC recently filed their 13F report for the second quarter of 2022, which ended on 2022-06-30.\n\nThe 13F report details which stoc...', '\"GuruFocus Article or News written by insider and the topic is about:\"', 'Finance', 'https://www.gurufocus.com/news/1838938/top-5-2nd-quarter-trades-of-compton-wealth-advisory-group-llc', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 07:00:34', '2022-07-30 07:00:34'),
(164, 'auto', '92c7bf47-9e19-42a1-9a6b-3a69468e50b5', 'Admin', 'Bernardo Wealth Planning LLC Buys 3, Sells 2 in 2nd Quarter', 'Bernardo Wealth Planning LLC recently filed their 13F report for the second quarter of 2022, which ended on 2022-06-30.\n\nThe 13F report details which stocks wer...', '\"GuruFocus Article or News written by insider and the topic is about:\"', 'Finance', 'https://www.gurufocus.com/news/1838940/bernardo-wealth-planning-llc-buys-3-sells-2-in-2nd-quarter', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-30 07:00:34', '2022-07-30 07:00:34'),
(165, 'auto', 'cda7607d-ca10-4044-8bae-183958198766', 'Admin', 'Unpaid dues: Irish firm asks DGCA to deregister 3 aircraft leased to SpiceJet', 'Ireland-based leasing company Awas Ireland Ltd has requested the Indian aviation watchdog DGCA to deregister three aircraft it had leased to SpiceJet, over unpa...', '\"Mumbai, July 30\"', 'Finance', 'https://www.thehindubusinessline.com/economy/logistics/irish-firm-asks-dgca-to-deregister-3-aircraft-leased-to-spicejet-over-unpaid-dues/article65700438.ece', 'https://bl-i.thgim.com/public/todays-paper/tp-others/tp-variety/dvmonx/article65633048.ece/alternates/LANDSCAPE_615/SpiceJet-dismis%2BGE8A1B3UJ.3.jpg.jpg', '2022-07-30 07:25:36', '2022-07-30 07:25:36'),
(166, 'auto', '8a9c9d6d-3242-4c73-a5ce-07230bdbb80b', 'Admin', 'XOUT: Laggards Removed But Alpha Not Achieved, Hold (XOUT)', 'Michael M. Santiago\n\nThe passive investing boom spawned myriads of exchange-traded funds, including those adopting hybrid active/passive and smart-beta strategi...', '\"XOUT has three major downsides namely exorbitant valuation, fees on the expensive side, and unconvincing performance. See why I\'m not bullish on XOUT and only rate it as a Hold.\"', 'Finance', 'https://seekingalpha.com/article/4527734-xout-etf-laggards-removed-alpha-not-achieved-hold', 'https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1372549930/image_1372549930.jpg?io=getty-c-w750', '2022-07-30 07:40:30', '2022-07-30 07:40:30'),
(167, 'auto', '86960db6-e508-4dd9-825f-90dc9dfde6fe', 'Admin', 'Heartbeat signals from distant space', 'Heartbeat signals from distant space\n\nOver the past few years, news has spread around the world about the emergence of strange and continuous radio signals comi...', '\"Over the past few years, news has spread around the world about the emergence of strange and continuous radio signals coming from distant galaxies. It was discovered by astronomers at universities in\\u2026\"', 'Finance', 'https://medium.com/@uk145081/heartbeat-signals-from-distant-space-805573d0325d', 'https://miro.medium.com/max/1200/1*XFHquA6OJ_lwh7kJ77tlkQ.jpeg', '2022-07-30 07:40:30', '2022-07-30 07:40:30'),
(168, 'auto', 'aaf1f763-5134-46b7-96f2-61ad1356e83d', 'Admin', 'Sambutan untuk peringati perjuangan kebebasan Keluarga Malaysia urus negara', '3. No change in Palestine stance, says Saudi Arabia after opening airspace to all carriers', '\"PUTRAJAYA: Perdana Menteri Datuk Seri Ismail Sabri Yaakob berkata sambutan Hari Kebangsaan dan Kibar Jalur Gemilang diadakan bagi memperingati perjuan...\"', 'Finance', 'https://www.thesundaily.my/home/sambutan-untuk-peringati-perjuangan-kebebasan-keluarga-malaysia-urus-negara-XK9518033', 'https://www.thesundaily.my/binrepository/480x320/0c63/480d250/none/11808/YDUS/ptj10-300722-pm_2527401_20220730112207.jpg', '2022-07-30 07:40:30', '2022-07-30 07:40:30'),
(169, 'auto', '16841ab6-0257-4ac4-a03f-f9896104f315', 'Admin', 'HDFC To Fully Acquire Venture Capital Arm, By Buying Shares From SBI', 'HDFC To Fully Acquire Venture Capital Arm, By Buying Shares From SBI Business oi-PTI\n\nHDFC on Friday said it will acquire its venture capital subsidiary HVCL by...', '\"HDFC on Friday said it will acquire its venture capital subsidiary HVCL by buying out State Bank of Indias 19.5 per cent stake in the company. The Housing Development Finance Corporation (HDFC) holds 80.50 per cent equity share capital of HVCL and the remaining shares are held by State Bank of India (SBI).\"', 'Finance', 'https://www.goodreturns.in/news/hdfc-to-fully-acquire-venture-capital-arm-by-buying-shares-from-sbi-1257186.html', 'https://www.goodreturns.in/img/2019/08/hdfc-1567164173.jpg', '2022-07-30 08:00:06', '2022-07-30 08:00:06'),
(170, 'auto', 'bbb15be7-6e67-4202-92a6-a0f9b7f9052e', 'Admin', 'Bihar govt making efforts to provide opportunities to budding entrepreneurs: Minister', 'Bihar Industries Minister Syed Shahnawaz on Friday said the state government is making all efforts to provide opportunities to young and budding entrepreneurs.\n...', '\"\"', 'Finance', 'https://www.businesstoday.in/latest/trends/story/bihar-govt-making-efforts-to-provide-opportunities-to-budding-entrepreneurs-minister-343200-2022-07-30', 'https://akm-img-a-in.tosshub.com/businesstoday/images/story/202207/entrepreneur-4664726_1280-sixteen_nine.jpg', '2022-07-30 08:00:06', '2022-07-30 08:00:06'),
(171, 'auto', 'f623318d-4926-45dd-9231-b0f92f3e91ab', 'Admin', 'Haryana CM approves special package of incentives for Suzuki Motorcycles', 'Haryana Chief Minister Manohar Lal Khattar on Friday accorded approval for a special package of incentives amounting to Rs 67.62 crores for Suzuki Motorcycles I...', '\"A state-of-the-art manufacturing plant will be established at Kharkhoda, Sonipat with an investment of more than Rs 2,000 crore. This plant would generate employment for approximately 2,000 persons in the state.\"', 'Finance', 'https://www.businesstoday.in/latest/trends/story/haryana-cm-approves-special-package-of-incentives-for-suzuki-motorcycles-343201-2022-07-30', 'https://akm-img-a-in.tosshub.com/businesstoday/images/story/202207/suzuki-1174855_1280-sixteen_nine.jpg', '2022-07-30 08:00:06', '2022-07-30 08:00:06'),
(172, 'auto', 'c97e05ff-59da-4ad3-a0ad-2c1a20c8064c', 'Admin', 'European asset managers prepare a for turbulent second half of 2022', 'European asset managers are bracing themselves for a “volatile” second half after this year’s big fall in markets has left them racing to protect their pr...', '\"Groups with more diversified businesses have performed better during this year\\u2019s market falls\"', 'Finance', 'https://www.ft.com/content/abc8a2f3-4f4d-4ef0-ab04-a24b8fde6e51', 'https://www.ft.com/__origami/service/image/v2/images/raw/https%3A%2F%2Fd1e00ek4ebabms.cloudfront.net%2Fproduction%2F18cae706-39e2-4121-bc75-accd526f7967.jpg?source=next-opengraph&fit=scale-down&width=900', '2022-07-30 08:15:29', '2022-07-30 08:15:29'),
(173, 'auto', '4e4ad02e-4896-4f24-ab9e-7c7f48860ea7', 'Admin', 'This Is Why Developers Choose Visual Studio Code', 'This Is Why Developers Choose Visual Studio Code\n\nReasons how a text editor won the hearts of many engineers\n\nPhoto by Ilias Haddad on Unsplash\n\nIt is a prevale...', '\"It is a prevalent thing for developers to have \\u201choly wars\\u201d about different topics. They are starting from programming languages and end with mechanical keyboards. There is a significant number of\\u2026\"', 'Finance', 'https://medium.com/geekculture/this-is-why-developers-choose-visual-studio-code-f3df266f2dae', 'https://miro.medium.com/max/1200/1*JFxpczlgv_cUvqYj5GPK1g.jpeg', '2022-07-30 08:15:29', '2022-07-30 08:15:29'),
(174, 'auto', '9c6f4f6f-c4fd-443a-b3c5-aa087cefca71', 'Admin', 'Interview: The World According to Martin Armstrong', 'Spread the love\n\nClick here to listen to Martin Armstrong’s latest interview.\n\nBy Kerry Lutz:\n\n“We’re seeing oil price shocks, commodity booms and busts, ...', '\"Click here to listen to Martin Armstrong\'s latest interview. By Kerry Lutz:\"', 'Finance', 'https://www.armstrongeconomics.com/armstrong-in-the-media/interview-the-world-according-to-martin-armstrong/', 'https://www.armstrongeconomics.com/wp-content/uploads/2022/02/Interview.Microphone-scaled.jpg', '2022-07-30 08:15:29', '2022-07-30 08:15:29'),
(175, 'auto', '017f4d9a-eb11-495f-8e31-8058f0d8e60c', 'Admin', 'Biocon Q1 Review: Expect Growth In Second Half Of 2022, Says CEO Siddharth Mittal', 'Margin Hit\n\nResearch and development expenditure rose significantly from Rs 130 crore last year to Rs 198 crore this year, which is close to 13% of revenues, an...', '\"Biocon Ltd. is expecting growth in the second half of 2022 despite some fall back in performance as it missed forecasts in the first quarter.\"', 'Finance', 'https://www.bqprime.com/business/biocon-q1-review-expect-growth-in-second-half-of-2022-says-ceo-siddharth-mittal', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F483309c5-22b5-4adc-8352-982431b83e16%2Ftowfiqu_barbhuiya_w8p9cQDLX7I_unsplash.jpg?rect=0%2C485%2C6240%2C3276&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 08:35:22', '2022-07-30 08:35:22'),
(176, 'auto', '820b7c57-e472-4267-8829-14665311640d', 'Admin', 'Nifty This Week: Technical Charts And More – Banks Need To Pitch In Now', 'Trends were helped by two gaps up. It was evident that the market had got reconciled to the U.S. Federal Reserve meet and once the event was past us, the pent-u...', '\"When the market began the week, it didn\\u2019t look like it would take off as it did but really got into a stride after Tuesday and didn\\u2019t stop right into Friday. There was some bearishness built into the options side on Monday, and it seems like the professionals got into the act around the lows of Wednesday morning and didn\\u2019t let go. The first chart shows the moves over the week.\"', 'Finance', 'https://www.bqprime.com/markets/nifty-this-week-technical-charts-and-more-banks-need-to-pitch-in-now', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2Fd85be310-e13d-46b5-872c-b5d31df6b42f%2Faustin_distel_DfjJMVhwH_8_unsplash.jpg?rect=0%2C498%2C5652%2C2967&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 08:35:22', '2022-07-30 08:35:22'),
(177, 'auto', 'dcc046fd-8691-49cf-8020-918b3b44762f', 'Admin', 'Savitri Jindal: Asia Has New Richest Woman As Property Crisis Reshapes Fortunes', 'Her fortune has more than halved this year to $11 billion, with the decline accelerating this week when her Country Garden, China’s largest property developer...', '\"India\\u2019s Savitri Jindal overtook Chinese\\u00a0real estate\\u00a0billionaire\\u00a0Yang Huiyan atop the wealth rankings as the country\\u2019s developers reel from a mortgage boycott.\"', 'Finance', 'https://www.bqprime.com/wealth/savitri-jindal-asia-has-new-richest-woman-as-property-crisis-reshapes-fortunes', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2Fb482a422-c7bf-45e8-9848-499ccabd1dee%2Fss.jpg?w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 08:35:22', '2022-07-30 08:35:22'),
(178, 'auto', '4a0cc037-0683-4070-88e6-b302f3c9c83c', 'Admin', 'U.S. Bank illegally used customer data to create sham accounts to inflate sales numbers for the last decade. Now they\'ve been fined $37.5 million plus interest on unlawfully collected fees.', 'U.S. Bank was fined for using customer data to open sham accounts and new lines of credit without permission.\n\nEmployees were pressured to access customer credi...', '\"The Consumer Financial Protection Bureau fined U.S. Bank $37.5 million for using customer data to open sham accounts and new lines of credit without permission.\"', 'Finance', 'https://www.businessinsider.com/us-bank-fined-375-million-for-illegally-using-customer-data-2022-7', 'https://i.insider.com/61b4f0092f5b090018fd5ec5?width=1200&format=jpeg', '2022-07-30 08:50:32', '2022-07-30 08:50:32'),
(179, 'auto', '74d59463-1ec8-4d4f-80ea-c11a29d7b178', 'Admin', 'iShares DGRO ETF: You Get What You Pay For (NYSEARCA:DGRO)', 'Karina Caverdos - Chernenko\n\nQuality dividend growth is core to how I build stock portfolios, so when the iShares Core Dividend Growth ETF (NYSEARCA:DGRO) poppe...', '\"The iShares Core Dividend Growth ETF is a low cost, benchmark hugging way to tilt a US large cap portfolio towards dividend payers.\"', 'Finance', 'https://seekingalpha.com/article/4527742-dgro-ishares-etf-better-alternatives-elsewhere', 'https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1339395986/image_1339395986.jpg?io=getty-c-w750', '2022-07-30 08:50:32', '2022-07-30 08:50:32'),
(180, 'auto', 'dc9f93ba-4d98-4a6c-a781-9efa59d25807', 'Admin', 'The Recession Begins!', 'With the Fed raising interest rates by 0.75%, we asked ourselves, “Does higher inflation cause interest rates to rise naturally, or do central banks simply ra...', '\"Learn about today\'s GDP figures, lessons from history\'s wealthiest man, the relationship between interest rates and inflation, and more.\"', 'Finance', 'https://www.theinvestorspodcast.com/newsletter/the-recession-begins/', 'https://www.theinvestorspodcast.com/wp-content/uploads/2019/06/TIP-Network-Logo-Final.png', '2022-07-30 09:15:31', '2022-07-30 09:15:31'),
(181, 'auto', 'f2f1f6d3-22e0-43af-87c8-e40662933b29', 'Admin', 'Shock July Stock Rally Was A Monster The Fed May Regret Seeing', '“If the Fed’s goal by raising interest rates is to slow the economy by tightening financial conditions, then that hasn’t happened since they started to ge...', '\"Among the many superlatives attaching to markets in July, one that could come back to haunt the Federal Open Market Committee is Wednesday and Thursday\\u2019s, when the stocks posted their biggest post-meeting rally on record.\"', 'Finance', 'https://www.bqprime.com/markets/shock-july-stock-rally-was-a-monster-the-fed-may-regret-seeing', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F2e9aa74f-f22a-450f-8b57-ab8bcdf96b1d%2F_1x_1.jpg?w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 09:15:31', '2022-07-30 09:15:31'),
(182, 'auto', '2ad20cf6-9d08-480a-97f6-b4338b1eccc7', 'Admin', 'Covid-19 India Updates: New Cases Rise Above 20,000 For Third Day In A Row', 'India\'s active Covid-19 cases decline for the sixth day in a row, even as new cases remained above 20,400 for the third day. One-day recoveries exceeded new cas...', '\"India\'s active Covid-19 cases decline for the sixth day in a row, even as new cases remained above 20,400 for the third day.\"', 'Finance', 'https://www.bqprime.com/coronavirus-outbreak/covid-19-india-updates-new-cases-rise-above-20000-for-third-day-in-a-row', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F0d8bce91-c593-44a0-9436-3e6e9202adcf%2Fviktor_forgacs_FcDqdJUM6B4_unsplash.jpg?w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 09:15:31', '2022-07-30 09:15:31'),
(183, 'auto', '46693654-7d8b-48a5-abea-b80b42f9ab59', 'Admin', 'VST net profit up 24 per cent at Rs 87 crore in first quarter', 'VST Industries has registered a net profit of Rs 87.14 crore in the first quarter ended June 30, 2022, a growth of 23.7 per cent on the Rs 70.44 crore recorded ...', '\"Total income for the quarter stood at Rs 413 crore\"', 'Finance', 'https://www.thehindubusinessline.com/economy/agri-business/vst-net-profit-up-24-per-cent-at-rs-87-crore-in-first-quarter/article65701711.ece', 'https://bl-i.thgim.com/public/incoming/2rzl8e/article64928050.ece/alternates/LANDSCAPE_615/vst.jpg', '2022-07-30 09:30:05', '2022-07-30 09:30:05'),
(184, 'auto', '5b2bdc03-677e-41fc-9de7-224b3c3a3c98', 'Admin', 'Check Price Of Petrol, Diesel, July 30: Oil Marketing Companies Update Fuel Prices', 'Check Price Of Petrol, Diesel, July 30: Oil Marketing Companies Update Fuel Prices Business oi-Renu Baliyan\n\nThe petrol and diesel price remain constant on Satu...', '\"The petrol and diesel price remain constant on Saturday, July 30, 2022. The The Oil Marketing Companies decide to keep the fuel prices unchanged today and with this the price has remain unchanged for more than two months.\"', 'Finance', 'https://www.goodreturns.in/news/check-price-of-petrol-diesel-july-30-oil-marketing-companies-update-fuel-prices-1257191.html', 'https://www.goodreturns.in/img/2020/05/petrol-1545024671-1588726396.jpg', '2022-07-30 09:30:05', '2022-07-30 09:30:05'),
(185, 'auto', '0183c071-8491-46e3-b4b7-7f27a39ecd8b', 'Admin', 'Insights: You can’t manage what you can’t see', 'The last two years have been a roller coaster of emotions. In terms of work, we’ve gone from commuting to the workplace to working remotely almost overnight. ...', '\"The key is to increase visibility at every edge, although this is quite impractical and entirely too expensive to instrument at every different edge.\"', 'Finance', 'https://gulfbusiness.com/insights-you-cant-manage-what-you-cant-see/', 'https://gulfbusiness.com/wp-content/uploads/2022/07/Emad-Fahmy-NETSCOUT.jpg', '2022-07-30 09:30:05', '2022-07-30 09:30:05'),
(186, 'auto', '7f1dccb6-f531-475d-bc4b-260d1b6af289', 'Admin', 'Rogers Communications (TSE:RCI.B) PT Raised to C$80.00 at TD Securities', 'Rogers Communications (TSE:RCI.B – Get Rating) (NYSE:RCI) had its target price raised by TD Securities from C$78.00 to C$80.00 in a report issued on Thursday,...', '\"Read Rogers Communications (TSE:RCI.B) PT Raised to C$80.00 at TD Securities at ETF Daily News\"', 'Finance', 'https://www.etfdailynews.com/2022/07/30/rogers-communications-tserci-b-pt-raised-to-c80-00-at-td-securities/', 'https://www.americanbankingnews.com/wp-content/timthumb/timthumb.php?src=https://www.marketbeat.com/logos/rogers-comm-logo.jpg&w=240&h=240&zc=2', '2022-07-30 09:45:22', '2022-07-30 09:45:22'),
(187, 'auto', '30951bed-a11d-4412-b921-d76e4669e867', 'Admin', 'The Mutual Fund Show: Red Flags And Triggers Investors Must Watch Out For', 'Prableen Bajpai: Triggers or red flags are slightly stronger words. I would say these should be filters, or that these themes can probably be put in the watch l...', '\"A mutual fund investor should be able to identify certain red flags or triggers and decide on whether to exit the investment. \\n\\nAmong other things, equity mutual fund investments should be sold in certain cases on reaching the set goal, for rebalancing the portfolio, and adjustment to change in risk appetite, Prableen Bajpai, founder of FinFix Research and Analytics, told BQ Prime\'s Niraj Shah.\"', 'Finance', 'https://www.bqprime.com/business/the-mutual-fund-show-red-flags-and-triggers-investors-must-watch-out-for', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F2f196b7e-4263-4e7d-8938-0cd059af5a45%2Ftowfiqu_barbhuiya_joqWSI9u_XM_unsplash.jpg?rect=0%2C540%2C4592%2C2411&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 09:45:22', '2022-07-30 09:45:22'),
(188, 'auto', '6691729c-f9fc-4bfc-bfcc-a737f5639c51', 'Admin', 'Intellia Therapeutics: Pushing CRISPR-Based Therapy Forward, Slowly But Surely (NTLA)', 'Double stranded DNA ArtemisDiana\n\nCRISPR-based therapies continue to move towards platform validation with every clinical data point, and Intellia (NASDAQ:NTLA)...', '\"Intellia\\u2019s recent data from its Regeneron collaboration for CRISPR-based NTLA-2001 shows a durable response to the lead in vivo genome editing candidate.\"', 'Finance', 'https://seekingalpha.com/article/4527753-intellia-therapeutics-pushing-crispr-therapy-forward-slowly-surely', 'https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1366552805/image_1366552805.jpg?io=getty-c-w750', '2022-07-30 09:45:22', '2022-07-30 09:45:22'),
(189, 'auto', '1131ad0b-17d2-4236-909e-c577dec98b48', 'Admin', 'India used far less than its share of global carbon budget: Govt', 'India has used far less than its fair share of the global carbon budget and its emissions can grow as it is a developing country with sustainable development an...', '\"India has used far less than its fair share of the global carbon budget and its emissions can grow as it is a developing country: Govt\"', 'Finance', 'https://www.business-standard.com/article/current-affairs/india-used-far-less-than-its-share-of-global-carbon-budget-govt-122073000135_1.html', 'https://bsmedia.business-standard.com/_media/bs/img/article/2021-10/11/full/1633973045-9602.jpg', '2022-07-30 10:00:25', '2022-07-30 10:00:25'),
(190, 'auto', '3ef0b635-ac5a-4e20-8b1b-b4ba8486c440', 'Admin', 'Covid-19 update: India logs 20,408 new cases, 44 deaths', 'India logged a single day rise of 20,408 new coronavirus infections, pushing India\'s total tally of Covid-19 cases to 4,40,00,138, as the active cases declined ...', '\"A decrease of 604 cases has been recorded in the active Covid-19 caseload in a span of  24 hours\"', 'Finance', 'https://www.thehindubusinessline.com/news/covid-19-update-india-logs-20408-new-cases-44-deaths/article65701778.ece', 'https://bl-i.thgim.com/public/news/b63bwy/article65701784.ece/alternates/LANDSCAPE_615/covid%20testing.jpg', '2022-07-30 10:00:25', '2022-07-30 10:00:25'),
(191, 'auto', 'e324eb73-4f5b-4425-8d0f-9fe25abd2d55', 'Admin', 'Eco-lie: Beware of greenwashing when living sustainably', 'There is now ever-growing pressure on companies to future-proof their businesses and ensure they are doing the right thing when it comes to sustainability.\n\nMak...', '\"With consumers keen to live a greener life \\u2013 and willing to pay a premium to make that happen - some companies are taking short-cuts to sustainability, writes Adam Maguire.\"', 'Finance', 'https://www.rte.ie/news/business/2022/0730/1312806-greenwashing-environment-green/', 'https://img.rasset.ie/0018c1f0-1600.jpg', '2022-07-30 10:00:25', '2022-07-30 10:00:25'),
(192, 'auto', 'c3abbf4c-42b2-4b64-96bf-da2ea249fa2d', 'Admin', 'Pelosi ‘Excited’ By Asia Trip, But No Mention Of A Taiwan Stop', 'Neither side said in statements whether Pelosi’s possible Taiwan stop came up. But a person familiar with the discussion said Xi made clear to Biden how big a...', '\"House Speaker Nancy Pelosi said she\\u2019s \\u201cvery excited\\u201d about the prospect of an upcoming trip to Asia, while refusing to confirm any of her itinerary -- including whether she\\u2019ll visit Taiwan.\"', 'Finance', 'https://www.bqprime.com/politics/pelosi-excited-by-asia-trip-but-no-mention-of-any-taiwan-stop', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F923e73bc-0272-4364-901d-c01828429fdc%2F_1x_1.jpg?w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 10:15:45', '2022-07-30 10:15:45'),
(193, 'auto', 'cf7739ef-db67-4714-8b01-372d899bc22c', 'Admin', 'Boeing Gets FAA Clearance to Restart 787 Dreamliner Delivery', 'The FAA agreement is a milestone for the company, but it won’t immediately resume deliveries. Boeing must still make required fixes and get FAA inspectors to ...', '\"Boeing Co. received preliminary US regulatory clearance to restart deliveries of its 787 Dreamliner aircraft, paving the way for the end to a drought that drained cash and dented the planemaker\\u2019s reputation for quality.\"', 'Finance', 'https://www.bqprime.com/business/boeing-gets-faa-clearance-to-restart-787-dreamliner-deliveries', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2Fa095e505-f152-4b01-9c13-14cdce8c7281%2F_1x_1.jpg?w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 10:15:45', '2022-07-30 10:15:45'),
(194, 'auto', '3f533e6b-539a-46b6-b9df-b017cb47ec3a', 'Admin', 'Zilingo COO Quits In Latest Blow For Singapore Startup', '“I have resigned and decided to move on from Zilingo,” he said. “It was a place that shaped me both personally and professionally and gave me great collea...', '\"The chief operating officer of Zilingo Pte has resigned from the company after a tenure during which the fashion e-commerce startup rose to prominence before plunging into a crisis.\"', 'Finance', 'https://www.bqprime.com/business/zilingo-coo-quits-in-latest-blow-for-singapore-startup', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2Fc494f9a6-a986-4a5d-ba8d-5ebfa59c0854%2F_1x_1.jpg?rect=0%2C0%2C2000%2C1050&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 10:15:45', '2022-07-30 10:15:45'),
(195, 'auto', '421e6196-5541-47d2-b432-1211152ec3b9', 'Admin', 'Delhi govt to revert to old excise policy, directs opening govt liquor stores: DY CM Manish Sisodia', 'Days after the Delhi Lieutenant Governor recommended a probe by the Central Bureau of Investigation (CBI ) into the implementation of the new excise policy, the...', '\"Days after the Delhi Lieutenant Governor recommended a probe by the Central Bureau of Investigation (CBI ) into the implementation of the new excise policy, the AAP government has decided to go back to the old regime of retail liquor sale in the city. The Excise Policy 2021-22, which was extended two times after March 31 for a period of two months each, will expire on July 31.\"', 'Finance', 'https://economictimes.indiatimes.com/news/politics-and-nation/delhi-govt-to-revert-to-old-excise-policy-directs-opening-govt-liquor-stores-dy-cm-manish-sisodia/videoshow/93228212.cms', 'https://img.etimg.com/thumb/msid-93228212,width-1070,height-580,overlay-economictimes/photo.jpg', '2022-07-30 10:35:33', '2022-07-30 10:35:33'),
(196, 'auto', '6fa35e8f-3ce3-4cf3-86d4-e51e3eae50d1', 'Admin', 'Delta Opens New Sky Club at Tokyo Haneda Airport (HND)', '', '\"Delta Air Lines has opened a new Sky Club lounge at Tokyo\'s Haneda airport, the first U.S. airline lounge to open there.\"', 'Finance', 'https://upgradedpoints.com/news/delta-sky-club-tokyo-haneda/', 'https://upgradedpoints.com/wp-content/uploads/2022/07/HND-Sky-Club-Seating.jpg', '2022-07-30 10:35:33', '2022-07-30 10:35:33'),
(197, 'auto', 'e18a9c85-d550-4669-81c4-d40407285b81', 'Admin', 'PM Modi urges judiciary to speed up release of undertrial prisoners', 'Prime Minister on Saturday urged the judiciary to speed up the release of undertrials languishing in various jails awaiting legal aid.\n\nAddressing the first All...', '\"Prime Minister Narendra Modi on Saturday urged the judiciary to speed up the release of undertrials languishing in various jails awaiting legal aid\"', 'Finance', 'https://www.business-standard.com/article/current-affairs/pm-modi-urges-judiciary-to-speed-up-release-of-undertrial-prisoners-122073000239_1.html', 'https://bsmedia.business-standard.com/_media/bs/img/article/2022-07/08/full/1657304921-5545.jpg', '2022-07-30 10:35:33', '2022-07-30 10:35:33'),
(198, 'auto', '0fccf9f0-bb09-4b91-a90c-cd1297b16288', 'Admin', 'Invesco RAFI Strategic US Small Company ETF (NYSEARCA:IUSS) Trading 0.9% Higher', 'Shares of Invesco RAFI Strategic US Small Company ETF (NYSEARCA:IUSS – Get Rating) traded up 0.9% on Friday . The stock traded as high as $35.40 and last trad...', '\"Read Invesco RAFI Strategic US Small Company ETF (NYSEARCA:IUSS) Trading 0.9% Higher at ETF Daily News\"', 'Finance', 'https://www.etfdailynews.com/2022/07/30/invesco-rafi-strategic-us-small-company-etf-nysearcaiuss-trading-0-9-higher/', 'https://www.americanbankingnews.com/wp-content/timthumb/timthumb.php?src=https://www.marketbeat.com/logos/generic-stocks.jpg&w=240&h=240&zc=2', '2022-07-30 10:55:16', '2022-07-30 10:55:16'),
(199, 'auto', 'e361620e-a40b-411f-88a4-d3274d166ab8', 'Admin', 'Amazon, Apple Add $196 Billion in Value on Resilient Results', '“Apple appears to be seeing no meaningful impact on its iPhone business in the current macro environment,” Piper Sandler analyst Harsh Kumar wrote in a rese...', '\"Amazon.com Inc. and Apple Inc. added about $196 billion in market value on Friday after they joined technology peers Alphabet Inc. and Microsoft Corp. in assuaging investor concerns by reporting higher revenue even as consumers curb their spending amid rising inflation.\"', 'Finance', 'https://www.bqprime.com/bloomberg/amazon-apple-poised-to-add-230-billion-after-resilent-results', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F88d18695-09dc-4970-a4fb-128712e46449%2F_1x_1.jpg?w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 10:55:16', '2022-07-30 10:55:16'),
(200, 'auto', '4639983a-e0f0-40ed-8c85-0b5dd700e8eb', 'Admin', 'Troubled Crypto Lender Babel Lost Big While Trading Client Funds', 'In total, accounts operated by the company’s proprietary trading team lost about 8,000 Bitcoin and 56,000 Ether during the crypto market’s plunge in June, a...', '\"Babel Finance, the Hong Kong-based crypto lender that froze withdrawals last month, incurred \\u201cmassive\\u201d losses while using customer funds for its own proprietary trading, according to a restructuring plan seen by Bloomberg.\"', 'Finance', 'https://www.bqprime.com/crypto/troubled-crypto-lender-babel-lost-big-while-trading-client-funds', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F5553fde4-a604-43cf-ac51-b3d0c8939baa%2F_1x_1.jpg?w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 10:55:16', '2022-07-30 10:55:16'),
(201, 'auto', '800d5713-b33b-4278-82ce-774e53d4fd74', 'Admin', 'Ukraine says scores of Russians killed in Kherson fighting', 'This advertisement has not loaded yet, but your article continues below.\n\nUkraine says scores of Russians killed in Kherson fighting\n\nArticle content ODESA/KYIV...', '\"ODESA\\/KYIV \\u2014 The Ukrainian military said on Saturday it had killed scores of Russian soldiers and destroyed two ammunition dumps in fighting in the Kherson\\u2026\"', 'Finance', 'https://financialpost.com/pmn/business-pmn/ukraine-says-scores-of-russians-killed-in-kherson-fighting-2', 'https://dcs-static.gprod.postmedia.digital/11.2.1/websites/images/fp/favicon-fp.ico', '2022-07-30 11:10:17', '2022-07-30 11:10:17'),
(202, 'auto', '21a49aca-880d-4a82-b8c4-02b987df0c10', 'Admin', 'Companies Need to Tune Out Silly ESG Critiques and Carry On Dealing With Climate', 'About the author: Fred Krupp is the president of the Environmental Defense Fund.\n\nThere are thoughtful critics of environmental, social and governance standards...', '\"Claims by critics that environmental standards are tyrannical principles of \\u201cwokeness\\u201d or are similar to Chinese government controls are silly, writes Fred...\"', 'Finance', 'https://www.marketwatch.com/articles/esg-impact-investing-climate-51659129755', 'https://images.barrons.com/im-592419/social', '2022-07-30 11:10:17', '2022-07-30 11:10:17'),
(203, 'auto', 'e42d81fc-88eb-4468-bad3-d3df2a0fe1ca', 'Admin', 'The Labour Party Can’t Rely on Tories to Self-Destruct', 'Comment Gift Article Share\n\nThe spiky Tory leadership contest between Foreign Secretary Liz Truss and former Chancellor of the Exchequer Rishi Sunak must be the...', '\"If Keir Starmer wants to gain from the battle between Liz Truss and Rishi Sunak, he needs to deliver a stronger economic message.\"', 'Finance', 'https://www.washingtonpost.com/business/the-labour-party-cant-rely-on-tories-to-self-destruct/2022/07/30/a7a9a65a-0fcd-11ed-88e8-c58dc3dbaee2_story.html', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/U4BPBFAPZUI63CHIYWG4HW5O4I.jpg&w=1440', '2022-07-30 11:10:18', '2022-07-30 11:10:18'),
(204, 'auto', 'a8797516-367d-4c08-a209-969478a8a93e', 'Admin', 'SaaS Funding Napkin 2022 - What does it take to raise capital, in SaaS, in 2022?', 'After a brief hiatus, the SaaS Funding Napkin returns to tell you everything you need to know about raising capital for SaaS in 2022. Spoiler alert: The bar has...', '\"After a brief hiatus, the SaaS Funding Napkin returns to tell you everything you need to know about raising capital for SaaS in 2022. Spoiler alert: The bar has gone up \\u2013\\u00a0many investors expect you to do more with less.\"', 'Finance', 'https://www.producthunt.com/posts/saas-funding-napkin-2022', 'https://ph-files.imgix.net/e79dbcf1-0b40-478b-aeee-b2a984fd5ce3.png?auto=format&fit=crop&frame=1&h=512&w=1024', '2022-07-30 11:30:43', '2022-07-30 11:30:43'),
(205, 'auto', '96f35980-0a4c-455c-bfb2-d32e93815380', 'Admin', 'Gamify your Habit Tracker - Keep motivated with a simple and enjoyable system', 'Payment Required Discuss Collect Share Stats\n\nThis Habit Tracker is special, because not only tracks your good habits. Also, helps you break bad habits, reach y...', '\"This Habit Tracker is special, because not only tracks your good habits. Also, helps you break bad habits, reach your goals and keep motivated with a gamified system.\"', 'Finance', 'https://www.producthunt.com/posts/gamify-your-habit-tracker', 'https://ph-files.imgix.net/34a21a31-ef92-4357-860d-15492dda3435.png?auto=format&fit=crop&frame=1&h=512&w=1024', '2022-07-30 11:30:43', '2022-07-30 11:30:43'),
(206, 'auto', '5ef29ad2-9b13-44c2-97dd-3fbd0f390b60', 'Admin', 'Revoke.cash - Revoke your Ethereum token allowances', 'To use Ethereum tokens in DeFi you have to grant an allowance to spend tokens on your behalf. Allowances are an important part of DeFi, but can be dangerous if ...', '\"To use Ethereum tokens in DeFi you have to grant an allowance to spend tokens on your behalf. Allowances are an important part of DeFi, but can be dangerous if left unchecked. With Revoke.cash you can inspect and revoke these allowances.\"', 'Finance', 'https://www.producthunt.com/posts/revoke-cash', 'https://ph-files.imgix.net/ac9071b6-b924-4423-91ca-6c66f4ee9c6c.png?auto=format&fit=crop&frame=1&h=512&w=1024', '2022-07-30 11:30:43', '2022-07-30 11:30:43'),
(207, 'auto', '6fc395f3-b806-43e3-9eea-d16b28d955b6', 'Admin', 'Delhi Government Withdraws New Excise Policy', '\"They want to create a shortage of liquor so that they can run an illegal liquor trade in Delhi like they are doing in Gujarat. But we will not let this happen,...', '\"Delhi government decides to withdraw new Excise Policy for the time being, directed sale of liquor through government-run vends\"', 'Finance', 'https://www.bqprime.com/law-and-policy/dl-excise-policy-sisodia', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F3dfad2ee-2316-4370-b3ec-d0d6e60f33b8%2Fpeople_glass_restaurant_bar_color_menu_940751_pxhere_com.jpg?rect=0%2C77%2C2896%2C1520&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 11:45:38', '2022-07-30 11:45:38'),
(208, 'auto', 'e70cdd78-92e2-4b9a-b8a3-fb05afe6a78b', 'Admin', 'Emami Q1 Review - Satisfactory Top-Line Performance: Dolat Capital', 'Emami Ltd.’s revenue exceed our estimates but adjusted profit after tax was a miss. Domestic business grew 13% with (flat excluding DermiCool) while internati...', '\"Emami Ltd.\\u2019s revenue exceed our estimates but adjusted profit after tax was a miss. Domestic business grew 13% with (flat excluding DermiCool) while international business reported 45% YoY growth. Core business volume growth during the quarter was at 2.4% (9.6% including Dermicool) was lower compared to peers. \\nEmami\'s modern trade grew by 42% while e-commerce jumped 55% YoY in Q1. Both, together contributed 15.8% of the overall domestic revenue versus 15% in Q4. Both rural and urban witnessed muted growth given the fall in consumer sentiments.\"', 'Finance', 'https://www.bqprime.com/research-reports/emami-q1-review-satisfactory-top-line-performance-dolat-capital', 'https://gumlet.assettype.com/bloombergquint%2F2021-05%2Fad574ac7-6fd2-4608-9b1d-7b6d9dc5e1bc%2FRange_of_products_manufactured_by_Emami_Ltd___Source_Company_website_.png?rect=79%2C0%2C528%2C277&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 11:45:38', '2022-07-30 11:45:38');
INSERT INTO `blogs` (`id`, `type`, `uuid`, `author`, `title`, `snippet`, `detail`, `category`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(209, 'auto', 'c063ac19-3c64-4c23-bf48-f4d41d8e3c83', 'Admin', 'Ford Motor, Hershey, and McKesson Just Raised Their Dividends', 'Ford Motor, Hershey, and McKesson were among the large U.S. companies that declared dividend increases this past week.\n\nFord Motor (ticker: F) plans to boost it...', '\"Ford Motor lifted its quarterly dividend to 15 cents a share, a 50% boost, while Hershey raised its payout by 15%.\"', 'Finance', 'https://www.marketwatch.com/articles/ford-dividend-hershey-mckesson-51659115628', 'https://images.barrons.com/im-592689/social', '2022-07-30 11:45:38', '2022-07-30 11:45:38'),
(210, 'auto', 'bae459df-4b9c-4653-8855-4dc08c4196a3', 'Admin', 'Apple Revenues From India Nearly Doubled In June Quarter: Tim Cook', 'Technology giant Apple has reported a \"near doubling\" of revenue in India in the quarter ended June 2022. Announcing financial results for its fiscal 2022 third...', '\"Maestri said that in the enterprise market, Apple customers are increasingly investing in Apple products as a strategy to attract and retain talent, , apple, Apple revenues, india, tim cook\"', 'Finance', 'https://www.businessworld.in/article/Apple-Revenues-From-India-Nearly-Doubled-In-June-Quarter-Tim-Cook-/30-07-2022-439556/', 'https://static.businessworld.in/article/article_extra_large_image/1658240403_dQVVO7_Untitled_design_2022_07_19T194956_285.png', '2022-07-30 12:05:06', '2022-07-30 12:05:06'),
(211, 'auto', '247e5cfb-b2e7-4ec7-930d-1b378fef0eb1', 'Admin', 'Contrarian Investors See a Recovery for Chinese Stocks Despite the Gloom', 'China’s President Xi Jinping issued warnings about U.S. ties with Taiwan. China’s policymakers offered no new plans to stabilize China’s slumping property...', '\"Pervasive pessimism has brought out investors who see a decent setup for Chinese stocks for the second half of the year.\"', 'Finance', 'https://www.marketwatch.com/articles/contrarian-investors-see-a-recovery-for-chinese-stocks-despite-the-gloom-51659122607', 'https://images.barrons.com/im-593665/social', '2022-07-30 12:05:06', '2022-07-30 12:05:06'),
(212, 'auto', 'fdabb001-9b52-406f-8a2a-99d03837585e', 'Admin', 'Meet The Russian Architect Of Putin’s Economic Counterattack', 'Years of sanctions-proofing the economy and building up reserves weren’t enough to protect the economy after the invasion, however. The US and its allies froz...', '\"(Bloomberg) -- When sanctions made the Fortress Russia he helped build seem less impregnable, Maxim Oreshkin came up with a signature gambit to try and break the economic siege.\"', 'Finance', 'https://www.bqprime.com/politics/meet-the-russian-architect-of-putin-s-economic-counterattack', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2Fa8618330-ee3f-41db-aa65-cabfceb338a7%2F_1x_1.jpg?rect=0%2C0%2C2000%2C1050&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 12:20:41', '2022-07-30 12:20:41'),
(213, 'auto', '42f7d501-52f4-44b2-baca-224996247e2a', 'Admin', 'Talking Points This Week: ‘RRR’ – Rates, Risks, Revisions', 'Among the American technology behemoths, the likes of Meta and Alphabet disappointed the street while Apple and Amazon gave cause for cheer. There was a common ...', '\"The dollar continues to be on a tear at large, and as we observed last week, it is leaving a trail of destruction across the forex market. This week was less about King Dollar and more about Federal Reserve commentary from the United States, and earnings outlook back here in IndiaOn Wall Street, while the performance of companies like Snap, Shopify, and Meta was a drag, Apple and Amazon lifted spirits by the end of the week. Hence, earnings and the Fed remain centrestage.\"', 'Finance', 'https://www.bqprime.com/business/talking-points-this-week-rrr-rates-risks-revisions', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F1e44dcef-b84b-405c-a4e9-6214f883c04e%2Fdaria_nepriakhina_kXDHR_bXIZo_unsplash.jpg?rect=0%2C0%2C3200%2C1680&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 12:20:41', '2022-07-30 12:20:41'),
(214, 'auto', 'e83da032-67bc-421e-b287-001f5678f704', 'Admin', 'SL Foreign Trade Up Despite Economic Crisis; Exports To India Grow 21%', 'Sri Lanka\'s exports grew 21 per cent during the first six months of the year and earned USD 5 billion for the crisis-hit country, according to official figures ...', '\"Having declared an international debt default in April the island nation is currently negotiating with the International Monetary Fund for a possible bailout, , sri lanka, india, economic crisis, exports\"', 'Finance', 'https://www.businessworld.in/article/SL-Foreign-Trade-Up-Despite-Economic-Crisis-Exports-To-India-Grow-21-/30-07-2022-439560/', 'https://static.businessworld.in/article/article_extra_large_image/1568204637_hBTFuX_Connect_4_0_1_3mb.jpg', '2022-07-30 12:20:41', '2022-07-30 12:20:41'),
(215, 'auto', 'd9fe7e03-c1bb-482c-bf2f-cfbd4d926810', 'Admin', '3 Properties To Experience In Manhattan, New York City', 'Loews Regency New York Hotel\n\nNight view from Nate Berkus Suite GARRY KAN\n\nSituated on New York’s Park Avenue and 61st Street, on the Upper East Side, Loews R...', '\"3 Properties To Experience In Manhattan, New York City\"', 'Finance', 'https://www.forbes.com/sites/ceciliapelloux/2022/07/30/3-properties-to-experience-in-manhattan-new-york-city/', 'https://imageio.forbes.com/specials-images/imageserve/62e4e907ba9ae14db1b0c774/0x0.jpg?format=jpg&width=1200', '2022-07-30 12:40:48', '2022-07-30 12:40:48'),
(216, 'auto', '27402c52-c7fc-4653-a0cf-6309ac52258a', 'Admin', 'SpiceJet Says Flight Operations Remain Normal; Shares Gain Over 3%', 'Budget carrier SpiceJet on Friday said its flight operations continued to be normal and its shares bounced back, gaining nearly 4 per cent.\n\nThe scrip rose 3.65...', '\"The scrip rose 3.65 per cent to end the day at Rs 38.30 apiece on BSE, , spicejet\"', 'Finance', 'https://www.businessworld.in/article/SpiceJet-Says-Flight-Operations-Remain-Normal-Shares-Gain-Over-3-/30-07-2022-439563/', 'https://static.businessworld.in/article/article_extra_large_image/1658211928_PnkxvT_SPICE.jpg', '2022-07-30 12:40:48', '2022-07-30 12:40:48'),
(217, 'auto', 'c15f5256-5e8a-447e-a5b0-6a357b59e542', 'Admin', 'Metro Brands Report Consolidated PAT Of Rs 105.78 Cr For Quarter Ended June', 'Multi-brand footwear retail chain Metro Brands on Friday reported a consolidated net profit after tax of Rs 105.78 crore for the quarter ended June.\n\nThe compan...', '\"The company had posted a net loss after tax of Rs 12.13 crore during the January-March quarter last year, , Metro Brands\"', 'Finance', 'https://www.businessworld.in/article/Metro-Brands-Report-Consolidated-PAT-Of-Rs-105-78-Cr-For-Quarter-Ended-June/30-07-2022-439564/', 'https://static.businessworld.in/article/article_extra_large_image/1659150219_EW3yuZ_download.jpeg', '2022-07-30 12:40:48', '2022-07-30 12:40:48'),
(218, 'auto', '915db411-2154-4594-9835-4c0ad3cdb822', 'Admin', 'National Asset Management Inc. Sells 4,979 Shares of CDK Global, Inc. (NASDAQ:CDK)', 'National Asset Management Inc. cut its stake in CDK Global, Inc. (NASDAQ:CDK – Get Rating) by 43.1% in the first quarter, according to the company in its most...', '\"Read National Asset Management Inc. Sells 4,979 Shares of CDK Global, Inc. (NASDAQ:CDK) at ETF Daily News\"', 'Finance', 'https://www.etfdailynews.com/2022/07/30/national-asset-management-inc-sells-4979-shares-of-cdk-global-inc-nasdaqcdk/', 'https://www.americanbankingnews.com/wp-content/timthumb/timthumb.php?src=https://www.marketbeat.com/logos/cdk-global-inc-logo.jpg&w=240&h=240&zc=2', '2022-07-30 12:55:50', '2022-07-30 12:55:50'),
(219, 'auto', 'ceb32706-868a-43b1-878e-9cda5fcfb37a', 'Admin', 'National Asset Management Inc. Purchases 2,070 Shares of Pacer Trendpilot US Bond ETF (NYSEARCA:PTBD)', 'National Asset Management Inc. raised its position in shares of Pacer Trendpilot US Bond ETF (NYSEARCA:PTBD – Get Rating) by 15.5% in the 1st quarter, accordi...', '\"Read National Asset Management Inc. Purchases 2,070 Shares of Pacer Trendpilot US Bond ETF (NYSEARCA:PTBD) at ETF Daily News\"', 'Finance', 'https://www.etfdailynews.com/2022/07/30/national-asset-management-inc-purchases-2070-shares-of-pacer-trendpilot-us-bond-etf-nysearcaptbd/', 'https://www.americanbankingnews.com/wp-content/timthumb/timthumb.php?src=https://www.marketbeat.com/logos/pacer-trendpilot-us-bond-etf-logo.png?v=20210824092056&w=240&h=240&zc=2', '2022-07-30 12:55:50', '2022-07-30 12:55:50'),
(220, 'auto', 'c933db02-68bb-462e-9918-fdd1d60d197c', 'Admin', 'National Asset Management Inc. Has $324,000 Stake in Dutch Bros Inc. (NYSE:BROS)', 'National Asset Management Inc. increased its stake in shares of Dutch Bros Inc. (NYSE:BROS – Get Rating) by 12.0% during the first quarter, according to the c...', '\"Read National Asset Management Inc. Has $324,000 Stake in Dutch Bros Inc. (NYSE:BROS) at ETF Daily News\"', 'Finance', 'https://www.etfdailynews.com/2022/07/30/national-asset-management-inc-has-324000-stake-in-dutch-bros-inc-nysebros/', 'https://www.americanbankingnews.com/wp-content/timthumb/timthumb.php?src=https://www.marketbeat.com/logos/dutch-bros-inc-logo.jpg?v=20211011092259&w=240&h=240&zc=2', '2022-07-30 12:55:50', '2022-07-30 12:55:50'),
(221, 'auto', '0eb27ea7-d472-4534-953d-53afc662945f', 'Admin', 'Banco Santander-Chile (BSAC) Q2 2022 Results - Earnings Call Transcript', 'Banco Santander-Chile (NYSE:BSAC) Q2 2022 Earnings Conference Call July 29, 2022 11:00 AM ET\n\nCompany Participants\n\nEmiliano Muratore - CFO\n\nClaudio Soto - Chie...', '\"Banco Santander-Chile (NYSE:NYSE:BSAC) Q2 2022 Earnings Conference Call July 29, 2022, 11:00 AM ET Company Participants Emiliano Muratore - CFO Claudio Soto - Chief Economist Robert Moreno...\"', 'Finance', 'https://seekingalpha.com/article/4527785-banco-santander-chile-bsac-q2-2022-results-earnings-call-transcript', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-30 13:20:29', '2022-07-30 13:20:29'),
(222, 'auto', 'e7d2344e-ab6f-481a-9b9d-823c45c497a3', 'Admin', 'Pandemic Era Growth Forecast Was Too Optimistic: Meta CEO Zuckerberg', 'Meta Platforms Inc Chief Executive Mark Zuckerberg told staffers the world\'s biggest social media company had planned for growth too optimistically, mistakenly ...', '\"Zuckerberg said he had hired too aggressively and failed to account for the possibility of an economic downturn, , mark zuckerberg, Meta Platforms\"', 'Finance', 'https://www.businessworld.in/article/Pandemic-Era-Growth-Forecast-Was-Too-Optimistic-Meta-CEO-Zuckerberg/30-07-2022-439567/', 'https://static.businessworld.in/article/article_extra_large_image/1639729262_1fkLzz_meta.png', '2022-07-30 13:20:29', '2022-07-30 13:20:29'),
(223, 'auto', '58445509-1fef-489f-a024-14e63fc5e90e', 'Admin', 'Elon Musk Countersues Twitter Over Bid To Walk Away From $44 Billion Deal', 'Elon Musk countersued Twitter Inc on Friday, escalating his legal fight against the social media company over his bid to walk away from the USD 44 billion purch...', '\"Musk\'s lawsuit was filed hours after Chancellor Kathaleen McCormick of the Delaware Court of Chancery ordered a five-day trial beginning Oct. 17 to determine if Musk can walk away from the deal, , elon musk, twitter, acquistion\"', 'Finance', 'https://www.businessworld.in/article/Elon-Musk-Countersues-Twitter-Over-Bid-To-Walk-Away-From-44-Billion-Deal/30-07-2022-439569/', 'https://static.businessworld.in/article/article_extra_large_image/1653651033_SpHQ4m_Untitled_design_70_.png', '2022-07-30 13:20:29', '2022-07-30 13:20:29'),
(224, 'auto', '0f997e5f-251e-4c7f-a53a-88f1d0c13563', 'Admin', 'US To Limit Size Of Subsidies For Semiconductor Manufacturing', 'The US Commerce Department said late on Friday it will limit the size of government subsidizes for semiconductor manufacturing and will not let firms use fundin...', '\"The Commerce Department told chips companies awards will be\"', 'Finance', 'https://www.businessworld.in/article/US-To-Limit-Size-Of-Subsidies-For-Semiconductor-Manufacturing/30-07-2022-439570/', 'https://static.businessworld.in/article/article_extra_large_image/1465987263_nEzlvI_Semiconductor-Product-reuter.jpg', '2022-07-30 13:35:22', '2022-07-30 13:35:22'),
(225, 'auto', 'e643b33e-d466-4595-9234-895f57a88f7d', 'Admin', 'US Launches 5G Mid-Band Wireless Spectrum Auction', 'The US Federal Communications Commission (FCC) said Friday it had opened bidding in its latest mid-band spectrum auction to boost next generation 5G wireless se...', '\"The new round will auction about 8,000 county-based licenses in the 2.5 GHz spectrum band, , 5G Spectrum, united states, auction\"', 'Finance', 'https://www.businessworld.in/article/US-Launches-5G-Mid-Band-Wireless-Spectrum-Auction/30-07-2022-439571/', 'https://static.businessworld.in/article/article_extra_large_image/1494669341_iWV0hn_5g.jpg', '2022-07-30 13:35:22', '2022-07-30 13:35:22'),
(226, 'auto', '8145b4da-1a79-4dc7-b3a3-c0a35ac31da9', 'Admin', 'US SEC Adds Alibaba To Its Delisting Watchlist', 'Alibaba Group Holding Ltd, on Friday became the latest company to be added to the US Securities and Exchange Commission\'s list of Chinese companies that might b...', '\"Alibaba\'s shares were down 11 per cent at USD 89.37 at the closing bell, , alibaba, us sec\"', 'Finance', 'https://www.businessworld.in/article/US-SEC-Adds-Alibaba-To-Its-Delisting-Watchlist/30-07-2022-439572/', 'https://static.businessworld.in/article/article_extra_large_image/1585631963_bwfaf2_2020_03_31T050843Z_1_LYNXMPEG2U0FC_RTROPTP_4_IKEA_TMALL_CHINA.JPG', '2022-07-30 13:35:22', '2022-07-30 13:35:22'),
(227, 'auto', 'a63b68b6-f440-4ed0-84cb-9d9051044fe3', 'Admin', 'Polis tahan tiga individu disyaki dera kanak-kanak di Jempol', '2. Takiyuddin to table report on Baling floods in parliament on Aug 4', '\"SEREMBAN: Polis menahan seorang lelaki dan dua wanita hari ini dipercayai mempunyai kaitan kes mendera seorang kanak-kanak perempuan berusia lima tahu...\"', 'Finance', 'https://www.thesundaily.my/cerita/berita/polis-tahan-tiga-individu-disyaki-dera-kanak-kanak-di-jempol-AL9519424', 'https://www.thesundaily.my/binrepository/480x270/0c10/480d250/none/11808/QCKM/child-c2089225-16128-621-447023-2019062-477633-20190711120130-1820877-20210804081221-2387528-20220528165916_2527755_20220730174028.jpg', '2022-07-30 13:55:51', '2022-07-30 13:55:51'),
(228, 'auto', '16506dbb-1e2b-4ee8-8171-0fd1fb31e852', 'Admin', 'Bentang RUU Anti Lompat Parti di DUN Sabah: Warisan', '3. Takiyuddin to table report on Baling floods in parliament on Aug 4', '\"KOTA BELUD: Pembentangan Rang Undang-Undang (RUU) Anti Lompat Parti di peringkat Dewan Undangan Negeri (DUN) Sabah, perlu dilakukan bagi memastikan ke...\"', 'Finance', 'https://www.thesundaily.my/cerita/berita/bentang-ruu-anti-lompat-parti-di-dun-sabah-warisan-FL9519447', 'https://www.thesundaily.my/binrepository/480x270/0c0/480d250/none/11808/BDDK/sb01-151119-dun-sabah-t5dce4fc2-m600-x007dd9e9-775860-20191116102108-1384616-20200801083711-1407554-20200807143235_2527759_20220730174329.jpg', '2022-07-30 13:55:51', '2022-07-30 13:55:51'),
(229, 'auto', '9b94c2e3-58d5-4916-b3c6-8b94952603ab', 'Admin', 'Ola and Uber Deny Reports Of Merger Discussion', 'Uber Technologies Inc and its Indian rival Ola on Friday denied a media report that the ride-hailing firms were in talks for a merger.\n\nA media report said that...', '\"\\u2018Absolute rubbish\\u2019 tweeted Ola CEO Bhavish Aggarwal , , Ola Cabs, uber technologies, merger, bhavish aggarwal\"', 'Finance', 'https://www.businessworld.in/article/Ola-and-Uber-Deny-Reports-Of-Merger-Discussion/30-07-2022-439575/', 'https://static.businessworld.in/article/article_extra_large_image/1653116476_fcnN1O_ola_uber.jpeg', '2022-07-30 13:55:51', '2022-07-30 13:55:51'),
(230, 'auto', '3bc683cf-c7fb-483b-be67-51907c05a5ed', 'Admin', 'Mutual of America Capital Management LLC Has $1.95 Million Position in IDEX Co. (NYSE:IEX)', 'Mutual of America Capital Management LLC boosted its position in shares of IDEX Co. (NYSE:IEX – Get Rating) by 1.2% in the first quarter, according to the com...', '\"Read Mutual of America Capital Management LLC Has $1.95 Million Position in IDEX Co. (NYSE:IEX) at ETF Daily News\"', 'Finance', 'https://www.etfdailynews.com/2022/07/30/mutual-of-america-capital-management-llc-has-1-95-million-position-in-idex-co-nyseiex/', 'https://www.americanbankingnews.com/wp-content/timthumb/timthumb.php?src=https://www.marketbeat.com/logos/idex_logo.gif&w=240&h=240&zc=2', '2022-07-30 14:05:43', '2022-07-30 14:05:43'),
(231, 'auto', 'dedd59d9-fe6e-4d01-a7a4-62363d6b11bc', 'Admin', 'Eric Trump\'s golf bag strongly hints at father\'s plans to run for president again in 2024, photos shows', 'Eric Trump and former President Donald Trump played golf on Thursday ahead of the LIV Golf tournament.\n\nPhotos show a golf bag belonging to Eric Trump with \"Tru...', '\"The golf bag has \\\"Trump 2024\\\" stitched underneath a US flag patch, suggesting that Donald Trump intends to put his hat in the presidential ring again.\"', 'Finance', 'https://www.businessinsider.com/photos-eric-trumps-golf-bag-trump-2024-emblazoned-on-it-2022-7', 'https://i.insider.com/62e4f0bd4b455800188b7a07?width=1200&format=jpeg', '2022-07-30 14:05:43', '2022-07-30 14:05:43'),
(232, 'auto', 'cb207e3e-0815-4da4-8c68-50658a505aec', 'Admin', 'Ipsen S.A.\'s (IPSEY) CEO David Loew on Q2 2022 Results - Earnings Call Transcript', 'Ipsen S.A. (OTCPK:IPSEY) Q2 2022 Earnings Conference Call July 28, 2022 7:30 AM ET\n\nCompany Participants\n\nDavid Loew – Chief Executive Officer\n\nAymeric Le Cha...', '\"Ipsen S.A. (OTCPK:IPSEY) Q2 2022 Earnings Conference Call July 28, 2022 7:30 AM ET Company Participants David Loew \\u2013 Chief Executive Officer Aymeric Le Chatelier \\u2013 Chief Financial Officer...\"', 'Finance', 'https://seekingalpha.com/article/4527794-ipsen-s-s-ipsey-ceo-david-loew-on-q2-2022-results-earnings-call-transcript', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-30 14:25:25', '2022-07-30 14:25:25'),
(233, 'auto', '4a6c41d3-0941-4944-821b-c69b0a700b61', 'Admin', 'Chhattisgarh Govt Being Tech Savvy, Using Drones For Spraying On Agricultural Field', 'The Complete Agriculture Drone Solution was launched on Thursday by Chattisgarh Chief Minister Bhupesh Bagel. The drones will be helpful in spraying on fields i...', '\"The Complete Agriculture Drone Solution was launched on Thursday by Chattisgarh Chief Minister Bhupesh Bagel. The drones will be helpful in spraying on fields in 20 villages, , tech savy, Technolgy, agriculture\"', 'Finance', 'https://www.businessworld.in/article/Chhattisgarh-Govt-Being-Tech-Savvy-Using-Drones-For-Spraying-On-Agricultural-Field-/30-07-2022-439533/', 'https://static.businessworld.in/article/article_extra_large_image/1523861554_1PreUg_drone-delivery-shutterstock-470.jpg', '2022-07-30 14:25:25', '2022-07-30 14:25:25'),
(234, 'auto', '22d7aa40-6b7e-4af3-acbb-c037d15be4fb', 'Admin', 'Indians Are Crashing Into Agony Over Employment Issues', 'In the last eight years, the government has just recruited 0.3 percent of the candidates who applied for government jobs. It clearly indicates that the unemploy...', '\"In the last eight years, the government has just recruited 0.3 percent of the candidates who applied for government jobs, , unemployment rate, centre govt\"', 'Finance', 'https://www.businessworld.in/article/Indians-Are-Crashing-Into-Agony-Over-Employment-Issues-/30-07-2022-439532/', 'https://static.businessworld.in/article/article_extra_large_image/1659110113_0tGcJI_istock_1_.jpg', '2022-07-30 14:25:25', '2022-07-30 14:25:25'),
(235, 'auto', 'e0eaa02b-ee11-45fd-8e1b-0ea93c35b546', 'Admin', 'Unemployment Rate Decreasing, Says Govt', 'The ministry of statistics and programme implementation has conducted a job data survey of the Periodic Labour Force Survey (PLFS), which revealed that the unem...', '\"The ministry of statistics and programme implementation has conducted a job data survey of the Periodic Labour Force Survey (PLFS), which revealed that the unemployment rate is declining in urban and rural areas, , employment, Increase, unemployment rate, Aatmanirbhar Bharat\"', 'Finance', 'https://www.businessworld.in/article/-Unemployment-Rate-Decreasing-Says-Govt/30-07-2022-439407/', 'https://static.businessworld.in/article/article_extra_large_image/1655371726_ugnZvI_images_1_.jpeg', '2022-07-30 14:50:16', '2022-07-30 14:50:16'),
(236, 'auto', '20048d68-f395-4dd6-94d2-8ce09de1cd0f', 'Admin', 'Crypto Exchange FTX Wins Approval To Operate in Dubai', 'FTX said on Friday it was fully approved to operate its exchange and clearing house in Dubai, as the Gulf emirate pushes forward with plans to develop its digit...', '\"It will start by offering regulated crypto derivatives products and trading services to institutional investors in Dubai, , FTX, cryptocurrency, dubai\"', 'Finance', 'https://www.businessworld.in/article/Crypto-Exchange-FTX-Wins-Approval-To-Operate-in-Dubai/30-07-2022-439581/', 'https://static.businessworld.in/article/article_extra_large_image/1614331767_5LvGV3_2021_02_26T082007Z_1_LYNXMPEH1P0GC_RTROPTP_4_CRYPTO_CURRENCY_BITCOIN_1_.JPG', '2022-07-30 14:50:16', '2022-07-30 14:50:16'),
(237, 'auto', '7719c97d-bb98-4691-901b-7e9be3daecbc', 'Admin', 'China Attempts Creating Stealth Propaganda Account On TikTok', 'A Chinese government entity responsible for public relations attempted to open a stealth account on TikTok targeting Western audiences with propaganda, accordin...', '\"The attempt was met with push back by the TikTok\'s executives while also promoting an internal discussion about other sensitive requests, , tik tok\"', 'Finance', 'https://www.businessworld.in/article/China-Attempts-Creating-Stealth-Propaganda-Account-On-TikTok-/30-07-2022-439582/', 'https://static.businessworld.in/article/article_extra_large_image/1587209242_EpBHrT_tiktok_1_.jpg', '2022-07-30 14:50:16', '2022-07-30 14:50:16'),
(238, 'auto', '449a2edd-81fa-4119-a17a-8b1ea6eef1ce', 'Admin', 'Lelaki rakam video tidak senonoh dicekup', '', '\"JOHOR BAHRU: Tindakan seorang lelaki merakam video bahagian bawah paha seorang wanita warga asing di sebuah pusat beli-belah mengundang padah, apabila...\"', 'Finance', 'https://www.thesundaily.my/cerita/berita/lelaki-rakam-video-tidak-senonoh-dicekup-CL9519730', 'https://www.thesundaily.my/binrepository/480x270/0c10/480d250/none/11808/VTDJ/arrested3-2217749-20220307185827_2527816_20220730184708.jpg', '2022-07-30 14:55:42', '2022-07-30 14:55:42'),
(239, 'auto', 'bce35603-9163-441d-8d3b-d5fe1139dc5a', 'Admin', 'Mahindra & Mahindra Receives Over 1-Lakh Bookings For Scorpio-N SUV', 'The company clocked over 1-lakh bookings within half an hour of its booking commencement on Saturday, it said in a statement.', '\"Mahindra & Mahindra has received over 1-lakh bookings for its all-new Scorpio-N SUV in under 30 minutes\"', 'Finance', 'https://www.bqprime.com/business/biz-mahindra-scorpio-n-suv', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F124af33b-8c1b-49b6-a34e-9d7c6215ac0b%2FClose_view_of_M_M_logo_on_Mahindra_Scorpio_suv___Source_Company_website_.png?rect=0%2C0%2C979%2C514&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 14:55:42', '2022-07-30 14:55:42'),
(240, 'auto', 'dc44defa-8cf3-446d-882a-ac4d8664d5a5', 'Admin', 'Netflix Takes Alleged \'Bridgerton\' Knockoff To Court', 'Netflix Incorporated has announced that it has sued the creators of an alleged unauthorized musical stage production of its popular period drama \"Bridgerton,\" a...', '\"The complaint comes three days after a sold-out performance of\"', 'Finance', 'https://www.businessworld.in/article/Netflix-Takes-Alleged-Bridgerton-Knockoff-To-Court/30-07-2022-439583/', 'https://static.businessworld.in/article/article_extra_large_image/1659158513_3Zp2Lr_20220730_105130_0000.png', '2022-07-30 14:55:42', '2022-07-30 14:55:42'),
(241, 'auto', '88db8f72-034a-4690-8714-40aa18628c4a', 'Admin', 'Subsea 7 SG&A\'s (SUBCY) CEO John Evans on Q2 2022 Results - Earnings Call Transcript', 'Subsea 7 S.A. (OTCPK:SUBCY) Q2 2022 Earnings Conference Call July 28, 2022 6:00 AM ET\n\nCompany Participants\n\nKatherine Tonks - Head, IR\n\nJohn Evans - Chief Exec...', '\"Subsea 7 S.A. (OTCPK:SUBCY) Q2 2022 Earnings Conference Call July 28, 2022, 06:00 AM ET Company Participants Katherine Tonks - Head, IR John Evans - Chief Executive Officer Mark Foley -...\"', 'Finance', 'https://seekingalpha.com/article/4527800-subsea-7-sg-and-as-subcy-ceo-john-evans-on-q2-2022-results-earnings-call-transcript', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-30 15:15:08', '2022-07-30 15:15:08'),
(242, 'auto', '5ecb482f-4dfa-4923-8d0f-bd730ccbb57a', 'Admin', 'Crypto prices rise as traders dip back into digital asset market', 'Crypto traders are showing signs of renewed confidence, with the market cap of digital assets rising $280bn in July after a painful sell-off and credit crisis t...', '\"Market value of major tokens rises $280bn in July as inflows resume\"', 'Finance', 'https://www.ft.com/content/89312290-ce33-4f94-9789-07fc7d7ab853', 'https://www.ft.com/__origami/service/image/v2/images/raw/https%3A%2F%2Fd1e00ek4ebabms.cloudfront.net%2Fproduction%2Fa3eb584e-0478-40d8-8b2d-98b67c2dcc70.jpg?source=next-opengraph&fit=scale-down&width=900', '2022-07-30 15:15:08', '2022-07-30 15:15:08'),
(243, 'auto', 'f97597d8-aa4f-4a65-8e2c-e84bc9aa9cb5', 'Admin', 'How Joe Manchin’s change of heart could revive the U.S. solar industry', 'Business How Joe Manchin’s change of heart could revive the U.S. solar industry An industry on the skids is suddenly positioned for a major resurgence An empl...', '\"China\'s dominance over solar manufacturing leaves America vulnerable. The climate package on a path to Biden\'s desk could put U.S. companies back in the game.\"', 'Finance', 'https://www.washingtonpost.com/business/2022/07/30/climate-solar-manchin-china/', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/5GPDLBQPPQI63CHIYWG4HW5O4I.jpg&w=1440', '2022-07-30 15:15:08', '2022-07-30 15:15:08'),
(244, 'auto', '1df48394-09e5-4885-9b16-a8bbee48bc20', 'Admin', 'Sony is battling both Microsoft and a darkening economy', 'Sony kept notching new high scores during the pandemic. Now it is navigating far more difficult levels: the post-Covid home-entertainment hangover, rising compe...', '\"Rising costs and slowing growth in the gaming division dragged on last quarter\\u2019s earnings. Sony\\u2019s diverse business portfolio will help, but it will face tougher times.\"', 'Finance', 'https://www.livemint.com/companies/news/sony-is-battling-both-microsoft-and-a-darkening-economy-11659178418602.html', 'https://images.livemint.com/img/2022/07/30/600x338/JAPAN-SONY-15_1659178569562_1659178569562_1659178585290_1659178585290.jpg', '2022-07-30 15:30:35', '2022-07-30 15:30:35'),
(245, 'auto', '396a3001-0cdf-469c-977f-69d25d15168b', 'Admin', 'German Minister Open to Extending Life of Bavarian Nuclear Plant', 'This advertisement has not loaded yet, but your article continues below.\n\nGerman Minister Open to Extending Life of Bavarian Nuclear Plant (Bloomberg) --\n\nArtic...', '\"(Bloomberg) --\"', 'Finance', 'https://financialpost.com/pmn/business-pmn/german-minister-open-to-extending-life-of-bavarian-nuclear-plant', 'https://dcs-static.gprod.postmedia.digital/11.2.1/websites/images/fp/favicon-fp.ico', '2022-07-30 15:30:35', '2022-07-30 15:30:35'),
(246, 'auto', 'f0fb5b85-174e-4d37-b35a-d2a84751f05d', 'Admin', 'Inadequate Rain May Stint Kharif Crop Production In UP', 'With deficient rains across Uttar Pradesh in this monsoon, farmers are staring at difficult days ahead fearing a sharp decline in their Kharif produce.\n\n\n\nAs pe...', '\"As per data of India Meteorological Department (IMD), rainfall in Uttar Pradesh is 50 per cent less than the normal rainfall., , uttar pradesh, kharif crop, agriculture, AD Pathak, rainfall distribution\"', 'Finance', 'https://www.businessworld.in/article/Inadequate-Rain-May-Stint-Kharif-Crop-Production-In-UP/30-07-2022-439587/', 'https://static.businessworld.in/article/article_extra_large_image/1470814553_8t1ows_Fertilizer_Reu.jpg', '2022-07-30 15:30:35', '2022-07-30 15:30:35'),
(247, 'auto', '9c51736e-e6fd-482f-90df-8f26bcb47ef1', 'Admin', 'Paris Olympics In 2024 Is The Ultimate Goal: PV Sindhu', 'Two-time Olympic medallist PV Sindhu hopes the Commonwealth Games will serve as a perfect launchpad for her quest to regain the world championship crown next mo...', '\"At Commonwealth Games 2022, PV Sindhu aims at Olympics 2024 to be held in Paris, which will serve as a perfect launchpad for her., , PV Sindhu, commonwealth games, Olympics 2024\"', 'Finance', 'https://www.businessworld.in/article/Paris-Olympics-In-2024-Is-The-Ultimate-Goal-PV-Sindhu/30-07-2022-439588/', 'https://static.businessworld.in/article/article_extra_large_image/1471625600_wxHZ62_sindhu2.jpg', '2022-07-30 15:45:46', '2022-07-30 15:45:46'),
(248, 'auto', '2ef9d1e5-106a-4f2d-afb4-8b1f22edb39e', 'Admin', 'Govt Working To Expedite Payment Of Sugarcane Farmers: Laxmi Narayan Chaudhary', 'The Uttar Pradesh government is working to ensure that in the next couple of years, sugarcane farmers are paid their dues within 10 days as opposed to 14 days c...', '\"Sugarcane Development Minister, Laxmi Narayan Chaudhary said that the UP government is working to ensure that the sugarcane farmers their dues are paid within 10days., , Uttar Pradesh Government, Yogi Adityanath, Laxmi Narayan Chaudhary, agriculture, sugarcane farmers\"', 'Finance', 'https://www.businessworld.in/article/Govt-Working-To-Expedite-Payment-Of-Sugarcane-Farmers-Laxmi-Narayan-Chaudhary/30-07-2022-439590/', 'https://static.businessworld.in/article/article_extra_large_image/1659161227_tIUXNT_images_7_.jpeg', '2022-07-30 15:45:46', '2022-07-30 15:45:46'),
(249, 'auto', 'c72b5bc0-e735-4be3-9777-dc24bb27cced', 'Admin', 'Twitter To Support Multimedia Tweets', 'Twitter has confirmed that it is testing a new feature that will allow users to post images, videos and Graphics Interchange Format (GIFs) in one multimedia twe...', '\"The feature, that would allow users to tweet multiple images and videos in one single tweet, is currently in beta test mode with select users , , twitter\"', 'Finance', 'https://www.businessworld.in/article/Twitter-To-Support-Multimedia-Tweets/30-07-2022-439593/', 'https://static.businessworld.in/article/article_extra_large_image/1625989575_vfYuyM_Twitter.jpg', '2022-07-30 15:45:46', '2022-07-30 15:45:46'),
(250, 'auto', '06215ae8-c345-4f55-b8dc-1042f20b7c31', 'Admin', 'IndusInd Bank - On The Mend With Recovery In Sight: Prabhudas Lilladher', 'Key highlight of IndusInd Bank Ltd.\'s analyst meet was that focus is on strong asset growth that would be funded by retail term deposit while underwriting has b...', '\"Key highlight of IndusInd Bank Ltd.\'s analyst meet was that focus is on strong asset growth that would be funded by retail term deposit while underwriting has been tightened so as to keep stress formation controlled. \\n\\nIndusInd Bank\'s branch expansion and investments in technology may keep opex elevated, though pre-provision operating profit to loan ratio may surpass 5.5% (over planning cycle-six) from 5.3% in FY22. \\n\\nExpanding in home markets would be a key driver to business growth.\"', 'Finance', 'https://www.bqprime.com/research-reports/indusind-bank-on-the-mend-with-recovery-in-sight-prabhudas-lilladher', 'https://gumlet.assettype.com/bloombergquint%2F2018-01%2F9bede0cb-1a26-40a0-a743-57fe6f3c9064%2FIMG_20170926_171636.jpg?rect=0%2C128%2C4048%2C2125&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 16:05:46', '2022-07-30 16:05:46'),
(251, 'auto', 'e48f4250-1dae-4d46-84da-32415e0a1e91', 'Admin', 'HDFC Q1 Review - Asset Quality Improved; AUM Growth Remain Strong: IDBI Capital', 'Housing Development Finance Corporation Ltd.’s asset quality improved as gross stage-III assets stood at 2.1% versus 2.3% QoQ led by non-individual portfolio....', '\"Housing Development Finance Corporation Ltd.\\u2019s asset quality improved as gross stage-III assets stood at 2.1% led by non-individual portfolio. \\n\\nRestructured assets remain stable at 0.8% of assets under management. Disbursements for individual loan segment grew by 66% YoY in Q1 FY23; Q1 disbursements highest ever in a year. \\nHDFC\'s AUM growth improved led by individual portfolio. Profit after tax grew by 22% YoY led by lower provisions \\n\\nNet interest income grew slowly at 8% YoY due to decline in net interest margins at 3.4% while PPoP   grew\"', 'Finance', 'https://www.bqprime.com/research-reports/hdfc-q1-review-asset-quality-improved-aum-growth-remain-strong-idbi-capital', 'https://gumlet.assettype.com/bloombergquint%2F2022-07%2F574c1d4b-0cde-416c-89c6-083428b5cec7%2FResidential_buildings___Source_pxhere_com_.jpg?rect=0%2C421%2C3008%2C1579&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 16:05:46', '2022-07-30 16:05:46'),
(252, 'auto', '9f97ca65-acb3-4102-a8f7-d3d9884c18bc', 'Admin', 'Godfrey Phillips India Q1 Net Profit Rises 16.6% To Rs 131.05 Crore', 'Bina Modi is currently the Managing Director and CEO. Godfrey Phillips India\'s revenue from operations was up 33.49% to Rs 981.83 crore during the quarter under...', '\"Cigarette maker Godfrey Phillips India Ltd on Saturday reported a 16.6% rise in its consolidated net profit to Rs 131.05 crore for the first quarter ended June 30.\"', 'Finance', 'https://www.bqprime.com/quarterly-earnings/godfrey-phillips-india-q1-net-profit-rises-166-to-rs-13105-crore', 'https://gumlet.assettype.com/bloombergquint%2F2018-09%2F9c12e5d6-bb2b-4972-86f5-100585b37e8d%2F315490693_1_5.jpg?rect=0%2C12%2C4000%2C2100&w=1200&auto=format%2Ccompress&ogImage=true', '2022-07-30 16:05:46', '2022-07-30 16:05:46'),
(253, 'auto', 'f4a5d6ca-62d0-4417-9121-4d88f4129c9c', 'Admin', 'Equifax Snaps up Midigator to Bolster its Digital Identity and Fraud Capabilities', 'Credit report provider Equifax has agreed to acquire Midigator, a provider of post-transaction fraud mitigation solutions, to boost its digital identity and fra...', '\"Equifax has agreed to acquire Midigator, a provider of post-transaction fraud mitigation solutions, to boost its digital identity and fraud prevention credentials.\"', 'Finance', 'https://thefintechtimes.com/equifax-snaps-up-midigator-to-bolster-its-digital-identity-and-fraud-capabilities/', 'https://thefintechtimes.com/wp-content/uploads/2021/05/iStock-1179944172.jpg', '2022-07-30 16:20:31', '2022-07-30 16:20:31'),
(254, 'auto', '6c3610ff-1ac4-42d2-85cc-9409b566067f', 'Admin', 'Uber To Reveal \'Upfront Fare\' To Drivers', 'American mobility as a service and ride hailing platform, Uber has announced that it\'s application would reveal to it\'s drivers trip fares before they accept ri...', '\"The move comes as a push to make driving on the rideshare service more flexible , , uber\"', 'Finance', 'https://www.businessworld.in/article/Uber-To-Reveal-Upfront-Fare-To-Drivers/30-07-2022-439595/', 'https://static.businessworld.in/article/article_extra_large_image/1522406946_gpEQlO_UBER-shutterstock_470.jpg', '2022-07-30 16:20:31', '2022-07-30 16:20:31'),
(255, 'auto', '5fc0f144-7d15-40f3-8e7e-ec504a495a40', 'Admin', 'What Can OEMs Do To Ensure A Robust And Economical Supply Of Batteries?', 'Black_Kira\n\nNavigating the opportunities within the comparatively nascent EV industry will see winners and losers emerge. But how real are the concerns around t...', '\"Navigating the opportunities within the comparatively nascent EV industry will see winners and losers emerge. Read more.\"', 'Finance', 'https://seekingalpha.com/article/4527801-what-can-oems-do-to-ensure-robust-and-economical-supply-of-batteries', 'https://static.seekingalpha.com/cdn/s3/uploads/getty_images/1314631692/image_1314631692.jpg?io=getty-c-w750', '2022-07-30 16:20:31', '2022-07-30 16:20:31'),
(256, 'auto', '24a5aaf3-206f-45e1-8337-52d1bc932db3', 'Admin', '\'Stand out\' design wins Hokonui Fashion Design Awards in Gore', 'A design that took three months of inspiration and three months of construction won the top award at the MLT Hokonui Fashion Design Awards in Gore on Saturday n...', '\"Sheetal Chawla, a student at AUT has won the top award at New Zealand\'s top awards for amateur fashion designers.\"', 'Finance', 'https://www.stuff.co.nz/national/129432962/stand-out-design-wins-hokonui-fashion-design-awards-in-gore', 'https://resources.stuff.co.nz/content/dam/images/4/y/z/z/5/m/image.related.StuffLandscapeSixteenByNine.1420x800.252742.png/1659184155074.jpg', '2022-07-30 16:40:24', '2022-07-30 16:40:24'),
(257, 'auto', '5e3d8967-7ef1-4501-a628-37630bbe65d9', 'Admin', '‘Dramatic increase.’ Foreclosure filings are up more than 150%. Here’s what that tells us about the housing market', 'There has been a big uptick in foreclosure filings, but the reasons may surprise you. Getty Images\n\nThe number of foreclosure starts — which is when the first...', '\"What does this mean for home buyers?\"', 'Finance', 'https://www.marketwatch.com/picks/dramatic-increase-foreclosure-filings-are-up-more-than-150-heres-what-that-tells-us-about-the-housing-market-01659181360', 'https://images.mktw.net/im-535239/social', '2022-07-30 17:00:23', '2022-07-30 17:00:23'),
(258, 'auto', '62741836-34d5-40a6-9c8c-643f8e9ccdb7', 'Admin', 'What Did Larry Say To Joe?', 'If you can\'t access your feeds, please contact customer support.\n\nThanks! Check your phone for a link to finish setting up your feed.\n\nPlease enter a 10-digit p...', '\"Slate Money talks Inflation Reduction Act, GDP, and corporate landlords.\"', 'Finance', 'https://slate.com/podcasts/slate-money/2022/07/slate-money-talks-inflation-reduction-act-gdp-and-corporate-landlords?via=rss', 'https://compote.slate.com/images/bb44330d-b6d6-4ba7-b5d3-------99d11f5996ad.jpeg?width=780&height=520&rect=1560x1040&offset=0x0', '2022-07-30 17:00:23', '2022-07-30 17:00:23'),
(259, 'auto', '9ab77e15-ff6c-4b51-b706-d693e87d887f', 'Admin', 'CM Adityanath: No New Tax Or VAT Increase Will Be Applicable In UP', 'The chief minister of Uttar Pradesh, Yogi Adityanath on Friday said that in order to safeguard the greater public interest, the government does not plan to rais...', '\"Yogi Adityanath, Chief Minister of Uttar Pradesh, explained on Friday that in order to safeguard the greater public interest, the government does not plan to raise the Value Added Tax (VAT) or impose any new taxes, , value added tax, goods and service tax, Yogi Adityanath\"', 'Finance', 'https://www.businessworld.in/article/CM-Adityanath-No-New-Tax-Or-VAT-Increase-Will-Be-Applicable-In-UP-/30-07-2022-439584/', 'https://static.businessworld.in/article/article_extra_large_image/1652857631_cGVLzy_Yogi_Adityanath.jpg', '2022-07-30 17:00:23', '2022-07-30 17:00:23'),
(260, 'auto', 'c4af28dd-cdc2-4de3-9762-3da67b43fe25', 'Admin', 'Meet Momar Sakanoko: Star Basketball Player Who Built a Multi-Service Empire After Experiencing Racism', 'For serial entrepreneur Momar Sakanoko, nothing is more valuable than your experience.\n\nSakanoko is one of the most celebrated basketball players with French-Se...', '\"Momar Sakanoko pursued his passion entrepreneurship after enduring power abuse in sports, racial abuse, and fraud during his pro basketball journey.\"', 'Finance', 'https://www.blackenterprise.com/meet-momar-sakanoko-star-basketball-player-who-creates-a-talent-building-empire-after-experiencing-racism-power-abuse-and-fraud-in-sports/', 'https://a9p9n2x2.stackpathcdn.com/wp-content/blogs.dir/1/files/2022/07/Momarbahiabasket.jpeg', '2022-07-30 17:15:43', '2022-07-30 17:15:43'),
(261, 'auto', '0813c2d8-ce6f-4d55-ad37-eeb33114884b', 'Admin', 'Dallas Mavericks Summer League Standout Moses Wright Signs Contract In China', 'LAS VEGAS, NEVADA - JULY 08: Carlik Jones #26 of the Chicago Bulls drives against Moses Wright #5 of ... [+] the Dallas Mavericks during the 2022 NBA Summer Lea...', '\"Wright previously expressed the desire to land a roster spot with Dallas.\"', 'Finance', 'https://www.forbes.com/sites/doylerader/2022/07/30/dallas-mavericks-summer-league-standout-moses-wright-signs-contract-in-china/', 'https://imageio.forbes.com/specials-images/imageserve/62e529cb2aae819794b0c774/0x0.jpg?format=jpg&crop=3558,2002,x0,y45,safe&width=1200', '2022-07-30 17:15:43', '2022-07-30 17:15:43'),
(262, 'auto', '362b5dba-ca43-4b68-9227-0cc04a1e9197', 'Admin', 'Screentime: The Solo VC Who Never Lets Her Phone Battery Die', 'About a year after founding her solo venture firm in 2018, Day One Ventures founder Masha Bucher started running her $100 million fund almost entirely from her ...', '\"About a year after founding her solo venture firm in 2018, Day One Ventures founder Masha Bucher started running her $100 million fund almost entirely from her phone. She\\u2019s always on the move, jetting from San Francisco to meet founders, to Zurich to see investors, to Peru for vacation. On some ...\"', 'Finance', 'https://www.theinformation.com/articles/screentime-the-solo-vc-who-never-lets-her-phone-battery-die', 'https://tii.imgix.net/production/articles/8434/df0b2a71-a0b1-4328-8e57-b54f869a9259.jpg?w=800&fm=jpg&auto=compress&frame=0', '2022-07-30 17:15:43', '2022-07-30 17:15:43'),
(263, 'auto', 'f7245737-c953-411c-814c-8e2d2b2ec63f', 'Admin', 'Links to extremism moving out of the shadows in these Republican primaries', 'WASHINGTON (AP) — A congressional candidate whose compelling personal story of military valor and tragic loss helped him win former President Donald Trump’s...', '\"A challenger to a Republican House incumbent who attracted Trump allies\\u2019 ire in the second Trump impeachment has courted white nationalists and labeled...\"', 'Finance', 'https://www.marketwatch.com/story/links-to-extremism-moving-out-of-the-shadows-in-these-republican-primaries-01659144599', 'https://images.mktw.net/im-594350/social', '2022-07-30 17:35:14', '2022-07-30 17:35:14'),
(264, 'auto', '29ece3b7-d85a-4d14-8770-2ddadfcf3a60', 'Admin', 'Revenge of Old World Economy as Big Oil\'s Cash Flow Rivals Tech', 'This advertisement has not loaded yet, but your article continues below.\n\nRevenge of Old World Economy as Big Oil\'s Cash Flow Rivals Tech Exxon Mobil Corp.’s ...', '\"Exxon Mobil Corp.\\u2019s cash haul overtook that of Alphabet Inc. for the first time since 2018, proving the oil giant is back in the big league just a year after\\u2026\"', 'Finance', 'https://financialpost.com/pmn/business-pmn/revenge-of-old-world-economy-as-big-oils-cash-flow-rivals-tech', 'https://smartcdn.gprod.postmedia.digital/financialpost/wp-content/uploads/2022/07/exxons-free-cash-flow-overtakes-alphabets.jpg', '2022-07-30 17:35:14', '2022-07-30 17:35:14'),
(265, 'auto', '018b76fa-2fe1-44a5-b3c1-b54ec6ff6eed', 'Admin', 'Criticism Surrounds Sale of Hitler\'s Watch', '(Newser) – It turns out there were two controversial auctions won by anonymous bidders on Thursday. The BBC reports that a watch thought to have belonged to A...', '\"It turns out there were two  controversial auctions  won by anonymous bidders on Thursday. The  BBC  reports that a  watch  thought to have belonged to Adolf Hitler has sold for...\"', 'Finance', 'https://www.newser.com/story/323594/criticism-surrounds-sale-of-hitlers-watch.html', 'https://img1-azrcdn.newser.com/image/1426154-12-20220730073921.jpeg', '2022-07-30 17:35:14', '2022-07-30 17:35:14'),
(266, 'auto', 'd6ee663a-e299-487c-a227-550deab4a2fc', 'Admin', 'The rise, fall, and comeback of Victoria\'s Secret, America\'s biggest lingerie retailer', 'He named the brand after the Victorian era in England, wanting to evoke the refinement of this period in his lingerie.\n\nVictoria\'s Secret\n\nHis vision was summed...', '\"An in-depth look at lingerie giant Victoria\'s Secret, which has worked to fix its broken image and is now the subject of a Hulu documentary series.\"', 'Finance', 'https://www.businessinsider.com/victorias-secret-rise-and-fall-history-2019-5', 'https://i.insider.com/5dd7c5e5fd9db2554a1f7c74?width=1200&format=jpeg', '2022-07-30 17:50:35', '2022-07-30 17:50:35'),
(267, 'auto', '87e947ba-1391-4aa7-99d5-85bfb49d1569', 'Admin', 'As It Emerges, Memphis\' Orange Mound Tower Empowers Black Ownership & Community Wealth', 'On a trip to Memphis, I became fully immersed in a community of Black innovators that is intentionally and unapologetically reclaiming its home.\n\nThanks to Memp...', '\"The founders of Memphis\' Orange Mound Tower talk to BLACK ENTERPRISE about inspiring possibilities of ownership and community wealth through a business hub.\"', 'Finance', 'https://www.blackenterprise.com/as-it-emerges-memphis-orange-mound-tower-inspires-community-wealth-and-ownership/', 'https://a9p9n2x2.stackpathcdn.com/wp-content/blogs.dir/1/files/2022/07/VictoriaJames_OMT_BrandonDill.jpg', '2022-07-30 17:50:35', '2022-07-30 17:50:35'),
(268, 'auto', '159fb13a-79d9-405e-94fa-4d6f6c413260', 'Admin', 'Ticket bought in Illinois wins $1.28 billion Mega Millions jackpot', 'Someone beat the odds and won the $1.28 billion Mega Millions jackpot.\n\nAccording to megamillions.com, there was one winning ticket in the draw Friday night, an...', '\"Someone beat the odds and won the $1.28 billion Mega Millions jackpot.\"', 'Finance', 'https://www.marketwatch.com/story/ticket-bought-in-illinois-wins-1-28-billion-mega-millions-jackpot-01659184343', 'https://images.mktw.net/im-594381/social', '2022-07-30 17:50:35', '2022-07-30 17:50:35'),
(269, 'auto', 'aa0d8468-fc15-4e35-b7ea-06b484e89cf4', 'Admin', 'Giant Sequoias Are Built to Withstand Fire, But Not These Fires', 'Comment Gift Article Share\n\nNo sooner had one fire in Yosemite been contained than a new one erupted in a different part of the park. This summer’s Western wi...', '\"Infernos\\u00a0rampaging through the American West are so hot,\\u00a0they\\u2019re killing trees that have thrived on fire for thousands of years.\"', 'Finance', 'https://www.washingtonpost.com/business/giant-sequoias-are-built-to-withstand-fire-but-not-these-fires/2022/07/30/5d391214-1008-11ed-88e8-c58dc3dbaee2_story.html', 'https://www.washingtonpost.com/resizer/2CjPNwqvXHPS_2RpuRTKY-p3eVo=/1484x0/www.washingtonpost.com/pb/resources/img/twp-social-share.png', '2022-07-30 18:10:48', '2022-07-30 18:10:48'),
(270, 'auto', '1e0aea04-8cac-4da3-854a-826058a6eacc', 'Admin', 'Small Percentage Can Approach Courts, Majority Suffers In Silence: CJI', 'Chief Justice of India N V Ramana Saturday termed access to justice \"a tool for social emancipation\" and said only a small percentage of the population can appr...', '\"Chief Justice of India NV Ramana termed access to justice\"', 'Finance', 'https://www.businessworld.in/article/Small-Percentage-Can-Approach-Courts-Majority-Suffers-In-Silence-CJI/30-07-2022-439608/', 'https://static.businessworld.in/article/article_extra_large_image/1629216831_unnmk1_images_1629216822212.jpeg', '2022-07-30 18:10:48', '2022-07-30 18:10:48'),
(271, 'auto', 'f239e450-68bd-4afd-8c9d-80955ab1e4a4', 'Admin', 'Presidents Don’t Move Prices. So Why All the Tweets?', 'Comment Gift Article Share\n\nPresident Joe Biden, or his designated representative, is having a good time tweeting about gasoline prices lately. Just about every...', '\"For Biden it\\u2019s gasoline; for Trump it was stocks. Taking credit on social media for market swings will always backfire eventually.\"', 'Finance', 'https://www.washingtonpost.com/business/energy/presidents-dont-move-prices-so-why-all-the-tweets/2022/07/30/5d9107c6-1008-11ed-88e8-c58dc3dbaee2_story.html', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/LSBNNXQQBAI63CHIYWG4HW5O4I.jpg&w=1440', '2022-07-30 18:10:48', '2022-07-30 18:10:48'),
(272, 'auto', '86b2698f-ec1b-47d0-916d-ac2f65fca6a9', 'Admin', 'Pope says he’ll slow down or retire: ‘You can change a pope’', 'Pope Francis acknowledged Saturday that he can no longer travel like he used to because of his strained knee ligaments, saying his weeklong Canadian pilgrimage ...', '\"Pope Francis acknowledged Saturday that he can no longer travel like he used to because of his strained knee ligaments, saying his weeklong Canadian...\"', 'Finance', 'https://www.marketwatch.com/story/pope-says-hell-slow-down-or-retire-you-can-change-a-pope-01659187225', 'https://images.mktw.net/im-594386/social', '2022-07-30 18:30:14', '2022-07-30 18:30:14'),
(273, 'auto', '55947352-28af-4db5-89b4-80268dd652f9', 'Admin', 'Pak Reported 434 Terror Attacks On Security Forces In First Half Of 2022: Report', 'Pakistan reported 434 terror attacks on security forces during the first six months of the current year that claimed the lives of at least 323 soldiers, the Int...', '\"According to details of the attacks on the security forces, at least 323 soldiers of security forces and other institutions were martyred in the wake of terror assaults, , pakistan\"', 'Finance', 'https://www.businessworld.in/article/Pak-Reported-434-Terror-Attacks-On-Security-Forces-In-First-Half-Of-2022-Report/30-07-2022-439615/', 'https://static.businessworld.in/article/article_extra_large_image/1655954176_LZEwLG_1500x500_2_1_.jpg', '2022-07-30 18:30:14', '2022-07-30 18:30:14');
INSERT INTO `blogs` (`id`, `type`, `uuid`, `author`, `title`, `snippet`, `detail`, `category`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(274, 'auto', 'e39740df-2dea-4552-9c1f-88607b1585f0', 'Admin', 'Delhi Govt. Rolls Back New Excise Policy', 'In a media briefing, Delhi Deputy Chief Minister Manish Sisodia said that the new excise policy has been rolled back and that directions have been put into plac...', '\"Delhi Govt Rolls Back New Excise Policy\"', 'Finance', 'https://www.businessworld.in/article/Delhi-Govt-Rolls-Back-New-Excise-Policy-/30-07-2022-439617/', 'https://static.businessworld.in/article/article_extra_large_image/1451375185_JoATal_wine-store-shutterstock-articlesize.jpg', '2022-07-30 18:30:14', '2022-07-30 18:30:14'),
(275, 'auto', '8a1cc366-0a50-46d1-85cc-20476ada44e1', 'Admin', '2022 Commonwealth: Double joy as weightlifting squad scoops second gold through Aznil Bidin', 'BIRMINGHAM: Double joy!\n\nThe national weightlifting squad continued to bring more cheer to the Malaysian camp at the 2022 Birmingham Commonwealth Games after co...', '\"BIRMINGHAM: Double joy! The national weightlifting squad continued to bring more cheer to the Malaysian camp at the 2022 Birmingham Commonwealth Games...\"', 'Finance', 'https://www.thesundaily.my/sport/2022-commonwealth-double-joy-as-weightlifting-squad-scoops-second-gold-through-aznil-bidin-CF9520361', 'https://www.thesundaily.my/binrepository/480x361/0c56/480d250/none/11808/VJIM/aznil-fb-olympic-council-of-malaysia_2527975_20220730222339.jpg', '2022-07-30 18:40:49', '2022-07-30 18:40:49'),
(276, 'auto', 'c040b62d-7c3f-40f8-9def-6e0154d11970', 'Admin', 'How to Generate Passive Income With No Initial Funds', 'How to Generate Passive Income With No Initial Funds\n\nPhoto by Nathan Dumlao on Unsplash\n\nIn the age of the information revolution, money has always flown into ...', '\"In the age of the information revolution, money has always flown into knowledge-based concepts, people search for knowledge that changes their life, whichever type of subject you have selected always\\u2026\"', 'Finance', 'https://sajjadhussain-11869.medium.com/how-to-generate-passive-income-with-no-initial-funds-2b468cabcf0a', 'https://miro.medium.com/max/1200/0*FcNx_oNDq8Fh6PE6', '2022-07-30 18:40:49', '2022-07-30 18:40:49'),
(277, 'auto', '28fd1197-8ae9-4005-887d-4ef89c7fe5ca', 'Admin', '4 of the Best Canadian Stocks to Buy While the Market Is Selling Off', 'Here are four top Canadian stocks that long-term investors should be loading up on while the market is down big this year.\n\n4 of the Best Canadian Stocks to Buy...', '\"Here are four top Canadian stocks that long-term investors should be loading up on while the market is down big this year.\"', 'Finance', 'https://www.fool.ca/2022/07/30/4-of-the-best-canadian-stocks-to-buy-while-the-market-is-selling-off-2/', 'https://www.fool.ca/wp-content/uploads/2019/10/Stand-out-from-the-crowd-.jpg', '2022-07-30 18:40:49', '2022-07-30 18:40:49'),
(278, 'auto', '2f4be297-23b3-40e1-aa18-e351d505ce36', 'Admin', 'Bed Bath & Beyond: Inflation Is Its Best Friend (NASDAQ:BBBY)', 'White Label Strategy Could Be About To Payoff Big Time\n\nWe believe Bed Bath & Beyond (NASDAQ:BBBY) is well-positioned to take advantage of powerful shifts in co...', '\"BBBY is cheap, fundamentals reflect past performance issues and our technical analysis of the chart shows considerable upside potential.\"', 'Finance', 'https://seekingalpha.com/article/4527841-bed-bath-and-beyond-inflation-is-its-best-friend', 'https://static.seekingalpha.com/uploads/2022/7/29/38497856-16591182783354573_origin.jpg', '2022-07-30 19:05:17', '2022-07-30 19:05:17'),
(279, 'auto', 'f7114a63-b510-42a4-8ead-8dcd25b983c8', 'Admin', '» Using baking soda for brushing teeth Early Retirement Extreme: — a combination of simple living, anticonsumerism, DIY ethics, self-reliance, resilience, and applied capitalism', 'The information in this blog/forum is distributed on an “As Is” basis, without warranty of any kind. The site owner may have a financial relationship with s...', '\"\"', 'Finance', 'https://earlyretirementextreme.com/using-baking-soda-for-brushing-teeth.html', 'https://earlyretirementextreme.com/favicon.ico', '2022-07-30 19:05:17', '2022-07-30 19:05:17'),
(280, 'auto', 'f218df95-56bf-4248-b1f0-8ff61c9a18f3', 'Admin', 'Albato: Lifetime Deals - Build no-code API automations between any cloud apps! #LTD', 'Albato is a no-code platform that lets you integrate cloud services and build custom automations to simplify your workflow easier.\n\n\n\nAutomations can simplify y...', '\"Albato is a no-code platform that lets you integrate cloud services and build custom automations to simplify your workflow easier. Automations can simplify your business, but setting them up is more complicated than assembling a kid\\u2019s toy!\"', 'Finance', 'https://www.producthunt.com/posts/albato-lifetime-deals', 'https://ph-files.imgix.net/dd1a0b26-c12b-40ab-a452-5895f62120d3.png?auto=format&fit=crop&frame=1&h=512&w=1024', '2022-07-30 19:05:17', '2022-07-30 19:05:17'),
(281, 'auto', '5c0ed162-ed67-441a-8ee5-63ed1a647f50', 'Admin', 'Universal Stainless & Alloy Products Inc. (USAP) CEO Denny Oates on Q2 2022 Results - Earnings Call Transcript', 'Universal Stainless & Alloy Products Inc. (NASDAQ:USAP) Q2 2022 Earnings Conference Call July 27, 2022 10:00 AM ET\n\nCompany Participants\n\nJune Filingeri - Inves...', '\"Universal Stainless & Alloy Products Inc. (NASDAQ:NASDAQ:USAP) Q2 2022 Earnings Conference Call July 27, 2022 10:00 AM ET Company Participants June Filingeri - Investor Relations Chris...\"', 'Finance', 'https://seekingalpha.com/article/4527855-universal-stainless-and-alloy-products-inc-usap-ceo-denny-oates-on-q2-2022-results-earnings', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-30 19:25:24', '2022-07-30 19:25:24'),
(282, 'auto', '5bd1343a-393b-430e-a145-78851be15a9c', 'Admin', 'Bare-ly Travelled In Last 2 Years', 'Never ever has anyone seen a pandemic that will be so sufferable that it will trap the citizens within the four walls. But citizens can have a quest for travel ...', '\"Before the outbreak of the pandemic, the Indian government had halted all travel in March 2020, and the Indian government had suspended all travel in March 2020. After a long span of two years, the ban has been uplifted\\r\\n, , international tourism, visa, australia, canada, new zealand, sri lanka, japan\"', 'Finance', 'https://www.businessworld.in/article/-Bare-ly-Travelled-In-Last-2-Years/30-07-2022-439603/', 'https://static.businessworld.in/article/article_extra_large_image/1607694444_tZiEoP_travel.jpg', '2022-07-30 19:25:24', '2022-07-30 19:25:24'),
(283, 'auto', '48d17eee-ae7b-4eff-b12b-be904f37acf7', 'Admin', 'A Money Checklist For Women', 'Whether you’re single or married, working in an office or as a homemaker, here’s a simple money checklist to help keep you firmly on course towards the atta...', '\"Considering these challenges, a well-constructed Financial Plan that\\u2019s flexible enough to accommodate life-changes, , women entrepreneur\"', 'Finance', 'https://www.businessworld.in/article/A-Money-Checklist-For-Women-/30-07-2022-439621/', 'https://static.businessworld.in/article/article_extra_large_image/1496147618_JmVBwE_Rs2000notes-PTI.jpg', '2022-07-30 19:25:24', '2022-07-30 19:25:24'),
(284, 'auto', '6598f604-c6cf-4205-b9ca-9dbb5174738b', 'Admin', 'Grupo Televisa, S.A.B. (TV) CEO Alfonso de Angoitia on Q2 2022 Results - Earnings Call Transcript', 'Grupo Televisa S.A.B. (NYSE:TV) Q2 2022 Earnings Conference Call July 27, 2022 9:00 AM ET\n\nCompany Participants\n\nAlfonso de Angoitia - Co-Chief Executive Office...', '\"Grupo Televisa S.A.B. (NYSE:NYSE:TV) Q2 2022 Earnings Conference Call July 27, 2022 09:00 AM ET Company Participants Alfonso de Angoitia - Co-Chief Executive Officer Pepe Antonio Gonzalez -...\"', 'Finance', 'https://seekingalpha.com/article/4527860-grupo-televisa-s-b-tv-ceo-alfonso-de-angoitia-on-q2-2022-results-earnings-call-transcript', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-30 19:40:48', '2022-07-30 19:40:48'),
(285, 'auto', 'f09255b9-1fc7-4809-884a-3e3e97cbb9fb', 'Admin', 'Weitz Ultra Short Government Fund Q2 2022 Commentary', 'Additional disclosure: This material must be preceded or accompanied by a prospectus orsummary prospectus.\n\nData is for the quarter ending 06/30/2022. The opini...', '\"Weitz Investment Ultra Short Government Fund returned +0.09% in the second quarter. Click here to read the full fund letter.\"', 'Finance', 'https://seekingalpha.com/article/4527847-weitz-ultra-short-government-fund-q2-2022-commentary', 'https://static.seekingalpha.com/cdn/s3/uploads/getty_images/530943048/image_530943048.jpg?io=getty-c-w750', '2022-07-30 19:40:48', '2022-07-30 19:40:48'),
(286, 'auto', 'b4eb9d40-d988-4e00-855c-e0ef0bf0b24d', 'Admin', 'Royal Caribbean lifts COVID test requirement for vaccinated guests', '', '\"Royal Caribbean CEO Jason Liberty discusses the CDC\\u2019s decision to end its COVID-19 program for cruise ships and how it has impacted business, on \\u2018Barrons Roundtable.\\u2019\"', 'Finance', 'https://video.foxbusiness.com/v/6310229866112/', 'https://cf-images.us-east-1.prod.boltdns.net/v1/static/854081161001/d1294126-4e28-4d10-a6df-b2b1ab0ba42a/6a24b2b7-b0b4-4c2d-9268-c20f33f30631/1280x720/match/image.jpg', '2022-07-30 19:40:48', '2022-07-30 19:40:48'),
(287, 'auto', '338deacb-4a58-44a7-b921-f0f76a0535f5', 'Admin', 'At least 25 people dead after Kentucky is hit with devastating flash flooding, governor says', 'Flash flooding has hit parts of eastern Kentucky, leaving at least 25 people dead.\n\nKentucky Gov. Andy Beshear said the death toll is expected to rise.\n\n\"This i...', '\"Gov. Andy Beshear said Saturday that the death toll will likely rise significantly as a result of record flash flooding over the past several days.\"', 'Finance', 'https://www.businessinsider.com/at-least-25-people-dead-after-kentucky-devastating-flash-flooding-2022-7', 'https://i.insider.com/62e5523f0d7b600018d76c46?width=1200&format=jpeg', '2022-07-30 20:00:09', '2022-07-30 20:00:09'),
(288, 'auto', '96a2ccc5-5d2e-4b25-b2c0-c82abab61d4f', 'Admin', '5 Things You Probably Didn’t Know About Your Policy', 'Did you buy a Life Insurance plan at the penultimate moment in March to save taxes? If you did, you’re not alone – the industry’s aggressive sales tactics...', '\"Here are five simple facts which most Life Insurance buyers still do not often know about their policies, , policy\"', 'Finance', 'https://www.businessworld.in/article/5-Things-You-Probably-Didn-t-Know-About-Your-Policy/30-07-2022-439625/', 'https://static.businessworld.in/article/article_extra_large_image/1636808703_m9Sh2e_thumbnail_Mr_Nitesh_Jain_CEO_Founder_BeSingular_.jpg', '2022-07-30 20:00:09', '2022-07-30 20:00:09'),
(289, 'auto', 'edc8c7e0-4999-4ea0-b2e2-7035d1a317de', 'Admin', 'Alex Jones’s media company files for bankruptcy during Sandy Hook trial', 'Listen 5 min Comment Gift Article Share\n\nThe parent company for Alex Jones’s Infowars website filed for bankruptcy, his attorney announced Friday, as parents ...', '\"It\\u2019s the second time in recent months that a bankruptcy filing related to Alex Jones has come up during litigation from Sandy Hook families brought against the conspiracy theorist.\"', 'Finance', 'https://www.washingtonpost.com/nation/2022/07/30/alex-jones-bankruptcy-infowars-sandy-hook/', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/XZ5FOFAPTYI63CHIYWG4HW5O4I.jpg&w=1440', '2022-07-30 20:00:09', '2022-07-30 20:00:09'),
(290, 'auto', 'a44586ef-f039-4a28-9f13-c5c358eb1885', 'Admin', 'CWG: Dropped By Govt, Pak Badminton Contingent Finds Last-Minute Sponsor', 'A four-member Pakistan badminton team, the standard squad size being eight, has made it to Birmingham against all odds.\n\nThe players including Olympian Mahoor S...', '\"A four-member Pakistan badminton team, the standard squad size being eight, has made it to Birmingham against all odds, , commonwealth games\"', 'Finance', 'https://www.businessworld.in/article/CWG-Dropped-By-Govt-Pak-Badminton-Contingent-Finds-Last-Minute-Sponsor/30-07-2022-439626/', 'https://static.businessworld.in/article/article_extra_large_image/1658739434_zdf9CF_20220725_142656.jpg', '2022-07-30 20:15:28', '2022-07-30 20:15:28'),
(291, 'auto', '11d27eb5-009f-45ff-a8c6-82665707fa80', 'Admin', 'Eco-Friendly Finds For Back To School', 'School is around the corner. Here are some essentials that’ll help reduce the plastic waste that usually comes with back-to-school shopping, whether you’re ...', '\"The kiddos will be going back to school soon enough. Same for the college-bound teenagers. Here are some eco-friendly swaps for back-to-school time staples.\"', 'Finance', 'https://www.forbes.com/sites/eshachhabra/2022/07/30/eco-friendly-finds-for-back-to-school/', 'https://imageio.forbes.com/specials-images/imageserve/62e475b2b7ac0c6b915398d6/0x0.jpg?format=jpg&crop=2033,1144,x120,y0,safe&width=1200', '2022-07-30 20:15:28', '2022-07-30 20:15:28'),
(292, 'auto', '417cdb92-bbf7-4e0a-bc16-c097553e0472', 'Admin', 'Have retirement savers been duped by the bull market?', 'Today in Weird Retirement News: 75% of those currently saving through a workplace plan, such as a 401(k), are apparently expecting to make it through their enti...', '\"A shocking number of savers seem more optimistic about their retirement prospects than they should be.\"', 'Finance', 'https://www.marketwatch.com/story/have-retirement-savers-been-duped-by-the-bull-market-11658920672', 'https://images.mktw.net/im-591335/social', '2022-07-30 20:15:28', '2022-07-30 20:15:28'),
(293, 'auto', '70d3317c-d942-4cf0-bb22-b0e255c4f4e9', 'Admin', 'We Need To Talk About The Worker Wage-Price Spiral Before It’s Too Late', 'Photo of a father and daughter sitting in the kitchen, and the young child is comforting her dad who ... [+] is worried about higher bills due to inflation. get...', '\"What Happens With A Wage Spiral With all the debate about the definition of a recession, we lost sight of a potentially more pernicious matter; a worker wage spiral.\"', 'Finance', 'https://www.forbes.com/sites/jackkelly/2022/07/30/we-need-to-talk-about-the-worker-wage-price-spiral-before-its-too-late/', 'https://imageio.forbes.com/specials-images/imageserve/62e559543b8c01205087f3c6/0x0.jpg?format=jpg&width=1200', '2022-07-30 20:35:36', '2022-07-30 20:35:36'),
(294, 'auto', 'efc53b2d-0a67-4859-94f1-f037f0b4953f', 'Admin', 'Bahwan CyberTek plans to restructure business', 'The group posted revenue of around $300 million for FY22 and it plans to double it in the next five years\n\nThe group posted revenue of around $300 million for F...', '\"The group posted revenue of around $300 million for FY22 and it plans to double it in the next five years\"', 'Finance', 'https://www.thehindu.com/business/bahwan-cybertek-plans-to-restructure-business/article65702764.ece', 'https://th-i.thgim.com/public/business/1xqq1d/article65702750.ece/alternates/LANDSCAPE_615/Durgaprasad%20Bahwan.JPG', '2022-07-30 20:35:36', '2022-07-30 20:35:36'),
(295, 'auto', '499038f1-ebe2-49e8-a9d4-a40d0750a2ba', 'Admin', 'Opinion: Big Tech shows its good to be big, as growth slowdown leads to stock gains while smaller rivals find only pain', 'After super charged, double-digital growth during the pandemic, the results from the five biggest U.S. tech giants this week showed a slowdown as they grapple w...', '\"After super charged, double-digital growth during the pandemic, the results this week from the five biggest U.S. tech giants showed a big slow down, as they...\"', 'Finance', 'https://www.marketwatch.com/story/big-tech-shows-its-good-to-be-big-as-growth-slowdown-leads-to-stock-gains-while-smaller-rivals-find-only-pain-11659194602', 'https://images.mktw.net/im-534157/social', '2022-07-30 20:35:36', '2022-07-30 20:35:36'),
(296, 'auto', '47ce67f0-5b2e-4db1-b73c-16c35568d55d', 'Admin', 'Amit Shah says drug problem is more in Punjab, but assures proactive help', 'Union Home Minister Amit Shah on Saturday said drug problem was \"more\" in Pakistan bordering state of Punjab, even as he pointed out that the government was hol...', '\"\\u20b920,000 crore worth of narcotic drugs seized during 2014-2021, says Home Minister\"', 'Finance', 'https://www.thehindubusinessline.com/news/national/amit-shah-says-drug-problem-is-more-in-punjab-but-assures-proactive-central-help/article65703195.ece', 'https://bl-i.thgim.com/public/incoming/b44z8j/article65704288.ece/alternates/LANDSCAPE_615/PTI07_30_2022_000273B.jpg', '2022-07-30 20:55:29', '2022-07-30 20:55:29'),
(297, 'auto', 'dd76d8fa-22b1-4fb3-8fcc-f4d5b828046b', 'Admin', '$60 Million Investment Plan Of Oppo In India', 'Under its project titled “Vihaan”, Oppo is all set to invest $60 million in India over the next five years. This is to bolster its manufacturing environment...', '\"Under its project titled \\u201cVihaan\\u201d, Oppo is all set to invest $60 million in India over the next five years. , , oppo mobiles, oppo india, oppo smartphones, Oppo Android 10 Update\"', 'Finance', 'https://www.businessworld.in/article/-60-Million-Investment-Plan-Of-Oppo-In-India/30-07-2022-439632/', 'https://static.businessworld.in/article/article_extra_large_image/1657777502_PStxf0_oppo_reu.jpg', '2022-07-30 20:55:29', '2022-07-30 20:55:29'),
(298, 'auto', '9c2dfe0b-52cc-4464-893b-d1f5d79ccd20', 'Admin', 'TWTW Weekly Wrap Up: 24-30 July', 'Last Week’s Latest\n\n\n\nAs the sale entered its third day, India\'s auction of 5G spectrum has received Rs 1.49 trillion in bids.\n\nThe Ministry of Consumer Affai...', '\"\"', 'Finance', 'https://www.businessworld.in/article/TWTW-Weekly-Wrap-Up-24-30-July/30-07-2022-439633/', 'https://www.businessworld.in/article/TWTW-Weekly-Wrap-Up-24-30-July/30-07-2022-439633/1659179351_3CiAve_TWTW.PNG', '2022-07-30 20:55:29', '2022-07-30 20:55:29'),
(299, 'auto', '8eac3d55-d2b6-4eaf-8d00-bbda6a41ef5b', 'Admin', 'PM Urges States To Clear Dues Of Power Sector Cos; Launches 2 Green Hydrogen Plants', 'Prime Minister Narendra Modi on Saturday asked the state governments to clear power sector companies\' dues which are estimated at around Rs 2.5 lakh crore.\n\nThe...', '\"Prime Minister Narendra Modi on Saturday asked the state governments to clear power sector companies\' dues which are estimated at around Rs 2.5 lakh crore, , Green Hydrogen Plants, narendra modi\"', 'Finance', 'https://www.businessworld.in/article/PM-Urges-States-To-Clear-Dues-Of-Power-Sector-Cos-Launches-2-Green-Hydrogen-Plants/30-07-2022-439631/', 'https://static.businessworld.in/article/article_extra_large_image/1645111347_bpuPCJ_green_hydrogen.png', '2022-07-30 21:10:16', '2022-07-30 21:10:16'),
(300, 'auto', '2f78f38b-d3fa-4e6e-ba4f-0d2c1dd01984', 'Admin', 'Access CU (Accelerate/Hubert) to possibly merge with Amaranth CU', 'Access CU (Accelerate/Hubert) to possibly merge with Amaranth CU\n\nhttps://www.chrisd.ca/2022/07/30/access ... scussions/\n\n\n\nBack in 2021 Access CU merged with C...', '\"https:\\/\\/www.chrisd.ca\\/2022\\/07\\/30\\/access ... scussions\\/ Back in 2021 Access CU merged with Crosstown Civic CU (Accelerate) and then now in 2022 with\"', 'Finance', 'https://forums.redflagdeals.com/access-cu-accelerate-hubert-possibly-merge-amaranth-cu-2556299/#p36355999', 'https://assets.rfdcontent.com/graphics/rfd/v33.5.14/facebook_thumb_default.png', '2022-07-30 21:10:16', '2022-07-30 21:10:16'),
(301, 'auto', 'bc787cef-ff5e-4d4d-8647-dd763b88656d', 'Admin', 'How to make the most of your retirement', 'The definition of retirement has vastly changed from that of previous generations. Most of today’s retirees and pre-retirees (55%) view retirement as a new ch...', '\"Americans see retirement as a new chapter of life\"', 'Finance', 'https://www.marketwatch.com/story/how-to-make-the-most-of-your-retirement-11659116970', 'https://images.mktw.net/im-593202/social', '2022-07-30 21:10:16', '2022-07-30 21:10:16'),
(302, 'auto', '17ee7eb9-165c-427e-bd35-ef45450c844c', 'Admin', 'Registering a master business license when I\'m already incorporated?', 'Registering a master business license when I\'m already incorporated?\n\nHey,\n\n\n\nSo last year I incorporated my business with the name, CompanyName, Inc. This is t...', '\"Hey, So last year I incorporated my business with the name, CompanyName, Inc. This is the name of my \\\"parent corporation\\\". Not the actual\"', 'Finance', 'https://forums.redflagdeals.com/registering-master-business-license-when-im-already-incorporated-2556305/#p36356039', 'https://assets.rfdcontent.com/graphics/rfd/v33.5.14/facebook_thumb_default.png', '2022-07-30 21:30:31', '2022-07-30 21:30:31'),
(303, 'auto', '14b68f1d-c7db-4f4f-8993-b68d0d992b24', 'Admin', 'Documentary ‘Aftershock’ Puts Human Face On Maternal Health Care Crisis Disproportionately Experienced By Black Women', 'Shawnee Gibson Benton advocates for change in the maternal health care system following the death of ... [+] her daughter Shamony Gibson. COURTESY OF SUNDANCE I...', '\"The documentary follows the bereaved families of two women as they work with activists, healthcare workers, and physicians to understand a tragically overlooked American crisis \\u2013 the rise in maternal deaths in the United States, particularly among women of color.\"', 'Finance', 'https://www.forbes.com/sites/anneeaston/2022/07/30/documentary-aftershock-puts-human-face-on-maternal-health-care-crisis-disproportionately-experienced-by-black-women/', 'https://imageio.forbes.com/specials-images/imageserve/62e5654f352bdc53d25398d2/0x0.jpg?format=jpg&width=1200', '2022-07-30 21:30:31', '2022-07-30 21:30:31'),
(304, 'auto', '1a0e682a-a8b0-4d36-8ae1-c1b21a37a754', 'Admin', 'What Will It Cost To Fix That Door Ding? Artificial Intelligence Can Help', 'Artificial Intelligence can enable an amateur to capture expert images of a damaged — or undamaged — ... [+] vehicle, according to Ravin AI. Photo: Ravin AI...', '\"Artificial Intelligence is potentially a game-changer for anyone with a smartphone who needs a detailed auto damage report.\"', 'Finance', 'https://www.forbes.com/sites/jimhenry/2022/07/30/what-will-it-cost-to-fix-that-door-ding-artificial-intelligence-can-help/', 'https://imageio.forbes.com/specials-images/imageserve/62e5648e4207a7d5d8b0c77e/0x0.jpg?format=jpg&width=1200', '2022-07-30 21:30:31', '2022-07-30 21:30:31'),
(305, 'auto', '8f3acc06-6d7a-4236-8a5e-37e193ab8755', 'Admin', 'China holds live-fire drills near Taiwan as Pelosi heads to Asia. The U.S. should beware a ‘high-voltage’ line it ‘cannot step on,’ one commentator warns', 'China held live-fire military drills in the Taiwan Strait on Saturday as U.S. House Speaker Nancy Pelosi prepared to arrive in Asia.\n\nThe exercises took place o...', '\"China held live-fire military drills in the Taiwan Strait on Saturday as U.S. House Speaker Nancy Pelosi prepared to arrive in Asia.\"', 'Finance', 'https://fortune.com/2022/07/30/ahead-of-pelosi-visit-china-holds-live-fire-military-drills-near-taiwan/', 'https://content.fortune.com/wp-content/uploads/2022/07/GettyImages-1404882461.jpg?resize=1200,600', '2022-07-30 21:50:26', '2022-07-30 21:50:26'),
(306, 'auto', '25282fd3-1ee6-4b20-ac53-b61435e77d4e', 'Admin', 'Death toll from flooding rises to 25, Kentucky governor says', 'At least 25 people died — including four children — when torrential rains swamped towns across Appalachia, Kentucky’s governor said Saturday.\n\nGov. Andy B...', '\"At least 25 people died \\u2014 including four children \\u2014 when torrential rains swamped towns across Appalachia, Kentucky\'s governor said Saturday.\"', 'Finance', 'https://www.marketwatch.com/story/death-toll-from-flooding-rises-to-25-kentucky-governor-says-01659199093', 'https://images.mktw.net/im-594411/social', '2022-07-30 21:50:26', '2022-07-30 21:50:26'),
(307, 'auto', 'f9c40b42-99d8-4a25-a6f5-7113e6a6f2ad', 'Admin', 'Elon Musk Files Response and Counterclaims to Twitter Lawsuit Over $44 Billion Deal', 'Elon Musk with his mother Maye earlier this year. Photo by ANGELA WEISS/AFP via Getty Images\n\nElon Musk formally responded to Twitter’s (ticker: TWTR) lawsuit...', '\"Elon Musk\\u2019s response was filed confidentially, but he has indicated in previous filings how he may try to make his case for terminating the merger agreement.\"', 'Finance', 'https://www.marketwatch.com/articles/elon-musk-twitter-lawsuit-countersuit-51659199210', 'https://images.barrons.com/im-594412/social', '2022-07-30 21:50:26', '2022-07-30 21:50:26'),
(308, 'auto', '766d569e-bab1-41ee-bb26-042464fd2649', 'Admin', 'Caladan - Build on our autonomous industrial vehicle autonomy in sim', 'Design autonomous behaviors for industrial vehicles in simulation, using Python (not ROS). Whatever you design in simulation can be executed by a physical vehic...', '\"Design autonomous behaviors for industrial vehicles in simulation, using Python (not ROS). Whatever you design in simulation can be executed by a physical vehicle using the same code.\"', 'Finance', 'https://www.producthunt.com/posts/caladan', 'https://ph-files.imgix.net/78d1e28f-4737-4779-8bab-4d2568f848fe.jpeg?auto=format&fit=crop&frame=1&h=512&w=1024', '2022-07-30 22:10:49', '2022-07-30 22:10:49'),
(309, 'auto', '4928f67e-142a-445c-b5f3-f875304af7d7', 'Admin', 'West Virginia Senate passes abortion ban even in cases of rape after 8 weeks', '1/2\n\nA map of abortion laws in the South is displayed during a press conference with Democratic women sharing stories of the consequences of a depletion in wome...', '\"West Virginia\'s Senate passed a bill that narrows the window for victims of rape and incest to have access to an abortion, down to eight weeks, provided the assault is reported to law enforcement.\"', 'Finance', 'https://www.upi.com/Top_News/US/2022/07/30/us-west-virginia-senate-passes-abortion-ban/2931659202456/', 'https://cdnph.upi.com/sv/ph/og/upi/2931659202456/2022/1/50dab8fbe6b2359b1a31112d50fef566/v1.5/West-Virginia-Senate-passes-abortion-ban-even-in-cases-of-rape-after-8-weeks.jpg?lg=5', '2022-07-30 22:10:49', '2022-07-30 22:10:49'),
(310, 'auto', '54115a82-7d8e-4e05-b4e6-802161cdf481', 'Admin', 'Mirabai Chanu defends 49kg title, gives India first gold of 2022 CWG', 'Mirabai Chanu bossed the 49kg field as expected to defend her Commonwealth Games title and give India the first gold medal of the Birmingham edition here on Sat...', '\"The Olympic silver medallist aggregated a total of 201kg to stamp her authority in the competition\"', 'Finance', 'https://www.thehindubusinessline.com/news/sports/mirabai-chanu-defends-49kg-title-gives-india-first-gold-of-2022-cwg/article65704575.ece', 'https://bl-i.thgim.com/public/incoming/fbyokc/article65704590.ece/alternates/LANDSCAPE_615/PTI07_30_2022_000333A.jpg', '2022-07-30 22:10:49', '2022-07-30 22:10:49'),
(311, 'auto', '325c464c-dfbc-47f8-bb87-68ac36a0a765', 'Admin', 'What’s in store for commodities after losses in July?', 'The pullback in most commodity prices in July, with wheat and oil among the decliners, might be an indication that inflation will soon reach its peak, and some ...', '\"The pullback in most commodities in July, with wheat and oil among the decliners, might be an indication that inflation will soon reach its peak, and some...\"', 'Finance', 'https://www.marketwatch.com/story/whats-in-store-for-commodities-after-losses-in-july-11659106178', 'https://images.mktw.net/im-583475/social', '2022-07-30 22:25:42', '2022-07-30 22:25:42'),
(312, 'auto', 'a5094a3d-89f3-4884-a6e9-8e37e3b39101', 'Admin', 'Modernize to survive', 'Were you unable to attend Transform 2022? Check out all of the summit sessions in our on-demand library now! Watch here.\n\nThe race for technology modernization ...', '\"IT modernization during the pandemic became a staple for survival. Even as the pandemic has receded, modernization is still important.\"', 'Finance', 'https://venturebeat.com/2022/07/30/modernize-to-survive/', 'https://venturebeat.com/wp-content/uploads/2022/03/GettyImages-1327426663.jpg?w=1200&strip=all', '2022-07-30 22:25:42', '2022-07-30 22:25:42'),
(313, 'auto', 'b905f6e6-7403-4c41-900f-0f605a22f29c', 'Admin', 'Why Goldman’s commodity guru Jeff Currie is bullish on oil despite July’s pullback', 'Global oil prices have declined in July, but Goldman Sachs commodity guru Jeffrey Currie touts a strong upside risk for oil on the back of wide, “unprecedente...', '\"Global oil prices decline in July, but Goldman Sachs commodity guru Jeffrey Currie touts a strong upside risk for oil on the back of wide, \\u201cunprecedented\\u201d...\"', 'Finance', 'https://www.marketwatch.com/story/why-goldmans-commodity-guru-jeff-currie-is-bullish-on-oil-despite-julys-pullback-11659113648', 'https://images.mktw.net/im-593835/social', '2022-07-30 22:25:42', '2022-07-30 22:25:42'),
(314, 'auto', '07073b07-d6a9-4051-a8ae-0c83fe279e03', 'Admin', 'Delhi govt to bring back old liquor policy from August 1 after backlash', 'Amid the ongoing tussle between Arvind Kejriwal-led and Lieutenant General Vinai Kumar Saxena, the is now set to bring the old liquor policy back. The decision ...', '\"Deputy CM Manish Sisodia also handles the portfolio of the finance and excise department and has now trained his guns at the BJP and LG Saxena, after being targeted for alleged irregularities\"', 'Finance', 'https://www.business-standard.com/article/current-affairs/kejriwal-led-delhi-govt-to-bring-back-old-liquor-policy-from-august-1-122073001077_1.html', 'https://bsmedia.business-standard.com/_media/bs/img/article/2021-08/27/full/1630086534-8.jpg', '2022-07-30 22:45:20', '2022-07-30 22:45:20'),
(315, 'auto', '7c7439aa-c5b1-447b-a8e4-d7230b2ef077', 'Admin', 'Azimut Holding S.p.A. (AZIHF) CEO Gabriele Blei on Q2 2022 Results - Earnings Call Transcript', 'Azimut Holding S.p.A. (OTCPK:AZIHF) Q2 2022 Results Conference Call July 28, 2022 9:30 AM ET\n\nCompany Participants\n\nGabriele Blei - CEO\n\nAlessandro Zambotti - C...', '\"Azimut Holding S.p.A. (OTCPK:AZIHF) Q2 2022 Results Conference Call July 28, 2022 09:30 AM ET Company Participants Gabriele Blei - CEO Alessandro Zambotti - CFO Conference Call Participants...\"', 'Finance', 'https://seekingalpha.com/article/4527911-azimut-holding-s-p-azihf-ceo-gabriele-blei-on-q2-2022-results-earnings-call-transcript', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-30 22:45:20', '2022-07-30 22:45:20'),
(316, 'auto', '045f0a0e-720f-49c7-8bd7-cae066d623e0', 'Admin', 'Russia is skirting sanctions ‘quite successfully.’ Meet the architect of Putin’s economic counterattack', 'When sanctions made the Fortress Russia he helped build seem less impregnable, Maxim Oreshkin came up with a signature gambit to try and break the economic sieg...', '\"When sanctions made the Fortress Russia he helped build seem less impregnable, Maxim Oreshkin came up with a signature gambit to try and break the economic siege.\"', 'Finance', 'https://fortune.com/2022/07/30/russia-is-skirting-sanctions-quite-successfully-meet-the-architect-of-putins-economic-counterattack/', 'https://content.fortune.com/wp-content/uploads/2022/07/GettyImages-1241375419.jpg?resize=1200,600', '2022-07-30 22:45:20', '2022-07-30 22:45:20'),
(317, 'auto', '49da4749-7ddc-4dfb-981f-810d73916f16', 'Admin', 'Elon Musk Sounds the Alarm on Russia-Ukraine War', 'The world\'s richest man and arguably also the world\'s most influential CEO has had a keen interest in the Russian invasion of Ukraine from the start.\n\nIt would ...', '\"The world\'s richest man and arguably also the world\'s most influential CEO has had a keen interest in the Russian invasion of Ukraine from the start.\"', 'Finance', 'https://www.thestreet.com/technology/elon-musk-sounds-the-alarm-on-russia-ukraine-war', 'https://www.thestreet.com/.image/t_share/MTg4MTA2MTMxMDI4MDU5OTQ2/russia-ukraine_4.jpg', '2022-07-30 23:00:36', '2022-07-30 23:00:36'),
(318, 'auto', 'be018ebf-2d5b-459e-a92e-0a287b8bbe32', 'Admin', 'The Los Angeles Angels Might Finish Last In The AL West', 'SAN FRANCISCO, CALIFORNIA - JUNE 01: Anthony Rendon #6 of the Los Angeles Angels fields a ground ... [+] ball off the bat of Austin Slater of the San Francisco ...', '\"The Los Angeles Angels can\'t get anything right these days.\"', 'Finance', 'https://www.forbes.com/sites/julesposner/2022/07/30/the-los-angeles-angels-might-finish-last-in-the-al-west/', 'https://imageio.forbes.com/specials-images/imageserve/62e56f8871f89a02ddb0c776/0x0.jpg?format=jpg&width=1200', '2022-07-30 23:00:36', '2022-07-30 23:00:36'),
(319, 'auto', '5eacb3fb-e0c0-4b12-a488-66873042325a', 'Admin', 'ATCO Ltd. (ACLLF) Q2 2022 Results - Earnings Call Transcript', 'ATCO Ltd. (OTCPK:ACLLF) Q2 2022 Earnings Conference Call July 28, 2022 12:00 PM ET\n\nCompany Participants\n\nColin Jackson - SVP, Finance, Treasury, Risk & Sustain...', '\"ATCO Ltd. (OTCPK:ACLLF) Q2 2022 Earnings Conference Call July 28, 2022, 12:00 PM ET Company Participants Colin Jackson - SVP, Finance, Treasury, Risk & Sustainability Katie Patrick -...\"', 'Finance', 'https://seekingalpha.com/article/4527913-atco-ltd-acllf-q2-2022-results-earnings-call-transcript', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-30 23:00:36', '2022-07-30 23:00:36'),
(320, 'auto', '01ef40a9-97b6-4c17-9d35-b9c20c6cfdeb', 'Admin', 'Biden Tests Positive For Covid Again—Is Asymptomatic', 'Topline\n\nPresident Joe Biden tested positive for Covid-19 late Saturday morning, according to the White House, forcing him back into isolation after several day...', '\"The president is once again back in isolation, but the White House says there\'s no reason for concern.\"', 'Finance', 'https://www.forbes.com/sites/nicholasreimann/2022/07/30/biden-tests-positive-for-covid-again-is-asymptomatic/', 'https://imageio.forbes.com/specials-images/imageserve/62e57d860ebf9684c65398d2/0x0.jpg?format=jpg&crop=3611,2032,x0,y181,safe&width=1200', '2022-07-30 23:15:48', '2022-07-30 23:15:48'),
(321, 'auto', '16cf576a-8302-44de-b934-7479f0b8119d', 'Admin', 'Illiquid Startup Equity as a Feature', 'With the continued volatility in the public markets, which are now on a strong upswing, it’s tempting to look at the stock prices and investments on a regular...', '\"With the continued volatility in the public markets, which are now on a strong upswing, it\'s tempting to look at the stock prices and investments on a regular basis. Great, the market is up 2% today, how\'s my portfolio? Bummer, the market is down 1% today, how\'s my portfolio? Of course, it\'s outside our control\\u2026\"', 'Finance', 'https://davidcummings.org/2022/07/30/illiquid-startup-equity-as-a-feature/', 'https://s0.wp.com/i/blank.jpg', '2022-07-30 23:15:48', '2022-07-30 23:15:48'),
(322, 'auto', 'a5df01d5-d246-43ef-a38f-c5d4317dd2b1', 'Admin', 'Is the U.S. in recession now? Not yet — and here’s why', 'The official scorecard for the U.S. economy contracted in the spring for the second quarter in a row, matching an old rule of thumb for when an economy is in re...', '\"The official scorecard for the U.S. economy contracted in the spring for the second quarter in a row, matching an old rule of thumb for when an economy is in...\"', 'Finance', 'https://www.marketwatch.com/story/why-the-u-s-isnt-in-recession-now-and-why-it-might-not-be-able-to-avoid-one-11659028082', 'https://images.mktw.net/im-592804/social', '2022-07-30 23:15:48', '2022-07-30 23:15:48'),
(323, 'auto', '450941c3-7078-46ba-8727-921dc0e729ff', 'Admin', 'Biden still testing positive for COVID-19; will work from isolation', 'President Joe Biden\'s physician on Sunday said he had tested positive for COVID-19 again following a \"rebound\" positive result and would continue to work from i...', '\"President Joe Biden\'s physician on Sunday said he had tested positive for COVID-19 again following a\"', 'Finance', 'https://www.upi.com/Top_News/US/2022/07/31/President-Joe-Biden-testing-positive-COVID-19-work-isolation/9191659287932/', 'https://cdnph.upi.com/sv/ph/og/upi/9191659287932/2022/1/9756a25ccebac4590537c8f17e5197e6/v1.5/Biden-still-testing-positive-for-COVID-19-will-work-from-isolation.jpg?lg=5', '2022-07-31 22:05:38', '2022-07-31 22:05:38'),
(324, 'auto', 'd1cac362-71f5-4465-bda6-9d1e4574de9b', 'Admin', 'APAC CMO Suresh Balaji exits HSBC after 17 years', 'Suresh Balaji, HSBC\'s chief marketing officer, APAC is stepping down from his position after 17 years at the bank.\n\nA seasoned marketing transformation leader, ...', '\"A veteran brand marketer, Balaji has been named in Campaign\'s list of top 50 influential and purposeful APAC CMOs in 2020 as well as 2021.\"', 'Finance', 'https://www.campaignasia.com:443/article/apac-cmo-suresh-balaji-exits-hsbc-after-17-years/480696', 'https://cdn.i.haymarketmedia.asia/?n=campaign-asia%2fcontent%2fUntitled+design+(29).jpg&h=630&w=1200&q=75&v=20170226&c=1', '2022-07-31 22:05:38', '2022-07-31 22:05:38'),
(325, 'auto', '071fc05b-f9c1-4582-818c-5e71e60305a3', 'Admin', '5G subscriptions to reach 263 million in MEA region by 2026: Nokia', 'Nokia has released research (Nokia MEA Broadband Index Report) that forecasts 5G subscriptions are expected to reach 263 million in the Middle East and Africa (...', '\"The Nokia study reveals that 5G and 4G together are expected to drive more than 90 percent of data traffic in the Middle East.\"', 'Finance', 'https://gulfbusiness.com/5g-subscriptions-expected-to-reach-263-million-in-mea-region-by-2026-nokia/', 'https://gulfbusiness.com/wp-content/uploads/2022/07/5g-users-to-grow-to-in-MEA-region-by-2026_GettyImages-506908386.jpg', '2022-07-31 22:05:38', '2022-07-31 22:05:38'),
(326, 'auto', '8fff1b84-d9e0-42fb-912e-5197aa19a1cb', 'Admin', 'Sun: TA 35 Index rose 6.5% in July', 'The Tel Aviv Stock Exchange rose today. The Tel Aviv 35 Index rose 1.18%, to 1,948.10 points; the Tel Aviv 125 Index rose 1.40%, to 2,012.20 points; and the Blu...', '\"NICE Systems, ICL and the banks led strong gains on the TASE today.\"', 'Finance', 'https://en.globes.co.il/en/article-sun-ta-35-index-rose-65-in-july-1001419977', 'https://images.globes.co.il/images/NewGlobes/big_image_800/2018/Globes_Archive_800x392.2018729T150619.jpg', '2022-07-31 22:05:38', '2022-07-31 22:05:38'),
(327, 'auto', '7351ef9d-5e44-4918-8bdd-60464c80163c', 'Admin', 'Opinion: Why Disney+ and Hulu are all you need to stream in August 2022 (sorry, dragons)', 'Everything costs too much these days. The good news is, consumers can afford to scrimp on streaming in August.\n\nWhile almost every major streaming service has a...', '\"From \'She-Hulk\' to \'Andor\' to \'Reservation Dogs,\' Disney+ and Hulu are loaded in August, while HBO\'s \'House of the Dragon\' and Neflix\'s \'The Sandman\' miss...\"', 'Finance', 'https://www.marketwatch.com/story/how-to-maximize-your-streaming-budget-in-august-2022-on-just-15-dragons-not-included-11659285370', 'https://images.mktw.net/im-593514/social', '2022-07-31 22:05:38', '2022-07-31 22:05:38'),
(328, 'auto', '386ab5ad-5ecb-4d2f-91b0-3ae30f5d0c69', 'Admin', 'Pagaya\'s market cap surges past $16b', 'The share price of Israeli fintech company Pagaya Technologies (Nasdaq: PGY) rose a further 38.12% on Friday on Wall Street to $24.82, giving a market cap of $1...', '\"The fintech company has overtaken Check Point to become Israel\'s second most valuable company, after its share price skyrocketed 900% in two weeks.\"', 'Finance', 'https://en.globes.co.il/en/article-pagayas-market-cap-surges-past-16b-1001419966', 'https://res.cloudinary.com/globes/image/upload/t_desktop_article_content_header_800%2A392/v1656245836/direct/pagaya_bell_ringing_ceremony_credit_-_Ido_Iszak_agxnuv.jpg', '2022-07-31 22:05:38', '2022-07-31 22:05:38'),
(329, 'auto', 'b1d7be9d-3d6b-408b-8c80-ef88af8c8891', 'Admin', 'WATCH | Train crossing through mesmerizing view of Rajasthan\'s Dara Ghats', 'The Ministry of Railways has shared a breathtaking video of a panoramic view of an express train traversing through the landscape of Dara Ghats in Rajasthan.\n\nI...', '\"The 41-second video opens with a vast landscape surrounded by green all around. An express train is seen crossing the area amid the green meadows\"', 'Finance', 'https://www.livemint.com/news/india/watch-train-crossing-through-mesmerizing-view-of-rajasthan-s-dara-ghats-11659282417702.html', 'https://images.livemint.com/img/2022/07/31/600x338/Indian-railway_1659287062506_1659287062720_1659287062720.jpg', '2022-07-31 22:05:38', '2022-07-31 22:05:38'),
(330, 'auto', 'a27838bb-9a7f-4fdd-8d37-ea400ad6fa8d', 'Admin', 'Understanding the evolution of the metaverse for business', 'Were you unable to attend Transform 2022? Check out all of the summit sessions in our on-demand library now! Watch here.\n\nThere’s been so much discussion abou...', '\"Organizations may use the metaverse to optimize business operations and enrich employee collaboration and training experiences.\"', 'Finance', 'https://venturebeat.com/2022/07/31/understanding-the-evolution-of-the-metaverse-for-business/', 'https://venturebeat.com/wp-content/uploads/2021/09/virtual_reality.jpg?w=1200&strip=all', '2022-07-31 22:05:38', '2022-07-31 22:05:38'),
(331, 'auto', '51a87005-35e3-41b1-a837-e8d9916fd278', 'Admin', 'The Weir Group PLC (WEIGF) CEO Jonathan Stanton on 2022 Interim Results - Earnings Call Transcript', 'The Weir Group PLC (OTCPK:WEIGF) 2022 Interim Results Earnings Conference Call July 28, 2022 3:00 AM ET\n\nCompany Participants\n\nJohn Heasley - Chief Financial Of...', '\"The Weir Group PLC (OTCPK:WEIGF) 2022 Interim Results Earnings Conference Call July 28, 2022 03:00 ET Company Participants John Heasley - Chief Financial Officer Jonathan Stanton - Chief...\"', 'Finance', 'https://seekingalpha.com/article/4528118-weir-group-plc-weigf-ceo-jonathan-stanton-on-2022-interim-results-earnings-call-transcript', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-31 22:05:38', '2022-07-31 22:05:38'),
(332, 'auto', '8e01a813-0ea1-45c0-9110-db44f91185be', 'Admin', 'The pandemic drove Americans out of cities and into the exurbs. A recession could push some of them right back.', 'During the pandemic, many Americans left cities for exurbs, or more rural areas.\n\nBut higher wages and alternatives to gas-guzzling cars are making cities look ...', '\"It could be time to move again as wages in cities rise faster and it costs more for rural residents to fill the gas tank.\"', 'Finance', 'https://www.businessinsider.com/recession-could-push-rural-and-exurban-americans-back-to-cities-2022-7', 'https://i.insider.com/620ec6ce462ff20019c594a4?width=1200&format=jpeg', '2022-07-31 22:05:38', '2022-07-31 22:05:38'),
(333, 'auto', '56085f64-9616-45aa-b15b-d34cdee1d214', 'Admin', 'E.T And Jaws To Be Released In IMAX And 3D For The First Time', 'In news you might have missed, to celebrate the 40th anniversary of E.T. The Extra-Terrestrial, and, apparently, the 47th anniversary of Jaws, Universal Picture...', '\"The Extra-Terrestrial, and, apparently, the 47th anniversary of Jaws, Universal Pictures and Amblin Entertainment has announced that two Steven Spielberg classics will soon be released into cinemas in the IMAX format for the very first time.\"', 'Finance', 'https://www.forbes.com/sites/bennyhareven/2022/07/31/et-and-jaws-to-be-released-in-imax-and-3d-for-the-first-time/', 'https://imageio.forbes.com/specials-images/imageserve/62e6c44208f8b20f079932d8/0x0.jpg?format=jpg&width=1200', '2022-07-31 22:25:10', '2022-07-31 22:25:10'),
(334, 'auto', 'de69e0a8-c22c-4b26-8d58-6c732c14bb03', 'Admin', '3 things that need to happen for Web3 to (really) take off', 'Were you unable to attend Transform 2022? Check out all of the summit sessions in our on-demand library now! Watch here.\n\nWeb3 is the next generation of the int...', '\"Although investor and user interest in Web3 is increasing, several factors need to be addressed to accelerate the ongoing transition.\"', 'Finance', 'https://venturebeat.com/2022/07/31/3-things-that-need-to-happen-for-web3-to-really-take-off/', 'https://venturebeat.com/wp-content/uploads/2022/06/GettyImages-1398300079-BlackSalmon.jpg?w=1200&strip=all', '2022-07-31 22:25:10', '2022-07-31 22:25:10'),
(335, 'auto', 'a0b6bd34-bcae-4b95-8aba-6df04251f95b', 'Admin', 'Shekel staged strong comeback in July', 'After weakening sharply in the first half of 2022, the shekel staged a strong comeback in July, outperforming all the world\'s other currencies against both the ...', '\"The shekel outperformed all other currencies against the dollar in July and is at its strongest against the euro since October 2000. \\\"Globes\\\" examines why.\"', 'Finance', 'https://en.globes.co.il/en/article-shekel-staged-strong-comeback-in-july-1001419985', 'https://res.cloudinary.com/globes/image/upload/t_desktop_article_content_header_800%2A392/v1636298956/direct/shutterstock_2050002542_qtgd1t.jpg', '2022-07-31 22:25:10', '2022-07-31 22:25:10'),
(336, 'auto', '89273915-8a6e-4b9e-b0f7-8caef7d175e5', 'Admin', 'What the government should do to rein in soaring power prices as some bills go up 18 per cent', 'Three major announcements in as many days last week about the future of our economy should have provided the catalyst and a clear pathway for some urgently need...', '\"Having promised to curb escalating power costs at the recent election, the only realistic option for the government\\u00a0\\u2014 if it wants to dent inflation\\u00a0\\u2014 is to take decisive action on east coast gas exports, writes business editor Ian Verrender.\"', 'Finance', 'https://www.abc.net.au/news/2022-08-01/what-the-government-should-do-to-rein-in-your-soaring-power-bill/101287010', 'https://live-production.wcms.abc-cdn.net.au/153702d0646fc07ba86a585b54953c11?impolicy=wcms_crop_resize&cropH=2813&cropW=5000&xPos=0&yPos=260&width=862&height=485', '2022-07-31 22:40:43', '2022-07-31 22:40:43'),
(337, 'auto', '4a8f8e3d-53da-4afd-b166-768bbee9f635', 'Admin', 'My Multibagger Stocks', '', '\"\"', 'Finance', 'http://www.maheshkaushik.com/feeds/6296078901750610748/comments/default', '', '2022-07-31 22:40:43', '2022-07-31 22:40:43'),
(338, 'auto', 'ee116d5c-d6e3-4cb5-80fd-635fc4bcf9f3', 'Admin', '3 Consumer Defensive Stocks for the Value Investor', 'If you want to make your portfolio more resilient to recessions, the following defensive stocks may be suitable options. These businesses have historically cont...', '\"GuruFocus Article or News written by Alberto Abaterusso and the topic is about: These businesses could enhance the resilience of your portfolio\"', 'Finance', 'https://www.gurufocus.com/news/1839094/3-consumer-defensive-stocks-for-the-value-investor', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-31 22:40:43', '2022-07-31 22:40:43'),
(339, 'auto', '57eb78be-ad2b-452d-ad2e-cfa4d38cf1ab', 'Admin', 'Companhia Brasileira de Distribuição (CBD) CEO Marcelo Pimentel on Q2 2022 Results - Earnings Call Transcript', 'Companhia Brasileira de Distribuicao (CBD 0.33%) Q2 2022 Earnings Call July 28, 2022 9:00 AM ET\n\nCompany Participants\n\nGuillaume Gras - Chief Financial Officer ...', '\"Companhia Brasileira de Distribuicao (CBD 0.33%) Q2 2022 Earnings Call Jul 28, 2022, 9:00 AM ET Company Participants Guillaume Gras - Chief Financial Officer & Investor Relations...\"', 'Finance', 'https://seekingalpha.com/article/4528123-companhia-brasileira-de-distribuicao-cbd-ceo-marcelo-pimentel-on-q2-2022-results-earnings', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-07-31 23:05:29', '2022-07-31 23:05:29'),
(340, 'auto', '7ec45ff1-7b4e-4b32-9937-7f082b9b5f50', 'Admin', 'Biden, still rebounding, remains COVID positive Sunday, extends isolation', 'President Joe Biden tested positive for COVID again on Sunday—this after testing positive Saturday in what the White House called a “rebound” case of the ...', '\"A White House physician wasn\'t surprised by the president\'s Sunday positive, which follows his Saturday rebound positive. COVID rebounds happen, scientists say\\u2014and not just among those who take Paxlovid.\"', 'Finance', 'https://fortune.com/2022/07/31/biden-remains-covid-positive-sunday-extends-isolation/', 'https://content.fortune.com/wp-content/uploads/2022/07/GettyImages-1242035176.jpg?resize=1200,600', '2022-07-31 23:05:29', '2022-07-31 23:05:29'),
(341, 'auto', '9363e888-0efa-4f53-9b24-edd3650583fd', 'Admin', 'Heat, wind threaten to whip up growing Western wildfires', 'Major wildfires in California and Montana grew substantially as firefighters protected remote communities on Sunday as hot, windy weather across the tinder-dry ...', '\"California Gov. Gavin Newsom declared a state of emergency Saturday as the McKinney Fire intensified.\"', 'Finance', 'https://www.marketwatch.com/story/heat-wind-threaten-to-whip-up-growing-western-wildfires-01659289719', 'https://images.mktw.net/im-594515/social', '2022-07-31 23:05:29', '2022-07-31 23:05:29');
INSERT INTO `blogs` (`id`, `type`, `uuid`, `author`, `title`, `snippet`, `detail`, `category`, `slug`, `img`, `created_at`, `updated_at`) VALUES
(342, 'auto', 'bc143fd6-cb99-4712-901e-1ece81adeae0', 'Admin', 'Mark Ryan exits embattled journalism institute', 'The head of Judith Neilson’s embattled journalism institute has officially left the organisation after months of negotiations over an exit package.\n\nMark Ryan...', '\"The head of Judith Neilson\\u2019s journalism institute has left the organisation after months of negotiations over an exit package.\"', 'Finance', 'https://www.smh.com.au/business/companies/mark-ryan-exits-embattled-journalism-institute-20220729-p5b5s0.html?ref=rss&utm_medium=rss&utm_source=rss_business', 'https://static.ffx.io/images/$zoom_1.0347%2C$multiply_0.7554%2C$ratio_1.777778%2C$width_1059%2C$x_0%2C$y_0/t_crop_custom/q_86%2Cf_auto/t_smh_no_label_no_age_social_wm/7579d807a7219437b72767e9fbf06d49c649f383', '2022-07-31 23:20:22', '2022-07-31 23:20:22'),
(343, 'auto', 'c3165cb4-ab19-48f3-a551-c67a27d3f4e9', 'Admin', '‘It will be really positive’: ABC news boss to work in Parramatta when staff relocate', 'ABC news boss Justin Stevens will split his time between the national broadcaster’s inner-city headquarters and its newly formed Parramatta office when about ...', '\"ABC news boss Justin Stevens will divide his time between Ultimo and Parramatta when staff relocate in 2024.\"', 'Finance', 'https://www.smh.com.au/business/companies/it-will-be-really-positive-abc-news-boss-to-work-in-parramatta-when-staff-relocate-20220729-p5b5sv.html?ref=rss&utm_medium=rss&utm_source=rss_business', 'https://static.ffx.io/images/$zoom_0.1985%2C$multiply_0.7554%2C$ratio_1.777778%2C$width_1059%2C$x_0%2C$y_0/t_crop_custom/q_86%2Cf_auto/t_smh_no_label_no_age_social_wm/0a6226d0ca2bc202655ca70b73a71209e9378fa6', '2022-07-31 23:20:22', '2022-07-31 23:20:22'),
(344, 'auto', '100c666d-0c8a-48f0-99f5-ff397e725ef9', 'Admin', 'Bill Russell, NBA great and Celtics legend, dies at 88', 'Bill Russell, the NBA great who anchored a Boston Celtics dynasty that won 11 championships in 13 years — the last two as the first Black head coach in any ma...', '\"NBA Commissioner Adam Silver said in a statement that Russell was \\u201cthe greatest champion in all of team sports.\\\"\"', 'Finance', 'https://www.marketwatch.com/story/bill-russell-nba-great-and-celtics-legend-dies-at-88-01659291237', 'https://images.mktw.net/im-594519/social', '2022-07-31 23:20:22', '2022-07-31 23:20:22'),
(345, 'auto', 'aa337eff-72e9-466b-a8d4-cb3393d842af', 'Admin', 'Bill Russell—11-Time NBA Champion And First Black Head Coach—Dies At 88', 'Topline\n\nBill Russell, who won a record 11 NBA championship titles during his 13-year career with the Boston Celtics and later became the league’s first Black...', '\"Russell spent the entirety of his 13-year playing career with the Boston Celtics.\"', 'Finance', 'https://www.forbes.com/sites/carlieporterfield/2022/07/31/bill-russell-11-time-nba-champion-and-first-black-head-coach-dies-at-88/', 'https://imageio.forbes.com/specials-images/imageserve/62e6d02f94461a2db69932d8/0x0.jpg?format=jpg&crop=2361,1328,x0,y175,safe&width=1200', '2022-07-31 23:35:32', '2022-07-31 23:35:32'),
(346, 'auto', 'f86a1fb4-3f59-41f0-96c9-213574fd9594', 'Admin', 'Bureau Of Prisons Director Carvajal Leaves Behind A Tainted Legacy Void Of Accountability', 'BOP Director Michael Carvajal prepares to testify before U.S. Senate Subcommittee on investigations. Walt Pavlo\n\nThere are few things that can unite Republicans...', '\"Senator Jon Ossoff (Georgia), Chair of Permanent Subcommittee on Investigations, subpoenaed Federal Bureau of Prisons (BOP) Director Michael Carvajal to testify at hearing today which focused on corruption and mismanagement at USP Atlanta.  It was a poor showing for Carvajal and the BOP.\"', 'Finance', 'https://www.forbes.com/sites/walterpavlo/2022/07/31/bureau-of-prisons-director-carvajal-leaves-behind-a-tainted-legacy-void-of-accountability/', 'https://imageio.forbes.com/specials-images/imageserve/62e6ca27f8e4f0e5ea6d6fdc/0x0.jpg?format=jpg&width=1200', '2022-07-31 23:35:32', '2022-07-31 23:35:32'),
(347, 'auto', '451d23aa-8397-4e99-b1de-65dce709065a', 'Admin', 'Former test coach slams All Blacks coach Ian Foster\'s critics but savages NZ rugby', 'Former international coach Matt Williams has slammed the “shameful vilification” of All Blacks coach Ian Foster but has claimed NZ Rugby is “boxed into a ...', '\"A coach turned columnist has sympathy for beleaguered All Blacks coach but absolutely none for \'self-serving\' NZ Rugby.\"', 'Finance', 'https://www.stuff.co.nz/sport/rugby/all-blacks/129438083/former-test-coach-slams-all-blacks-coach-ian-fosters-critics-but-savages-nz-rugby', 'https://resources.stuff.co.nz/content/dam/images/4/y/z/z/c/q/image.related.StuffLandscapeSixteenByNine.1420x800.252b2b.png/1659296187869.jpg', '2022-07-31 23:55:42', '2022-07-31 23:55:42'),
(348, 'auto', '264b81da-c5d4-418f-a330-dd4862d24f62', 'Admin', 'Will Alibaba Really Be Delisted in the U.S.?', 'Chinese e-commerce giant Alibaba Holding Co. ( BABA, Financial) has been at the center of the Chinese big tech regulatory crackdown. I have covered this topic e...', '\"GuruFocus Article or News written by Ben Alaimo and the topic is about: Alibaba plummets by 6% on new delisting fears\"', 'Finance', 'https://www.gurufocus.com/news/1839143/will-alibaba-really-be-delisted-in-the-us', 'https://static.gurufocus.com/images/logo_global.png', '2022-07-31 23:55:42', '2022-07-31 23:55:42'),
(349, 'auto', '96b8fb3e-b5a3-45ea-9131-f285fc8e3f3a', 'Admin', 'Manchin Talks Up Surprise Budget Deal as Democrats Aim to Pass It This Week', 'U.S. Sen. Joe Manchin (D., W.Va.) made the rounds of the Sunday news shows this morning to talk up Democrats’ surprise deal on funding climate change projects...', '\"Sen. Joe Manchin said Sen. Kyrsten Sinema, whose support is pivotal to passing the Democrats\' bill, helped craft \\u201cquite a bit\\u201d of its proposed ideas.\"', 'Finance', 'https://www.marketwatch.com/articles/manchin-talks-up-surprise-budget-deal-as-democrats-aim-to-pass-it-this-week-51659293370', 'https://images.barrons.com/im-584458/social', '2022-07-31 23:55:42', '2022-07-31 23:55:42'),
(350, 'auto', '80c78a92-beba-4bd8-b1fe-dd4921ecc394', 'Admin', 'Escrow Watch: One of the top IPOs of FY22 is about release a chunk of shares', 'share\n\n\n\n\n\n\n\nLink copied to\n\nclipboard\n\nCopper producer Austral releases 7.5m shares and 10m unlisted options (40c cent exercise price and 3 November 2024 expir...', '\"AR1, the newest copper producer on the ASX at its \\u2018Mt Kelly\\u2019 project in northwest Queensland, is up 105% since listing last year.\"', 'Finance', 'https://stockhead.com.au/escrow-watch/escrow-watch-one-of-the-top-ipos-of-fy22-is-about-release-a-chunk-of-shares/', 'https://stockhead.com.au/wp-content/uploads/2022/07/white-dove-release-free-fly-hand.jpg', '2022-08-01 00:10:41', '2022-08-01 00:10:41'),
(351, 'auto', 'b0180826-0a0e-4178-a73b-f7a5a26941b8', 'Admin', 'AMD, PayPal, Starbucks, Uber, Paramount, and Other Stocks for Investors to Watch This Week', 'It’s the peak stretch of second-quarter earnings season, with roughly 150 S&P 500 firms scheduled to report this week. The highlights on the economic calendar...', '\"Second-quarter earnings season continues with dozens of companies reporting. Plus, July jobs report, manufacturing and services PMIs, and a\\u00a0Bank of England...\"', 'Finance', 'https://www.marketwatch.com/articles/amd-paypal-starbucks-uber-paramount-and-other-stocks-for-investors-to-watch-this-week-51659294024', 'https://images.barrons.com/im-571456/social', '2022-08-01 00:10:41', '2022-08-01 00:10:41'),
(352, 'auto', '8be57884-2faa-4530-9fa3-a3d243f6a533', 'Admin', 'How Much More Pain Can The Stock Market Bears Take?', 'Bull and Bear Symbol - Stock Market Concept. getty\n\nThere was no doubt at the start of last week that both traders and investors were worried about the stock ma...', '\"The market bears, especially those short, big tech stocks like MSFT, AMZN and AAPL had a rough week. After the prolonged decline there are more short positions likely to be squeezed says the Viper Report\\u2019s Tom Aspray but how much more can the bears take?\"', 'Finance', 'https://www.forbes.com/sites/tomaspray/2022/07/31/how-much-more-pain-can-the-stock-market-bears-take/', 'https://imageio.forbes.com/specials-images/imageserve/62e6dd4db0d9f9b91e9932d6/0x0.jpg?format=jpg&width=1200', '2022-08-01 00:25:42', '2022-08-01 00:25:42'),
(353, 'auto', 'cff23b4d-6a85-4525-a82b-0545e8bd46f1', 'Admin', 'How Novartis Is Finding The Path To Be A Digital Winner', 'Vas Narasimhan, CEO of Novartis AG © 2020 Bloomberg Finance LP\n\nIt’s a familiar story. A big, financially successful corporation sees that firms which have m...', '\"Digital Transformation Means Reinventing Every Aspect Of The Firm\"', 'Finance', 'https://www.forbes.com/sites/stevedenning/2022/07/31/how-novartis-is-finding-the-path-to-be-a-digital-winner/', 'https://imageio.forbes.com/specials-images/imageserve/62e6ca49d7cce8c120e75384/0x0.jpg?format=jpg&width=1200', '2022-08-01 00:25:42', '2022-08-01 00:25:42'),
(354, 'auto', 'c6b980a7-d7b9-4b3e-b4c8-9d4fba825644', 'Admin', 'Cryptoeconomics: Technological Challenges', 'Cryptoeconomics: Technological Challenges\n\nA famous technological issue of the current state of blockchain technology is the so-called blockchain trilemma, firs...', '\"A famous technological issue of the current state of blockchain technology is the so-called blockchain trilemma, firstly introduced by Vitalik Buterin. The trilemma states that creating a scalable\\u2026\"', 'Finance', 'https://flo.berlin/cryptoeconomics-technological-challenges-946e462b4b2a', 'https://miro.medium.com/max/1000/1*QGkxAUkWvlcnxwRXG4F4ew.png', '2022-08-01 00:25:42', '2022-08-01 00:25:42'),
(355, 'auto', 'ca5f91d2-f31c-41c7-99e5-30d07aeb6482', 'Admin', 'AIs That Create: The Good, The Bad And The Ugly', 'Clock says time to invent Canva\n\nA very important part of recent AI technology development is the \" creator \" class of AIs. Generally rooted in an algorithmic t...', '\"Implications of Creator AIs - the AI technologies that can create everything from art to music to weapons.\"', 'Finance', 'https://www.forbes.com/sites/nishatalagala/2022/07/31/ais-that-create-the-good-the-bad-and-the-ugly/', 'https://imageio.forbes.com/specials-images/imageserve/62e6e27df03c81305ab0c774/0x0.jpg?format=jpg&width=1200', '2022-08-01 00:45:31', '2022-08-01 00:45:31'),
(356, 'auto', '51425a64-920c-4f09-ab4a-4226151b9ed1', 'Admin', 'China Gold International Resources Corp. Ltd. (JINFF) CEO Sophie Zurquiyah on Q2 2022 Results - Earnings Call Transcript', 'Call Start: 12:30 January 1, 0000 1:23 PM ET\n\nChina Gold International Resources Corp. Ltd. (OTCPK:JINFF)\n\nQ2 2022 Earnings Conference Call\n\nJuly 28, 2022 12:30...', '\"Call Start: 12:30 Call End: 13:23 China Gold International Resources Corp. Ltd.\"', 'Finance', 'https://seekingalpha.com/article/4528125-china-gold-international-resources-corp-ltd-jinff-ceo-sophie-zurquiyah-on-q2-2022-results', 'https://static.seekingalpha.com/assets/og_image_1200-29b2bfe1a595477db6826bd2126c63ac2091efb7ec76347a8e7f81ba17e3de6c.png', '2022-08-01 00:45:31', '2022-08-01 00:45:31'),
(357, 'auto', '006e9be1-b266-4fac-bb04-5f9894e995be', 'Admin', 'DAMEGANG', '', '\"Larger-than-life characters get into a plot even bigger than themselves. | Check out \'DAMEGANG\' on Indiegogo.\"', 'Finance', 'https://www.indiegogo.com/projects/damegang--2#activity', 'https://c1.iggcdn.com/indiegogo-media-prod-cld/image/upload/c_fill%2Cf_auto%2Ch_200%2Cw_200/v1627168411/h0ng3yyudiknowz3ulnx.jpg', '2022-08-01 00:45:31', '2022-08-01 00:45:31'),
(358, 'auto', 'a8b2ca94-c223-4293-89aa-22a54a67c407', 'Admin', 'Crain\'s Extra: Carried away', 'Carried away\n\nMoby Dick | Bjorn/Flickr\n\nMoney managers have a lot in common with Captain Ahab. Yes, the Wall Streeters are better dressed and seldom wear prosth...', '\"Money managers have a lot in common with Captain Ahab.\\u00a0Plus: A look at the week ahead\"', 'Finance', 'https://www.crainsnewyork.com/crains-extra/crains-extra-wall-streeters-have-lot-common-captain-ahab', 'https://www.crainsnewyork.com/s3/files/styles/1200x630/s3/5785039253_a110bc6684_k.jpg', '2022-08-01 01:00:03', '2022-08-01 01:00:03'),
(359, 'auto', 'c846a143-ef2a-4f91-bbf5-0188ddf7ce2d', 'Admin', '\'Worst ever talent crisis\' in media roles is stopping growth, WFA survey reveals', 'More than three-quarters of advertising professionals worldwide said they lacked media talent within their organisation, which is creating a “major blocker”...', '\"Staff shortages were reported by 77% of respondents in a major survey by WFA and MediaSense.\"', 'Finance', 'https://www.campaignasia.com:443/article/worst-ever-talent-crisis-in-media-roles-is-stopping-growth-wfa-survey-reveals/480697', 'https://cdn.i.haymarketmedia.asia/?n=campaign-asia%2fcontent%2fUntitled+design+(30).jpg&h=630&w=1200&q=75&v=20170226&c=1', '2022-08-01 01:00:03', '2022-08-01 01:00:03'),
(360, 'auto', '9f87882e-6568-40e6-9d4c-5e51e415372b', 'Admin', 'Treasury yields surge after blockbuster U.S. July jobs figures', 'Treasury yields jumped sharply Friday after a much stronger than expected U.S. July jobs report stoked expectations the Federal Reserve will continue aggressive...', '\"Treasury yields jump Friday after a much stronger than expected U.S. July jobs report.\"', 'Finance', 'https://www.marketwatch.com/story/treasury-yields-edge-up-ahead-of-u-s-july-jobs-figures-11659699830', 'https://mw3.wsj.net/mw5/content/logos/mw_logo_social.png', '2022-09-05 09:32:57', '2022-09-05 09:32:57'),
(361, 'auto', 'f77e758a-24fd-4431-867b-eee549106901', 'Admin', 'Western Digital Tumbles as Guidance Comes in Well Below Expectations', 'Western Digital\'s guidance missed analysts\' forecasts. Dreamstime\n\nWestern Digital stock tumbled in premarket trading despite beating fourth-quarter earnings es...', '\"The company is forecasting first-quarter adjusted earnings per share to range between 35 cents and 65 cents, well below consensus estimates for $1.88,\"', 'Finance', 'https://www.marketwatch.com/articles/western-digital-wdc-stock-earnings-51659701576', 'https://images.barrons.com/im-597851/social', '2022-09-05 09:32:57', '2022-09-05 09:32:57'),
(362, 'auto', '8183f8a1-b5b6-4c5f-8d07-915b9cfb12bf', 'Admin', 'A Crushing Defeat in November Would Help Democrats', 'Comment Gift Article Share\n\nIf you dread the possibility of a second Trump administration, you should ask whether the Democrats’ improving prospects in the mi...', '\"The party needs to ask itself some hard questions, and a drubbing would force the conversation.\"', 'Finance', 'https://www.washingtonpost.com/business/energy/a-crushing-defeat-in-november-would-helpdemocrats/2022/08/05/546147ae-14bf-11ed-8482-06c1c84ce8f2_story.html', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/KO76DNQUX4I63BECA3A4QTHI6I.jpg&w=1440', '2022-09-05 09:32:58', '2022-09-05 09:32:58'),
(363, 'auto', 'd94b95cd-f708-4a9e-9db7-d57137edcd72', 'Admin', 'Millennials Should Use Those Roth IRAs to Invest for College', 'Comment Gift Article Share\n\nIf there’s one thing the impending back-to-school season makes clear, it’s that the cost of higher education in the US is nerve-...', '\"The retirement accounts can be leveraged to pursue other goals \\u2014\\u00a0like saving for your kid\\u2019s\\u00a0schooling \\u2014 in a tax-advantaged way.\"', 'Finance', 'https://www.washingtonpost.com/business/millennials-should-use-those-roth-iras-to-invest-forcollege/2022/08/05/f35aa8a4-14b6-11ed-8482-06c1c84ce8f2_story.html', 'https://www.washingtonpost.com/wp-apps/imrs.php?src=https://arc-anglerfish-washpost-prod-washpost.s3.amazonaws.com/public/6IXJLHQUWYI63BECA3A4QTHI6I.jpg&w=1440', '2022-09-05 09:32:58', '2022-09-05 09:32:58'),
(364, 'auto', 'cc9993f3-230b-4d5f-9363-4dbce3ab3fa1', 'Admin', 'U.S. economy blows past expectations by adding 528,000 jobs in July', 'America\'s hiring boom continued last month as employers added a surprising 528,000 jobs despite raging inflation and rising anxiety about a recession.\n\nJuly\'s h...', '\"America\'s hiring boom continued last month as employers added a surprising 528,000 jobs despite raging inflation and rising anxiety about a recession.\"', 'Finance', 'https://www.cbc.ca/news/business/us-jobs-july-1.6542284?cmp=rss', 'https://i.cbc.ca/1.6484180.1654863998!/fileImage/httpImage/image.JPG_gen/derivatives/16x9_620/jobs-hiring-sign.JPG', '2022-09-05 09:32:58', '2022-09-05 09:32:58'),
(365, 'auto', '3fd44afb-d5f2-4cf8-b0e8-256ab27756db', 'Admin', 'US job growth beats expectations', 'US employers hired far more workers than expected in July, with the unemployment rate falling to a pre-pandemic low of 3.5%, providing the strongest evidence ye...', '\"US employers hired far more workers than expected in July, with the unemployment rate falling to a pre-pandemic low of 3.5%, providing the strongest evidence yet that the economy was not in recession.\"', 'Finance', 'https://www.rte.ie/news/business/2022/0805/1314156-us-job-growth-beats-expectations/', 'https://img.rasset.ie/001c33a8-1600.jpg', '2022-09-05 09:32:58', '2022-09-05 09:32:58'),
(366, 'auto', 'cceab38a-f781-4a1a-b879-ee98a6125d7c', 'Admin', 'Big Tech Has a Patent Violation Problem', 'In the U.S., large tech companies regularly infringe on smaller companies’ intellectual property (IP). Often, this has led to large court settlements that pun...', '\"In the U.S., large tech companies regularly infringe on smaller companies\\u2019 intellectual property (IP). Often, this has led to large court settlements that punish larger companies. But, this enforcement mechanism has been weakened. In 2011, Congress created a tribunal within the U.S. Patent and Trademark Office called the Patent Trial and Appeal Board (PTAB), which has created a new avenue for major tech companies to challenge IP protections. New legislation would further enable this attack on IP protections, and ultimately harm the U.S. economy as a whole.\"', 'Finance', 'https://hbr.org/2022/08/big-tech-has-a-patent-violation-problem', 'https://hbr.org/resources/images/article_assets/2022/08/Aug22_05_951634086.jpg', '2022-09-05 09:32:58', '2022-09-05 09:32:58'),
(367, 'auto', '26d36b7e-150a-4fb3-bce7-dca7ca362e86', 'Admin', 'The rising curiosity behind open relationships', 'Dedeker Winston has been in non-monogamous relationships for more than a decade, yet she has never seen such keen interest in open relationships.\n\nThe subject h...', '\"Taking on additional sexual partners while in a committed relationship has long been taboo. And while it\\u2019s not exactly mainstream now, there\\u2019s still rising interest in being open.\"', 'Finance', 'https://www.bbc.com/worklife/article/20220725-the-rising-curiosity-behind-open-relationships?ocid=global_worklife_rss', 'https://ychef.files.bbci.co.uk/live/624x351/p0cnxxjm.jpg', '2022-09-05 09:32:58', '2022-09-05 09:32:58'),
(368, 'auto', 'b39adb76-b36f-4988-894f-7dcf7c1642a8', 'Admin', 'Anant National University Inaugurates Three New Labs', 'Anant National University inaugurated its three new labs, one each for Product Design, Photography and Moving Image. The labs are equipped with machines, equipm...', '\"All three laboratories - Product Design, Photography and Moving Image - are equipped with facilities to help students visualise and see their ideas come to life, , Anant National University, inauguration, New Labs, Product Design Lab, Photography Lab, Moving Image Lab\"', 'Finance', 'https://www.businessworld.in/article/Anant-National-University-Inaugurates-Three-New-Labs/05-08-2022-440688/', 'https://static.businessworld.in/article/article_extra_large_image/1659686091_Mb9vHR_Screenshot_20220804_124408_WhatsApp.jpg', '2022-09-05 09:32:59', '2022-09-05 09:32:59'),
(369, 'auto', '59fce8ae-c0c6-4bfe-ae2d-0f7bfb4ea65b', 'Admin', 'Americans might agree on these changes to Social Security', 'Americans might agree on these changes to Social Security\n\nSocial Security may need adjustments, as the program in its current form will eventually be unable to...', '\"Social Security may need adjustments, as the program in its current form will eventually be unable to pay full benefits. There are a number of changes that many Americans have indicated are acceptable, including raising the payroll tax cap and reducing benefits for high earners, according to a survey by the University of Maryland\'s Program for Public Consultation.\"', 'Finance', 'https://www.smartbrief.com/sharedSummary/index.jsp?briefId=668B730F-E8CE-4A21-BAA9-AC254169B996&issueId=EF60AA35-F21C-4B97-AE07-115A44FE179F&copyId=EC8FA55E-8FDE-4429-BA3F-8896B776F2C1', 'https://alquemie.smartbrief.com/contentrepo/website/cpa/0000-db36/logo.gif', '2022-09-05 09:32:59', '2022-09-05 09:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `contact_form_submissions`
--

CREATE TABLE `contact_form_submissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_form_submissions`
--

INSERT INTO `contact_form_submissions` (`id`, `name`, `email`, `subject`, `message`, `created_at`, `updated_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `converted_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '62b9d28e4d687',
  `payment_screenshot` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `deposits`
--

INSERT INTO `deposits` (`id`, `user_id`, `amount`, `converted_amount`, `currency`, `charge`, `method`, `status`, `txn_id`, `payment_screenshot`, `additional_info`, `created_at`, `updated_at`) VALUES
(2, 4, '50', '0.0025954450596611', 'btc', '2.5', 'Bitcoin', 'pending', '62b9d28e4d6871', '0FQB8LgPdvCNYpOJgrrIkMbLif34zyyx9anriKGq.png', 'I have sent the payment', '2022-06-25 08:24:24', '2022-06-25 08:24:24'),
(4, 4, '1000', '901.28762474966', 'gbp', '50', 'Perfect Money', 'pending', '62b9d28e4d6873', 'JKERY6GPfqQ3u7fa7MAOiUn97PmZWYURckbJBbmo.jpg', 'I have paid', '2022-06-25 08:48:54', '2022-06-25 08:48:54'),
(6, 4, '500', '0.025954450596611', 'btc', '25', 'Bitcoin', 'approved', '62b9d28e4d6875', 'jzpFWfzA4Wn820kfjVyMy2nphANhSUG3qXXFAymp.png', 'Your deposit has been approved', '2022-06-25 11:05:07', '2022-06-26 16:06:27'),
(8, 4, '599', '0.59264963122065', 'eth', '44.925', 'Ethereum', 'rejected', '62b9d28e4d6876', 'HBwzRxzjnSo33QpjQQXmdu0xfzbt2PVKj1hSRZip.jpg', 'Please attach proper payment reciept', '2022-06-26 08:45:50', '2022-06-26 17:43:24'),
(10, 4, '600', '0.031145340715933', 'btc', '30', 'Bitcoin', 'pending', '62b9d28e4d6878', 'ikRIcgYKJ4Ib3zzhNdJDDYEvNp0nLqBz4U8sTeQw.jpg', 'sent', '2022-06-26 08:52:59', '2022-06-26 08:52:59'),
(11, 23, '500', '473.42153602534', 'gbp', '50', 'Bank Deposit/Transfer', 'pending', '62b9d28e4d6879', '0QIvnM2GbISZq5r8ZRKPgiB32psO6msvqK9AxKnw.png', 'I have sent the payment', '2022-06-26 18:53:45', '2022-06-26 18:53:45'),
(12, 23, '500', '554.23594615994', 'usd', '25', 'PayPal', 'cancelled', '62b9d28e4d6870', NULL, NULL, '2022-06-27 08:42:30', '2022-06-27 08:42:30'),
(13, 23, '750.44', '750.44', 'usd', '33.85', 'PayPal', 'approved', '62b9d28e4d68711', NULL, 'Payment ID: PAYID-MK4ZXUI6AB53155L8667674T', '2022-06-27 12:01:45', '2022-06-27 12:01:45'),
(14, 23, '665.08', '665.08', 'usd', '30', 'PayPal', 'approved', '62b9d28e4d68722', NULL, 'Payment ID: PAYID-MK425WQ956452540S775002E', '2022-06-27 12:22:13', '2022-06-27 12:22:13'),
(15, 23, '665.08', '665.08', 'usd', '30', 'PayPal', 'approved', '62b9d28e4d68733', NULL, 'Payment ID: PAYID-MK43TRA6D5794298K176573B', '2022-06-27 13:08:54', '2022-06-27 13:08:54'),
(16, 23, '303', '139381.57276912', 'ngn', '15.15', 'Paystack', 'cancelled', '62b9d28e4d687', NULL, NULL, '2022-06-27 15:17:59', '2022-06-27 15:17:59'),
(17, 23, '2653309.9397105', '2653309.94', 'ngn', '288.4', 'Paystack', 'approved', 'Sy407JtemMQqEV2K4yIeRCcTU', NULL, 'Your Payment was successful. Here is your transaction Id: Sy407JtemMQqEV2K4yIeRCcTU', '2022-06-27 15:50:45', '2022-06-27 15:50:45'),
(18, 23, '500', '230002.6', 'ngn', '25', 'Paystack', 'approved', 'JLa8LPKQ4Hm2bepYcUzZ6JgRO', NULL, 'Your Payment was successful. Here is your transaction Id: JLa8LPKQ4Hm2bepYcUzZ6JgRO', '2022-06-27 15:56:12', '2022-06-27 15:56:12'),
(19, 23, '500', '230002.6', 'ngn', '25', 'Paystack', 'approved', 'Kv2e3v01j8l5y3WQ8zRBMfrKo', NULL, 'Your Payment was successful. Here is your transaction Id: Kv2e3v01j8l5y3WQ8zRBMfrKo', '2022-06-27 15:58:45', '2022-06-27 15:58:45'),
(20, 23, '600', '276003.11', 'ngn', '30', 'Paystack', 'approved', 'SAqYsx5T3CltYdEqM1vqMUj39', NULL, 'Your Payment was successful. Here is your transaction Id: SAqYsx5T3CltYdEqM1vqMUj39', '2022-06-27 16:03:46', '2022-06-27 16:03:46'),
(21, 23, '130', '59800.67', 'ngn', '6.5', 'Paystack', 'approved', 'GnKpD65xMhk7XJx1bvHhXvIuH', NULL, 'Your Payment was successful. Here is your transaction Id: GnKpD65xMhk7XJx1bvHhXvIuH', '2022-06-27 16:09:29', '2022-06-27 16:09:29'),
(22, 23, '504', '231842.62', 'ngn', '25.2', 'Paystack', 'approved', '1wAZ78Spkh6slUUir9PlYmzEQ', NULL, 'Your Payment was successful. Here is your transaction Id: 1wAZ78Spkh6slUUir9PlYmzEQ', '2022-06-27 17:12:20', '2022-06-27 17:12:20'),
(23, 23, '876', '971.02', 'usd', '43.8', 'PayPal', 'approved', 'PAYID-MK47GSY3VW677079A480243A', NULL, 'Payment ID: PAYID-MK47GSY3VW677079A480243A', '2022-06-27 17:14:06', '2022-06-27 17:14:06'),
(24, 23, '100', '110.85', 'usd', '5', 'Stripe', 'approved', '62ba2efce5e8c', NULL, 'Your Payment was successful. Here is your transaction Id: 62ba2efce5e8c', '2022-06-27 21:28:12', '2022-06-27 21:28:12'),
(25, 23, '500', '43370.35', 'INR', '25', 'RazorPay', 'approved', 'pay_JmrOnrxZPZVOmi', NULL, 'Your Payment was successful. Here is your transaction Id: pay_JmrOnrxZPZVOmi', '2022-06-28 08:10:52', '2022-06-28 08:10:52'),
(26, 23, '600', '282574.62', 'ngn', '45', 'Flutterwave', 'approved', '3525801', NULL, 'Your Payment was successful. Here is your transaction Id: 3525801', '2022-06-29 12:36:01', '2022-06-29 12:36:01'),
(27, 23, '100', '110.85', 'usd', '5', 'PayPal', 'approved', 'PAYID-MK6QGPA8AP01551WM313603S', NULL, 'Payment ID: PAYID-MK6QGPA8AP01551WM313603S', '2022-06-30 00:59:12', '2022-06-30 00:59:12'),
(28, 23, '100', '46000.52', 'ngn', '5', 'Paystack', 'approved', 'dLXwTwaya6v9zlo3ABMyrZsM3', NULL, 'Your Payment was successful. Here is your transaction Id: dLXwTwaya6v9zlo3ABMyrZsM3', '2022-06-30 01:05:33', '2022-06-30 01:05:33'),
(29, 23, '100', '110.85', 'usd', '5', 'Stripe', 'approved', '62bd0562965fd', NULL, 'Your Payment was successful. Here is your transaction Id: 62bd0562965fd', '2022-06-30 01:07:30', '2022-06-30 01:07:30'),
(30, 23, '100', '8674.07', 'INR', '5', 'RazorPay', 'approved', 'pay_JnXL1TxSojDc4H', NULL, 'Your Payment was successful. Here is your transaction Id: pay_JnXL1TxSojDc4H', '2022-06-30 01:12:30', '2022-06-30 01:12:30'),
(31, 23, '98', '102.9', 'EUR', '4.9', 'CoinGate', 'approved', '62bdaccfe4936', NULL, 'Your Payment was successful. Here is your transaction Id: 62bdaccfe4936', '2022-06-30 13:02:58', '2022-06-30 13:02:58'),
(32, 23, '56', '58.8', 'EUR', '2.8', 'CoinGate', 'approved', '62bdaef1717f7', NULL, 'Your Payment was successful. Here is your transaction Id: 62bdaef1717f7', '2022-06-30 13:11:36', '2022-06-30 13:11:36'),
(33, 23, '72', '75.6', 'eur', '3.6', 'CoinGate', 'cancelled', '62b9d28e4d687', NULL, NULL, '2022-06-30 13:18:18', '2022-06-30 13:18:18'),
(34, 23, '500', '554.23594615994', 'usd', '25', 'Coinbase', 'pending', '165666805062bebf92c917f', NULL, 'Your payment will be confirmed automatically after 3 confirmations in the blockchain', '2022-07-01 08:34:11', '2022-07-01 08:34:11'),
(35, 23, '500', '554.23594615994', 'usd', '25', 'Coinbase', 'pending', '8348f4f6-21d7-4864-ba7a-f3905ce520e0', NULL, 'Your payment will be confirmed automatically after 3 confirmations in the blockchain', '2022-07-01 08:38:38', '2022-07-01 08:38:38'),
(36, 23, '400', '443.38875692795', 'usd', '20', 'Coinbase', 'pending', '9ca60808-226e-49ed-b767-4c43b138b399', NULL, 'Your payment will be confirmed automatically after 3 confirmations in the blockchain', '2022-07-01 08:59:09', '2022-07-01 08:59:09'),
(37, 23, '400', '443.38875692795', 'usd', '20', 'Coinbase', 'pending', '8fd57dea-5fef-4db7-8d9b-4efd81177bac', NULL, 'Your payment will be confirmed automatically after 3 confirmations in the blockchain', '2022-07-01 08:59:32', '2022-07-01 08:59:32'),
(38, 23, '400', '443.38875692795', 'usd', '20', 'Coinbase', 'pending', 'c0a4b43f-1334-4741-a07a-eea265b0bf82', NULL, 'Your payment will be confirmed automatically after 3 confirmations in the blockchain', '2022-07-01 09:00:17', '2022-07-01 09:00:17'),
(39, 23, '4050', '4489.3111638955', 'usd', '202.5', 'Coinbase', 'pending', '59cdd2ba-b28c-496f-a6e6-cf1d8b4cb034', NULL, 'Your payment will be confirmed automatically after 3 confirmations in the blockchain', '2022-07-01 09:10:10', '2022-07-01 09:10:10'),
(40, 23, '350', '387.96516231196', 'usd', '17.5', 'Coinbase', 'pending', '21fba8ee-84f3-4675-a3c5-57bcce351986', NULL, 'Your payment will be confirmed automatically after 3 confirmations in the blockchain', '2022-07-01 17:40:11', '2022-07-01 17:40:11'),
(41, 23, '400', '443.38875692795', 'usd', '20', 'Coinbase', 'rejected', 'b1a4ac79-007f-44c9-b3c7-4120c0ada25d', NULL, 'invalid license key', '2022-07-01 18:22:05', '2022-07-01 19:35:21'),
(42, 23, '769', '852.41488519398', 'usd', '38.45', 'Coinbase', 'pending', 'ad9b2168-2a66-483e-8952-ed6c4e848915', NULL, 'Your payment will be confirmed automatically after 3 confirmations in the blockchain', '2022-07-01 19:09:50', '2022-07-01 19:09:50'),
(43, 23, '5768', '6393.665874901', 'usd', '288.4', 'Coinbase', 'rejected', 'ca5b297c-5527-4674-b538-78d6755a1bff', NULL, 'invalid license key', '2022-07-01 19:34:00', '2022-07-01 20:34:29'),
(44, 23, '500', '554.24', 'USD', '25', 'Authorize.Net', 'approved', '60195589839', NULL, 'Your Payment was successful. Here is your transaction Id: 60195589839', '2022-07-02 19:10:53', '2022-07-02 19:10:53'),
(45, 23, '200', '221.69', 'USD', '10', 'Authorize.Net', 'approved', '60195590142', NULL, 'Your Payment was successful. Here is your transaction Id: 60195590142', '2022-07-02 19:15:09', '2022-07-02 19:15:09'),
(46, 23, '50', '23000.26', 'NGN', '2.5', 'Monnify', 'pending', 'MNFY|05|20220703122137|000347', NULL, 'We could not confirm your payment, please contact support with the transaction id: MNFY|05|20220703122137|000347', '2022-07-03 10:58:22', '2022-07-03 10:58:22'),
(47, 23, '54', '24840.28', 'NGN', '2.7', 'Monnify', 'pending', 'MNFY|79|20220703131203|000354', NULL, 'We could not confirm your payment, please contact support with the transaction id: MNFY|79|20220703131203|000354', '2022-07-03 11:12:34', '2022-07-03 11:12:34'),
(49, 23, '898', '413084.66', 'NGN', '44.9', 'Monnify', 'approved', 'MNFY|79|20220703143253|000362', NULL, 'Your Payment was successful. Here is your transaction Id: MNFY|79|20220703143253|000362', '2022-07-03 12:56:42', '2022-07-03 12:56:42'),
(54, 23, '199', '91541.03', 'ngn', '9.95', 'Paystack', 'approved', '5QQOvb7zD2o6e96d24KPGWAfe', NULL, 'Your Payment was successful. Here is your transaction Id: 5QQOvb7zD2o6e96d24KPGWAfe', '2022-07-04 06:33:58', '2022-07-04 06:33:58'),
(55, 23, '122', '56120.63', 'ngn', '6.1', 'Paystack', 'approved', 'aNiQXc3yFNDZKIWa1A48ssJrG', NULL, 'Your Payment was successful. Here is your transaction Id: aNiQXc3yFNDZKIWa1A48ssJrG', '2022-07-04 06:36:33', '2022-07-04 06:36:33'),
(56, 23, '4565', '2099923.7', 'ngn', '228.25', 'Paystack', 'approved', 'IZuPnGhTzK0U3ED9kFTdkD0Xb', NULL, 'Your Payment was successful. Here is your transaction Id: IZuPnGhTzK0U3ED9kFTdkD0Xb', '2022-07-04 06:47:38', '2022-07-04 06:47:38'),
(57, 1, '10000', '4600051.91', 'ngn', '500', 'Paystack', 'approved', 'OeyRdtzoElrAHYcNhHIV4zIwQ', NULL, 'Your Payment was successful. Here is your transaction Id: OeyRdtzoElrAHYcNhHIV4zIwQ', '2022-07-07 15:44:35', '2022-07-07 15:44:35'),
(58, 23, '500', '505', 'EUR', '5', 'CoinGate', 'approved', '62d6ae5cdd996', NULL, 'Your Payment was successful. Here is your transaction Id: 62d6ae5cdd996', '2022-07-19 12:16:23', '2022-07-19 12:16:23'),
(59, 23, '500', '42878.6', 'INR', '25', 'RazorPay', 'approved', 'pay_Jym7UjRhMY1dSg', NULL, 'Your Payment was successful. Here is your transaction Id: pay_Jym7UjRhMY1dSg', '2022-07-28 10:49:02', '2022-07-28 10:49:02'),
(60, 16, '70000', '59618.72238952', 'gbp', '50', 'Bank Deposit/Transfer', 'approved', '62b9d28e4d687', 'wy3LQqigguRB3Zk4nx8XfB8KTUGIeqSjidMQpWsc.png', 'approved by admin', '2022-07-28 20:34:09', '2022-08-15 10:27:43'),
(61, 1, '10000', '4454667.82', 'ngn', '500', 'Paystack', 'approved', 'ITLkoVhhlVamGPbHWGaocuTwM', NULL, 'Your Payment was successful. Here is your transaction Id: ITLkoVhhlVamGPbHWGaocuTwM', '2022-07-29 23:07:12', '2022-07-29 23:07:12'),
(62, 1, '500', '432.08997005228', 'gbp', '12.5', 'Bank Deposit/Transfer', 'pending', '62b9d28e4d687', 'zgJvLYYmZ3ETsQX4sXbSksOBXw9YPefXVe3RGSj1.png', 'nothig', '2022-08-17 10:38:05', '2022-08-17 10:38:05'),
(63, 2, '500', '434.68915024251', 'gbp', '12.5', 'Bank Deposit/Transfer', 'pending', '62b9d28e4d687', 'PePtZOUBgxXSQQ8WB6hwPvVAD1n2heN0x056OSdI.png', 'nothing', '2022-08-29 18:44:06', '2022-08-29 18:44:06'),
(66, 2, '100', '105', 'usd', '5', 'PayPal', 'cancelled', '62b9d28e4d687', NULL, NULL, '2022-10-30 10:04:28', '2022-10-30 10:04:28'),
(67, 2, '50', '52.5', 'usd', '2.5', 'Stripe', 'approved', '635e619c1c740', NULL, 'Your Payment was successful. Here is your transaction Id: 635e619c1c740', '2022-10-30 10:35:56', '2022-10-30 10:35:56'),
(68, 2, '50', '52.5', 'usd', '2.5', 'Stripe', 'approved', '635e619d54058', NULL, 'Your Payment was successful. Here is your transaction Id: 635e619d54058', '2022-10-30 10:35:57', '2022-10-30 10:35:57'),
(69, 2, '322', '27907.36', 'INR', '16.1', 'RazorPay', 'approved', 'pay_Ka2rac5a98DB75', NULL, 'Your Payment was successful. Here is your transaction Id: pay_Ka2rac5a98DB75', '2022-10-30 15:16:27', '2022-10-30 15:16:27'),
(70, 2, '100', '46934.15', 'ngn', '7.5', 'Flutterwave', 'approved', '3907166', NULL, 'Your Payment was successful. Here is your transaction Id: 3907166', '2022-10-30 19:43:23', '2022-10-30 19:43:23'),
(71, 2, '50', '53.33', 'EUR', '2.5', 'CoinGate', 'approved', '635eee6f3b4d8', NULL, 'Your Payment was successful. Here is your transaction Id: 635eee6f3b4d8', '2022-10-30 20:38:49', '2022-10-30 20:38:49'),
(72, 2, '50', '52.5', 'usd', '2.5', 'Coinbase', 'pending', '907a89ce-448d-42b7-a77a-804f1f4369fd', NULL, 'Your payment will be confirmed automatically after 3 confirmations in the blockchain', '2022-10-31 15:32:14', '2022-10-31 15:32:14'),
(73, 2, '500', '0.02601', 'btc', '10', 'Bitcoin', 'pending', '62b9d28e4d687', 'tfQvMWAF1XUzbdhBK4MJu2ggtQKUUhEJj88Y0fRH.png', 'I have sent the deposit', '2022-11-05 13:24:14', '2022-11-05 13:24:14'),
(74, 2, '500', '0.02601', 'btc', '10', 'Bitcoin', 'pending', '62b9d28e4d687', 'IGaoGWTDfuMRf9wjPVLC5M8FFs31NQFUHUe2tIG6.png', 'I have sent the deposit', '2022-11-05 13:24:14', '2022-11-05 13:24:14');

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `shortcodes_subject` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `shortcodes_body` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `body`, `status`, `shortcodes_subject`, `shortcodes_body`, `created_at`, `updated_at`) VALUES
(1, 'verification_mail', 'Verify Your Email', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Bellow is your verification link {{$verification_link}} , It expires in 15 minutes</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$verification_link}}', NULL, '2022-07-09 11:16:59'),
(2, 'welcome_mail', 'Welcome to {{$website_name}}', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Welcome to {{$website_name}}! Your registration was successful, please login to your account</p>', 'enabled', '{{$website_name}}', '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$website_name}}', NULL, '2022-07-09 11:17:17'),
(3, 'password_reset_mail', 'Forgot Password', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Bellow is your password reset link {{$reset_link}} , It expires in 15 minutes</p><p>Contact an admin if you do not recognize this activity</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$reset_link}}', NULL, '2022-07-09 11:16:34'),
(4, 'temp_password_mail', 'Temporary Password', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Bellow is your temporary password <strong>{{$temp_password}}</strong></p><p>Login into your account with this password and change your password to somehting you can remember</p><p>Contact an admin if you do not recognize this activity</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$temp_password}}', NULL, '2022-07-09 11:16:47'),
(5, 'password_changed_mail', 'Your Password Has Been Changed', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Your password was recently changed, contact an admin if you do not recognize this activity.</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}', NULL, '2022-07-09 11:17:55'),
(6, 'new_id_upload_user', 'Identity Verification Documents Submitted', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Your identity verification documents has been submitted, please wait while an admin review your documents. You will be notified by email as soon as they are reviewed</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}', NULL, '2022-07-09 11:13:58'),
(7, 'new_id_upload_admin', 'Identity Verification Documents Submitted', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>{{$user}} has submitted new identity documents, login to review them</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$user}}', NULL, '2022-07-09 11:13:40'),
(8, 'new_referral_mail', 'You Have A New Referral', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>You have a new referral Name: {{$name}}&nbsp;<br>Email: {{$email}}&nbsp;<br>Account ID: {{$account_id}}&nbsp;</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$name}}                  \r\n                            {{$email}}                  \r\n                            {{$account_id}}', NULL, '2022-07-09 11:15:03'),
(9, 'new_transaction_mail', 'Transaction Notification', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>A new transaction has occurred on your account. Please find the details below Amount: {{$amount}}&nbsp;<br>Type: {{$type}}&nbsp;<br>Method: {{$method}}&nbsp;<br>Balance: {{$balance}}&nbsp;<br>Transaction ID: {{$txn_id}}&nbsp;<br>Remark: {{$remark}}&nbsp;<br>Date: {{$date}}&nbsp;<br>&nbsp;</p>', 'disabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$amount}}                  \r\n                            {{$type}}                  \r\n                            {{$method}}                  \r\n                            {{$balance}}                  \r\n                            {{$txn_id}}                  \r\n                            {{$remark}}                  \r\n                            {{$date}}', NULL, '2022-09-07 23:42:52'),
(10, 'id_processed_mail', 'KYC Document {{$status}}', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Your verification request has been processed, please find the detail below.&nbsp;</p><p><strong>Status:</strong> {{$status}}&nbsp;<br><strong>Comment:</strong> {{$comment}}&nbsp;<br><strong>Date:</strong> {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', '{{$status}}', '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$status}}                  \r\n                            {{$comment}}                  \r\n                            {{$date}}', NULL, '2022-07-09 11:43:17'),
(11, 'new_deposit_mail', 'Deposit Request Successful', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Your deposit request was successful, you will be notified by email once an admin reviews the payment. Find the deposit details below; Amount: {{$amount}}&nbsp;<br>Method: {{$method}}&nbsp;<br>Payment Method Amount: {{$converted_amount}}&nbsp;<br>Charge: {{$charge}}&nbsp;<br>Status: {{$status}}&nbsp;<br>Date: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$amount}}                  \r\n                            {{$method}}                  \r\n                            {{$converted_amount}}                  \r\n                            {{$charge}}                  \r\n                            {{$status}}                  \r\n                            {{$date}}', NULL, '2022-07-09 11:12:03'),
(12, 'new_deposit_mail_admin', 'New Deposit Notification', '<h2>Hello Admin,</h2><p>{{$first_name}} {{$last_name}} has made new deposit, login to approve the deposit Amount: {{$amount}}&nbsp;<br>Method: {{$method}}&nbsp;<br>Payment Method Amount: {{$converted_amount}}&nbsp;<br>Charge: {{$charge}}&nbsp;<br>Status: {{$status}}&nbsp;<br>Date: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$amount}}                  \r\n                            {{$method}}                  \r\n                            {{$converted_amount}}                  \r\n                            {{$charge}}                  \r\n                            {{$status}}                  \r\n                            {{$date}}', NULL, '2022-07-09 11:12:36'),
(13, 'deposit_rejected_mail', 'Deposit Rejected', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Your deposit request has been reviewed and rejected by an admin. Find the deposit details below; Amount: {{$amount}}&nbsp;<br>Method: {{$method}}&nbsp;<br>Payment Method Amount: {{$converted_amount}}&nbsp;<br>Charge: {{$charge}}&nbsp;<br>Status: {{$status}}&nbsp;<br>Date: {{$date}}&nbsp;<br>Addtional Info: {{$additional_info}}&nbsp;</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$amount}}                  \r\n                            {{$method}}                  \r\n                            {{$converted_amount}}                  \r\n                            {{$charge}}                  \r\n                            {{$status}}                  \r\n                            {{$date}}                  \r\n                            {{$additional_info}}', NULL, '2022-07-09 11:09:39'),
(14, 'deposit_approved_mail', 'Deposit Request Approved', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Your deposit request has been reviewed and approved by an admin. Find the deposit details below;&nbsp;</p><p><strong>Amount:</strong> {{$amount}}&nbsp;<br><strong>Method</strong>: {{$method}}&nbsp;<br><strong>Payment Method Amount:</strong> {{$converted_amount}}&nbsp;<br><strong>Charge:</strong> {{$charge}}&nbsp;<br><strong>Status:</strong> {{$status}}&nbsp;<br><strong>Date: </strong>{{$date}}&nbsp;<br><strong>Addtional Info:</strong> {{$additional_info}}&nbsp;</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$amount}}                  \r\n                            {{$method}}                  \r\n                            {{$converted_amount}}                  \r\n                            {{$charge}}                  \r\n                            {{$status}}                  \r\n                            {{$date}}                  \r\n                            {{$additional_info}}', NULL, '2022-08-19 22:31:01'),
(15, 'otp_mail', 'One Time Passcode (OTP)', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Bellow is your One Time Passcode (OTP) <strong>{{$otp}}</strong> , It expires in 15 minutes</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$otp}}', NULL, '2022-07-09 11:16:14'),
(16, 'new_loan_request_mail', 'New Loan Request Submitted', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Your loan request was successful, you will be notified by email once an admin reviews an admin reviews your request. Find the details below; Amount: {{$amount}}&nbsp;<br>Interest: {{$interest}}<br>Repayment Date: {{$repayment_date}}&nbsp;<br>Status: {{$status}}&nbsp;<br>Date: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$amount}}                  \r\n                            {{$interest}}                  \r\n                            {{$repayment_date}}                  \r\n                            {{$status}}                  \r\n                            {{$date}}', '2022-07-06 19:47:38', '2022-07-09 11:14:15'),
(17, 'new_loan_request_mail_admin', 'New Loan Request Submitted', '<h2>Dear Admin,</h2><p>{{$first_name}} {{$last_name}} has made a new loan request. Find the details below; Amount: {{$amount}}&nbsp;<br>Interest: {{$interest}}<br>Repayment Date: {{$repayment_date}}&nbsp;<br>Status: {{$status}}&nbsp;<br>Date: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$amount}}                  \r\n                            {{$interest}}                  \r\n                            {{$repayment_date}}                  \r\n                            {{$status}}                  \r\n                            {{$date}}', '2022-07-06 19:47:38', '2022-07-09 11:14:49'),
(18, 'loan_processed_mail', 'Loan Request Processed', '<h2>Dear {{$first_name}} {{$last_name}},</h2><p>Your loan request has been processed. Find the details below; Amount: {{$amount}}&nbsp;<br>Interest: {{$interest}}<br>Repayment Date: {{$repayment_date}}&nbsp;<br>Status: {{$status}}&nbsp;<br>Date: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', NULL, '{{$first_name}}                  \r\n                            {{$last_name}}                  \r\n                            {{$amount}}                  \r\n                            {{$interest}}                  \r\n                            {{$repayment_date}}                  \r\n                            {{$status}}                  \r\n                            {{$date}}', '2022-07-07 20:20:30', '2022-07-09 11:11:34'),
(19, 'new_withdrawal_mail', 'Withdrawal Request Successful', '<h2>Dear {{$first_name}} {{$last_name}},</h2>\r\n\r\n<p>Your withdrawal request was successful, you will be notified by email once an admin reviews the request. Find the deposit details below; \r\n\r\nAmount: {{$amount}}&nbsp;<br>\r\nFee: {{$fee}}&nbsp;<br>\r\nTotal: {{$total}}&nbsp;<br>\r\nWallet: {{$wallet}}&nbsp;<br>\r\n{{$wallet_info}}&nbsp;<br>\r\nTXN ID: {{$txn_id}}&nbsp;<br>\r\nStatus: {{$status}}&nbsp;<br>\r\nDate: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', NULL, '{{$amount}}\n{{$fee}}\n{{$total}}\n{{$wallet}}\n{{$wallet_info}}\n{{$txn_id}}\n{{$status}}\n{{$date}}', '2022-07-22 12:15:15', '2022-07-22 12:15:15'),
(20, 'new_withdrawal_mail_admin', 'New Withdrawal Notification', '<h2>Dear Admin,</h2>\r\n\r\n<p>{{$first_name}} {{$last_name}} has placed a withdrawal request. Login to approve or decline the request. Find the deposit details below; \r\n\r\nAmount: {{$amount}}&nbsp;<br>\r\nFee: {{$fee}}&nbsp;<br>\r\nTotal: {{$total}}&nbsp;<br>\r\nWallet: {{$wallet}}&nbsp;<br>\r\n{{$wallet_info}}&nbsp;<br>\r\nTXN ID: {{$txn_id}}&nbsp;<br>\r\nStatus: {{$status}}&nbsp;<br>\r\nDate: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', NULL, '{{$amount}}\r\n{{$fee}}\r\n{{$total}}\r\n{{$wallet}}\r\n{{$wallet_info}}\r\n{{$txn_id}}\r\n{{$status}}\r\n{{$date}}', '2022-07-22 12:50:35', '2022-07-22 12:50:35'),
(21, 'withdrawal_processed_mail', 'Withdrawal Processed', '<h2>Dear {{$first_name}} {{$last_name}},</h2>\r\n\r\n<p>Your withdrawal request has been processed. Find the deposit details below; \r\n\r\nAmount: {{$amount}}&nbsp;<br>\r\nFee: {{$fee}}&nbsp;<br>\r\nTotal: {{$total}}&nbsp;<br>\r\nWallet: {{$wallet}}&nbsp;<br>\r\n{{$wallet_info}}&nbsp;<br>\r\nTXN ID: {{$txn_id}}&nbsp;<br>\r\nStatus: {{$status}}&nbsp;<br>\r\nDate: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', NULL, '{{$amount}}\r\n{{$fee}}\r\n{{$total}}\r\n{{$wallet}}\r\n{{$wallet_info}}\r\n{{$txn_id}}\r\n{{$status}}\r\n{{$date}}', '2022-07-23 02:15:46', '2022-07-23 02:15:46'),
(24, 'new_ticket_mail', 'Support Ticket [{{$ticket_id}}] Received', '<h2>Dear {{$first_name}} {{$last_name}},</h2>\n\n<p>Your Support Ticket has been received. Find the ticket details below; \n\nTicket ID: {{$ticket_id}}&nbsp;<br>\nSubject: {{$subject}}&nbsp;<br>\nMessage: <br>\n{{$message}}\nDate: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', '{{$ticket_id}}', '{{$first_name}}\r\n{{$last_name}}\r\n{{$ticket_id}}\r\n{{$subject}}\r\n{{$message}}\r\n{{$date}}', '2022-07-25 10:07:31', '2022-07-25 10:07:31'),
(25, 'new_ticket_mail_admin', 'New Support Ticket [{{$ticket_id}}] Submitted', '<h2>Dear Admin,</h2>\n\n<p>{{$first_name}} {{$last_name}} has submitted a new support ticket. Find the ticket details below; \n\nTicket ID: {{$ticket_id}}&nbsp;<br>\nSubject: {{$subject}}&nbsp;<br>\nMessage: <br>\n{{$message}}\nDate: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', '{{$ticket_id}}', '{{$first_name}}\n{{$last_name}}\n{{$ticket_id}}\n{{$subject}}\n{{$message}}\n{{$date}}', '2022-07-25 10:07:32', '2022-07-25 10:07:32'),
(28, 'new_ticket_reply_mail', 'Support Ticket [{{$ticket_id}}] Updated', '<h2>Dear {{$first_name}} {{$last_name}},</h2>\r\n\r\n<p>Your Support Ticket has been updated. Find the ticket details below; \r\n\r\nTicket ID: {{$ticket_id}}&nbsp;<br>\r\nSubject: {{$subject}}&nbsp;<br>\r\nMessage: <br>\r\n{{$message}}\r\nDate: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', '{{$ticket_id}}', '{{$first_name}}\r\n{{$last_name}}\r\n{{$ticket_id}}\r\n{{$subject}}\r\n{{$message}}\r\n{{$date}}', '2022-07-25 21:59:06', '2022-07-25 21:59:06'),
(29, 'new_ticket_reply_mail_admin', 'Support Ticket [{{$ticket_id}}] Updated', '<h2>Dear Admin,</h2>\r\n\r\n<p>{{$first_name}} {{$last_name}} has updated Ticket  {{$ticket_id}}. Find the ticket details below; \r\n\r\nTicket ID: {{$ticket_id}}&nbsp;<br>\r\nSubject: {{$subject}}&nbsp;<br>\r\nMessage: <br>\r\n{{$message}}\r\nDate: {{$date}}&nbsp;<br>&nbsp;</p>', 'enabled', '{{$ticket_id}}', '{{$first_name}}\r\n{{$last_name}}\r\n{{$ticket_id}}\r\n{{$subject}}\r\n{{$message}}\r\n{{$date}}', '2022-07-25 21:59:06', '2022-07-25 21:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
--
-- Dumping data for table `failed_jobs`
--

INSERT INTO `failed_jobs` (`id`, `uuid`, `connection`, `queue`, `payload`, `exception`, `failed_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `question` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
(2, 'How Do Start Investing?', 'To start investing, you have an account which is KYC verified. Deposit money to your account and fund you are ready to start investing.', '2022-09-04 00:41:13', '2022-09-04 00:41:13'),
(3, 'What is the minimum investment amount?', 'The minimum amount you can deposit depends on the deposit method you intend to use. TO find out the individual deposit limit, check the deposit page.', '2022-09-04 00:41:13', '2022-09-04 00:41:13'),
(4, 'Do you provide support?', 'Yes! We have dedicated support to assist you with all your questions. You can reach us via livechat, telegram, and email.', '2022-09-04 00:41:13', '2022-09-04 00:41:13'),
(7, 'What is the minimum deposit amount?', 'The minimum amount you can deposit is EUR50', '2022-09-09 11:33:10', '2022-09-09 11:33:10');

-- --------------------------------------------------------

--
-- Table structure for table `id_verifications`
--

CREATE TABLE `id_verifications` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `marital_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `front_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `back_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `selfie` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `investments`
--

CREATE TABLE `investments` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `plan_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `next_profit_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_profit_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `profit_per_interval` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_intervals` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_intervals_given` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_profit_earned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investments`
--

INSERT INTO `investments` (`id`, `user_id`, `plan_name`, `amount`, `expires`, `interval`, `next_profit_time`, `last_profit_time`, `profit_per_interval`, `total_intervals`, `total_intervals_given`, `total_profit_earned`, `status`, `created_at`, `updated_at`) VALUES
(4, 23, 'Gold Plan', '599', '1658156285', '+1 day', '1662460367', '1662373967', '65.89', '10', '10', '658.9', 'expired', '2022-07-08 13:58:05', '2022-09-05 09:32:55'),
(6, 1, 'Starter Plan', '100', '1659145819', '+1 hour', '1659146442', '1659142842', '12.5', '12', '12', '150', 'expired', '2022-07-29 12:50:19', '2022-07-30 05:00:42'),
(7, 1, 'Pro Plan', '400', '1659534659', '+1 day', '1668095497', '1668009097', '84', '5', '5', '420', 'expired', '2022-07-29 12:50:59', '2022-11-09 14:51:39'),
(8, 1, 'Gold Plan', '300', '1659966718', '+1 day', '1668095497', '1668009097', '33', '10', '5', '165', 'active', '2022-07-29 12:51:58', '2022-11-09 14:51:37'),
(9, 3, 'Diamond Plan', '4000', '1660398958', '+1 hour', '1668012697', '1668009097', '12.777777777778', '360', '40', '511.11111111118', 'active', '2022-07-29 12:55:58', '2022-11-09 14:51:37'),
(10, 3, 'Gold Plan', '250', '1659966994', '+1 day', '1668095497', '1668009097', '27.5', '10', '5', '137.5', 'active', '2022-07-29 12:56:34', '2022-11-09 14:51:37'),
(13, 24, 'Pro Plan', '500', '1659535278', '+1 day', '1668095498', '1668009098', '105', '5', '5', '525', 'expired', '2022-07-29 13:01:18', '2022-11-09 14:51:39'),
(14, 24, 'Diamond Plan', '1000', '1660399317', '+1 hour', '1668012698', '1668009098', '3.1944444444444', '360', '39', '124.58333333329', 'active', '2022-07-29 13:01:57', '2022-11-09 14:51:38'),
(16, 1, 'Starter Plan', '100', '1659164968', '+1 hour', '1659170425', '1659166825', '12.5', '12', '12', '150', 'expired', '2022-07-29 23:09:28', '2022-07-30 11:40:25'),
(17, 1, 'Diamond Plan', '5000', '1660417836', '+1 hour', '1668012698', '1668009098', '15.972222222222', '360', '34', '543.05555555549', 'active', '2022-07-29 23:10:36', '2022-11-09 14:51:38'),
(18, 1, 'Gold Plan', '599', '1659985890', '+1 day', '1668095498', '1668009098', '65.89', '10', '5', '329.45', 'active', '2022-07-29 23:11:30', '2022-11-09 14:51:38'),
(19, 2, 'Starter Plan', '100', '1661228640', '+1 hour', '1668012698', '1668009098', '12.5', '12', '2', '25', 'active', '2022-08-22 15:24:00', '2022-11-09 14:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `investment_plans`
--

CREATE TABLE `investment_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_interval` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `investment_plans`
--

INSERT INTO `investment_plans` (`id`, `name`, `amount_type`, `min_amount`, `max_amount`, `return_type`, `return`, `duration`, `duration_type`, `return_interval`, `status`, `label`, `created_at`, `updated_at`) VALUES
(1, 'Starter Plan', 'fixed', '100', '100', 'fixed', '50', '12', 'hour', 'hourly', 'active', 'most popular', '2022-07-08 00:57:54', '2022-07-08 08:22:55'),
(2, 'Pro Plan', 'range', '100', '600', 'percent', '5', '5', 'day', 'daily', 'active', 'vip', '2022-07-08 00:57:54', '2022-07-08 00:57:54'),
(3, 'Gold Plan', 'range', '200', '599', 'percent', '10', '10', 'day', 'daily', 'active', 'VIP', '2022-07-08 08:50:07', '2022-07-08 08:50:07'),
(4, 'Diamond Plan', 'range', '600', '5999', 'percent', '15', '15', 'day', 'hourly', 'active', 'VIP', '2022-07-08 08:52:39', '2022-07-08 08:52:39'),
(5, 'Mega Plan', 'range', '5000', '1000000', 'percent', '100', '9', 'day', 'daily', 'inactive', 'VVIP', '2022-09-12 16:09:18', '2022-09-17 16:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `loans`
--

CREATE TABLE `loans` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `repayment_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `temp_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loans`
--

INSERT INTO `loans` (`id`, `user_id`, `amount`, `interest`, `repayment_date`, `temp_date`, `status`, `created_at`, `updated_at`) VALUES
(4, 23, '199', '200', '1657202458', '+3 hour', 'pending', '2022-07-07 10:00:58', '2022-07-07 10:00:58'),
(6, 1, '99', '4.455', '1657398684', '+2 day', 'rejected', '2022-07-07 16:04:31', '2022-07-07 19:36:00'),
(8, 1, '55', '2.475', '1661265351', '+1 week', 'paid', '2022-08-16 12:38:26', '2022-08-16 13:37:00'),
(9, 1, '3000', '135', '1661096645', '+5 day', 'paid', '2022-08-16 14:42:45', '2022-09-05 09:32:42');

-- --------------------------------------------------------

--
-- Table structure for table `loan_plans`
--

CREATE TABLE `loan_plans` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_deposit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `interest` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `loan_plans`
--

INSERT INTO `loan_plans` (`id`, `name`, `min_amount`, `max_amount`, `min_deposit`, `interest_type`, `interest`, `duration`, `duration_type`, `created_at`, `updated_at`) VALUES
(1, 'Beginner Plan', '25', '100', '10', 'percent', '4.5', '1', 'week', '2022-07-06 13:43:20', '2022-07-07 21:52:46'),
(3, 'Super Plan', '500', '6798', '300', 'percent', '4.5', '5', 'day', '2022-07-07 22:11:20', '2022-07-07 22:11:20'),
(5, 'Mega Plan', '5000', '500000', '50', 'percent', '1.5', '10', 'month', '2022-08-23 18:37:51', '2022-08-23 18:37:51');

-- --------------------------------------------------------

--
-- Table structure for table `manual_deposit_methods`
--

CREATE TABLE `manual_deposit_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `class` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'manual',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `charge` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '5',
  `charge_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percent',
  `currency` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gbp',
  `wallet_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `network_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_instruction` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manual_deposit_methods`
--

INSERT INTO `manual_deposit_methods` (`id`, `name`, `class`, `type`, `status`, `min_amount`, `max_amount`, `charge`, `charge_type`, `currency`, `wallet_address`, `network_type`, `payment_instruction`, `bank_name`, `account_name`, `account_no`, `sort_code`, `bank_code`, `logo`, `created_at`, `updated_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_06_10_025307_create_password_resets_table', 1),
(6, '2022_06_10_030006_create_email_templates_table', 1),
(7, '2022_06_10_034022_create_website_settings_table', 1),
(8, '2022_06_11_024431_create_verify_tokens_table', 1),
(10, '2022_06_18_125309_add_id_verified_to_users_table', 2),
(11, '2022_06_18_130425_create_id_verifications_table', 3),
(12, '2022_06_18_132726_add_id_verified_to_users_table', 4),
(13, '2022_06_18_175831_create_plans_table', 5),
(14, '2022_06_18_181653_create_user_investments_table', 6),
(16, '2022_06_8_185818_create_transactions_table', 7),
(17, '2022_06_18_204541_create_withdrawal_methods_table', 8),
(18, '2022_06_18_205611_create_deposits_table', 9),
(19, '2022_06_19_020523_create_withdrawals_table', 9),
(22, '2022_06_20_153405_create_admins_table', 10),
(24, '2022_06_21_084132_add_comment_to_id_verifcations_table', 11),
(25, '2022_06_21_172238_create_jobs_table', 12),
(28, '2022_06_21_205940_add_amount_to_transactions_table', 13),
(29, '2022_06_22_061604_add_txn_id_to_transactions_table', 14),
(30, '2022_06_24_222203_create_manual_deposit_methods_table', 15),
(31, '2022_06_24_233251_add_currency_to_manual_deposit_methods_table', 16),
(32, '2022_06_25_070516_add_converted_amount_to_deposits_table', 17),
(33, '2022_06_25_071139_add_charge_to_manual_deposit_methods', 18),
(35, '2022_06_25_084829_add_payment_screenshot_to_deposits_table', 19),
(36, '2022_06_25_202730_drop_qr_code', 20),
(38, '2022_06_27_080958_add_class_to_manual_deposit_method_table', 21),
(39, '2022_06_27_154909_add_txn_to_deposits_table', 22),
(40, '2022_07_01_094512_create_webhook_payments_table', 23),
(43, '2022_07_03_215718_create_transfers_table', 24),
(46, '2022_07_05_223933_rename_2fa', 25),
(47, '2022_07_06_132639_create_loan_plans_table', 26),
(48, '2022_07_06_133405_create_loans_table', 26),
(49, '2022_07_07_165212_add_temp_date_to_loans', 27),
(50, '2022_07_08_003450_drop_tables_plan', 28),
(51, '2022_07_08_004343_create_investment_plans_table', 29),
(52, '2022_07_08_105312_create_investments_table', 30),
(53, '2022_07_08_164523_add_interval_to_investments', 31),
(56, '2022_07_09_115021_add_shortcodes_to_email_templates', 32),
(58, '2022_07_21_123752_create_blogs_table', 33),
(60, '2022_07_21_145743_drop_withdraw_table', 34),
(62, '2022_07_21_161421_create_withdrawal_wallets_table', 35),
(65, '2022_07_22_094825_withdrawal_table', 36),
(67, '2022_07_22_130002_add_txn_id_to_withdrawal_table', 37),
(71, '2022_07_24_151746_create_support_tickets_table', 38),
(72, '2022_07_24_151953_create_support_ticket_replies_table', 38),
(73, '2022_07_24_200827_create_support_ticket_attachments_table', 38),
(75, '2022_08_19_223158_add_status_to_template_table', 39),
(77, '2022_08_31_225546_create_sections_table', 40),
(78, '2022_08_31_235000_create_faqs_table', 41),
(79, '2022_09_03_190258_create_teams_table', 42),
(80, '2022_09_04_012725_create_testimonials_table', 43),
(81, '2022_09_05_105351_create_newsletters_table', 44),
(83, '2022_09_05_191803_create_contact_form_submissions_table', 45),
(84, '2022_10_12_235220_create_trading_wallets_table', 46),
(87, '2022_10_18_142048_create_trading_wallet_transactions_table', 47),
(89, '2022_10_18_232321_create_trading_signals_table', 48),
(91, '2022_10_19_234113_create_trading_pairs_table', 49),
(92, '2022_10_20_162143_create_trading_logs_table', 50),
(94, '2022_10_20_215535_create_stakings_table', 51),
(96, '2022_10_21_193109_create_stakings_table', 52),
(102, '2022_10_22_121454_create_trading_bots_table', 53),
(103, '2022_10_22_121916_create_trading_bot_activations_table', 53),
(104, '2022_10_29_002937_add_user_activated_table', 54),
(105, '2022_10_29_114155_create_trading_bot_trades_table', 55),
(106, '2022_11_01_223442_trading_bot_trades', 56);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newsletters`
--

INSERT INTO `newsletters` (`id`, `email`, `created_at`, `updated_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`id`, `email`, `token`, `expires`, `created_at`, `updated_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `content`, `pages`, `created_at`, `updated_at`) VALUES
(1, 'hero', '{\"section_heading\":\"Bitcoin Investment is the future\",\"section_text\":\"<p>privinevault is the industry leading crypto investment company. Investing in crypto shouldn't be hard, we have best algorithin for profitable trading. Invest with a reliable company today! We are reliable Not sure when to start? Start now!<\\/p>\",\"section_button_text\":\"Sign up\",\"section_button_url\":\"https:\\/\\/privinevault.com\\/register\",\"section_bg_img\":\"hero-bg-1662467318.jpg\"}', '[\"home\",\"about\"]', '2022-08-31 22:36:23', '2022-09-16 19:03:03'),
(2, 'about', '{\"section_heading\":\"About <span>Us<\\/span>\",\"section_text\":\"<p>privinevault is an established international financial brokage company. We specialise in profitable cryptocurrency trading, mining, investment and foresting trading. We have a team of competent traders.<\\/p><p>We are determined to providing conducive investment to our esteemed investors, minimising losses, and offerring safe investmets. With our edge cutting technology, we are able to automate trading, investments and returns. With PrivineVault, there is guaranteed return on investment.<\\/p>\",\"section_button_text\":\"Learn More\",\"section_button_url\":\"\\/about\",\"section_bg_img\":\"about-bg-1662469172.jpg\"}', '[\"about\",\"contact\",\"home\",\"plans\"]', '2022-08-31 22:36:23', '2022-09-17 19:30:46'),
(3, 'plans', '{\"section_heading\":\"Investment <span>Plans<\\/span>\",\"section_text\":\"<p>To start earning, you should pick an investment plan. We have plans for all pocket sizes<\\/p>\"}', '[\"home\",\"plans\"]', '2022-08-31 22:36:23', '2022-09-17 19:32:11'),
(4, 'why', '{\"section_heading\":\"Why Choose <span>CredHYIP<\\/span>?\",\"section_text\":\"<p>We are committed to proving conducive ivesting ground for all our users. Invest today<\\/p>\",\"whys\":[{\"icon\":\"M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z\",\"title\":\"Realiable\",\"text\":\"We are a reliable trading company\"},{\"icon\":\"M9 12l2 2 4-4M7.835 4.697a3.42 3.42 0 001.946-.806 3.42 3.42 0 014.438 0 3.42 3.42 0 001.946.806 3.42 3.42 0 013.138 3.138 3.42 3.42 0 00.806 1.946 3.42 3.42 0 010 4.438 3.42 3.42 0 00-.806 1.946 3.42 3.42 0 01-3.138 3.138 3.42 3.42 0 00-1.946.806 3.42 3.42 0 01-4.438 0 3.42 3.42 0 00-1.946-.806 3.42 3.42 0 01-3.138-3.138 3.42 3.42 0 00-.806-1.946 3.42 3.42 0 010-4.438 3.42 3.42 0 00.806-1.946 3.42 3.42 0 013.138-3.138z\",\"title\":\"Legal Company\",\"text\":\"We are a legal trading company\"},{\"icon\":\"M13 10V3L4 14h7v7l9-11h-7z\",\"title\":\"Quick Withdrawal\",\"text\":\"All payout are processed and paid out within 24 hours\"},{\"icon\":\"M9 12l2 2 4-4m5.618-4.016A11.955 11.955 0 0112 2.944a11.955 11.955 0 01-8.618 3.04A12.02 12.02 0 003 9c0 5.591 3.824 10.29 9 11.622 5.176-1.332 9-6.03 9-11.622 0-1.042-.133-2.052-.382-3.016z\",\"title\":\"Trusted\",\"text\":\"We are trusted over 2 million investor worldwide\"},{\"icon\":\"M17 20h5v-2a3 3 0 00-5.356-1.857M17 20H7m10 0v-2c0-.656-.126-1.283-.356-1.857M7 20H2v-2a3 3 0 015.356-1.857M7 20v-2c0-.656.126-1.283.356-1.857m0 0a5.002 5.002 0 019.288 0M15 7a3 3 0 11-6 0 3 3 0 016 0zm6 3a2 2 0 11-4 0 2 2 0 014 0zM7 10a2 2 0 11-4 0 2 2 0 014 0z\",\"title\":\"Referral Commission\",\"text\":\"Earn 5% referral commission when you refer your family and friends\"},{\"icon\":\"M17 8h2a2 2 0 012 2v6a2 2 0 01-2 2h-2v4l-4-4H9a1.994 1.994 0 01-1.414-.586m0 0L11 14h4a2 2 0 002-2V6a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2v4l.586-.586z\",\"title\":\"24\\/7 Support\",\"text\":\"We are available 24\\/7 to attend to your support request through various channels\"}]}', '[\"about\",\"home\"]', '2022-08-31 22:36:23', '2022-09-17 19:29:00'),
(5, 'how', '{\"section_heading\":\"How To <span>Invest<\\/span> With CredHYIP\",\"section_text\":\"<p>Investing with CredHYIP is very easy. Follow the steps below to start investing<\\/p>\",\"steps\":{\"register\":{\"icon\":\"M18 9v3m0 0v3m0-3h3m-3 0h-3m-2-5a4 4 0 11-8 0 4 4 0 018 0zM3 20a6 6 0 0112 0v1H3v-1z\",\"text\":\"Sign up for an account by going to the signup page and fill in your details\"},\"fund_wallet\":{\"icon\":\"M17 9V7a2 2 0 00-2-2H5a2 2 0 00-2 2v6a2 2 0 002 2h2m2 4h10a2 2 0 002-2v-6a2 2 0 00-2-2H9a2 2 0 00-2 2v6a2 2 0 002 2zm7-5a2 2 0 11-4 0 2 2 0 014 0z\",\"text\":\"Fund your trading wallet by depositing money to your account\"},\"invest\":{\"icon\":\"M13 7h8m0 0v8m0-8l-8 8-4-4-6 6\",\"text\":\"Choose from our various investment plans and start earning\"},\"withdraw\":{\"icon\":\"M15.75 9V5.25A2.25 2.25 0 0013.5 3h-6a2.25 2.25 0 00-2.25 2.25v13.5A2.25 2.25 0 007.5 21h6a2.25 2.25 0 002.25-2.25V15m3 0l3-3m0 0l-3-3m3 3H9\",\"text\":\"Withdraw money through your preferred method\"}}}', '[\"about\",\"home\",\"plans\"]', '2022-08-31 22:36:24', '2022-09-17 16:09:50'),
(6, 'calculator', '{\"section_heading\":\"Profit  <span>Calculator<\\/span>\",\"section_text\":\"<p>Find out how much you will be making from your investment using our profit calculator below<\\/p>\"}', '[\"contact\",\"home\",\"plans\"]', '2022-08-31 22:36:24', '2022-09-17 19:27:47'),
(7, 'faq', '{\"section_heading\":\"Frequently <span>Asked<\\/span> Questions\",\"section_text\":\"<p>Below are frequently asked questions from our users<\\/p>\"}', '[\"about\",\"contact\",\"home\",\"plans\"]', '2022-08-31 22:36:24', '2022-11-17 20:22:00'),
(8, 'deposit_withdraw', '{\"section_heading\":\"Latest Deposits and Withdrawals\",\"section_text\":\"<p>Below are recent deposits and withdrawals from members<\\/p>\"}', '[\"home\",\"plans\"]', '2022-08-31 22:36:24', '2022-09-17 21:48:03'),
(9, 'deposit_methods', '{\"section_heading\":\"Payment Methods\",\"section_text\":\"<p>We accept the following deposit methods<\\/p>\"}', '[\"home\",\"plans\"]', '2022-08-31 22:36:24', '2022-09-17 23:06:41'),
(10, 'newsletter', '{\"section_heading\":\"Join Our Newsletter\",\"section_text\":\"<p>join our newsletter to receive update from us<\\/p>\"}', '[\"blog\",\"blog_detail\",\"plans\",\"about\",\"contact\",\"home\"]', '2022-08-31 22:36:24', '2022-09-16 18:36:02'),
(11, 'loan_plans', '{\"section_heading\":\"Loan <span>Plans<\\/span>\",\"section_text\":\"<p>We have loans to assist you get started in your investing journey<\\/p>\"}', '[\"home\",\"plans\"]', '2022-08-31 23:20:17', '2022-09-17 19:33:38'),
(12, 'testimonials', '{\"section_heading\":\"Testimonials\",\"section_text\":\"<p>Bellow is what our esteamed investors are saying<\\/p>\"}', '[\"about\",\"home\",\"plans\"]', '2022-09-01 01:17:35', '2022-09-17 21:59:42'),
(13, 'teams', '{\"section_heading\":\"Our <span>Team<\\/span>\",\"section_text\":\"<p>Our team is made of expert traders, with several years of experience in trading and financial management<\\/p>\"}', '[\"about\",\"home\",\"plans\"]', '2022-09-01 01:17:35', '2022-09-17 19:25:37'),
(14, 'blog', '{\"section_heading\":\"Latest Financial Updates\",\"section_text\":\"<p>Read latest financial news update from our blog<\\/p>\"}', '[\"about\",\"blog\",\"blog_detail\",\"contact\",\"home\",\"plans\"]', '2022-09-01 01:17:35', '2022-09-17 22:39:04'),
(15, 'stats', '{\"section_heading\":\"Our stats speaks volume\",\"section_text\":\"<p>We are proud to serve you since inception<\\/p>\",\"counters\":[{\"icon\":\"M12 4.354a4 4 0 110 5.292M15 21H3v-1a6 6 0 0112 0v1zm0 0h6v-1a6 6 0 00-9-5.197M13 7a4 4 0 11-8 0 4 4 0 018 0z\",\"title\":\"Users\",\"count\":\"1234\"},{\"icon\":\"M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-4l-4 4m0 0l-4-4m4 4V4\",\"title\":\"Deposits\",\"count\":\"687300\"},{\"icon\":\"M4 16v1a3 3 0 003 3h10a3 3 0 003-3v-1m-4-8l-4-4m0 0L8 8m4-4v12\",\"title\":\"Withdrawals\",\"count\":\"47833783\"}]}', '[\"home\",\"plans\",\"about\"]', '2022-09-05 13:33:26', '2022-09-16 18:35:48'),
(16, 'breadcrumb', '{\"section_bg_img\":\"breadcrumb.jpg\"}', '[\"blog_detail\",\"plans\",\"about\",\"contact\"]', '2022-09-05 15:11:15', '2022-09-16 18:50:11'),
(17, 'contact', '{\"section_heading\":\"Get In Touch\",\"section_text\":\"<p>Fill the form below to make inquirires. You can also contact us via livechat, email, support ticket or using the contact details below.<\\/p>\"}', '[\"blog_detail\",\"contact\",\"home\",\"plans\"]', '2022-09-05 15:39:33', '2022-09-17 23:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `stakings`
--

CREATE TABLE `stakings` (
  `id` bigint UNSIGNED NOT NULL,
  `coin_id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `staked` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_return` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `returned` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `returnable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_return` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_return` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staking_coins`
--

CREATE TABLE `staking_coins` (
  `id` bigint UNSIGNED NOT NULL,
  `coin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `apr` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_return` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_stake` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `min_stake` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `staked` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staking_coins`
--

INSERT INTO `staking_coins` (`id`, `coin`, `symbol`, `duration`, `apr`, `daily_return`, `max_stake`, `min_stake`, `total`, `staked`, `status`, `price`, `icon`, `created_at`, `updated_at`) VALUES
(1, 'Bitcoin', 'BTC', '30', '3', '1.5', '1000', '20', '1000000', '1000', 'status', '20000', 'w2MhEzkF05e6QhEGianMmNdQ6O2Oo0C68MZcLJaP.png', '2022-10-21 14:29:14', '2022-10-21 14:29:14'),
(2, 'Ripple', 'XRP', '34', '12', '2.5', '1000', '20', '40000', '9', 'status', '83', 'vO1tgiBeXn8L2xW0tjZNSWHH2R4rD3nbDNtaGp43.png', '2022-10-21 22:11:51', '2022-10-21 22:11:51');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_reply_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `title`, `message`, `status`, `last_reply_by`, `ticket_id`, `created_at`, `updated_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_attachments`
--

CREATE TABLE `support_ticket_attachments` (
  `id` bigint UNSIGNED NOT NULL,
  `ticket_id` bigint UNSIGNED NOT NULL,
  `hash_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_ticket_attachments`
--

INSERT INTO `support_ticket_attachments` (`id`, `ticket_id`, `hash_name`, `original_name`, `created_at`, `updated_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_replies`
--

CREATE TABLE `support_ticket_replies` (
  `id` bigint UNSIGNED NOT NULL,
  `ticket_id` bigint UNSIGNED NOT NULL,
  `reply` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reply_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_ticket_replies`
--

INSERT INTO `support_ticket_replies` (`id`, `ticket_id`, `reply`, `reply_by`, `role`, `created_at`, `updated_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `role`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'John Doe', 'President', 'user.png', '2022-09-03 19:11:08', NULL),
(2, 'Peter Grifin', 'CEO', 'user.png', '2022-09-03 19:11:08', '2022-09-03 19:11:08'),
(3, 'Taylor Ziff', 'COO', 'user.png', '2022-09-03 19:11:08', '2022-09-03 19:11:08'),
(5, 'James Tomoson', 'Head of Operations', '7EYe9BOSImmbmyanXuD5RsS8ibm136Z3DdzfjVhz.jpg', '2022-09-09 13:58:56', '2022-09-09 13:58:56');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `star_rating` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.png',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `comment`, `star_rating`, `photo`, `created_at`, `updated_at`) VALUES
(1, 'Cardone Ruff', 'This is best investment website ever, got instant payout as soon as requested', '5.0', 'user.png', '2022-06-26 17:54:19', '2022-06-26 17:54:19'),
(2, 'Jasmine Blake', 'Totally worth the risk. I doubted at first. So glad i took the risk.', '4.5', 'user.png', '2022-06-26 17:54:19', '2022-06-26 17:54:19'),
(3, 'Peter Pakkrin', 'I\'m so glad my friend referred me to this platform. I am so excited', '3.5', 'user.png', '2022-06-26 17:54:19', '2022-06-26 17:54:19'),
(5, 'Joshua', 'I totally recommend them, fastest payout', '4.9', 'pqMEnO0H4svAspYfXK2HjUIaj3zNZIOuzqvcHPhn.png', '2022-09-09 20:17:30', '2022-09-09 20:17:30');

-- --------------------------------------------------------

--
-- Table structure for table `trading_bots`
--

CREATE TABLE `trading_bots` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lose_count` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_min` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `return_max` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trading_bots`
--

INSERT INTO `trading_bots` (`id`, `name`, `price`, `lose_count`, `return_min`, `return_max`, `icon`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Molt Bolt', '300', '15', '20', '50', 'auV6F5IchhRMQC0BYCGfyUteAqaWLEeldRAg2u0n.png', 'enabled', '2022-10-22 14:06:28', '2022-10-22 14:06:28'),
(2, 'Morpheus', '250', '5', '3', '5', 'gYLwrYllATFsD5MVys7LFiljZDQm0oqPm32H6ZjT.png', 'enabled', '2022-10-22 14:22:21', '2022-10-22 14:22:21');

-- --------------------------------------------------------

--
-- Table structure for table `trading_bot_activations`
--

CREATE TABLE `trading_bot_activations` (
  `id` bigint UNSIGNED NOT NULL,
  `bot_id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_activated` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'enabled',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trading_bot_trades`
--

CREATE TABLE `trading_bot_trades` (
  `id` bigint UNSIGNED NOT NULL,
  `bot_id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pair` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `next_trade_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1667342667',
  `wins` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `loses` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trading_bot_trades`
--

INSERT INTO `trading_bot_trades` (`id`, `bot_id`, `user_id`, `pair`, `status`, `next_trade_time`, `wins`, `loses`, `created_at`, `updated_at`) VALUES
(3, 1, '2', 'BTC_USDT', 'start', '1667353864', '0', '0', '2022-10-29 12:48:58', '2022-11-05 17:55:48');

-- --------------------------------------------------------

--
-- Table structure for table `trading_currencies`
--

CREATE TABLE `trading_currencies` (
  `id` bigint UNSIGNED NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trading_currencies`
--

INSERT INTO `trading_currencies` (`id`, `symbol`, `name`, `created_at`, `updated_at`) VALUES
(1, 'CSP', 'Caspian', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(2, 'LOKI', 'Oxen', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(3, 'NRG', 'Energi', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(4, 'FET', 'Fetch.Ai', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(5, 'XMR', 'Monero', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(6, 'RBTC', 'RSK Smart Bitcoin', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(7, 'RIF', 'RIF Token', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(8, 'ANKR', 'Ankr Network', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(9, 'MTV', 'MultiVAC', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(10, 'TRTL', 'TurtleCoin', '2022-04-09 13:12:54', '2022-04-09 13:12:54'),
(11, 'CRO', 'Crypto.com Coin', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(12, 'OPT', 'Optimus', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(13, 'KMD', 'Komodo', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(14, 'RFOX', 'RedFox', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(15, 'TT', 'ThunderCore', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(16, 'ATOM', 'Cosmos', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(17, 'CHR', 'Chromia', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(18, 'NIM', 'Nimiq', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(19, 'OCEAN', 'Ocean Protocol', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(20, 'COTI', 'Coti', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(21, 'FX', 'Function X', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(22, 'PIVX', 'Pivx', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(23, 'XTZ', 'Tezos', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(24, 'BNB', 'Binance Chain Native Token', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(25, 'JAR', 'Jarvis  Coins', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(26, 'ALGO', 'Algorand', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(27, 'ADA', 'Cardano', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(28, 'XEM', 'NEM', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(29, 'CIX100', 'Cryptoindex 100', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(30, 'ZEC', 'ZEC', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(31, 'WXT', 'Wirex Token', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(32, 'FORESTPLUS', 'The Forbidden Forest', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(33, 'BOLT', 'BOLT Token', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(34, 'ARPA', 'ARPA Token', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(35, 'SERO', 'Sero', '2022-04-09 13:12:54', '2022-04-09 13:12:54'),
(36, 'CHZ', 'Chiliz', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(37, 'NOIA', 'Syntropy', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(38, 'DAPPT', 'Dapp.com', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(39, 'EOSC', 'EOSForce', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(40, 'DERO', 'Dero', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(41, 'WIN', 'WINk', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(42, 'FKX', 'FortKnoxster', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(43, 'ENQ', 'Enecuum', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(44, 'THETA', 'THETA', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(45, 'ONE', 'Harmony', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(46, 'TOKO', 'Tokoin', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(47, 'TFUEL', 'Theta Fuel', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(48, 'LOL', 'EMOGI', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(49, 'LUNA', 'Terra', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(50, 'VID', 'VideoCoin', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(51, 'MXW', 'Maxonrow', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(52, 'SXP', 'Swipe', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(53, 'VIDT', 'VIDT Datalink ', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(54, 'AKRO', 'Akropolis', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(55, 'ROOBEE', 'ROOBEE', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(56, 'AMPL', 'Ampleforth', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(57, 'MAP', 'MAP Protocol', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(58, 'COS', 'Contentos', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(59, 'POL', 'Proof Of Liquidity', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(60, 'ARX', 'ARCS', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(61, 'NWC', 'Newscrypto', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(62, 'BEPRO', 'BEPRO Network', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(63, 'VRA', 'Verasity', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(64, 'KSM', 'Kusama', '2022-04-09 13:12:54', '2022-09-23 13:41:39'),
(65, 'ROAD', 'ROAD', '2022-04-09 13:12:55', '2022-04-09 13:12:55'),
(66, 'SUTER', 'Suterusu', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(67, 'ACOIN', 'Alchemy', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(68, 'VI', 'Vid', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(69, 'AXE', 'Axe', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(70, 'STEEM', 'Steem', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(71, 'SENSO', 'Sensorium', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(72, 'PRE', 'Presearch', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(73, 'XDB', 'DigitalBits', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(74, 'SYLO', 'Sylo', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(75, 'WOM', 'WOM Protocol', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(76, 'LYXE', 'LUKSO', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(77, 'CADH', 'CADH', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(78, 'JST', 'JUST', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(79, 'STX', 'Stacks', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(80, 'USDN', 'Neutrino USDN', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(81, 'XSR', 'Xensor', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(82, 'COMP', 'Compound', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(83, 'DGTX', 'DigitexFutures', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(84, 'KAI', 'KardiaChain Token', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(85, 'DOT', 'Polkadot', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(86, 'EWT', 'Energy Web Token', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(87, 'WEST', 'Waves Enterprise', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(88, 'NVT', 'Nerve', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(89, 'BNS', 'Bitbns', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(90, 'ORN', 'Orion Protocol', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(91, 'PNK', 'Kleros', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(92, 'WAVES', 'Waves', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(93, 'SUKU', 'suku', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(94, 'MLK', 'MiL.k ', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(95, 'DIA', 'DIA', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(96, 'SHA', 'Safe Haven', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(97, 'LINK', 'ChainLink', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(98, 'DMG', 'DMM Governance', '2022-04-09 13:12:55', '2022-04-09 13:12:55'),
(99, 'USDJ', 'USDJ', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(100, 'ALEPH', 'aleph.im', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(101, 'EFX', 'Effect.AI', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(102, 'CKB', 'Nervos Network', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(103, 'UMA', 'UMA', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(104, 'VELO', 'VELO', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(105, 'SUN', 'SunToken', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(106, 'BUY', 'Burency', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(107, 'YFI', 'yearn.finance', '2022-04-09 13:12:55', '2022-09-23 13:41:39'),
(108, 'UNI', 'Uniswap', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(109, 'SNTVT', 'Sentivate', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(110, 'UOS', 'Ultra', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(111, 'SATT', 'Smart Advertising Transaction Token', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(112, 'KTS', 'Kratos', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(113, 'DEGO', 'Dego Finance', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(114, 'UDOO', 'Hyprr', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(115, 'RFUEL', 'Rio Fuel Token', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(116, 'UBX', 'UBX', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(117, 'FIL', 'Filecoin', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(118, 'COMB', 'COMBO', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(119, 'REAP', 'ReapChain', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(120, 'AAVE', 'Aave', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(121, 'TONE', 'TE-FOOD', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(122, 'OPCT', 'Opacity', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(123, 'UQC', 'Uquid Coin', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(124, 'WIS', 'Experty Wisdom Token', '2022-04-09 13:12:55', '2022-04-09 13:12:55'),
(125, 'SHR', 'ShareRing', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(126, 'UBXT', 'UpBots', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(127, 'ROSE', 'Oasis Network', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(128, 'UST', 'TerraUSD', '2022-04-09 13:12:55', '2022-09-23 13:41:45'),
(129, 'CTI', 'ClinTex', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(130, 'ETH2', 'Ethereum2.0', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(131, 'BUX', 'BUX Token', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(132, 'XHV', 'Haven Protocol', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(133, 'PLU', 'Pluton', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(134, 'CAS', 'Cashaa', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(135, 'GRT', 'The Graph', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(136, 'MSWAP', 'MoneySwap', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(137, 'GOM2', 'GoMoney2', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(138, 'REVV', 'REVV', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(139, 'LON', 'Tokenlon', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(140, 'API3', 'API3', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(141, 'SUSHI', 'SushiSwap', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(142, 'UNFI', 'Unifi Protocol DAO', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(143, 'ALPA', 'Alpaca City', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(144, '1INCH', '1INCH Token', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(145, 'HTR', 'Hathor', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(146, 'FRONT', 'Frontier', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(147, 'WBTC', 'Wrapped Bitcoin', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(148, 'HYDRA', 'hydra', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(149, 'MIR', 'Mirror Protocol', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(150, 'DFI', 'DeFiChain', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(151, 'FRM', 'Ferrum Network Token', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(152, 'CRV', 'Curve', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(153, 'BTC3L', 'BTC 3x Long', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(154, 'BTC3S', 'BTC 3x Short', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(155, 'ETH3L', 'ETH 3x Long', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(156, 'ETH3S', 'ETH 3x Short', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(157, 'GZIL', 'Governance ZIL', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(158, 'PROPS', 'Props Token', '2022-04-09 13:12:55', '2022-04-09 13:12:55'),
(159, 'ZEN', 'Horizen', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(160, 'CUDOS', 'Cudos', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(161, 'MAP2', 'LoungeM', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(162, 'REN', 'Ren', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(163, 'LRC', 'LoopringCoin V2', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(164, 'KLV', 'Klever', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(165, 'BOA', 'BOSAGORA', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(166, 'QNT', 'Quant', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(167, 'BAT', 'BAT', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(168, 'DAO', 'DAO Maker', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(169, 'DOGE', 'Dogecoin', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(170, 'STRONG', 'Strong', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(171, 'TRIAS', 'Trias', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(172, 'MITX', 'Morpheus Labs', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(173, 'CAKE', 'PancakeSwap Token', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(174, 'ORAI', 'Oraichain Token', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(175, 'LTX', 'Lattice Token', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(176, 'ZEE', 'ZeroSwapToken', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(177, 'MASK', 'Mask Network', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(178, 'IDEA', 'Ideaology', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(179, 'PHA', 'Phala', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(180, 'SRK', 'SparkPoint', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(181, 'SWINGBY', 'Swingby', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(182, 'AVAX', 'Avalanche', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(183, 'DON', 'donnie_finance', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(184, 'KRL', 'Kryll', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(185, 'POLK', 'Polkamarkets', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(186, 'RNDR', 'Render Token', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(187, 'RLY', 'Rally', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(188, 'ANC', 'Anchor Protocol', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(189, 'SKEY', 'SmartKey', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(190, 'LAYER', 'Unilayer', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(191, 'TARA', 'Taraxa Coin', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(192, 'XYM', 'Symbol', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(193, 'DYP', 'DeFiYieldProtocol', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(194, 'PCX', 'Chainx', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(195, 'ORBS', 'Orbs', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(196, 'DSLA', 'DSLA Protocol', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(197, 'FLUX', 'flux', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(198, 'SAND', 'The Sandbox', '2022-04-09 13:12:55', '2022-09-23 13:41:40'),
(199, 'SPI', 'Shopping.io', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(200, 'GSPI', 'SPI Governance', '2022-04-09 13:12:56', '2022-04-09 13:12:56'),
(201, 'XCUR', 'Curate', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(202, 'VAIOT', 'VAIOT', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(203, 'DODO', 'DODO', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(204, 'PUNDIX', 'Pundi X ', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(205, 'BOSON', 'Boson Protocol', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(206, 'HT', 'Huobi Token', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(207, 'PDEX', 'Polkadex', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(208, 'LABS', 'LABS Group', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(209, 'STRK', 'Strike', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(210, 'PHNX', 'PhoenixDAO', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(211, 'HAI', 'Hacken Token', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(212, 'EQZ', 'Equalizer', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(213, 'FORTH', 'Ampleforth Governance Token', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(214, 'CARR', 'Carnomaly', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(215, 'HORD', 'HORD Token', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(216, 'CGG', 'Chain Guardians', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(217, 'GHX', 'GamerCoin', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(218, 'TCP', 'The Crypto Prophecies', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(219, 'TOWER', 'TOWER', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(220, 'ACE', 'ACENT', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(221, 'STND', 'Standard', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(222, 'LOCG', 'LOCGame', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(223, 'FLY', 'Franklin', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(224, 'CARD', 'Cardstack', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(225, 'XDC', 'XDC Mainnet', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(226, 'CWS', 'Crowns', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(227, 'ADA3S', 'ADA 3x Short', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(228, 'FCL', 'Fractal', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(229, 'SHIB', 'SHIBA INU', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(230, 'POLX', 'Polylastic', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(231, 'KDA', 'Kadena', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(232, 'GOVI', 'GOVI', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(233, 'ICP', 'Internet Computer', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(234, 'CELO', 'Celo', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(235, 'CUSD', 'Celo Dollar', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(236, 'STC', 'Student Coin', '2022-04-09 13:12:56', '2022-09-23 13:41:40'),
(237, 'MATIC', 'Polygon', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(238, 'OGN', 'Origin Protocol', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(239, 'OUSD', 'Origin Dollar', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(240, 'GLQ', 'GraphLinq', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(241, 'TLOS', 'Telos', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(242, 'NIF', 'Unifty', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(243, 'YOP', 'YOP', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(244, 'MXC', 'MXCToken', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(245, 'ERSDL', 'UnFederalReserveToken', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(246, 'ADA3L', 'ADA 3x Long', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(247, 'HOTCROSS', 'Hot Cross', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(248, 'DPI', 'Defi Pulse Index', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(249, 'HYVE', 'HYVE', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(250, 'DAPPX', 'dAppstore Token', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(251, 'FEAR', 'FEAR', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(252, 'KONO', 'Konomi Network', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(253, 'MAHA', 'MahaDAO', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(254, 'UNO', 'UnoRe', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(255, 'PRQ', 'PARSIQ', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(256, 'PYR', 'Vulcan Forged PYR', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(257, 'GLCH', 'Glitch', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(258, 'ALBT', 'AllianceBlock', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(259, 'XCAD', 'XCAD Network', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(260, 'PROM', 'Prom', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(261, 'EOS3L', 'EOS 3x Long', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(262, 'EOS3S', 'EOS 3x Short', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(263, 'BCH3L', 'BCH 3x Long', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(264, 'BCH3S', 'BCH 3x Short', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(265, 'ELON', 'Dogelon', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(266, 'APL', 'Apollo Currency', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(267, 'DIVI', 'Divi', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(268, 'VEED', 'VIMworld', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(269, 'LSS', 'Lossless', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(270, 'JUP', 'Jupiter', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(271, 'AGIX', 'SingularityNET Token', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(272, 'DORA', 'Dora Factory', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(273, 'LPOOL', 'Launchpool token', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(274, 'VET3L', 'VET 3x Long', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(275, 'VET3S', 'VET 3x Short', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(276, 'LTC3L', 'LTC 3x Long', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(277, 'LTC3S', 'LTC 3x Short', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(278, 'ETHO', 'Etho Protocol', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(279, 'POLS', 'Polkastarter', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(280, 'KOK', 'KOK', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(281, 'ABBC', 'ABBC Coin', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(282, 'ZCX', 'Unizen', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(283, 'ROSN', 'Roseon Finance', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(284, 'NORD', 'Nord Finance', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(285, 'GMEE', 'GAMEE', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(286, 'XAVA', 'Avalaunch', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(287, 'AI', 'Multiverse', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(288, 'SFUND', 'Seedify.fund ', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(289, 'IOI', 'IOI Token', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(290, 'ALPACA', 'Alpaca Finance', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(291, 'NFT', 'APENFT', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(292, 'MNST', 'MoonStarter', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(293, 'MEM', 'MEME.COM', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(294, 'DLTA', 'delta.theta', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(295, 'AIOZ', 'AIOZ Network', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(296, 'MARSH', 'Unmarshal', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(297, 'CQT', 'Covalent', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(298, 'HAPI', 'HAPI', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(299, 'GENS', 'Genshiro', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(300, 'YFDAI', 'YFDAI.Finance', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(301, 'FORM', 'Formation Fi', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(302, 'MODEFI', 'Modefi', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(303, 'ARRR', 'Pirate Chain', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(304, 'SPHRI', 'Spherium Finance', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(305, 'CEUR', 'Celo Euro', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(306, 'ASD', 'AscendEX token', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(307, 'EXRD', 'Radix', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(308, 'NGM', 'e-Money', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(309, 'LPT', 'Livepeer', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(310, 'STMX', 'StormX', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(311, 'BOND', 'BarnBridge', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(312, '2CRZ', '2Crazy', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(313, 'ZORT', 'Zort Coin', '2022-04-09 13:12:56', '2022-04-09 13:12:56'),
(314, 'SHFT', 'Shyft', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(315, 'NEAR', 'NEAR Protocol', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(316, 'OOE', 'OpenOcean', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(317, 'DFYN', 'Dfyn Network', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(318, 'CFG', 'Centrifuge', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(319, 'AXC', 'AXIA', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(320, 'MUSH', 'MUSH', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(321, 'SMT', 'SmartMesh', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(322, 'AXS', 'Axie Infinity', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(323, 'CLV', 'Clover Finance', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(324, 'ROUTE', 'Route', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(325, 'KAR', 'Karura', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(326, 'BURP', 'Big Town Chef', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(327, 'DPET', 'My DeFi Pet', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(328, 'PMON', 'Polychain Monsters', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(329, 'ERG', 'Ergo', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(330, 'LITH', 'Lithium', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(331, 'SOL', 'Solana', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(332, 'SLP', 'Smooth Love Potion', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(333, 'XCH', 'Chia Network', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(334, 'HAKA', 'TribeOne', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(335, 'MTL', 'Metal', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(336, 'GALAX', 'Gala Games', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(337, 'CIRUS', 'Cirus', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(338, 'TXA', 'TXA Project', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(339, 'QI', 'BENQI', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(340, 'ODDZ', 'Oddz', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(341, 'PNT', 'pNetwork Token', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(342, 'XPR', 'Proton', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(343, 'TRIBE', 'Tribe', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(344, 'MOVR', 'Moonriver', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(345, 'MAKI', 'MakiSwap', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(346, 'QRDO', 'Qredo Token', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(347, 'WOO', 'WOO Network', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(348, 'WILD', 'Wilder World', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(349, 'SDN', 'Shiden Network', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(350, 'REP', 'Augur', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(351, 'BNT', 'Bancor', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(352, 'OXT', 'Orchid', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(353, 'BAL', 'Balancer', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(354, 'STORJ', 'Storj', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(355, 'YGG', 'Yield Guild Games', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(356, 'NDAU', 'ndau', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(357, 'SDAO', 'Singularity Dao', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(358, 'SKL', 'SKALE  Network', '2022-04-09 13:12:56', '2022-09-23 13:41:41'),
(359, 'NMR', 'Numeraire', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(360, 'XRP3L', 'XRP 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(361, 'XRP3S', 'XRP 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(362, 'TRB', 'Tellor', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(363, 'IXS', 'IX Swap', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(364, 'PBX', 'Paribus', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(365, 'GTC', 'Gitcoin', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(366, 'LUNA3L', 'LUNA 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(367, 'LUNA3S', 'LUNA 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(368, 'DYDX', 'dYdX', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(369, 'EQX', 'EQIFi ', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(370, 'RLC', 'iExec RLC', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(371, 'XNL', 'Chronicle', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(372, 'HBAR', 'Hedera Hashgraph', '2022-04-09 13:12:57', '2022-09-23 13:41:41'),
(373, 'XPRT', 'Persistence', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(374, 'EGLD', 'Elrond Network', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(375, 'FLOW', 'Flow', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(376, 'DOGE3L', 'DOGE 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(377, 'DOGE3S', 'DOGE 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(378, 'NKN', 'NKN', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(379, 'SOL3L', 'SOL 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(380, 'SOL3S', 'SOL 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(381, 'MLN', 'Enzyme', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(382, 'WNCG', 'Wrapped NCG', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(383, 'DMTR', 'Dimitra', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(384, 'LINK3L', 'LINK 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(385, 'LINK3S', 'LINK 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(386, 'DOT3L', 'DOT 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(387, 'DOT3S', 'DOT 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(388, 'KEEP', 'Keep Network', '2022-04-09 13:12:57', '2022-04-09 13:12:57'),
(389, 'DINO', 'DinoSwap', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(390, 'CTSI', 'Cartesi', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(391, 'ALICE', 'MyNeighborAlice', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(392, 'UMB', 'Umbrella Network', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(393, 'OPUL', 'Opulous', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(394, 'ILV', 'Illuvium', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(395, 'BAND', 'Band Protocol', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(396, 'FTT', 'FTX Token', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(397, 'DVPN', 'Sentinel', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(398, 'SKU', 'Sakura', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(399, 'SLIM', 'Solanium', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(400, 'EDG', 'Edgeware', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(401, 'DEXE', 'DeXe', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(402, 'TLM', 'Alien Worlds', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(403, 'RMRK', 'RMRK', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(404, 'RUNE', 'THORChain', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(405, 'MATTER', 'Antimatter', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(406, 'SOV', 'Sovryn', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(407, 'BMON', 'Binamon', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(408, 'C98', 'Coin98', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(409, 'BLOK', 'Bloktopia', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(410, 'SOLR', 'SolRazr', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(411, 'UNI3L', 'UNI 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(412, 'UNI3S', 'UNI 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(413, 'ATOM3L', 'ATOM 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(414, 'ATOM3S', 'ATOM 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(415, 'SIENNA', 'SiennaERC20', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(416, 'PUSH', 'Ethereum Push Notification Service', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(417, 'WSIENNA', 'Sienna', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(418, 'NTVRK', 'Netvrk', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(419, 'YLD', 'YIELD App', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(420, 'FLAME', 'FireStarter', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(421, 'FTM3L', 'FTM 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(422, 'FTM3S', 'FTM 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(423, 'AXS3L', 'AXS 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(424, 'AXS3S', 'AXS 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(425, 'AGLD', 'Adventure Gold', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(426, 'NAKA', 'Nakamoto.Games', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(427, 'REEF', 'Reef', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(428, 'TORN', 'Tornado Cash', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(429, 'TIDAL', 'Tidal Finance', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(430, 'TVK', 'The Virtua Kolect', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(431, 'INJ', 'Injective Protocol', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(432, 'NFTB', 'NFTB', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(433, 'MATIC3L', 'MATIC 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(434, 'MATIC3S', 'MATIC 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(435, 'BNB3L', 'BNB 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(436, 'BNB3S', 'BNB 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(437, 'ALPHA', 'Alpha Finance Lab', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(438, 'BADGER', 'Badger DAO', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(439, 'VEGA', 'Vega Protocol', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(440, 'ZKT', 'zkTube', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(441, 'AR', 'Arweave', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(442, 'XVS', 'Venus', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(443, 'GHST', 'Aavegotchi', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(444, 'PERP', 'Perpetual Protocol', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(445, 'SCLP', 'Scallop', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(446, 'JASMY', 'JasmyCoin', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(447, 'CPOOL', 'Clearpool', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(448, 'LTO', 'LTO Network', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(449, 'SUPER', 'SuperFarm', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(450, 'BASIC', 'BASIC', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(451, 'AURY', 'Aurory', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(452, 'HERO', 'Metahero', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(453, 'XED', 'Exeedme', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(454, 'SWASH', 'Swash Token', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(455, 'NEAR3L', 'NEAR 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(456, 'NEAR3S', 'NEAR 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(457, 'SUSHI3L', 'SUSHI 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(458, 'SUSHI3S', 'SUSHI 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(459, 'DREAMS', 'Dreams Quest', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(460, 'MTRG', 'Meter', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(461, 'QUICK', 'Quickswap', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(462, 'TRU', 'TrueFi', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(463, 'WRX', 'WazirX', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(464, 'TKO', 'Tokocrypto', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(465, 'EPS', 'Ellipsis', '2022-04-09 13:12:57', '2022-04-09 13:12:57'),
(466, 'DATA', 'Streamr', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(467, 'ISP', 'Ispolink Token', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(468, 'CERE', 'Cere Network', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(469, 'SHILL', 'Project SEED', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(470, 'HEGIC', 'Hegic', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(471, 'ERN', 'Ethernity Chain', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(472, 'PAXG', 'PAX Gold', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(473, 'AAVE3L', 'AAVE 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(474, 'AUDIO', 'Audius', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(475, 'AAVE3S', 'AAVE 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(476, 'SAND3L', 'SAND 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(477, 'SAND3S', 'SAND 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(478, 'FTG', 'fantomGO', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(479, 'XTM', 'Torum', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(480, 'ENS', 'Ethereum Name Service', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(481, 'ATA', 'Automata Network', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(482, 'FXS', 'Frax Share', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(483, 'MNW', 'Morpheus.Network', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(484, 'CWAR', 'Cryowar', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(485, 'VXV', 'Vector Space Biosciences', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(486, 'DPR', 'Deeper Network', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(487, 'SWP', 'Kava Swap', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(488, 'PBR', 'PolkaBridge', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(489, 'WNXM', 'Wrapped NXM', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(490, 'ANT', 'Aragon', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(491, 'ADX', 'Ambire AdEx', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(492, 'TWT', 'Trust Wallet Token', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(493, 'OM', 'MANTRA DAO', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(494, 'AVAX3L', 'AVAX 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(495, 'AVAX3S', 'AVAX 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(496, 'MANA3L', 'MANA 3x Long', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(497, 'MANA3S', 'MANA 3x Short', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(498, 'GLM', 'Golem', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(499, 'NUM', 'Numbers Protocol', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(500, 'BAKE', 'BakeryToken', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(501, 'MONI', 'Monsta Infinite', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(502, 'TRADE', 'Polytrade', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(503, 'VLX', 'Velas', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(504, '1EARTH', 'EarthFund', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(505, 'KAVA', 'KAVA', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(506, 'LIKE', 'Only1', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(507, 'LIT', 'Litentry', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(508, 'MFT', 'Hifi Finance', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(509, 'SFP', 'SafePal', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(510, 'BURGER', 'Burger Swap', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(511, 'ILA', 'Infinite Launch', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(512, 'CREAM', 'Cream Finance', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(513, 'RSR', 'Reserve Rights', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(514, 'GODS', 'Gods Unchained', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(515, 'IMX', 'Immutable X', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(516, 'KMA', 'Calamari', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(517, 'SRM', 'Serum', '2022-04-09 13:12:57', '2022-09-23 13:41:42'),
(518, 'POLC', 'PolkaCity', '2022-04-09 13:12:58', '2022-09-23 13:41:42'),
(519, 'KIN', 'Kin', '2022-04-09 13:12:58', '2022-09-23 13:41:42'),
(520, 'XTAG', 'xHashtag', '2022-04-09 13:12:58', '2022-09-23 13:41:42'),
(521, 'VR', 'Victoria VR', '2022-04-09 13:12:58', '2022-09-23 13:41:42'),
(522, 'MNET', 'MINE Network', '2022-04-09 13:12:58', '2022-09-23 13:41:42'),
(523, 'NGC', 'NAGA Coin', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(524, 'GALAX3L', 'GALAX 3x Long', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(525, 'GALAX3S', 'GALAX 3x Short', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(526, 'NU', 'NuCypher', '2022-04-09 13:12:58', '2022-04-09 13:12:58'),
(527, 'HARD', 'Kava Lend', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(528, 'UNIC', 'Unicly', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(529, 'POND', 'Marlin', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(530, 'MDX', 'Mdex', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(531, 'EPIK', 'Epik Prime', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(532, 'NGL', 'Gold Fever', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(533, 'KDON', 'Don-key', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(534, 'PEL', 'Propel', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(535, 'KLAY', 'Klaytn', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(536, 'LINA', 'Linear', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(537, 'CREDI', 'Credefi', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(538, 'TRVL', 'Dtravel', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(539, 'ARKER', 'ARKER', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(540, 'XEC', 'eCash', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(541, 'BONDLY', 'Forj(Bondly)', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(542, 'LACE', 'Lovelace World', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(543, 'HEART', 'Humans', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(544, 'UNB', 'Unbound', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(545, 'H3RO3S', 'H3RO3S', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(546, 'FORWARD', 'Forward Protocol', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(547, 'GAFI', 'GameFi', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(548, 'KOL', 'Kollect', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(549, 'CHMB', 'Chumbi Valley', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(550, 'FALCONS', 'FalconSwaps Token', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(551, 'UFO', 'UFO Gaming', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(552, 'GEEQ', 'Geeq', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(553, 'RACEFI', 'RaceFi', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(554, 'ORC', 'Orbit Chain', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(555, 'PEOPLE', 'ConstitutionDAO', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(556, 'ADS', 'Alkimi', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(557, 'OOKI', 'Ooki', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(558, 'SOS', 'OpenDAO', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(559, 'WHALE', 'WHALE', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(560, 'IOTA', 'IOTA', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(561, 'CWEB', 'Coinweb', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(562, 'HNT', 'Helium', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(563, 'GGG', 'Good Games Guild', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(564, 'CLH', 'CLearingHouse Token', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(565, 'REVU', 'Revuto', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(566, 'PLGR', 'Pledge', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(567, 'GLMR', 'Glimmer', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(568, 'CTC', 'Creditcoin', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(569, 'LOVE', 'Deesse', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(570, 'GARI', 'Gari Network', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(571, 'FRR', 'Frontrow', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(572, 'ASTR', 'Astar Network', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(573, 'ERTHA', 'Ertha', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(574, 'FCON', 'Space Falcon', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(575, 'ACA', 'Acala', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(576, 'MTS', 'Metastrike', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(577, 'ROAR', 'AlphaDEX', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(578, 'HBB', 'Hubble Protocol', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(579, 'SURV', 'Survival Game Online', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(580, 'AMP', 'Amp', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(581, 'CVX', 'Convex Finance', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(582, 'MJT', 'MojitoSwap', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(583, 'XNO', 'Nano', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(584, 'SHX', 'Stronghold Token', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(585, 'STARLY', 'Starly', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(586, 'ONSTON', 'ONSTON', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(587, 'WMT', 'World Mobile Token', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(588, 'RANKER', 'RankerDAO', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(589, 'LAVAX', 'LavaX Labs', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(590, 'MARS4', 'MARS4', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(591, 'METIS', 'Metis', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(592, 'WAL', 'The Wasted Lands', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(593, 'BULL', 'Bullieverse', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(594, 'SON', 'Souni', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(595, 'MELOS', 'Melos Studio', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(596, 'APE', 'ApeCoin', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(597, 'GMT', 'STEPN', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(598, 'BICO', 'Biconomy', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(599, 'STG', 'Stargate Finance', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(600, 'LMR', 'Lumerin', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(601, 'LOKA', 'League of Kingdoms Arena', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(602, 'URUS', 'Aurox', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(603, 'BNC', 'Bifrost', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(604, 'JAM', 'Geojam', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(605, 'LBP', 'LaunchBlock', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(606, 'CFX', 'Conflux', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(607, 'XCN', 'Chain', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(608, 'KP3R', 'Keep3rV1', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(609, 'LOOKS', 'LooksRare', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(610, 'UPO', 'UpOnly', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(611, 'INDI', 'IndiGG', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(612, 'TITAN', 'TitanSwap', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(613, 'SPELL', 'Spell Token', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(614, 'SLCL', 'Solcial', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(615, 'RPC', 'Ripio Coin', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(616, 'CEEK', 'CEEK VR', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(617, 'T', 'Threshold', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(618, 'BETA', 'Beta Finance', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(619, 'VEMP', 'vEmpire DDAO', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(620, 'NHCT', 'Hurricane NFT', '2022-04-09 13:12:58', '2022-09-23 13:41:43'),
(621, 'PIKASTER', 'PIKASTER', '2022-04-09 13:12:58', '2022-04-09 13:12:58'),
(622, 'VSYS', 'V Systems', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(623, 'ACT', 'AChain', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(624, 'ADB', 'Adbank', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(625, 'AERGO', 'Aergo', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(626, 'AION', 'Aion', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(627, 'AMB', 'Ambrosus', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(628, 'AOA', 'AURORA (AOA)', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(629, 'AVA', 'Travala', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(630, 'AXPR', 'AXpire', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(631, 'BAX', 'BABB', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(632, 'BCD', 'Bitcoin Diamond', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(633, 'BCH', 'Bitcoin Cash', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(634, 'BSV', 'BCHSV', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(635, 'BTC', 'Bitcoin', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(636, 'BTCP', 'Bitcoin Private', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(637, 'BTM', 'Bytom', '2022-04-09 13:12:58', '2022-04-09 13:12:58'),
(638, 'BU', 'BUMO', '2022-04-09 13:12:58', '2022-04-09 13:12:58'),
(639, 'CAPP', 'Cappasity', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(640, 'CBC', 'CBC.network', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(641, 'CHSB', 'SwissBorg', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(642, 'COFI', 'CoinFi', '2022-04-09 13:12:58', '2022-04-09 13:12:58'),
(643, 'COV', 'Covesting', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(644, 'CPC', 'CPChain', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(645, 'CRPT', 'Crypterium', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(646, 'CS', 'Credits', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(647, 'CV', 'carVertical', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(648, 'CVC', 'Civic', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(649, 'CXO', 'CargoX', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(650, 'DACC', 'Decentralized Accessible Content Chain', '2022-04-09 13:12:58', '2022-04-09 13:12:58'),
(651, 'DAG', 'Constellation', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(652, 'DAI', 'Dai', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(653, 'DASH', 'Dash', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(654, 'DATX', 'DATx', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(655, 'DBC', 'DeepBrain Chain', '2022-04-09 13:12:58', '2022-04-09 13:12:58'),
(656, 'DCR', 'Decred', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(657, 'DENT', 'Dent', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(658, 'DGB', 'Digibyte', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(659, 'DOCK', 'DOCK', '2022-04-09 13:12:58', '2022-09-23 13:41:44'),
(660, 'DRGN', 'Dragonchain', '2022-04-09 13:12:59', '2022-09-23 13:41:44'),
(661, 'EDN', 'EdenChain', '2022-04-09 13:12:59', '2022-04-09 13:12:59'),
(662, 'ELA', 'Elastos', '2022-04-09 13:12:59', '2022-09-23 13:41:44'),
(663, 'ELF', 'aelf', '2022-04-09 13:12:59', '2022-09-23 13:41:44'),
(664, 'ENJ', 'Enjin Coin', '2022-04-09 13:12:59', '2022-09-23 13:41:44'),
(665, 'EOS', 'EOS', '2022-04-09 13:12:59', '2022-09-23 13:41:44'),
(666, 'EPRX', 'EPRX', '2022-04-09 13:12:59', '2022-09-23 13:41:44'),
(667, 'ETC', 'Ethereum Classic', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(668, 'ETF', 'Ethereum Fog', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(669, 'ETH', 'Ethereum', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(670, 'ETN', 'Electroneum', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(671, 'FTM', 'Fantom', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(672, 'GAS', 'NeoGas', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(673, 'GGC', 'GramGold Coin', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(674, 'GMB', 'GAMB', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(675, 'GO', 'GoChain', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(676, 'GOD', 'Bitcoin God', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(677, 'HPB', 'High Performance Blockch', '2022-04-09 13:12:59', '2022-04-09 13:12:59'),
(678, 'IOST', 'Internet of Services', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(679, 'IOTX', 'IoTeX', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(680, 'J8T', 'JET8', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(681, 'KAT', 'Kambria', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(682, 'KCS', 'KuCoin Token', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(683, 'KEY', 'SelfKey', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(684, 'KNC', 'Kyber Network', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(685, 'LOC', 'LockTrip', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(686, 'LOOM', 'Loom Network', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(687, 'LSK', 'Lisk', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(688, 'LTC', 'Litecoin', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(689, 'LYM', 'Lympo', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(690, 'MAN', 'Matrix AI Network', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(691, 'MANA', 'Decentraland', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(692, 'MCT', 'Master Contract Token ', '2022-04-09 13:12:59', '2022-04-09 13:12:59');
INSERT INTO `trading_currencies` (`id`, `symbol`, `name`, `created_at`, `updated_at`) VALUES
(693, 'MKR', 'Maker', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(694, 'MVP', 'Merculet', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(695, 'MWAT', 'Restart Energy', '2022-04-09 13:12:59', '2022-04-09 13:12:59'),
(696, 'NEBL', 'Neblio', '2022-04-09 13:12:59', '2022-04-09 13:12:59'),
(697, 'NEO', 'NEO', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(698, 'NULS', 'Nuls', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(699, 'OLT', 'OneLedger', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(700, 'OMG', 'OmiseGO', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(701, 'ONG', 'ONG', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(702, 'ONION', 'DeepOnion', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(703, 'ONT', 'Ontology', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(704, 'OPEN', 'OPEN Platform', '2022-04-09 13:12:59', '2022-04-09 13:12:59'),
(705, 'PAX', 'Paxos Standard', '2022-04-09 13:12:59', '2022-04-09 13:12:59'),
(706, 'PLAY', 'HEROcoin', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(707, 'POWR', 'Power Ledger', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(708, 'PPT', 'Populous', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(709, 'QKC', 'QuarkChain', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(710, 'QTUM', 'Qtum', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(711, 'R', 'Revain', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(712, 'REQ', 'Request', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(713, 'SNT', 'Status', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(714, 'SNX', 'Synthetix Network Token', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(715, 'SOUL', 'Phantasma', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(716, 'SUSD', 'sUSD', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(717, 'TEL', 'Telcoin', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(718, 'TIME', 'Chrono.tech', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(719, 'TKY', 'THEKEY', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(720, 'TOMO', 'TomoChain', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(721, 'TRAC', 'OriginTrail', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(722, 'TRX', 'Tron', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(723, 'TUSD', 'TrueUSD', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(724, 'USDC', 'USD Coin', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(725, 'USDT', 'Tether', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(726, 'UTK', 'UTRUST', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(727, 'VET', 'Vechain', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(728, 'VTHO', 'VeThor Token', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(729, 'WAN', 'Wanchain', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(730, 'WAXP', 'WAX', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(731, 'WTC', 'Walton', '2022-04-09 13:12:59', '2022-04-09 13:12:59'),
(732, 'XLM', 'Stellar', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(733, 'XRP', 'XRP', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(734, 'XYO', 'XYO Network', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(735, 'ZIL', 'Zilliqa', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(736, 'ZRX', '0X', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(737, 'GRIN', 'Grin', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(738, 'SOLVE', 'SOLVE', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(739, 'BTT', 'BitTorrent (New)', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(740, 'MHC', 'MetaHash', '2022-04-09 13:12:59', '2022-09-23 13:41:45'),
(741, 'FRA', 'Findora', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(742, 'ARNM', 'Arenum', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(743, 'VISION', 'VisionGame', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(744, 'ALPINE', 'Alpine F1 Team Fan Token', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(745, 'COCOS', 'Cocos-BCX', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(746, 'BNX', 'BinaryX', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(747, 'ZBC', 'Zebec Protocol', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(748, 'WOOP', 'Woonkly Power', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(749, 'NYM', 'NYM', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(750, 'VOXEL', 'Voxies', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(751, 'PSTAKE', 'pSTAKE Finance', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(752, 'SPA', 'Sperax', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(753, 'RACA', 'Radio Caca', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(754, 'DAR', 'Mines of Dalarnia', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(755, 'SYNR', 'MOBLAND', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(756, 'MV', 'GensoKishi Metaverse', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(757, 'XDEFI', 'XDEFI Wallet', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(758, 'HAWK', 'Hawksight', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(759, 'SWFTC', 'SwftCoin', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(760, 'XWG', 'X World Games', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(761, 'IDEX', 'IDEX', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(762, 'PLATO', 'Plato Farm', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(763, 'BRWL', 'Blockchain Brawlers', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(764, 'TAUM', 'Orbitau Taureum', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(765, 'CELR', 'Celer Network', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(766, 'ITAMCUBE', 'CUBE', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(767, 'AURORA', 'AURORA', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(768, 'ELITEHERO', 'CEBG', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(769, 'POSI', 'Position Exchange', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(770, 'SIN', 'Sinverse', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(771, 'COOHA', 'CoolHash', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(772, 'EPK', 'EpiK Protocol', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(773, 'PLD', 'Plutonians', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(774, 'EPX', 'Ellipsis X', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(775, 'PSL', 'Pastel', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(776, 'SYS', 'Syscoin', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(777, 'OVR', 'OVR', '2022-09-12 21:41:15', '2022-09-23 13:41:43'),
(778, 'PKF', 'PolkaFoundry', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(779, 'DG', 'Decentral Games', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(780, 'BRISE', 'Bitgert', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(781, 'PLY', 'Aurigami', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(782, 'GST', 'Green Satoshi Token', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(783, 'AKT', 'Akash Network', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(784, 'FSN', 'Fusion', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(785, 'GAL', 'Galxe', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(786, 'FITFI', 'Step App', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(787, 'BSW', 'Biswap', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(788, 'H2O', 'H2O DAO', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(789, 'AUSD', 'Acala', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(790, 'GMM', 'Gamium', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(791, 'FCD', 'FreshCut Diamond', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(792, 'BOBA', 'Boba Network', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(793, 'XRACER', 'XRush', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(794, 'BFC', 'Bifrost', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(795, 'BIFI', 'BiFi', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(796, 'KARA', 'KaraStar', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(797, 'DFA', 'DeFine', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(798, 'KYL', 'Kylin Network', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(799, 'CELT', 'Celestial', '2022-09-12 21:41:15', '2022-09-23 13:41:44'),
(800, 'MBL', 'MovieBloc', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(801, 'DUSK', 'Dusk Network', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(802, 'CCD', 'Concordium', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(803, 'USDD', 'Decentralized USD', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(804, 'MBOX', 'Mobox', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(805, 'SCRT', 'Secret', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(806, 'MLS', 'Pikaster', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(807, 'AFK', 'AFKDAO', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(808, 'ACH', 'Alchemy Pay', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(809, 'APE3L', 'APE 3x Long', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(810, 'APE3S', 'APE 3x Short', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(811, 'GMT3L', 'GMT 3x Long', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(812, 'GMT3S', 'GMT 3x Short', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(813, 'IHC', 'Inflation Hedging Coin', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(814, 'STORE', 'Bit.Store', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(815, 'DOSE', 'DOSE', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(816, 'LUNC', 'Terra Classic', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(817, 'USTC', 'Terra Classic USD', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(818, 'JASMY3L', 'JASMY 3x Long', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(819, 'JASMY3S', 'JASMY 3x Short', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(820, 'IDLENFT', 'IdleStoneage', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(821, 'OP', 'Optimism', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(822, 'EVER', 'Everscale', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(823, 'ICX', 'icon', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(824, 'MOOV', 'Dotmoovs', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(825, 'USDP', 'Pax Dollar', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(826, 'WELL', 'Moonwell', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(827, 'CSPR', 'Casper', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(828, 'FORT', 'Forta', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(829, 'REV3L', 'REV3AL', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(830, 'WEMIX', 'Wemix', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(831, 'OGV', 'Origin Dollar Governance', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(832, 'OLE', 'OpenLeverage', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(833, 'LDO', 'Lido DAO', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(834, 'CULT', 'Cult DAO', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(835, 'RBP', 'Rare Ball Portion', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(836, 'SRBP', 'Super Rare Ball Portion', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(837, 'HIBAYC', 'hiBAYC', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(838, 'HIPUNKS', 'hiPUNKS', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(839, 'BUSD', 'Binance USD', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(840, 'FIDA', 'Bonfida', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(841, 'WOMBAT', 'Wombat', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(842, 'FT', 'Fracton Protocol', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(843, 'HIENS4', 'hiENS4', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(844, 'EGAME', 'EVERY GAME', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(845, 'STEPWATCH', 'StepWatch', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(846, 'HISAND33', 'hiSAND33', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(847, 'XRD', 'XRD', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(848, 'PIKASTER2', 'Pikaster', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(849, 'DC', 'Dogechain', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(850, 'HIENS3', 'hiENS3', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(851, 'NEER', 'Metaverse.Network & Bit.Country', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(852, 'RVN', 'Ravencoin', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(853, 'MC', 'Mechaverse', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(854, 'PEEL', 'Meta Apes', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(855, 'SDL', 'Saddle DAO', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(856, 'HIODBS', 'hiODBS', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(857, 'SWEAT', 'Sweat Economy', '2022-09-12 21:41:16', '2022-09-23 13:41:44'),
(858, 'CMP', 'Caduceus', '2022-09-23 12:26:58', '2022-09-23 13:41:44'),
(859, 'PIX', 'PIXIE', '2022-09-23 12:26:58', '2022-09-23 13:41:44'),
(860, 'HIDOODLES', 'hiDOODLES', '2022-09-23 12:26:58', '2022-09-23 13:41:44'),
(861, 'MPLX', 'Metaplex', '2022-09-23 12:26:58', '2022-09-23 13:41:44'),
(862, 'ETHW', 'ETHPoW', '2022-09-23 12:26:58', '2022-09-23 13:41:44'),
(863, 'QUARTZ', 'Sandclock', '2022-09-23 12:26:58', '2022-09-23 13:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `trading_logs`
--

CREATE TABLE `trading_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `trade_start` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trade_stop` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_converted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.00000',
  `pair` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leverage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `sl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trading_logs`
--

INSERT INTO `trading_logs` (`id`, `user_id`, `trade_start`, `trade_stop`, `amount`, `amount_converted`, `price`, `pair`, `order`, `order_type`, `leverage`, `tp`, `sl`, `status`, `created_at`, `updated_at`) VALUES
(1, 2, '1666285925', '1666290845', '0.01', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '12%', '0', '0', 'lose', '2022-10-20 16:12:06', '2022-11-01 20:33:19'),
(2, 2, '1666285967', '1666293287', '0.01', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '12%', '0', '0', 'lose', '2022-10-20 16:12:48', '2022-11-01 20:33:19'),
(3, 2, '1666286108', '1666289828', '0.01', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '12%', '0', '0', 'lose', '2022-10-20 16:15:11', '2022-11-01 20:33:19'),
(4, 2, '1666286471', '1666296851', '0.003', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '0', '0', '0', 'lose', '2022-10-20 16:21:12', '2022-11-01 20:33:20'),
(5, 2, '1666286579', '1666295999', '0.01', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '30%', '0', '0', 'lose', '2022-10-20 16:23:00', '2022-11-01 20:33:20'),
(6, 2, '1666286683', '1666298083', '0.1', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '0', '0', '0', 'lose', '2022-10-20 16:24:45', '2022-11-01 20:33:20'),
(7, 2, '1666290785', '1666297505', '0.2', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '0', '0', '0', 'lose', '2022-10-20 17:33:06', '2022-11-01 20:33:20'),
(8, 2, '1666290986', '1666292966', '0.1', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '0', '0', '0', 'lose', '2022-10-20 17:36:27', '2022-11-01 20:33:20'),
(9, 2, '1666291183', '1666300783', '0.1', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '17%', '0', '0', 'lose', '2022-10-20 17:39:43', '2022-11-01 20:33:20'),
(10, 2, '1666291354', '1666297954', '0.003', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '0', '0', '0', 'lose', '2022-10-20 17:42:34', '2022-11-01 20:33:20'),
(11, 2, '1666291451', '1666295951', '0.004', '0', '0.00000', 'BTC_USDT', 'market', 'sell', '0', '0', '0', 'lose', '2022-10-20 17:44:13', '2022-11-01 20:33:20'),
(12, 2, '1666292301', '1666302021', '0.0002', '0', '0.00000', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 17:58:23', '2022-11-01 20:33:20'),
(13, 2, '1666295600', '1666302020', '0.22', '1.1540656684348E-5', '19063.04', 'BTC_USDT', 'market', 'sell', '0', '0', '0', 'lose', '2022-10-20 18:53:21', '2022-11-01 20:33:20'),
(14, 2, '1666296862', '1666307662', '0.002', '1.0494164981916E-7', '19058.21', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 19:14:23', '2022-11-01 20:33:20'),
(15, 2, '1666296909', '1666305729', '0.3', '1.5739001192492E-5', '19060.93', 'BTC_USDT', 'market', 'sell', '0', '0', '0', 'lose', '2022-10-20 19:15:12', '2022-11-01 20:33:20'),
(16, 2, '1666297209', '1666303689', '0.0003', '1.5758379912478E-8', '19037.49', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 19:20:11', '2022-11-01 20:33:20'),
(17, 2, '1666297736', '1666305716', '0.0005', '0.0005', '19005.41', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 19:28:57', '2022-11-01 20:33:20'),
(18, 2, '1666297776', '1666302996', '0.004', '0.004', '19015.36', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 19:29:36', '2022-11-01 20:33:20'),
(19, 2, '1666298624', '1666300844', '0.002', '0.002', '19041.63', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 19:43:45', '2022-11-01 20:33:20'),
(20, 2, '1666299423', '1666306803', '0.000004', '4.0E-6', '19018.37', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 19:57:04', '2022-11-01 20:33:20'),
(21, 2, '1666299505', '1666306945', '0.001', '0.001', '19029.12', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 19:58:27', '2022-11-01 20:33:20'),
(22, 2, '1666299580', '1666301920', '0.001', '0.001', '19026.58', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 19:59:41', '2022-11-01 20:33:20'),
(23, 2, '1666299584', '1666302524', '0.001', '0.001', '19026.58', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 19:59:46', '2022-11-01 20:33:20'),
(24, 2, '1666300167', '1666308867', '0.00000005', '5.0E-8', '19026.15', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 20:09:28', '2022-11-01 20:33:20'),
(25, 2, '1666300294', '1666302454', '0.00004', '4.0E-5', '19032.69', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 20:11:35', '2022-11-01 20:33:20'),
(26, 2, '1666300396', '1666305856', '0.0005', '0.0005', '19035.19', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 20:13:17', '2022-11-01 20:33:21'),
(27, 2, '1666300442', '1666311002', '0.002', '38.07038', '19042.16', 'BTC_USDT', 'market', 'sell', '0', '0', '0', 'lose', '2022-10-20 20:14:03', '2022-11-01 20:33:21'),
(28, 2, '1666300466', '1666305806', '0.0007', '0.0007', '19042.16', 'BTC_USDT', 'market', 'buy', '0', '0', '0', 'lose', '2022-10-20 20:14:27', '2022-11-01 20:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `trading_pairs`
--

CREATE TABLE `trading_pairs` (
  `id` bigint UNSIGNED NOT NULL,
  `pairs` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trading_pairs`
--

INSERT INTO `trading_pairs` (`id`, `pairs`, `created_at`, `updated_at`) VALUES
(1, '[\"BTS_BTC\",\"DASH_BTC\",\"DOGE_BTC\",\"LTC_BTC\",\"NXT_BTC\",\"STR_BTC\",\"XEM_BTC\",\"XMR_BTC\",\"XRP_BTC\",\"BTC_USDT\",\"DASH_USDT\",\"LTC_USDT\",\"STR_USDT\",\"XMR_USDT\",\"XRP_USDT\",\"ETH_BTC\",\"ETH_USDT\",\"SC_BTC\",\"DCR_BTC\",\"LSK_BTC\",\"STEEM_BTC\",\"ETC_BTC\",\"ETC_ETH\",\"ETC_USDT\",\"ARDR_BTC\",\"ZEC_BTC\",\"ZEC_ETH\",\"ZEC_USDT\",\"ZRX_BTC\",\"ZRX_ETH\",\"CVC_BTC\",\"OMG_BTC\",\"GAS_BTC\",\"STORJ_BTC\",\"EOS_BTC\",\"EOS_ETH\",\"EOS_USDT\",\"SNT_BTC\",\"KNC_BTC\",\"BAT_BTC\",\"BAT_USDT\",\"LOOM_BTC\",\"DOGE_USDT\",\"LSK_USDT\",\"SC_USDT\",\"ZRX_USDT\",\"QTUM_BTC\",\"QTUM_USDT\",\"BTC_USDC\",\"ETH_USDC\",\"USDT_USDC\",\"MANA_BTC\",\"MANA_USDT\",\"BNT_BTC\",\"BCHSV_BTC\",\"BCHSV_USDC\",\"XRP_USDC\",\"XMR_USDC\",\"STR_USDC\",\"DOGE_USDC\",\"LTC_USDC\",\"ZEC_USDC\",\"FOAM_BTC\",\"NMR_BTC\",\"POLY_BTC\",\"LPT_BTC\",\"ATOM_BTC\",\"ATOM_USDC\",\"ATOM_USDT\",\"DASH_USDC\",\"EOS_USDC\",\"ETC_USDC\",\"BCHSV_USDT\",\"TRX_BTC\",\"TRX_USDC\",\"TRX_USDT\",\"ETH_TRX\",\"XRP_TRX\",\"BTT_USDT\",\"BTT_TRX\",\"WIN_USDT\",\"WIN_TRX\",\"STEEM_TRX\",\"LINK_BTC\",\"LINK_TRX\",\"XTZ_BTC\",\"XTZ_USDT\",\"XTZ_TRX\",\"BEAR_USDT\",\"BULL_USDT\",\"TRXBEAR_USDT\",\"TRXBULL_USDT\",\"USDP_USDT\",\"USDJ_USDT\",\"SNX_BTC\",\"SNX_USDT\",\"SNX_TRX\",\"BSVBEAR_USDT\",\"BSVBULL_USDT\",\"MATIC_BTC\",\"MATIC_USDT\",\"MATIC_TRX\",\"BCHBEAR_USDT\",\"BCHBULL_USDT\",\"ETHBEAR_USDT\",\"ETHBULL_USDT\",\"MKR_BTC\",\"MKR_USDT\",\"BVOL_USDT\",\"IBVOL_USDT\",\"DAI_USDT\",\"NEO_BTC\",\"NEO_USDT\",\"NEO_TRX\",\"SWFTC_BTC\",\"SWFTC_USDT\",\"SWFTC_TRX\",\"JST_USDT\",\"JST_TRX\",\"STEEM_USDT\",\"LINK_USDT\",\"AVA_BTC\",\"AVA_USDT\",\"AVA_TRX\",\"XRPBULL_USDT\",\"XRPBEAR_USDT\",\"EOSBULL_USDT\",\"EOSBEAR_USDT\",\"LINKBULL_USDT\",\"LINKBEAR_USDT\",\"CHR_BTC\",\"CHR_USDT\",\"CHR_TRX\",\"BTC_BNB\",\"BNB_USDT\",\"BUSD_USDT\",\"BNB_TRX\",\"BNB_BUSD\",\"BTC_BUSD\",\"MDT_BTC\",\"MDT_USDT\",\"MDT_TRX\",\"COMP_USDT\",\"COMP_ETH\",\"CUSDT_USDT\",\"REN_BTC\",\"REN_USDT\",\"LRC_BTC\",\"LRC_USDT\",\"BAL_USDT\",\"WRX_BTC\",\"WRX_USDT\",\"WRX_TRX\",\"STAKE_USDT\",\"SXP_BTC\",\"SXP_USDT\",\"SXP_TRX\",\"MTA_USDT\",\"YFI_USDT\",\"STPT_BTC\",\"STPT_USDT\",\"DEC_USDT\",\"UMA_USDT\",\"KTON_USDT\",\"RING_USDT\",\"SWAP_BTC\",\"SWAP_USDT\",\"EXE_BTC\",\"EXE_USDT\",\"TRADE_USDT\",\"GEEQ_USDT\",\"BAND_USDT\",\"DOS_USDT\",\"DIA_USDT\",\"ZAP_USDT\",\"PERX_USDT\",\"TRB_USDT\",\"CRV_USDT\",\"OM_USDT\",\"OCEAN_USDT\",\"BLY_USDT\",\"SWINGBY_BTC\",\"SWINGBY_USDT\",\"SWINGBY_TRX\",\"PRQ_USDT\",\"DOT_USDT\",\"RSR_USDT\",\"WNXM_USDT\",\"FCT2_USDT\",\"FCT2_BTC\",\"SUSHI_USDT\",\"YFII_USDT\",\"YFL_USDT\",\"JFI_USDT\",\"CORN_USDT\",\"SWRV_USDT\",\"FSW_USDT\",\"FUND_USDT\",\"FUND_TRX\",\"FUND_BTC\",\"HGET_USDT\",\"HGET_BTC\",\"AKRO_USDT\",\"AKRO_BTC\",\"UNI_USDT\",\"DHT_USDT\",\"MEME_USDT\",\"CVP_USDT\",\"GHST_USDT\",\"REPV2_BTC\",\"REPV2_USDT\",\"RARI_USDT\",\"DICE_USDT\",\"DICE_TRX\",\"AMP_BTC\",\"AMP_USDT\",\"AMP_TRX\",\"SAND_BTC\",\"SAND_USDT\",\"RFUEL_USDT\",\"VALUE_USDT\",\"POLS_USDT\",\"AAVE_BTC\",\"AAVE_USDT\",\"BID_BTC\",\"BID_USDT\",\"CVT_BTC\",\"CVT_USDT\",\"INJ_BTC\",\"INJ_USDT\",\"BCH_BTC\",\"BCH_USDT\",\"BCH_USDC\",\"SENSO_BTC\",\"SENSO_USDT\",\"KP3R_USDT\",\"GLM_BTC\",\"GLM_USDT\",\"ZLOT_USDT\",\"WBTC_BTC\",\"WBTC_USDT\",\"NU_USDT\",\"FRONT_BTC\",\"FRONT_USDT\",\"API3_USDT\",\"BADGER_USDT\",\"FARM_BTC\",\"FARM_USDT\",\"DOT_BTC\",\"GRT_USDT\",\"XFLR_USDT\",\"ESD_USDT\",\"ONEINCH_USDT\",\"REEF_USDT\",\"LON_USDT\",\"ROOK_USDT\",\"TRU_USDT\",\"CUDOS_USDT\",\"BOND_USDT\",\"TUSD_USDT\",\"TUSD_USDC\",\"ADABEAR_USDT\",\"ADABULL_USDT\",\"LTCBEAR_USDT\",\"LTCBULL_USDT\",\"XLMBEAR_USDT\",\"XLMBULL_USDT\",\"WETH_USDT\",\"TRU_BTC\",\"FTT_USDT\",\"SRM_USDT\",\"LPT_USDT\",\"BTC_TUSD\",\"ETH_TUSD\",\"ALPHA_USDT\",\"TORN_USDT\",\"ZKS_USDT\",\"RNDR_USDT\",\"VSP_USDT\",\"VSP_TRX\",\"BDP_USDT\",\"ADD_USDT\",\"KCS_USDT\",\"BTCST_USDT\",\"SFI_USDT\",\"FIL_BTC\",\"FIL_USDT\",\"XYM_BTC\",\"XYM_USDT\",\"LIVE_USDT\",\"SHIB_USDT\",\"AKITA_USDT\",\"B20_USDT\",\"KLV_USDT\",\"KLV_BTC\",\"KLV_TRX\",\"LQTY_USDT\",\"NFTX_USDT\",\"MIR_USDT\",\"DEGO_USDT\",\"ELON_USDT\",\"MIST_USDT\",\"XOR_USDT\",\"QUICK_USDT\",\"MVL_USDT\",\"NFT_USDT\",\"NFT_TRX\",\"HT_USDT\",\"CTSI_USDT\",\"RLC_USDT\",\"ERSDL_USDT\",\"LEASH_USDT\",\"KISHU_TRX\",\"GTC_USDT\",\"OKB_USDT\",\"POL_USDT\",\"SUN_USDT\",\"SUN_TRX\",\"XEC_USDT\",\"CAKE_USDT\",\"XVS_USDT\",\"BURGER_USDT\",\"AXS_USDT\",\"YFX_USDT\",\"YFX_BTC\",\"ALPACA_USDT\",\"C98_USDT\",\"PERP_USDT\",\"TRU_TUSD\",\"ACH1_USDT\",\"CLV_USDT\",\"YGG_USDT\",\"ALICE_USDT\",\"RD_USDT\",\"AUDIO_USDT\",\"BIT_USDT\",\"BNB_USDC\",\"LINK_USDC\",\"MBOX_USDT\",\"OSK_USDT\",\"OSK_TRX\",\"LUMI_USDT\",\"LUMI_TRX\",\"PUNK_USDT\",\"COOL_USDT\",\"MATTER_USDT\",\"MATTER_TRX\",\"AGLD_USDT\",\"MATIC_USDC\",\"MANA_USDC\",\"XEM_USDC\",\"BTT_USDC\",\"SRM_USDC\",\"XEM_USDT\",\"SRM_BTC\",\"DYDX_USDT\",\"XCAD_USDT\",\"GALA_USDT\",\"LDO_USDT\",\"IDIA_USDT\",\"BTRST_USDT\",\"FLOKI_USDT\",\"TOKE_USDT\",\"WNCG_USDT\",\"MLN_USDT\",\"WOO_USDT\",\"ENJ_USDT\",\"CHZ_USDT\",\"SLP_USDT\",\"OGN_USDT\",\"PLA_USDT\",\"TLM_USDT\",\"SUPER_USDT\",\"ILV_USDT\",\"ERN_USDT\",\"SPELL_USDT\",\"ICE_USDT\",\"EFI_USDT\",\"RACA_USDT\",\"AVAX_USDT\",\"GMEE_USDT\",\"MIM_USDT\",\"CVX_USDT\",\"SHIB_USDC\",\"AVAX_USDC\",\"AVAX_BTC\",\"SQUID_USDT\",\"ENS_USDT\",\"IMX_USDT\",\"TIME_USDT\",\"DOE_USDT\",\"GN_USDT\",\"SAITAMA_USDT\",\"BOBA_USDT\",\"POLYDOGE_USDT\",\"FREN_USDT\",\"HEX_USDT\",\"FXS_USDT\",\"DYP_USDT\",\"TRIBE_USDT\",\"KEEP_USDT\",\"SOL_USDT\",\"SOL_BTC\",\"SOL_USDC\",\"DORA_USDT\",\"ORCA_USDT\",\"PEOPLE_USDT\",\"UDT_USDT\",\"PRINTS_USDT\",\"PSP_USDT\",\"NEXO_USDT\",\"FTM_USDT\",\"BNX_USDT\",\"SSG_USDT\",\"QI_USDT\",\"ADA_USDT\",\"REQ_USDT\",\"SAMO_USDT\",\"ATLAS_USDT\",\"POLIS_USDT\",\"FIDA_USDT\",\"STEP_USDT\",\"BICO_USDT\",\"GF_USDT\",\"GODS_USDT\",\"RBN_USDT\",\"PYR_USDT\",\"NCR_USDT\",\"SOS_USDT\",\"HIGH_USDT\",\"FREE_USDT\",\"VOXEL_USDT\",\"ADA_BTC\",\"ADA_USDC\",\"CTC_USDT\",\"METIS_USDT\",\"OOKI_USDT\",\"BTRFLY_USDT\",\"LOOKS_USDT\",\"FTM_USDC\",\"FTM_BTC\",\"SHPING_USDT\",\"LOKA_USDT\",\"VRA_USDT\",\"SUKU_USDT\",\"NCT_USDT\",\"MQST_USDT\",\"STRK_USDT\",\"HUNT_USDT\",\"RND_USDT\",\"TITAN_USDT\",\"UMEE_USDT\",\"X2Y2_USDT\",\"ALPINE_USDT\",\"LQDR_USDT\",\"SPIRIT_USDT\",\"JPEG_USDT\",\"GMT_USDT\",\"AERGO_USDT\",\"APE_USDT\",\"NVIR_USDT\",\"STG_USDT\",\"CULT_USDT\",\"GEIST_USDT\",\"KSM_USDT\",\"ONSTON_USDT\",\"CEEK_USDT\",\"NYM_USDT\",\"CAW_USDT\",\"DAR_USDT\",\"MESH_USDT\",\"USDD_USDT\",\"GAL_USDT\",\"FITFI_USDT\",\"USDD_USDC\",\"BTC_USDD\",\"ETH_USDD\",\"TRX_USDD\",\"BTT_USDD\",\"NFT_USDD\",\"JST_USDD\",\"WIN_USDD\",\"SUN_USDD\",\"TUSD_USDD\",\"ELON_USDD\",\"SHIB_USDD\",\"DOGE_USDD\",\"XRP_USDD\",\"LTC_USDD\",\"DOT_USDD\",\"XCN_USDT\",\"FRAX_USDT\",\"FRAX_USDD\",\"HBB_USDT\",\"USDH_USDT\",\"HBB_USDD\",\"USDH_USDD\",\"KUB_USDT\",\"KUB_USDD\",\"SHIT_USDT\",\"SHIT_USDD\",\"KSM_USDD\",\"WLKN_USDT\",\"WLKN_USDD\",\"BNT_USDT\",\"NXT_USDT\",\"LOOM_USDT\",\"KNC_USDT\",\"SNT_USDT\",\"LUNA_USDT\",\"LUNC_USDT\",\"LUNC_USDD\",\"ETHW_USDD\",\"ETHW_USDT\",\"ETHW_ETH\",\"SANTOS_USDT\",\"NMR_USDT\",\"CVC_USDT\",\"STORJ_USDT\",\"OMG_USDT\",\"ETHF_USDT\",\"ETHF_USDD\",\"POLY_USDT\",\"DC_USDT\",\"DC_USDD\",\"SSV_USDT\",\"SSV_USDD\",\"APX_USDT\",\"APX_USDD\",\"LUNA_USDD\",\"ZBC_USDD\",\"ZBC_USDT\",\"CHZ_USDD\",\"FOAM_USDT\",\"XEN_USDD\",\"XEN_USDT\",\"BTS_USDT\",\"ARDR_USDT\",\"GAS_USDT\",\"SANTOS_USDD\"]', '2022-10-19 22:53:55', '2022-10-19 22:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `trading_signals`
--

CREATE TABLE `trading_signals` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pair` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `end_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `leverage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trading_signals`
--

INSERT INTO `trading_signals` (`id`, `user_id`, `pair`, `end_time`, `amount`, `leverage`, `type`, `created_at`, `updated_at`) VALUES
(3, 2, 'BTS_BTC', '1666235599', '333', '11', 'buy', '2022-10-20 01:32:19', '2022-10-20 01:32:19'),
(4, 2, 'DASH_BTC', '1666235000', '104', '27', 'sell', '2022-10-20 01:32:20', '2022-10-20 01:32:20'),
(5, 2, 'DOGE_BTC', '1666234880', '85', '8', 'buy', '2022-10-20 01:32:20', '2022-10-20 01:32:20'),
(6, 2, 'BTS_BTC', '1666234640', '129', '76', 'buy', '2022-10-20 01:32:20', '2022-10-20 01:32:20'),
(7, 2, 'DASH_BTC', '1666233800', '79', '36', 'buy', '2022-10-20 01:32:20', '2022-10-20 01:32:20'),
(8, 2, 'DOGE_BTC', '1666234160', '397', '43', 'sell', '2022-10-20 01:32:20', '2022-10-20 01:32:20'),
(9, 2, 'LTC_BTC', '1666236966', '26597', '64', 'buy', '2022-10-20 01:39:06', '2022-10-20 01:39:06'),
(10, 2, 'LTC_BTC', '1666235826', '9196', '22', 'buy', '2022-10-20 01:39:06', '2022-10-20 01:39:06');

-- --------------------------------------------------------

--
-- Table structure for table `trading_wallets`
--

CREATE TABLE `trading_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trading_wallets`
--

INSERT INTO `trading_wallets` (`id`, `user_id`, `symbol`, `balance`, `address`, `icon`, `created_at`, `updated_at`) VALUES
(1, 2, '1EARTH', '0', 'EzA7mcPAP3Rr5gaApCLQ', NULL, '2022-10-13 21:10:51', '2022-10-13 21:10:51'),
(3, 2, '1INCH', '0', 'srGGUnoPLZC1tMl3mEmW', NULL, '2022-10-13 21:18:15', '2022-10-13 21:18:15'),
(4, 2, 'BTC', '1.567136979182', '2GphQJuKH9hNDTl1wn9I', NULL, '2022-10-13 22:11:41', '2022-10-20 20:14:02'),
(5, 2, 'ABBC', '0', 'kg3dPqESjxkfek8WxGbz', NULL, '2022-10-13 22:21:03', '2022-10-13 22:21:03'),
(6, 2, 'ACA', '0', 'r8EM23pGY7JxWkIc0QMe', NULL, '2022-10-13 22:24:06', '2022-10-13 22:24:06'),
(7, 2, 'ALPHA', '0', 'ZYYzvW5Wo05PNKhpHnhF', NULL, '2022-10-13 22:28:15', '2022-10-13 22:28:15'),
(8, 2, 'ACH', '0', '1Ql5Ib5Xtv3SFMxMYpxX', NULL, '2022-10-13 22:29:05', '2022-10-13 22:29:05'),
(9, 2, 'BCH', '0', 'lzQIYRSoNdvo6BL6INYV', NULL, '2022-10-13 22:29:27', '2022-10-13 22:29:27'),
(10, 2, 'ETH', '0.3808885367786', '8jEFldbd3jgDbkGJwjDO', NULL, '2022-10-17 08:30:59', '2022-10-18 21:32:23'),
(11, 2, 'USDT', '43.05071998158', 'X1mROlrTP2khbz1qIp1nc4DAnf43yqrrvR', NULL, '2022-10-20 17:51:51', '2022-10-20 20:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `trading_wallet_transactions`
--

CREATE TABLE `trading_wallet_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_id` bigint UNSIGNED NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trading_wallet_transactions`
--

INSERT INTO `trading_wallet_transactions` (`id`, `user_id`, `wallet_id`, `symbol`, `type`, `order_type`, `amount`, `created_at`, `updated_at`) VALUES
(1, '2', 10, 'BTC', 'credit', 'funding', '0.0003', '2022-10-18 16:40:18', '2022-10-18 16:40:18'),
(2, '2', 4, 'BTC', 'credit', 'funding', '0.0036302704395894', '2022-10-18 21:08:12', '2022-10-18 21:08:12'),
(3, '2', 4, 'BTC', 'debit', 'withdrawal', '0.0025937888095651', '2022-10-18 21:17:21', '2022-10-18 21:17:21'),
(4, '2', 4, 'BTC', 'debit', 'withdrawal', '0.0031095220301862', '2022-10-18 21:17:39', '2022-10-18 21:17:39'),
(5, '2', 4, 'BTC', 'debit', 'withdrawal', '0.0025934672634408', '2022-10-18 21:20:42', '2022-10-18 21:20:42'),
(6, '2', 4, 'BTC', 'credit', 'funding', '0.031094060049885', '2022-10-18 21:27:50', '2022-10-18 21:27:50'),
(7, '2', 10, 'ETH', 'credit', 'funding', '0.3808885367786', '2022-10-18 21:32:23', '2022-10-18 21:32:23'),
(8, '2', 4, 'BTC', 'credit', 'funding', '2.6106865844648', '2022-10-20 16:17:21', '2022-10-20 16:17:21'),
(9, '2', 11, 'USDT', 'credit', 'funding', '200', '2022-10-20 17:52:40', '2022-10-20 17:52:40'),
(10, '2', 4, 'BTC', 'debit', 'sell', '0.22', '2022-10-20 18:53:20', '2022-10-20 18:53:20'),
(11, '2', 4, 'BTC', 'debit', 'buy', '0.002', '2022-10-20 19:14:22', '2022-10-20 19:14:22'),
(12, '2', 4, 'BTC', 'debit', 'sell', '0.3', '2022-10-20 19:15:09', '2022-10-20 19:15:09'),
(13, '2', 4, 'BTC', 'debit', 'buy', '0.0003', '2022-10-20 19:20:10', '2022-10-20 19:20:10'),
(14, '2', 11, 'USDT', 'debit', 'buy', '0.0003', '2022-10-20 19:21:12', '2022-10-20 19:21:12'),
(15, '2', 11, 'USDT', 'debit', 'buy', '0.0005', '2022-10-20 19:21:40', '2022-10-20 19:21:40'),
(16, '2', 11, 'USDT', 'debit', 'buy', '0.0005', '2022-10-20 19:25:09', '2022-10-20 19:25:09'),
(17, '2', 11, 'USDT', 'debit', 'buy', '0.0005', '2022-10-20 19:25:33', '2022-10-20 19:25:33'),
(18, '2', 11, 'USDT', 'debit', 'buy', '0.0005', '2022-10-20 19:26:04', '2022-10-20 19:26:04'),
(19, '2', 11, 'USDT', 'debit', 'buy', '0.0005', '2022-10-20 19:28:56', '2022-10-20 19:28:56'),
(20, '2', 11, 'USDT', 'debit', 'buy', '0.004', '2022-10-20 19:29:36', '2022-10-20 19:29:36'),
(21, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:31:15', '2022-10-20 19:31:15'),
(22, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:32:34', '2022-10-20 19:32:34'),
(23, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:32:42', '2022-10-20 19:32:42'),
(24, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:32:49', '2022-10-20 19:32:49'),
(25, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:35:18', '2022-10-20 19:35:18'),
(26, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:35:25', '2022-10-20 19:35:25'),
(27, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:36:01', '2022-10-20 19:36:01'),
(28, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:37:24', '2022-10-20 19:37:24'),
(29, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:38:50', '2022-10-20 19:38:50'),
(30, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:39:36', '2022-10-20 19:39:36'),
(31, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:43:26', '2022-10-20 19:43:26'),
(32, '2', 11, 'USDT', 'debit', 'buy', '0.002', '2022-10-20 19:43:45', '2022-10-20 19:43:45'),
(33, '2', 11, 'USDT', 'debit', 'buy', '0.000004', '2022-10-20 19:57:04', '2022-10-20 19:57:04'),
(34, '2', 11, 'USDT', 'debit', 'buy', '0.001', '2022-10-20 19:58:27', '2022-10-20 19:58:27'),
(35, '2', 11, 'USDT', 'debit', 'buy', '0.001', '2022-10-20 19:59:41', '2022-10-20 19:59:41'),
(36, '2', 11, 'USDT', 'debit', 'buy', '0.001', '2022-10-20 19:59:45', '2022-10-20 19:59:45'),
(37, '2', 11, 'USDT', 'debit', 'buy', '0.00000005', '2022-10-20 20:09:27', '2022-10-20 20:09:27'),
(38, '2', 11, 'USDT', 'debit', 'buy', '0.00004', '2022-10-20 20:11:35', '2022-10-20 20:11:35'),
(39, '2', 11, 'USDT', 'debit', 'buy', '0.0005', '2022-10-20 20:13:17', '2022-10-20 20:13:17'),
(40, '2', 4, 'BTC', 'debit', 'sell', '0.002', '2022-10-20 20:14:02', '2022-10-20 20:14:02'),
(41, '2', 11, 'USDT', 'debit', 'buy', '0.0007', '2022-10-20 20:14:27', '2022-10-20 20:14:27');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance_after_transaction` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `type`, `amount`, `method`, `balance_after_transaction`, `remark`, `txn_id`, `created_at`, `updated_at`) VALUES
(168, 24, 'credit', '12.5', 'ROI', '8488.472222222', 'Investment Earning from - Starter Plan', '276f1b9a0008786ce04a3d63932971a8', '2022-07-29 23:15:29', '2022-07-29 23:15:29'),
(169, 23, 'credit', '65.89', 'ROI', '552688.35875', 'Investment Earning from - Gold Plan', '0d5a98d7e170429c98ba1611a71fdc17', '2022-07-29 23:25:18', '2022-07-29 23:25:18'),
(170, 1, 'credit', '12.5', 'ROI', '14488.575', 'Investment Earning from - Starter Plan', 'eb039f8072f3e9f7020ee98b6b5d8476', '2022-07-29 23:45:25', '2022-07-29 23:45:25'),
(171, 3, 'credit', '12.777777777778', 'ROI', '45836.666666668', 'Investment Earning from - Diamond Plan', '1d0b0bd5e70755917d821c438ceed46e', '2022-07-30 00:10:15', '2022-07-30 00:10:15'),
(173, 1, 'credit', '12.5', 'ROI', '14501.075', 'Investment Earning from - Starter Plan', '3be27d5d6f7579bddbb38a6b2779793e', '2022-07-30 00:10:15', '2022-07-30 00:10:15'),
(174, 1, 'credit', '15.972222222222', 'ROI', '14517.047222222', 'Investment Earning from - Diamond Plan', 'd56262c11929729a77d2fd77b4cd5aa1', '2022-07-30 00:15:08', '2022-07-30 00:15:08'),
(175, 24, 'credit', '3.1944444444444', 'ROI', '8491.6666666664', 'Investment Earning from - Diamond Plan', 'db58ce3089c27b804a50467753f4a957', '2022-07-30 00:20:31', '2022-07-30 00:20:31'),
(176, 24, 'credit', '12.5', 'ROI', '8504.1666666664', 'Investment Earning from - Starter Plan', 'bba87121d175265bfafd56b584f43b56', '2022-07-30 00:20:31', '2022-07-30 00:20:31'),
(177, 1, 'credit', '12.5', 'ROI', '14529.547222222', 'Investment Earning from - Starter Plan', 'a1a4b4a736289848b310a64d5bf70ddf', '2022-07-30 00:45:38', '2022-07-30 00:45:38'),
(178, 3, 'credit', '12.777777777778', 'ROI', '45849.444444446', 'Investment Earning from - Diamond Plan', 'd370e5431516c7351f07ee7581d849a0', '2022-07-30 01:10:47', '2022-07-30 01:10:47'),
(180, 1, 'credit', '12.5', 'ROI', '14542.047222222', 'Investment Earning from - Starter Plan', '2283a244987616104da7242ca8abe1fa', '2022-07-30 01:10:47', '2022-07-30 01:10:47'),
(181, 1, 'credit', '15.972222222222', 'ROI', '14558.019444444', 'Investment Earning from - Diamond Plan', 'bb261cd9225b7fccc4870499b7c34915', '2022-07-30 01:20:17', '2022-07-30 01:20:17'),
(182, 24, 'credit', '3.1944444444444', 'ROI', '8507.3611111108', 'Investment Earning from - Diamond Plan', 'adfa3946ad335e935b47c0463a9a1851', '2022-07-30 01:25:31', '2022-07-30 01:25:31'),
(183, 24, 'credit', '12.5', 'ROI', '8519.8611111108', 'Investment Earning from - Starter Plan', '2188b95c74f8b5a935d754baa998a4d7', '2022-07-30 01:25:31', '2022-07-30 01:25:31'),
(184, 1, 'credit', '12.5', 'ROI', '14570.519444444', 'Investment Earning from - Starter Plan', 'f367bb18019414f2c5cee3b1b268b7b7', '2022-07-30 01:50:46', '2022-07-30 01:50:46'),
(185, 3, 'credit', '12.777777777778', 'ROI', '45862.222222224', 'Investment Earning from - Diamond Plan', '07dc5461a37413b63d8c5f5c070e1076', '2022-07-30 02:15:13', '2022-07-30 02:15:13'),
(187, 1, 'credit', '12.5', 'ROI', '14583.019444444', 'Investment Earning from - Starter Plan', '4e846bf48ef1c680c967c5b14675e8fb', '2022-07-30 02:15:13', '2022-07-30 02:15:13'),
(188, 24, 'credit', '3.1944444444444', 'ROI', '8523.0555555552', 'Investment Earning from - Diamond Plan', 'dea92ec578475730c0c06710f6d9092b', '2022-07-30 02:25:44', '2022-07-30 02:25:44'),
(189, 24, 'credit', '12.5', 'ROI', '8535.5555555552', 'Investment Earning from - Starter Plan', 'dd8e783ce6b96d01301ff89e5622af0e', '2022-07-30 02:25:44', '2022-07-30 02:25:44'),
(190, 1, 'credit', '15.972222222222', 'ROI', '14598.991666666', 'Investment Earning from - Diamond Plan', 'a495af6ad8e2fead4fa61134eae54f25', '2022-07-30 02:25:44', '2022-07-30 02:25:44'),
(191, 1, 'credit', '12.5', 'ROI', '14611.491666666', 'Investment Earning from - Starter Plan', 'b55dbd5578d97a6ea380ba24a61609d3', '2022-07-30 02:55:32', '2022-07-30 02:55:32'),
(192, 3, 'credit', '12.777777777778', 'ROI', '45875.000000002', 'Investment Earning from - Diamond Plan', '6bb5e38f3440aa5e5cbf70b1979fe2c4', '2022-07-30 03:20:21', '2022-07-30 03:20:21'),
(194, 1, 'credit', '12.5', 'ROI', '14623.991666666', 'Investment Earning from - Starter Plan', '9f4505917ce07317ceb0a798c716562f', '2022-07-30 03:20:21', '2022-07-30 03:20:21'),
(195, 24, 'credit', '3.1944444444444', 'ROI', '8538.7499999996', 'Investment Earning from - Diamond Plan', '85f3a9e875b1309bcad1b6a3f14956bc', '2022-07-30 03:30:19', '2022-07-30 03:30:19'),
(196, 24, 'credit', '12.5', 'ROI', '8551.2499999996', 'Investment Earning from - Starter Plan', '6d8c8f343f708bce3e3a77db9e472362', '2022-07-30 03:30:19', '2022-07-30 03:30:19'),
(197, 1, 'credit', '15.972222222222', 'ROI', '14639.963888888', 'Investment Earning from - Diamond Plan', 'f55bd243ca06041203298548ee3c34d8', '2022-07-30 03:30:19', '2022-07-30 03:30:19'),
(198, 1, 'credit', '12.5', 'ROI', '14652.463888888', 'Investment Earning from - Starter Plan', 'e7e92c78f60f03a7f713913004ca734c', '2022-07-30 04:00:39', '2022-07-30 04:00:39'),
(199, 3, 'credit', '12.777777777778', 'ROI', '45887.77777778', 'Investment Earning from - Diamond Plan', '4295c16a639e3246d4f947ec3b690f2a', '2022-07-30 04:20:35', '2022-07-30 04:20:35'),
(201, 1, 'credit', '12.5', 'ROI', '14664.963888888', 'Investment Earning from - Starter Plan', 'ab2e3ff9b47d46af9a8a349df44f377c', '2022-07-30 04:20:35', '2022-07-30 04:20:35'),
(202, 24, 'credit', '3.1944444444444', 'ROI', '8554.444444444', 'Investment Earning from - Diamond Plan', '19b94fa48b89f095f6efd5b1e18b77e5', '2022-07-30 04:35:34', '2022-07-30 04:35:34'),
(203, 24, 'credit', '12.5', 'ROI', '8566.944444444', 'Investment Earning from - Starter Plan', '814890b3028a41330d41e844a47289fc', '2022-07-30 04:35:34', '2022-07-30 04:35:34'),
(204, 1, 'credit', '15.972222222222', 'ROI', '14680.93611111', 'Investment Earning from - Diamond Plan', '68507591a8f99d916c1d58c8ec7114fd', '2022-07-30 04:35:35', '2022-07-30 04:35:35'),
(205, 1, 'credit', '12.5', 'ROI', '14693.43611111', 'Investment Earning from - Starter Plan', 'e74e614c1fb0d17943705a49a90cbc32', '2022-07-30 05:00:42', '2022-07-30 05:00:42'),
(206, 3, 'credit', '12.777777777778', 'ROI', '45900.555555558', 'Investment Earning from - Diamond Plan', 'd8ec1a60f10a5aba7de4607396d8d357', '2022-07-30 05:20:47', '2022-07-30 05:20:47'),
(208, 1, 'credit', '12.5', 'ROI', '14705.93611111', 'Investment Earning from - Starter Plan', 'be29b37e8bbe753b3bc5d9b59c193106', '2022-07-30 05:20:47', '2022-07-30 05:20:47'),
(209, 24, 'credit', '3.1944444444444', 'ROI', '8570.1388888884', 'Investment Earning from - Diamond Plan', 'bb440679247f2646654c044074ceab5b', '2022-07-30 05:40:42', '2022-07-30 05:40:42'),
(210, 24, 'credit', '12.5', 'ROI', '8582.6388888884', 'Investment Earning from - Starter Plan', '97d70cf2dcd375a3bb04707cc84165fd', '2022-07-30 05:40:42', '2022-07-30 05:40:42'),
(211, 1, 'credit', '15.972222222222', 'ROI', '14721.908333332', 'Investment Earning from - Diamond Plan', '6360fbc265b6921eb80f65938cdf8389', '2022-07-30 05:40:42', '2022-07-30 05:40:42'),
(212, 3, 'credit', '12.777777777778', 'ROI', '45913.333333336', 'Investment Earning from - Diamond Plan', '6c4ce8131a2c7791064b97d4f60e502a', '2022-07-30 06:25:09', '2022-07-30 06:25:09'),
(214, 1, 'credit', '12.5', 'ROI', '14734.408333332', 'Investment Earning from - Starter Plan', 'e5ca38282722c2907e803010b7df0b38', '2022-07-30 06:25:09', '2022-07-30 06:25:09'),
(215, 24, 'credit', '3.1944444444444', 'ROI', '8585.8333333328', 'Investment Earning from - Diamond Plan', '479e5bf515e2ff245f068da6158d8364', '2022-07-30 06:45:06', '2022-07-30 06:45:06'),
(216, 24, 'credit', '12.5', 'ROI', '8598.3333333328', 'Investment Earning from - Starter Plan', '17fc06ed63ca6ec45b6b167e0b34cc01', '2022-07-30 06:45:06', '2022-07-30 06:45:06'),
(217, 1, 'credit', '15.972222222222', 'ROI', '14750.380555554', 'Investment Earning from - Diamond Plan', '06c9b610a82543bd47027a1ac52cabdc', '2022-07-30 06:45:06', '2022-07-30 06:45:06'),
(218, 3, 'credit', '12.777777777778', 'ROI', '45926.111111114', 'Investment Earning from - Diamond Plan', 'dc4267abbe49473e2d09d00e3ba80c55', '2022-07-30 07:25:36', '2022-07-30 07:25:36'),
(220, 1, 'credit', '12.5', 'ROI', '14762.880555554', 'Investment Earning from - Starter Plan', '81bd5967d57e7684c7ad4e23e5d5f3e2', '2022-07-30 07:25:36', '2022-07-30 07:25:36'),
(221, 24, 'credit', '3.1944444444444', 'ROI', '8601.5277777772', 'Investment Earning from - Diamond Plan', '04e88f65d03a44f55f75f17bfabe8926', '2022-07-30 07:45:07', '2022-07-30 07:45:07'),
(222, 1, 'credit', '15.972222222222', 'ROI', '14778.852777776', 'Investment Earning from - Diamond Plan', '9c59df3c0e86fb80613e5e759a274aef', '2022-07-30 07:45:07', '2022-07-30 07:45:07'),
(223, 3, 'credit', '12.777777777778', 'ROI', '45938.888888892', 'Investment Earning from - Diamond Plan', '26c134cb3ea5e64fb86b039660c25049', '2022-07-30 08:30:47', '2022-07-30 08:30:47'),
(225, 1, 'credit', '12.5', 'ROI', '14791.352777776', 'Investment Earning from - Starter Plan', '4df2087e61d2dfb0535a1eb3dfab5dcf', '2022-07-30 08:30:47', '2022-07-30 08:30:47'),
(226, 24, 'credit', '3.1944444444444', 'ROI', '8604.7222222216', 'Investment Earning from - Diamond Plan', '36a20fbaa8a8f38b58915d280bc7605c', '2022-07-30 08:45:15', '2022-07-30 08:45:15'),
(227, 1, 'credit', '15.972222222222', 'ROI', '14807.324999998', 'Investment Earning from - Diamond Plan', '6a7eb539dd522035380b8252de488ddc', '2022-07-30 08:45:15', '2022-07-30 08:45:15'),
(228, 3, 'credit', '12.777777777778', 'ROI', '45951.66666667', 'Investment Earning from - Diamond Plan', 'ad87977bbdcf1e13329116a5d11fc197', '2022-07-30 09:35:19', '2022-07-30 09:35:19'),
(230, 1, 'credit', '12.5', 'ROI', '14819.824999998', 'Investment Earning from - Starter Plan', 'b25795735824f9419fb2f6de77bbd680', '2022-07-30 09:35:19', '2022-07-30 09:35:19'),
(231, 24, 'credit', '3.1944444444444', 'ROI', '8607.916666666', 'Investment Earning from - Diamond Plan', 'fe43bb516dde52c74971df5a02b978b7', '2022-07-30 09:45:22', '2022-07-30 09:45:22'),
(232, 1, 'credit', '15.972222222222', 'ROI', '14835.79722222', 'Investment Earning from - Diamond Plan', '5629b1387e37e2be715ea3a3de11995e', '2022-07-30 09:45:22', '2022-07-30 09:45:22'),
(233, 3, 'credit', '12.777777777778', 'ROI', '45964.444444448', 'Investment Earning from - Diamond Plan', 'e367533b3dbeba15fe445a01e56ed3d9', '2022-07-30 10:35:33', '2022-07-30 10:35:33'),
(235, 1, 'credit', '12.5', 'ROI', '14848.29722222', 'Investment Earning from - Starter Plan', 'de8925e1902c506c0ce70c8ed7ae40d3', '2022-07-30 10:35:33', '2022-07-30 10:35:33'),
(236, 24, 'credit', '3.1944444444444', 'ROI', '8611.1111111104', 'Investment Earning from - Diamond Plan', 'af4e331fd77769a75b9309f8cf9d9e4e', '2022-07-30 10:45:32', '2022-07-30 10:45:32'),
(237, 1, 'credit', '15.972222222222', 'ROI', '14864.269444442', 'Investment Earning from - Diamond Plan', 'fa88147653e14afac5d244d9f18f495e', '2022-07-30 10:45:32', '2022-07-30 10:45:32'),
(238, 3, 'credit', '12.777777777778', 'ROI', '45977.222222226', 'Investment Earning from - Diamond Plan', 'bd7e1371b426e56c95d0ef60ed4ae5b1', '2022-07-30 11:40:24', '2022-07-30 11:40:24'),
(240, 1, 'credit', '12.5', 'ROI', '14876.769444442', 'Investment Earning from - Starter Plan', 'e6a187eef50dcc8ec23dd6f6e5744aca', '2022-07-30 11:40:25', '2022-07-30 11:40:25'),
(241, 24, 'credit', '3.1944444444444', 'ROI', '8614.3055555548', 'Investment Earning from - Diamond Plan', '2e0782465038514df21a45aefcd4b680', '2022-07-30 11:45:38', '2022-07-30 11:45:38'),
(242, 1, 'credit', '15.972222222222', 'ROI', '14892.741666664', 'Investment Earning from - Diamond Plan', '4a3057f9c12f0254e51b5af864c4666c', '2022-07-30 11:45:38', '2022-07-30 11:45:38'),
(243, 3, 'credit', '12.777777777778', 'ROI', '45990.000000004', 'Investment Earning from - Diamond Plan', '92a8124b4636a94b73e903af0bebd94a', '2022-07-30 12:40:48', '2022-07-30 12:40:48'),
(245, 24, 'credit', '3.1944444444444', 'ROI', '8617.4999999992', 'Investment Earning from - Diamond Plan', 'e309dc469d7e566a79b9d57a21cb12d8', '2022-07-30 12:50:03', '2022-07-30 12:50:03'),
(246, 1, 'credit', '15.972222222222', 'ROI', '14908.713888886', 'Investment Earning from - Diamond Plan', '88ece6af7addc239d352502eb61da884', '2022-07-30 12:50:03', '2022-07-30 12:50:03'),
(247, 3, 'credit', '12.777777777778', 'ROI', '46002.777777782', 'Investment Earning from - Diamond Plan', 'a422f8031516e880955b0275a7e879c6', '2022-07-30 13:45:03', '2022-07-30 13:45:03'),
(249, 24, 'credit', '3.1944444444444', 'ROI', '8620.6944444436', 'Investment Earning from - Diamond Plan', '178bec85db2c2b330f7afc2ed5c1710f', '2022-07-30 13:55:51', '2022-07-30 13:55:51'),
(250, 1, 'credit', '15.972222222222', 'ROI', '14924.686111108', 'Investment Earning from - Diamond Plan', '4a8f4a66b6a8c63dc4d3f24c9489478b', '2022-07-30 13:55:51', '2022-07-30 13:55:51'),
(251, 3, 'credit', '12.777777777778', 'ROI', '46015.55555556', 'Investment Earning from - Diamond Plan', '0b14e8faa124edaa5767aec3b46def45', '2022-07-30 14:50:15', '2022-07-30 14:50:15'),
(253, 24, 'credit', '3.1944444444444', 'ROI', '8623.888888888', 'Investment Earning from - Diamond Plan', '6aa3c66f102941e8ad29d2e72068a2c2', '2022-07-30 15:00:16', '2022-07-30 15:00:16'),
(254, 1, 'credit', '15.972222222222', 'ROI', '14940.65833333', 'Investment Earning from - Diamond Plan', 'e1433f35da6ba2d36fefbef89c4a3174', '2022-07-30 15:00:16', '2022-07-30 15:00:16'),
(255, 3, 'credit', '12.777777777778', 'ROI', '46028.333333338', 'Investment Earning from - Diamond Plan', '9b623eaf2e3369e031c77812d9f66733', '2022-07-30 15:50:34', '2022-07-30 15:50:34'),
(257, 24, 'credit', '3.1944444444444', 'ROI', '8627.0833333324', 'Investment Earning from - Diamond Plan', '261e22808c24e594ab2785dea92ae3b1', '2022-07-30 16:00:33', '2022-07-30 16:00:33'),
(258, 1, 'credit', '15.972222222222', 'ROI', '14956.630555552', 'Investment Earning from - Diamond Plan', '3c334dda669e37df6bfcacc31dfa537a', '2022-07-30 16:00:33', '2022-07-30 16:00:33'),
(259, 3, 'credit', '12.777777777778', 'ROI', '46041.111111116', 'Investment Earning from - Diamond Plan', '66e8ab524316f2fcf545b43c004dd67d', '2022-07-30 16:55:42', '2022-07-30 16:55:42'),
(261, 24, 'credit', '3.1944444444444', 'ROI', '8630.2777777768', 'Investment Earning from - Diamond Plan', 'f0560e87c7745bc454e72b3d89fc5b4e', '2022-07-30 17:05:26', '2022-07-30 17:05:26'),
(262, 1, 'credit', '15.972222222222', 'ROI', '14972.602777774', 'Investment Earning from - Diamond Plan', 'dd4d457ce618d155eb55d5a26985acab', '2022-07-30 17:05:26', '2022-07-30 17:05:26'),
(263, 1, 'credit', '84', 'ROI', '15056.602777774', 'Investment Earning from - Pro Plan', '719f303dd3ec599bc6409d981cfcb2bd', '2022-07-30 17:55:23', '2022-07-30 17:55:23'),
(264, 1, 'credit', '33', 'ROI', '15089.602777774', 'Investment Earning from - Gold Plan', '8d7f7877f8d05a876b6827b0f65c2eaf', '2022-07-30 17:55:23', '2022-07-30 17:55:23'),
(265, 3, 'credit', '12.777777777778', 'ROI', '46053.888888894', 'Investment Earning from - Diamond Plan', 'd42340e7096e46703c3d4577c8f5a8b6', '2022-07-30 18:00:45', '2022-07-30 18:00:45'),
(266, 3, 'credit', '27.5', 'ROI', '46081.388888894', 'Investment Earning from - Gold Plan', 'c7ebc5c21097be2f120252ccdf234a7a', '2022-07-30 18:00:45', '2022-07-30 18:00:45'),
(269, 24, 'credit', '105', 'ROI', '8735.2777777768', 'Investment Earning from - Pro Plan', '3573f5ee987b31eb5d2d1c8a4975f6d2', '2022-07-30 18:05:30', '2022-07-30 18:05:30'),
(270, 24, 'credit', '3.1944444444444', 'ROI', '8738.4722222212', 'Investment Earning from - Diamond Plan', '84d19b84eafdb7c30a3cc96aac862d27', '2022-07-30 18:05:30', '2022-07-30 18:05:30'),
(271, 1, 'credit', '15.972222222222', 'ROI', '15105.574999996', 'Investment Earning from - Diamond Plan', 'ab7ee6e1a263182a3e8a332878b0c4bb', '2022-07-30 18:05:30', '2022-07-30 18:05:30'),
(272, 3, 'credit', '12.777777777778', 'ROI', '46094.166666672', 'Investment Earning from - Diamond Plan', '531904ada8ec0d92e9602b836903b31c', '2022-07-30 19:05:17', '2022-07-30 19:05:17'),
(274, 24, 'credit', '3.1944444444444', 'ROI', '8741.6666666656', 'Investment Earning from - Diamond Plan', 'fb7eb388dde756fcb2681f19544e3cbf', '2022-07-30 19:10:14', '2022-07-30 19:10:14'),
(275, 1, 'credit', '15.972222222222', 'ROI', '15121.547222218', 'Investment Earning from - Diamond Plan', '01ed9d2b1eb40b3488307cd11e6f72cc', '2022-07-30 19:10:14', '2022-07-30 19:10:14'),
(276, 3, 'credit', '12.777777777778', 'ROI', '46106.94444445', 'Investment Earning from - Diamond Plan', '4633db08cc43c95154b4097a701fe185', '2022-07-30 20:10:09', '2022-07-30 20:10:09'),
(278, 24, 'credit', '3.1944444444444', 'ROI', '8744.86111111', 'Investment Earning from - Diamond Plan', '6b51d5cd59ba68a7ad42110b7f30f615', '2022-07-30 20:15:28', '2022-07-30 20:15:28'),
(279, 1, 'credit', '15.972222222222', 'ROI', '15137.51944444', 'Investment Earning from - Diamond Plan', 'ea73761b097eb99989763c7f21b7e3d5', '2022-07-30 20:15:28', '2022-07-30 20:15:28'),
(280, 3, 'credit', '12.777777777778', 'ROI', '46119.722222228', 'Investment Earning from - Diamond Plan', 'b3b909acfafc2edb2b7a637b5d3e5b77', '2022-07-30 21:10:16', '2022-07-30 21:10:16'),
(282, 24, 'credit', '3.1944444444444', 'ROI', '8748.0555555544', 'Investment Earning from - Diamond Plan', '4e251ab490f3e6a8ea034c9e4fa38c76', '2022-07-30 21:20:51', '2022-07-30 21:20:51'),
(283, 1, 'credit', '15.972222222222', 'ROI', '15153.491666662', 'Investment Earning from - Diamond Plan', 'cdbf262609587aeb7eb0842d2f24514a', '2022-07-30 21:20:51', '2022-07-30 21:20:51'),
(284, 3, 'credit', '12.777777777778', 'ROI', '46132.500000006', 'Investment Earning from - Diamond Plan', '9d2df209181a3dc3360ef4b0344081f4', '2022-07-30 22:10:49', '2022-07-30 22:10:49'),
(286, 24, 'credit', '3.1944444444444', 'ROI', '8751.2499999988', 'Investment Earning from - Diamond Plan', 'd3fd4a068da976a04c9d1eddd6a6cb9f', '2022-07-30 22:25:42', '2022-07-30 22:25:42'),
(287, 1, 'credit', '15.972222222222', 'ROI', '15169.463888884', 'Investment Earning from - Diamond Plan', 'e6ff61109dbd0132478edcd6796aafbd', '2022-07-30 22:25:42', '2022-07-30 22:25:42'),
(288, 3, 'credit', '12.777777777778', 'ROI', '46145.277777784', 'Investment Earning from - Diamond Plan', 'f7df2426a0be9ec76a386af54708ddf8', '2022-07-30 23:15:47', '2022-07-30 23:15:47'),
(290, 1, 'credit', '65.89', 'ROI', '15235.353888884', 'Investment Earning from - Gold Plan', '3259dd951e81f1d6fabe03889c7f229e', '2022-07-30 23:15:47', '2022-07-30 23:15:47'),
(291, 23, 'credit', '65.89', 'ROI', '552754.24875', 'Investment Earning from - Gold Plan', '930868376f568a15e084d0f76478fb3c', '2022-07-31 16:40:05', '2022-07-31 16:40:05'),
(292, 3, 'credit', '12.777777777778', 'ROI', '46158.055555562', 'Investment Earning from - Diamond Plan', '327596db5c1a96087a85452196584807', '2022-07-31 16:40:05', '2022-07-31 16:40:05'),
(294, 24, 'credit', '3.1944444444444', 'ROI', '8754.4444444432', 'Investment Earning from - Diamond Plan', '15ac103b9681932f0c7b684af95bc0ce', '2022-07-31 16:40:05', '2022-07-31 16:40:05'),
(295, 1, 'credit', '15.972222222222', 'ROI', '15251.326111106', 'Investment Earning from - Diamond Plan', 'cfbf7f4eef79b21d8074008e94518ba1', '2022-07-31 16:40:05', '2022-07-31 16:40:05'),
(296, 3, 'credit', '12.777777777778', 'ROI', '46170.83333334', 'Investment Earning from - Diamond Plan', '2e58da545d0d82a579ff020aca5c3b5d', '2022-07-31 17:40:43', '2022-07-31 17:40:43'),
(298, 24, 'credit', '3.1944444444444', 'ROI', '8757.6388888876', 'Investment Earning from - Diamond Plan', '1a87f0959d5ebdcd6cd5adca8f9d670b', '2022-07-31 17:40:43', '2022-07-31 17:40:43'),
(299, 1, 'credit', '15.972222222222', 'ROI', '15267.298333328', 'Investment Earning from - Diamond Plan', '484301de0f4492cc26cc07ec63d953a6', '2022-07-31 17:40:43', '2022-07-31 17:40:43'),
(300, 1, 'credit', '84', 'ROI', '15351.298333328', 'Investment Earning from - Pro Plan', 'e0a2b856a044c164b3879402edacdb05', '2022-07-31 18:00:03', '2022-07-31 18:00:03'),
(301, 1, 'credit', '33', 'ROI', '15384.298333328', 'Investment Earning from - Gold Plan', 'ffd6d4097696b48fe868b65e90bd7669', '2022-07-31 18:00:03', '2022-07-31 18:00:03'),
(302, 3, 'credit', '27.5', 'ROI', '46198.33333334', 'Investment Earning from - Gold Plan', '2f892a126c350e4e4252fd1cea0d7d05', '2022-07-31 18:05:18', '2022-07-31 18:05:18'),
(304, 24, 'credit', '105', 'ROI', '8862.6388888876', 'Investment Earning from - Pro Plan', 'ff82e1689e68408078f6ee9f7e829ebf', '2022-07-31 18:10:13', '2022-07-31 18:10:13'),
(305, 3, 'credit', '12.777777777778', 'ROI', '46211.111111118', 'Investment Earning from - Diamond Plan', '13eb5578649b70779b9b7a70f0e2e5e4', '2022-07-31 18:45:44', '2022-07-31 18:45:44'),
(307, 24, 'credit', '3.1944444444444', 'ROI', '8865.833333332', 'Investment Earning from - Diamond Plan', '43555d74a0c40585c897e114a2b29ff5', '2022-07-31 18:45:44', '2022-07-31 18:45:44'),
(308, 1, 'credit', '15.972222222222', 'ROI', '15400.27055555', 'Investment Earning from - Diamond Plan', '6e8f69923477899183dfe287cc763a03', '2022-07-31 18:45:44', '2022-07-31 18:45:44'),
(309, 3, 'credit', '12.777777777778', 'ROI', '46223.888888896', 'Investment Earning from - Diamond Plan', '280e170e7d95a812264f9122412015a2', '2022-07-31 19:50:47', '2022-07-31 19:50:47'),
(311, 24, 'credit', '3.1944444444444', 'ROI', '8869.0277777764', 'Investment Earning from - Diamond Plan', '2a8c666a6aa92e8efddd2c98f4d5ad76', '2022-07-31 19:50:47', '2022-07-31 19:50:47'),
(312, 1, 'credit', '15.972222222222', 'ROI', '15416.242777772', 'Investment Earning from - Diamond Plan', '6a98570601aa94f6ab6b545f7c871c5f', '2022-07-31 19:50:47', '2022-07-31 19:50:47'),
(313, 3, 'credit', '12.777777777778', 'ROI', '46236.666666674', 'Investment Earning from - Diamond Plan', 'a0b0dae818997d0ae6c1ebb8109d16e4', '2022-07-31 20:55:31', '2022-07-31 20:55:31'),
(315, 24, 'credit', '3.1944444444444', 'ROI', '8872.2222222208', 'Investment Earning from - Diamond Plan', '6a0a03242a1422183201567083f61c89', '2022-07-31 20:55:31', '2022-07-31 20:55:31'),
(316, 1, 'credit', '15.972222222222', 'ROI', '15432.214999994', 'Investment Earning from - Diamond Plan', 'f08df62086d72ebd9954535a0603f112', '2022-07-31 20:55:31', '2022-07-31 20:55:31'),
(317, 3, 'credit', '12.777777777778', 'ROI', '46249.444444452', 'Investment Earning from - Diamond Plan', 'bf4ef854ebc5f44cecda67124c751a3f', '2022-07-31 21:55:36', '2022-07-31 21:55:36'),
(319, 24, 'credit', '3.1944444444444', 'ROI', '8875.4166666652', 'Investment Earning from - Diamond Plan', '3d1d574ae2fb4ff6ae3b58a00b1f9af1', '2022-07-31 21:55:36', '2022-07-31 21:55:36'),
(320, 1, 'credit', '15.972222222222', 'ROI', '15448.187222216', 'Investment Earning from - Diamond Plan', '7ea1c952f2308bdcd2c44e9734165489', '2022-07-31 21:55:36', '2022-07-31 21:55:36'),
(321, 3, 'credit', '12.777777777778', 'ROI', '46262.22222223', 'Investment Earning from - Diamond Plan', '3ec6c873ba0c3f886195f47c33c9f133', '2022-07-31 23:00:10', '2022-07-31 23:00:10'),
(323, 24, 'credit', '3.1944444444444', 'ROI', '8878.6111111096', 'Investment Earning from - Diamond Plan', '281e0088cd57ec4fd93a457f31a48eee', '2022-07-31 23:00:10', '2022-07-31 23:00:10'),
(324, 1, 'credit', '15.972222222222', 'ROI', '15464.159444438', 'Investment Earning from - Diamond Plan', '3c93fe926375ce4746e8b051a87cc550', '2022-07-31 23:00:10', '2022-07-31 23:00:10'),
(325, 1, 'credit', '65.89', 'ROI', '15530.049444438', 'Investment Earning from - Gold Plan', 'e50d3093203ea8ef3c9d9371b592d58c', '2022-07-31 23:20:22', '2022-07-31 23:20:22'),
(326, 3, 'credit', '12.777777777778', 'ROI', '46275.000000008', 'Investment Earning from - Diamond Plan', 'e49e678c8bbe076e364490d1370b8390', '2022-08-01 00:00:33', '2022-08-01 00:00:33'),
(328, 24, 'credit', '3.1944444444444', 'ROI', '8881.805555554', 'Investment Earning from - Diamond Plan', '73bfbc840c447a003b33c622394c59df', '2022-08-01 00:00:33', '2022-08-01 00:00:33'),
(329, 1, 'credit', '15.972222222222', 'ROI', '15546.02166666', 'Investment Earning from - Diamond Plan', '51a6f6d077e67edcf75c6ea404cb1833', '2022-08-01 00:00:33', '2022-08-01 00:00:33'),
(330, 3, 'credit', '12.777777777778', 'ROI', '46287.777777786', 'Investment Earning from - Diamond Plan', 'ad6088b8a484f8039470ef5b9eceaa73', '2022-08-01 01:05:45', '2022-08-01 01:05:45'),
(332, 24, 'credit', '3.1944444444444', 'ROI', '8884.9999999984', 'Investment Earning from - Diamond Plan', '8a16f3185a6adc403fad8795a7748564', '2022-08-01 01:05:45', '2022-08-01 01:05:45'),
(333, 1, 'credit', '15.972222222222', 'ROI', '15561.993888882', 'Investment Earning from - Diamond Plan', '9ba0e31134b6971055210cf871b6ed7c', '2022-08-01 01:05:45', '2022-08-01 01:05:45'),
(334, 23, 'credit', '65.89', 'ROI', '552820.13875', 'Investment Earning from - Gold Plan', '147e14af86ce8bb7368752ff206afb23', '2022-08-05 22:54:49', '2022-08-05 22:54:49'),
(335, 1, 'credit', '84', 'ROI', '15645.993888882', 'Investment Earning from - Pro Plan', '7d76227ba522f8e22a97739510486d02', '2022-08-05 22:54:51', '2022-08-05 22:54:51'),
(336, 1, 'credit', '33', 'ROI', '15678.993888882', 'Investment Earning from - Gold Plan', '6eba37ef0dae8ff04a2f8e358fd94c6c', '2022-08-05 22:54:51', '2022-08-05 22:54:51'),
(337, 3, 'credit', '12.777777777778', 'ROI', '46300.555555564', 'Investment Earning from - Diamond Plan', '5ea1af88069b8436333c72ec0e728175', '2022-08-05 22:54:51', '2022-08-05 22:54:51'),
(338, 3, 'credit', '27.5', 'ROI', '46328.055555564', 'Investment Earning from - Gold Plan', '74ce77f5fbc088e0300a1063bd49388a', '2022-08-05 22:54:52', '2022-08-05 22:54:52');
 INTO `transactions` (`id`, `user_id`, `type`, `amount`, `method`, , `remark`, `txn_id`, `created_at`, `updated_at`) VALUES
(341, 24, 'credit', '105', 'ROI', '8989.9999999984', 'Investment Earning from - Pro Plan', '2554010161fb720633579d6d7a00ae9c', '2022-08-05 22:54:53', '2022-08-05 22:54:53'),
(342, 24, 'credit', '3.1944444444444', 'ROI', '8993.1944444428', 'Investment Earning from - Diamond Plan', '462ccfd8380b2effe4e4375dc05d1e93', '2022-08-05 22:54:53', '2022-08-05 22:54:53'),
(343, 1, 'credit', '15.972222222222', 'ROI', '15694.966111104', 'Investment Earning from - Diamond Plan', '546e48d34a20ca5f91e2b97d01b4e9f3', '2022-08-05 22:54:53', '2022-08-05 22:54:53'),
(344, 1, 'credit', '65.89', 'ROI', '15760.856111104', 'Investment Earning from - Gold Plan', '60f65f420f09434db63f3e94bf4dfade', '2022-08-05 22:54:53', '2022-08-05 22:54:53'),
(345, 24, 'debit', '512.75', 'Transfer to OVNLT1', '8480.4444444428', 'Nothing', '363afff7b12ffcf8aca0674c5b36d898', '2022-08-07 11:41:35', '2022-08-07 11:41:35'),
(347, 16, 'credit', '70000', 'Deposit', '140010', 'Bank Deposit/Transfer Deposit', '22335b4855cfe34423f1ed66d4ce9730', '2022-08-15 10:27:43', '2022-08-15 10:27:43'),
(350, 1, 'credit', '55', 'Loan', '16815.856111104', 'Loan Credited', '89538fab3fa15da7448603a5d43bd801', '2022-08-16 13:35:52', '2022-08-16 13:35:52'),
(351, 1, 'debit', '57.475', 'Loan Repayment', '16758.381111104', 'Loan Paid', '8064a2463b4d4b1670d24e3cc4f9b0a3', '2022-08-16 13:37:00', '2022-08-16 13:37:00'),
(352, 1, 'credit', '3000', 'Loan', '19758.381111104', 'Loan Credited', '8139011ddd0e912753c111f846b19a7b', '2022-08-16 14:44:05', '2022-08-16 14:44:05'),
(353, 2, 'credit', '60000', 'Manual Credit', '60010', 'Manaul Credit', '8233ea81ce91349eac7cec74c0670ece', '2022-08-22 15:22:35', '2022-08-22 15:22:35'),
(355, 2, 'debit', '5999', 'Plan Purchase', '53911', 'Investment Plan Purchase - Diamond Plan', '471c02aa73049087d524d2e5a9dabc58', '2022-08-22 15:25:07', '2022-08-22 15:25:07'),
(356, 23, 'credit', '330', 'Refund', '553150.13875', 'Withdrawal Request Declined', 'b65a5137eef57573cbab790da97a13d3', '2022-08-24 20:41:42', '2022-08-24 20:41:42'),
(357, 23, 'credit', '330', 'Refund', '553480.13875', 'Withdrawal Request Declined', '73e1e3ff3c2e1c7ff0a44893d6b36d10', '2022-08-24 21:15:56', '2022-08-24 21:15:56'),
(358, 28, 'credit', '10', 'Bonus', '10', 'Signup Bonus', '792d0d9ea1defb27875c5a828c89c5b6', '2022-08-28 19:36:33', '2022-08-28 19:36:33'),
(359, 1, 'debit', '3135', 'Loan Repayment', '16623.381111104', 'Loan Paid', '983943a35afbd1ba0d637a71b5195a4c', '2022-09-05 09:32:42', '2022-09-05 09:32:42'),
(360, 23, 'credit', '65.89', 'ROI', '553546.02875', 'Investment Earning from - Gold Plan', 'f1bcf60aa43df4517f2cb8ee9d80a1e6', '2022-09-05 09:32:47', '2022-09-05 09:32:47'),
(361, 1, 'credit', '84', 'ROI', '16707.381111104', 'Investment Earning from - Pro Plan', '0dbfcfaeaa9816476fcb4bb342912ca1', '2022-09-05 09:32:48', '2022-09-05 09:32:48'),
(362, 1, 'credit', '33', 'ROI', '16740.381111104', 'Investment Earning from - Gold Plan', '3132e3290b501c34175128058b56d552', '2022-09-05 09:32:49', '2022-09-05 09:32:49'),
(363, 3, 'credit', '12.777777777778', 'ROI', '46340.833333342', 'Investment Earning from - Diamond Plan', '20b7fd659b26fb7625cd32277b0a15b3', '2022-09-05 09:32:49', '2022-09-05 09:32:49'),
(364, 3, 'credit', '27.5', 'ROI', '46368.333333342', 'Investment Earning from - Gold Plan', '9ec517d1aa1441de0a9a2030055b6c9f', '2022-09-05 09:32:50', '2022-09-05 09:32:50'),
(367, 24, 'credit', '105', 'ROI', '8585.4444444428', 'Investment Earning from - Pro Plan', 'c98386ff4d1380c3128fb6edbfe094ea', '2022-09-05 09:32:52', '2022-09-05 09:32:52'),
(368, 24, 'credit', '3.1944444444444', 'ROI', '8588.6388888872', 'Investment Earning from - Diamond Plan', '42cef7902de13935ec91f9ff615d23ad', '2022-09-05 09:32:53', '2022-09-05 09:32:53'),
(369, 1, 'credit', '15.972222222222', 'ROI', '16756.353333326', 'Investment Earning from - Diamond Plan', 'd446495796185507a9f8d01642ca6c21', '2022-09-05 09:32:53', '2022-09-05 09:32:53'),
(370, 1, 'credit', '65.89', 'ROI', '16822.243333326', 'Investment Earning from - Gold Plan', '229e1b891d9e82e56f44ca7571b82490', '2022-09-05 09:32:53', '2022-09-05 09:32:53'),
(371, 2, 'credit', '12.5', 'ROI', '53923.5', 'Investment Earning from - Starter Plan', '5146a3464458cca21b23aae31414a734', '2022-09-05 09:32:54', '2022-09-05 09:32:54'),
(372, 2, 'credit', '19.163472222222', 'ROI', '53942.663472222', 'Investment Earning from - Diamond Plan', '7828a7678143d0f194e0596422f7abc4', '2022-09-05 09:32:54', '2022-09-05 09:32:54'),
(373, 2, 'debit', '70', 'Funding', '53872.663472222', 'BTC Funding', '34ea3e90e9b541fa46fe750b586be709', '2022-10-18 21:01:51', '2022-10-18 21:01:51'),
(374, 2, 'debit', '70', 'Funding', '53802.663472222', 'BTC Funding', '3a98acc6c1c5886fcf155958b92a6e89', '2022-10-18 21:02:08', '2022-10-18 21:02:08'),
(375, 2, 'debit', '70', 'Funding', '53732.663472222', 'BTC Funding', 'e606760c9678dc978f39d1192f81b3a4', '2022-10-18 21:05:15', '2022-10-18 21:05:15'),
(376, 2, 'debit', '70', 'Funding', '53662.663472222', 'BTC Funding', '699c3887c56f5b042db790f26bace92f', '2022-10-18 21:05:36', '2022-10-18 21:05:36'),
(377, 2, 'debit', '70', 'Funding', '53592.663472222', 'BTC Funding', '1914763a4c3b1d9d4744a49a67add81e', '2022-10-18 21:08:12', '2022-10-18 21:08:12'),
(378, 2, 'credit', '50', 'Withdrwal', '53642.663472222', 'BTC withdrawal to fiat', 'f0b7eab3da94adbce166a759d7c5fece', '2022-10-18 21:17:21', '2022-10-18 21:17:21'),
(379, 2, 'credit', '60', 'Withdrwal', '53702.663472222', 'BTC withdrawal to fiat', '4d6151f97840b8f297c38d639fa1550d', '2022-10-18 21:17:39', '2022-10-18 21:17:39'),
(380, 2, 'credit', '50', 'Withdrwal', '53752.663472222', 'BTC withdrawal to fiat', 'ed65e4e1a2d4a56caefa7f917a8396a2', '2022-10-18 21:20:43', '2022-10-18 21:20:43'),
(381, 2, 'debit', '600', 'Funding', '53152.663472222', 'BTC Funding', '8242390643856a5c38902bc7f7606600', '2022-10-18 21:27:50', '2022-10-18 21:27:50'),
(382, 2, 'debit', '500', 'Funding', '52652.663472222', 'ETH Funding', '41aef985ccebbd6b05fb47d4fc9173e9', '2022-10-18 21:32:23', '2022-10-18 21:32:23'),
(383, 2, 'debit', '50000', 'Funding', '2652.663472222', 'BTC Funding', '49fe41e7b93f3d065bc574076708faeb', '2022-10-20 16:17:21', '2022-10-20 16:17:21'),
(384, 2, 'debit', '200', 'Funding', '2452.663472222', 'USDT Funding', 'cf94b56c47514d67d2ce0ceb6b45328b', '2022-10-20 17:52:40', '2022-10-20 17:52:40'),
(385, 2, 'debit', '1660', 'Staking', '792.663472222', 'Ripple staking', '8c8539ce2f4860664a21fbe80dfd4c2d', '2022-10-21 23:22:27', '2022-10-21 23:22:27'),
(386, 2, 'credit', '15', 'Deposit', '807.663472222', 'Authorize.net Deposit', '69255848ed50cdabce124dbd4836f5a7', '2022-10-30 01:55:08', '2022-10-30 01:55:08'),
(387, 1, 'credit', '1.5', 'Bonus', '16823.743333326', 'Referal Bonus', 'e12e0a262e5c709ff52aa2b68d8927ef', '2022-10-30 01:55:09', '2022-10-30 01:55:09'),
(388, 2, 'credit', '50', 'Deposit', '857.663472222', 'Stripe Deposit', '4feb620533cd4f2643d2ac519bb687e3', '2022-10-30 10:35:56', '2022-10-30 10:35:56'),
(389, 1, 'credit', '5', 'Bonus', '16828.743333326', 'Referal Bonus', '3a8cfb75290115e8a81dfa34d94bcdd8', '2022-10-30 10:35:56', '2022-10-30 10:35:56'),
(390, 2, 'credit', '50', 'Deposit', '907.663472222', 'Stripe Deposit', 'db751c515cf2d2d828c09b6df524ed33', '2022-10-30 10:35:57', '2022-10-30 10:35:57'),
(391, 1, 'credit', '5', 'Bonus', '16833.743333326', 'Referal Bonus', '6ad97eb0ff661c1c50f8c0b45eca96f4', '2022-10-30 10:35:57', '2022-10-30 10:35:57'),
(392, 2, 'credit', '322', 'Deposit', '1229.663472222', 'RazorPay Deposit', 'a3075925cccccee0478ba77350d9c836', '2022-10-30 15:16:27', '2022-10-30 15:16:27'),
(393, 1, 'credit', '32.2', 'Bonus', '16865.943333326', 'Referal Bonus', '1bc98fb37442bd547f27940bd7a17e6d', '2022-10-30 15:16:27', '2022-10-30 15:16:27'),
(394, 2, 'credit', '100', 'Deposit', '1329.663472222', 'Flutterwave Deposit', 'aa9cfff87941cb762769930f111b0ed3', '2022-10-30 19:43:23', '2022-10-30 19:43:23'),
(395, 1, 'credit', '10', 'Bonus', '16875.943333326', 'Referal Bonus', 'd3323e556962d57c3f4950b6c97e3dc0', '2022-10-30 19:43:23', '2022-10-30 19:43:23'),
(396, 2, 'credit', '50', 'Deposit', '1379.663472222', 'CoinGate Deposit', '297f04fc12f7ec38abb787e5a97599f7', '2022-10-30 20:38:49', '2022-10-30 20:38:49'),
(397, 1, 'credit', '5', 'Bonus', '16880.943333326', 'Referal Bonus', '15d2af1112a891581b690e4ce7476a7c', '2022-10-30 20:38:49', '2022-10-30 20:38:49'),
(398, 2, 'debit', '137.9663472222', 'Trade', '1241.6971249998', 'Bot Trade', '61a7c28a7ec153da7660c66ac496f542', '2022-11-01 22:26:40', '2022-11-01 22:26:40'),
(399, 2, 'credit', '171.35420324997', 'Trade', '1413.0513282498', 'Bot Trade', 'a272409f79fe3b8c33294d14e827b8ff', '2022-11-01 22:30:04', '2022-11-01 22:30:04'),
(400, 1, 'credit', '84', 'ROI', '16964.943333326', 'Investment Earning from - Pro Plan', '7b06802aa8db1ec9ee3b30947c1aa3aa', '2022-11-09 14:51:37', '2022-11-09 14:51:37'),
(401, 1, 'credit', '33', 'ROI', '16913.943333326', 'Investment Earning from - Gold Plan', '98a99e796c6fa106826f12a1d172be88', '2022-11-09 14:51:37', '2022-11-09 14:51:37'),
(402, 3, 'credit', '12.777777777778', 'ROI', '46381.11111112', 'Investment Earning from - Diamond Plan', '5cb0cd3bdcde387a0c25de2428761a3b', '2022-11-09 14:51:37', '2022-11-09 14:51:37'),
(403, 3, 'credit', '27.5', 'ROI', '46395.833333342', 'Investment Earning from - Gold Plan', 'f7f37e6a2978b43b732bb57129eb690a', '2022-11-09 14:51:37', '2022-11-09 14:51:37'),
(406, 24, 'credit', '105', 'ROI', '8693.6388888872', 'Investment Earning from - Pro Plan', 'cccac4f24c5f655808b70896aae4476e', '2022-11-09 14:51:38', '2022-11-09 14:51:38'),
(407, 24, 'credit', '3.1944444444444', 'ROI', '8591.8333333316', 'Investment Earning from - Diamond Plan', '64581c113fb38b8c60243bd9e9cbc9e1', '2022-11-09 14:51:38', '2022-11-09 14:51:38'),
(408, 1, 'credit', '15.972222222222', 'ROI', '16929.915555548', 'Investment Earning from - Diamond Plan', 'a3d860c64f4f08584b14696c57de4fd9', '2022-11-09 14:51:38', '2022-11-09 14:51:38'),
(409, 1, 'credit', '65.89', 'ROI', '16979.833333326', 'Investment Earning from - Gold Plan', 'f3d181514f4109cc233603eb34f4b020', '2022-11-09 14:51:38', '2022-11-09 14:51:38'),
(410, 2, 'credit', '12.5', 'ROI', '1425.5513282498', 'Investment Earning from - Starter Plan', '4339b37d4e6306d732f200eb098a3b16', '2022-11-09 14:51:38', '2022-11-09 14:51:38'),
(411, 2, 'credit', '19.163472222222', 'ROI', '1432.214800472', 'Investment Earning from - Diamond Plan', '84df2ef1ee3a13a030858b98256c08bf', '2022-11-09 14:51:38', '2022-11-09 14:51:38');

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` bigint UNSIGNED NOT NULL,
  `receiver_id` bigint UNSIGNED NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `narration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transfers`
--

INSERT INTO `transfers` (`id`, `sender_id`, `receiver_id`, `amount`, `fee`, `total`, `status`, `txn_id`, `narration`, `created_at`, `updated_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_bal` double(50,10) NOT NULL,
  `email_verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_verified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `referred_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `g2fa` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'disabled',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `profile_picture` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user.png',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `account_id`, `password`, `phone_no`, `account_bal`, `email_verified`, `id_verified`, `status`, `gender`, `dob`, `street_address`, `state`, `country`, `referred_by`, `g2fa`, `email_verified_at`, `profile_picture`, `remember_token`, `created_at`, `updated_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `verify_tokens`
--

CREATE TABLE `verify_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `verify_tokens`
--

INSERT INTO `verify_tokens` (`id`, `user_id`, `token`, `expires`, `created_at`, `updated_at`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `webhook_payments`
--

CREATE TABLE `webhook_payments` (
  `id` bigint UNSIGNED NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `webhook_payments`
--

INSERT INTO `webhook_payments` (`id`, `txn_id`, `type`, `data`, `created_at`, `updated_at`) VALUES
-- --------------------------------------------------------

--
-- Table structure for table `website_settings`
--

CREATE TABLE `website_settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `website_settings`
--

INSERT INTO `website_settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'website_name', 'privinevault', NULL, '2022-10-13 06:14:10'),
(2, 'license_key', '86781236-23d0-4b3c-7dfa-c1c187e1dece', NULL, '2022-10-26 13:01:42'),
(3, 'google_captcha', 'disabled', NULL, '2022-09-10 13:09:43'),
(4, 'email_verification', 'enabled', NULL, '2022-08-20 12:29:18'),
(5, 'register_bonus', '10', NULL, NULL),
(6, 'general_currency', 'USD', NULL, '2022-11-06 10:53:52'),
(7, 'id_verification', 'enabled', NULL, '2022-08-20 12:29:18'),
(8, 'website_email', 'info@privinevault.com', NULL, '2022-10-13 06:14:11'),
(9, 'website_phone_no', '567890345677', NULL, '2022-08-21 09:31:41'),
(10, 'website_contact_address', 'united kingdom, London', NULL, NULL),
(11, 'cron', '1668009482', NULL, '2022-11-09 14:58:02'),
(13, 'main_css', '', NULL, '2022-11-09 14:51:43'),
(14, 'decimal_places', '2', NULL, NULL),
(15, 'ref_bonus', '10', '2022-06-26 17:54:19', '2022-06-26 17:54:19'),
(16, 'paypal_sand_box_client_id', 'AWt1kRWV8oXxxSPatgXZcugvZocCz5elINrEdNsM-URX2IPlzfqe6Sl-oBNUDHZ7XugiB0t25c6ItVyX', '2022-06-27 09:54:11', '2022-06-27 09:54:11'),
(17, 'paypal_sand_box_client_secret', 'EG7H2IEDY2RsAzAmDPdKSIHRikyN8UZGMgPrjnnre36iVzpJtOrazR8ME2esM4KhvVoyUr2KusDZxuRf', '2022-06-27 09:54:11', '2022-06-27 09:54:11'),
(18, 'paypal_live_client_id', 'XXXXXy', '2022-06-27 09:54:11', '2022-07-19 13:44:05'),
(19, 'paypal_live_client_secret', 'XXXXXXy', '2022-06-27 09:52:39', '2022-07-19 13:44:06'),
(20, 'paypal_mode', 'sandbox', '2022-06-27 09:54:11', '2022-06-27 09:54:11'),
(23, 'paypal_sand_box_app_id', 'APP-80W284485P519543T', '2022-06-27 09:59:30', '2022-06-27 09:59:30'),
(24, 'paypal_live_app_id', 'XXXXy', '2022-06-27 09:59:30', '2022-07-19 13:44:06'),
(25, 'balance_transfer', 'enabled', NULL, NULL),
(26, 'transfer_auto_approve', 'enabled', NULL, '2022-07-19 20:57:40'),
(27, 'min_transfer', '5', NULL, NULL),
(28, 'max_transfer', '5000', NULL, NULL),
(29, 'transfer_fee_type', 'percent', NULL, NULL),
(30, 'transfer_fee', '1.5', NULL, '2022-08-21 14:24:14'),
(31, 'theme', 'prius', NULL, '2022-10-18 02:08:59'),
(32, 'transfer_otp', 'disabled', NULL, '2022-08-20 12:29:19'),
(33, 'withdrawal_otp', 'disabled', NULL, '2022-08-20 12:29:19'),
(34, 'multiple_loans', 'disabled', '2022-07-06 14:19:02', '2022-07-19 22:07:36'),
(35, 'loan_otp', 'disabled', '2022-07-06 14:19:03', '2022-08-20 12:29:19'),
(36, 'loan', 'disabled', '2022-07-09 07:26:37', '2022-07-09 07:26:37'),
(37, 'login_otp_user', 'disabled', '2022-07-19 22:27:08', '2022-08-20 12:25:23'),
(38, 'login_otp_admin', 'disabled', '2022-07-19 22:27:08', '2022-07-19 22:27:08'),
(39, 'livechat', 'disabled', '2022-07-20 04:52:01', '2022-08-21 20:21:07'),
(41, 'auto_blog', 'enabled', '2022-07-21 12:18:47', '2022-07-21 12:18:47'),
(42, 'withdrawal_fee', '2.55', '2022-07-21 21:53:46', '2022-08-21 15:01:47'),
(43, 'withdrawal_fee_type', 'percent', '2022-07-21 21:53:46', '2022-07-21 21:53:46'),
(44, 'min_withdrawal', '50', '2022-07-22 09:53:56', '2022-07-22 09:53:56'),
(45, 'max_withdrawal', '500', '2022-07-22 09:53:56', '2022-07-22 09:53:56'),
(46, 'auto_delete_expired_investments', 'enabled', '2022-07-29 13:45:19', '2022-07-29 13:45:19'),
(49, 'whatsapp', '{\"status\":\"enabled\",\"no\":\"44\",\"message\":\"Welcome to privinevault!\\r\\n\\r\\nHow may I help you today?\"}', '2022-08-22 11:53:59', '2022-11-06 02:18:37'),
(50, 'meta', '{\"logo\":\"logo.png\",\"logo_rec\":\"logo-rec.png\",\"favicon\":\"favicon.png\",\"keywords\":\"Bitcoin Investment, crypto investment management, investment, crypto investment\",\"description\":\"privinevault is a crypto investment and trading company majoring in trading, investing and mining crypto currencys\",\"index\":\"all\",\"banner\":\"banner-1667305767.png\"}', '2022-06-26 17:54:19', '2022-11-01 11:29:27'),
(51, 'trader_mode', 'enabled', '2022-10-18 02:51:27', '2022-10-18 02:51:27');

-- --------------------------------------------------------

--
-- Table structure for table `withdrawals`
--

CREATE TABLE `withdrawals` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fee` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `txn_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawals`
--

INSERT INTO `withdrawals` (`id`, `user_id`, `amount`, `fee`, `total`, `wallet_name`, `wallet_type`, `info`, `status`, `txn_id`, `created_at`, `updated_at`) VALUES

-- --------------------------------------------------------

--
-- Table structure for table `withdrawal_wallets`
--

CREATE TABLE `withdrawal_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `info` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `withdrawal_wallets`
--

INSERT INTO `withdrawal_wallets` (`id`, `name`, `user_id`, `type`, `info`, `created_at`, `updated_at`) VALUES
--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_form_submissions`
--
ALTER TABLE `contact_form_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_user_id_foreign` (`user_id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_templates_name_unique` (`name`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `id_verifications`
--
ALTER TABLE `id_verifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_verifications_user_id_foreign` (`user_id`);

--
-- Indexes for table `investments`
--
ALTER TABLE `investments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `investments_user_id_foreign` (`user_id`);

--
-- Indexes for table `investment_plans`
--
ALTER TABLE `investment_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `loans`
--
ALTER TABLE `loans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `loans_user_id_foreign` (`user_id`);

--
-- Indexes for table `loan_plans`
--
ALTER TABLE `loan_plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `manual_deposit_methods`
--
ALTER TABLE `manual_deposit_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stakings`
--
ALTER TABLE `stakings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stakings_coin_id_foreign` (`coin_id`);

--
-- Indexes for table `staking_coins`
--
ALTER TABLE `staking_coins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_tickets_user_id_foreign` (`user_id`);

--
-- Indexes for table `support_ticket_attachments`
--
ALTER TABLE `support_ticket_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_ticket_attachments_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `support_ticket_replies`
--
ALTER TABLE `support_ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_ticket_replies_ticket_id_foreign` (`ticket_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trading_bots`
--
ALTER TABLE `trading_bots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trading_bot_activations`
--
ALTER TABLE `trading_bot_activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trading_bot_activations_bot_id_foreign` (`bot_id`);

--
-- Indexes for table `trading_bot_trades`
--
ALTER TABLE `trading_bot_trades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trading_bot_trades_bot_id_foreign` (`bot_id`);

--
-- Indexes for table `trading_currencies`
--
ALTER TABLE `trading_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trading_logs`
--
ALTER TABLE `trading_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trading_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `trading_pairs`
--
ALTER TABLE `trading_pairs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trading_signals`
--
ALTER TABLE `trading_signals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trading_signals_user_id_foreign` (`user_id`);

--
-- Indexes for table `trading_wallets`
--
ALTER TABLE `trading_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trading_wallets_user_id_foreign` (`user_id`);

--
-- Indexes for table `trading_wallet_transactions`
--
ALTER TABLE `trading_wallet_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `trading_wallet_transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transfers_sender_id_foreign` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_account_id_unique` (`account_id`);

--
-- Indexes for table `verify_tokens`
--
ALTER TABLE `verify_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `verify_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `webhook_payments`
--
ALTER TABLE `webhook_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `website_settings`
--
ALTER TABLE `website_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawals_user_id_foreign` (`user_id`);

--
-- Indexes for table `withdrawal_wallets`
--
ALTER TABLE `withdrawal_wallets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `withdrawal_wallets_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=370;

--
-- AUTO_INCREMENT for table `contact_form_submissions`
--
ALTER TABLE `contact_form_submissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `id_verifications`
--
ALTER TABLE `id_verifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `investment_plans`
--
ALTER TABLE `investment_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `loan_plans`
--
ALTER TABLE `loan_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `manual_deposit_methods`
--
ALTER TABLE `manual_deposit_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `stakings`
--
ALTER TABLE `stakings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staking_coins`
--
ALTER TABLE `staking_coins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `support_ticket_attachments`
--
ALTER TABLE `support_ticket_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `support_ticket_replies`
--
ALTER TABLE `support_ticket_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `trading_bots`
--
ALTER TABLE `trading_bots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trading_bot_activations`
--
ALTER TABLE `trading_bot_activations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trading_bot_trades`
--
ALTER TABLE `trading_bot_trades`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trading_currencies`
--
ALTER TABLE `trading_currencies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=864;

--
-- AUTO_INCREMENT for table `trading_logs`
--
ALTER TABLE `trading_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `trading_pairs`
--
ALTER TABLE `trading_pairs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `trading_signals`
--
ALTER TABLE `trading_signals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `trading_wallets`
--
ALTER TABLE `trading_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `trading_wallet_transactions`
--
ALTER TABLE `trading_wallet_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=412;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `verify_tokens`
--
ALTER TABLE `verify_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `webhook_payments`
--
ALTER TABLE `webhook_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `withdrawal_wallets`
--
ALTER TABLE `withdrawal_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `id_verifications`
--
ALTER TABLE `id_verifications`
  ADD CONSTRAINT `id_verifications_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `investments`
--
ALTER TABLE `investments`
  ADD CONSTRAINT `investments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `loans`
--
ALTER TABLE `loans`
  ADD CONSTRAINT `loans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stakings`
--
ALTER TABLE `stakings`
  ADD CONSTRAINT `stakings_coin_id_foreign` FOREIGN KEY (`coin_id`) REFERENCES `staking_coins` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD CONSTRAINT `support_tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_ticket_attachments`
--
ALTER TABLE `support_ticket_attachments`
  ADD CONSTRAINT `support_ticket_attachments_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `support_ticket_replies`
--
ALTER TABLE `support_ticket_replies`
  ADD CONSTRAINT `support_ticket_replies_ticket_id_foreign` FOREIGN KEY (`ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trading_bot_activations`
--
ALTER TABLE `trading_bot_activations`
  ADD CONSTRAINT `trading_bot_activations_bot_id_foreign` FOREIGN KEY (`bot_id`) REFERENCES `trading_bots` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trading_bot_trades`
--
ALTER TABLE `trading_bot_trades`
  ADD CONSTRAINT `trading_bot_trades_bot_id_foreign` FOREIGN KEY (`bot_id`) REFERENCES `trading_bots` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trading_logs`
--
ALTER TABLE `trading_logs`
  ADD CONSTRAINT `trading_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trading_signals`
--
ALTER TABLE `trading_signals`
  ADD CONSTRAINT `trading_signals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trading_wallets`
--
ALTER TABLE `trading_wallets`
  ADD CONSTRAINT `trading_wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `trading_wallet_transactions`
--
ALTER TABLE `trading_wallet_transactions`
  ADD CONSTRAINT `trading_wallet_transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `trading_wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_ibfk_1` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `verify_tokens`
--
ALTER TABLE `verify_tokens`
  ADD CONSTRAINT `verify_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdrawals`
--
ALTER TABLE `withdrawals`
  ADD CONSTRAINT `withdrawals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `withdrawal_wallets`
--
ALTER TABLE `withdrawal_wallets`
  ADD CONSTRAINT `withdrawal_wallets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
