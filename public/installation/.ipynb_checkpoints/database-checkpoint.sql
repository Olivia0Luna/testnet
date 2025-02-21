-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 05, 2023 at 01:42 PM
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
-- Database: `nulled`
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

-- --------------------------------------------------------

--
-- Table structure for table `demo_trading_logs`
--

CREATE TABLE `demo_trading_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `trade_start` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `trade_stop` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount_converted` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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

-- --------------------------------------------------------

--
-- Table structure for table `demo_trading_wallets`
--

CREATE TABLE `demo_trading_wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `balance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '50000',
  `icon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(7, 'Paystack', 'gateway', 'paystack', 'active', '100', '100000', '2.1', 'percent', 'ngn', NULL, NULL, '<p>You will be redirected to paystack to complete your deposit</p>', NULL, NULL, NULL, NULL, NULL, 'paystack.png', '2022-06-27 14:42:23', '2022-10-30 11:31:55');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'hero', '{\"section_heading\":\"Bitcoin Investment is the future\",\"section_text\":\"<p>Credhyip is the industry leading crypto investment company. Investing in crypto shouldnt be hard, we have best algorithin for profitable trading. Invest with a reliable company today! We are reliable Not sure when to start? Start now!<\\/p>\",\"section_button_text\":\"Sign up\",\"section_button_url\":\"https:\\/\\/credhyip.local\\/register\",\"section_bg_img\":\"hero-bg-1669111854.png\"}', '[\"home\"]', '2022-08-31 22:36:23', '2022-09-16 19:03:03'),
(2, 'about', '{\"section_heading\":\"About <span>Us<\\/span>\",\"section_text\":\"<p>CredHYIP is an established international financial brokage company. We specialise in profitable cryptocurrency trading, mining, investment and foresting trading. We have a team of competent traders.<\\/p><p>We are determined to providing conducive investment to our esteemed investors, minimising losses, and offerring safe investmets. With our edge cutting technology, we are able to automate trading, investments and returns. With Credhyip, there is guaranteed return on investment.<\\/p>\",\"section_button_text\":\"Learn More\",\"section_button_url\":\"\\/about\",\"section_bg_img\":\"about-bg-1669112114.png\"}', '[\"about\",\"contact\",\"home\",\"plans\"]', '2022-08-31 22:36:23', '2022-09-17 19:30:46'),
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
(16, 'breadcrumb', '{\"section_bg_img\":\"breadcrumb.jpg\"}', '[\"blog\",\"blog_detail\",\"plans\",\"about\",\"contact\"]', '2022-09-05 15:11:15', '2022-09-16 18:50:11'),
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
  `tp` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '19999',
  `sl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '199999',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'website_name', 'CredCrypto', NULL, '2022-10-13 06:14:10'),
(3, 'google_captcha', 'disabled', NULL, '2022-09-10 13:09:43'),
(4, 'email_verification', 'disabled', NULL, '2022-08-20 12:29:18'),
(5, 'register_bonus', '10', NULL, NULL),
(6, 'general_currency', 'USD', NULL, '2022-11-06 10:53:52'),
(7, 'id_verification', 'disabled', NULL, '2022-08-20 12:29:18'),
(8, 'website_email', 'support@credcrypto.net', NULL, '2022-10-13 06:14:11'),
(9, 'website_phone_no', '567890345677', NULL, '2022-08-21 09:31:41'),
(10, 'website_contact_address', 'No 20. Kings Way, Lagos', NULL, NULL),
(11, 'cron', '1668009482', NULL, '2022-11-09 14:58:02'),
(14, 'decimal_places', '2', NULL, NULL),
(15, 'ref_bonus', '10', '2022-06-26 17:54:19', '2022-06-26 17:54:19'),
(16, 'paypal_sand_box_client_id', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '2022-06-27 09:54:11', '2022-06-27 09:54:11'),
(17, 'paypal_sand_box_client_secret', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx', '2022-06-27 09:54:11', '2022-06-27 09:54:11'),
(18, 'paypal_live_client_id', 'XXXXXy', '2022-06-27 09:54:11', '2022-07-19 13:44:05'),
(19, 'paypal_live_client_secret', 'XXXXXXy', '2022-06-27 09:52:39', '2022-07-19 13:44:06'),
(20, 'paypal_mode', 'sandbox', '2022-06-27 09:54:11', '2022-06-27 09:54:11'),
(23, 'paypal_sand_box_app_id', 'App-xxxxxxxxxxxxxx', '2022-06-27 09:59:30', '2022-06-27 09:59:30'),
(24, 'paypal_live_app_id', 'XXXXy', '2022-06-27 09:59:30', '2022-07-19 13:44:06'),
(25, 'balance_transfer', 'disabled', NULL, NULL),
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
(39, 'livechat', 'enabled', '2022-07-20 04:52:01', '2022-08-21 20:21:07'),
(41, 'auto_blog', 'enabled', '2022-07-21 12:18:47', '2022-07-21 12:18:47'),
(42, 'withdrawal_fee', '2.55', '2022-07-21 21:53:46', '2022-08-21 15:01:47'),
(43, 'withdrawal_fee_type', 'percent', '2022-07-21 21:53:46', '2022-07-21 21:53:46'),
(44, 'min_withdrawal', '50', '2022-07-22 09:53:56', '2022-07-22 09:53:56'),
(45, 'max_withdrawal', '500', '2022-07-22 09:53:56', '2022-07-22 09:53:56'),
(46, 'auto_delete_expired_investments', 'disabled', '2022-07-29 13:45:19', '2022-07-29 13:45:19'),
(49, 'whatsapp', '{\"status\":\"enabled\",\"no\":\"2348052931576\",\"message\":\"Welcome to CredCrypto!\\r\\n\\r\\nHow may I help you today?\"}', '2022-08-22 11:53:59', '2022-11-06 02:18:37'),
(50, 'meta', '{\"logo\":\"logo.png\",\"logo_rec\":\"logo-rec.png\",\"favicon\":\"favicon.png\",\"keywords\":\"Bitcoin Investment, crypto investment management, investment, crypto investment\",\"description\":\"Credhyip Pro is a crypto investment and trading company majoring in trading, investing and mining crypto currencys\",\"robots\":\"all\",\"banner\":\"banner-1667305767.png\"}', '2022-06-26 17:54:19', '2022-11-01 11:29:27'),
(51, 'trader_mode', 'disabled', '2022-10-18 02:51:27', '2022-10-18 02:51:27'),
(52, 'email_queue', 'enabled', '2023-03-09 15:54:30', '2023-03-09 15:54:30');

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
-- Indexes for table `demo_trading_logs`
--
ALTER TABLE `demo_trading_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `demo_trading_logs_user_id_foreign` (`user_id`);

--
-- Indexes for table `demo_trading_wallets`
--
ALTER TABLE `demo_trading_wallets`
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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_form_submissions`
--
ALTER TABLE `contact_form_submissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `demo_trading_logs`
--
ALTER TABLE `demo_trading_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `demo_trading_wallets`
--
ALTER TABLE `demo_trading_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `id_verifications`
--
ALTER TABLE `id_verifications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investments`
--
ALTER TABLE `investments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `investment_plans`
--
ALTER TABLE `investment_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loans`
--
ALTER TABLE `loans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loan_plans`
--
ALTER TABLE `loan_plans`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `manual_deposit_methods`
--
ALTER TABLE `manual_deposit_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `password_resets`
--
ALTER TABLE `password_resets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket_attachments`
--
ALTER TABLE `support_ticket_attachments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket_replies`
--
ALTER TABLE `support_ticket_replies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

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
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `verify_tokens`
--
ALTER TABLE `verify_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `webhook_payments`
--
ALTER TABLE `webhook_payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `website_settings`
--
ALTER TABLE `website_settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `withdrawals`
--
ALTER TABLE `withdrawals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `withdrawal_wallets`
--
ALTER TABLE `withdrawal_wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `demo_trading_logs`
--
ALTER TABLE `demo_trading_logs`
  ADD CONSTRAINT `demo_trading_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `stakings`
--
ALTER TABLE `stakings`
  ADD CONSTRAINT `stakings_coin_id_foreign` FOREIGN KEY (`coin_id`) REFERENCES `staking_coins` (`id`) ON DELETE CASCADE;

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
