-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2017 at 01:01 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `versity_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `advice_category`
--

CREATE TABLE `advice_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advice_category`
--

INSERT INTO `advice_category` (`id`, `name`, `created_at`, `updated_at`, `users_id`) VALUES
(3, 'Career Path', NULL, NULL, 18),
(4, 'CV Writing', NULL, NULL, 18),
(5, 'Skill', NULL, NULL, 18);

-- --------------------------------------------------------

--
-- Table structure for table `advice_comments`
--

CREATE TABLE `advice_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `advice_id` int(10) UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advice_comments`
--

INSERT INTO `advice_comments` (`id`, `name`, `email`, `comment`, `advice_id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'tanjina akter', 'tanjina@yahoo.com', 's brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. \"What\'s happened to me?\" he thought. It wasn\'t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated maga', 1, 'resume', NULL, NULL),
(2, 'tanjina akter', 'tanjina@yahoo.com', 'look out the window at the dull weather. Drops', 1, 'resume', NULL, NULL),
(3, 'tanjina akter', 'tanjina@yahoo.com', 'emed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. \"What\'s happened to me?\" he thought. It wasn\'t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur mu', 1, 'resume', NULL, NULL),
(4, 'masud miah', 'masud234@gmail.com', 'there was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her mother', 1, 'resume', NULL, NULL),
(5, 'ashik khan', 'ashik123@gmail.com', 'After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere', 1, 'resume', NULL, NULL),
(6, 'iftekhar masud', 'masud@gmail.com', 'Thanks for sharing', 2, 'Career Path', NULL, NULL),
(7, 'Ashraf Ahmed', 'ashraf@gmail.com', 'Nice Post', 3, 'skill', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `alert_job_categories`
--

CREATE TABLE `alert_job_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobscategory_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_job_categories`
--

INSERT INTO `alert_job_categories` (`id`, `jobscategory_id`, `users_id`, `created_at`, `updated_at`) VALUES
(15, 12, 3, '2017-03-29 14:33:27', '2017-03-29 14:33:27'),
(16, 13, 3, '2017-03-29 14:33:27', '2017-03-29 14:33:27'),
(17, 16, 3, '2017-03-29 14:33:27', '2017-03-29 14:33:27'),
(18, 11, 4, '2017-03-30 10:51:40', '2017-03-30 10:51:40'),
(19, 13, 4, '2017-03-30 10:51:40', '2017-03-30 10:51:40'),
(20, 8, 9, '2017-03-31 10:29:24', '2017-03-31 10:29:24'),
(21, 9, 9, '2017-03-31 10:29:24', '2017-03-31 10:29:24'),
(22, 10, 9, '2017-03-31 10:29:24', '2017-03-31 10:29:24'),
(23, 11, 5, '2017-03-31 15:21:19', '2017-03-31 15:21:19'),
(24, 13, 5, '2017-03-31 15:21:19', '2017-03-31 15:21:19'),
(25, 21, 5, '2017-03-31 15:21:19', '2017-03-31 15:21:19'),
(26, 26, 5, '2017-03-31 15:21:19', '2017-03-31 15:21:19');

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_view` int(11) DEFAULT '0',
  `user_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `category_id`, `title`, `body`, `image`, `created_at`, `updated_at`, `slug`, `total_view`, `user_id`) VALUES
(3, 'android-development', 'One morning, when Gregor Samsa woke from troubled dreams', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. \"What\'s happened to me?\" he thought. It wasn\'t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops</p>', NULL, '2017-02-21 05:02:59', '2017-02-21 05:02:59', 'one-morning-when-gregor-samsa-woke-from-troubled-dreams', 0, 5),
(4, 'android-development', 'he found himself transformed in his bed into a horrible vermin. He lay on his', '<p>One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on hisarmour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. \"What\'s happened to me?\" he thought. It wasn\'t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops</p>', NULL, '2017-02-21 05:10:09', '2017-03-14 18:11:25', 'he-found-himself-transformed-in-his-bed-into-a-horrible-vermin-he-lay-on-his', 2, 9),
(10, 'wordpress-developer', 'At solmen va esser necessi far uniform grammatica', '<p>Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles. Ma quande lingues coalesce, li grammatica del resultant lingue es plu simplic e regulari quam ti del coalescent lingues. Li nov lingua franca va esser plu simplic e regulari quam li existent Europan lingues. It va esser tam simplic quam Occidental in fact, it va esser Occidental. A un Angleso it va semblar un simplificat Angles, quam un skeptic Cambridge amico dit me que Occidental es.Li Europan lingues es membres del sam familie. Lor separat existentie es un myth. Por scientie, musica, sport etc, litot Europa usa li sam vocabular. Li lingues differe solmen in li grammatica, li pronunciation e li plu commun vocabules. Omnicos directe al desirabilite de un nov lingua franca: On refusa continuar payar custosi traductores. At solmen va esser necessi far uniform grammatica, pronunciation e plu sommun paroles.</p>', NULL, '2017-02-24 16:38:20', '2017-03-28 20:53:55', 'at-solmen-va-esser-necessi-far-uniform-grammatica', 15, 3),
(11, 'wordpress-developer', 'Sometimes you may wish to stop running validation rules on an attribute after the first validation', '<p>Sometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationSometimes you may wish to stop running validation rules on an attribute after the first validationv</p>', NULL, '2017-03-10 15:30:37', '2017-03-11 04:13:51', 'sometimes-you-may-wish-to-stop-running-validation-rules-on-an-attribute-after-the-first-validation', 4, 3),
(16, 'web-development', 'development environment everything works as expected and the browser clients successfully', '<p>I have a Rails 5 app which uses Action Cable for websocket functionality.</p>\n<p> </p>\n<p>In my development environment everything works as expected and the browser clients successfully connect to the Action Cable channels.</p>\n<p> </p>\n<p>In my production environment Action Cable was working at some point, but then suddenly stopped functioning without any immediate apparent cause.</p>\n<p> </p>\n<p>If I change the RAILS_ENV to production while running the app on my development machine Action Cable works fine. Something seems different when running the app on the actual production machine although the basic environment is the same.</p>\n<p> </p>\n<p>The specific error I see in the Chrome console:</p>\n<p> </p>\n<p>mydomain.com/:1 WebSocket connection to \'wss://mydomain.com/cable\' failed: WebSocket is closed before the connection is established. I get a similar error in other browsers so it doesn\'t appear to be browser related. I disabled any adblockers while testing just to be sure they do not interfere.</p>\n<p> </p>\n<p>Development.rb ENV related setup:</p>\n<p> </p>\n<span>config</span><span>.</span><span>action_cable</span><span>.</span><span>url </span><span>=</span> <span>\"ws://localhost:#{port}/cable\"</span>\n<p>Production.rb ENV related setup</p>\n<p>hostname = ENV.fetch(\'HOSTNAME\') port = ENV.fetch(\'PORT\') base_url = \"#{hostname}:#{port}\" config.action_cable.url = \"wss://#{hostname}/cable\" config.action_cable.allowed_request_origins = [\"https://#{base_url}\", \"https://#{hostname}\"] I\'ve been using Knex successfully to connect to a backend database. But I want to be able to unit test my code. Is there a way to mock the database connection? I\'ve tried using proxyquire but I can\'t seem to get it to wor $runReportResult = $client-&gt;runReport($runReportParam); if(isset($runReportResult-&gt;return)){ $runReportData = $runReportResult-&gt;return; $isReportRunningParam[\"identifier\"] = $runReportData; $isReportRunningParam[\"timeout\"] = 10; $isReportRunningResult = $client-&gt;isReportRunning($isReportRunningParam); if(empty($isReportRunningResult-&gt;return)){ $getReportResultParam[\"identifier\"] = $runReportData; $getReportResult = $client-&gt;getReportResult($getReportResultParam); if(isset($getReportResult-&gt;return-&gt;records)){ $getReportResultData = $getReportResult-&gt;return-&gt;records; // data processing stuff removed for clarity } else { echo \"Error: \" . $runReportData . \" returned no data\"; } } else { echo \"Error: \" . $runReportData . \" exceeded the report runtime limit\"; } } else { echo \"Error: \" . $runReportParam[\"reportName\"] . \" wasn\'t found\"; } thanks all</p>', NULL, '2017-03-15 09:24:48', '2017-03-15 09:28:19', 'development-environment-everything-works-as-expected-and-the-browser-clients-successfully', 3, 9),
(18, 'java-programming', 'there was no going back to the Blue House. After her father was buried next to her mother', '\n<p>there was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her mother</p>', NULL, '2017-03-15 09:35:34', '2017-03-30 00:27:43', 'there-was-no-going-back-to-the-blue-house-after-her-father-was-buried-next-to-her-mother', 7, 9),
(19, 'java-programming', 'This function is executed each time a user clicks on the \"browse\" buttons in various dialogs', '<p><img src=\"http://sujonhera.files.wordpress.com/2014/12/victory-day-of-bangladesh-hd-facebook-cover-photos-14.jpg\" alt=\"\" width=\"851\" height=\"315\" /></p>\n\n<p>there was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her mother</p>', NULL, '2017-03-15 09:38:08', '2017-03-30 00:27:40', 'this-function-is-executed-each-time-a-user-clicks-on-the-browse-buttons-in-various-dialogs', 15, 9),
(20, 'java-programming', 'How can I open a cmd window in a specific location?', '<p>This PowerToy adds an \"Open Command Window Here\" context menu option on file system folders, giving you a quick way to open a command window (cmd.exe) pointing at the selected folder.<strong>Open Command Window Here</strong></p>\r\n<p>This PowerToy adds an \"Open Command Window Here\" context menu option on file system folders, giving you a quick way to open a command window (cmd.exe) pointing at the selected folder.</p>\r\n<p>This PowerToy adds an \"Open Command Window Here\" context menu option on file system folders, giving you a quick way to open a command window (cmd.exe) pointing at the selected folder.<strong>Open Command Window Here</strong></p>\r\n<p>This PowerToy adds an \"Open Command Window Here\" context menu option on file system folders, giving you a quick way to open a command window (cmd.exe) pointing at the selected folder.</p>', 'images/1490710369.jpg', '2017-03-28 14:12:49', '2017-03-31 10:32:09', 'how-can-i-open-a-cmd-window-in-a-specific-location', 19, 4),
(21, 'java-programming', 'Is the Era of the FullStack Operator Beginning to Emerge?', '<p>If you’re an IT Operator, you most likely fit into one of three categories:</p>\r\n<ul><li>Silo’d Technologist (Networking, Storage, Security)</li>\r\n<li>Trying to Make Sense of Software-Defined Data Center technologies (e.g. SDS, SDN, HCI)</li>\r\n<li>Trying to Make Sense of DevOps</li>\r\n</ul><p>If you’re in one of the latter two groups, then your learning curves (or curiosity) tends to follow these trends:</p>\r\n<ul><li>Where do the lines blur/overlap between technologies that were once silo’d (e.g. Servers, Storage, Networking, Virtualization)?</li>\r\n<li>How to apply automation to the new instantiations of these technologies?</li>\r\n<li>How to learn enough programming (or advanced scripting) to drive that automation?</li>\r\n<li>How to drive the monitoring/logging/analytics tools that can be applied to these faster moving, software-centric environments?</li>\r\n<li>How to think about operations as a set of lifecycle pipelines, to better align to the application lifecycle pipelines that development teams use?</li>\r\n</ul><p>Let’s face it, that’s a long list of stuff to understand. In order to be effective in a world that will begin to value speed and agility more than stability, the requirement to understand quite a bit about the entire operations “stack” will be critical. Just as we’ve seen developers begin to become more “full stack developers”, I believe that we’ll soon begin to see IT operations teams targeting “<strong>full stack operations</strong>” skills.</p>\r\n<p>A great example of where this is already happening today is with containers. Depending on who you ask, containers can either be a developer-centric technology or an operations-centric technology. And if you’re focused on using containers to run applications in production, you’re most likely going to leverage some sort of CaaS or PaaS platform. Within that platform, here are all the things that not only touch containers, but are deeply integrated into the platform architecture:</p>\r\n<ul><li>Platform OS Management</li>\r\n<li>Image Management (Container Registry)</li>\r\n<li>Image Security and Scanning (Container Registry)</li>\r\n<li>Software-Define Networking</li>\r\n<li>Platform Availability Management</li>\r\n<li>Platform Inter-Process Communication Security</li>\r\n<li>Software-Defined Storage</li>\r\n<li>Load-Balancing</li>\r\n<li>Application and Platform Monitoring</li>\r\n<li>Application and Platform<span>  </span>Logging</li>\r\n<li>Platform Troubleshooting</li>\r\n</ul><p>It’s a full-stack of requirements without the clear lines of separation that used to exist for physical environments or virtualized environments. All of these things are now in the domain of the full-stack operator to automate and evolve to keep up with the increasing speed of developers. And the goal of all that work is to make the developers even less aware of the Infrastructure and Operations.</p>\r\n<p>Now let’s take it a step farther. Suppose your developers want to start using one of the “serverless” frameworks instead of using containers? In theory, the lines between developer and operator would then begin to blur even more. But who will monitor and troubleshoot those serverless applications? It will require an even deeper knowledge of how the applications work in this new environment.</p>\r\n<p>Will we see “full-stack operator” take off as a real thing, or just a resume thing (like “full-stack developer”)? Time will tell. But we’re definitely in the early days of it becoming a necessity as the platforms and applications that run many business quickly evolve.</p>', 'images/1490996408.jpg', '2017-03-31 21:40:09', '2017-03-31 21:56:55', 'is-the-era-of-the-fullstack-operator-beginning-to-emerge', 2, 19),
(22, 'iot', 'IoT attack trends — and how to mitigate them', '<p>Two years ago, IoT attacks were considered exotic, an aberration of interest mainly to those in the industry and conspiracy theorists. No longer. The recent “<a href=\"https://www.troyhunt.com/data-from-connected-cloudpets-teddy-bears-leaked-and-ransomed-exposing-kids-voice-messages/\">teddy bear</a>” data breach, which exposed more than 2 million children’s and parent’s voice recordings along with emails and passwords, forcing IoT cybersecurity dangers to become a mainstream household concern. And the few who were still unaware certainly got the message earlier this month, with the WikiLeaks revelation of the CIA hacking tool that can turn Samsung TVs into eavesdropping devices.</p>\r\n<p>The evolution of IoT malware mirrors that of PC-based malware, but at lightning speed. The first attacks were essentially pranks, tricksters seeing what they could do, like the 2012 “<a href=\"https://en.wikipedia.org/wiki/Carna_botnet\">Internet Census</a>” powered by a botnet of 400,000+ embedded devices. Bad actors were quick to see the possibilities, leading to the <a href=\"http://searchsecurity.techtarget.com/news/450401541/Dyn-hit-by-massive-DNS-DDoS-Eastern-US-bears-brunt-of-attacks\">Mirai botnet-based DDoS attacks</a> on Dyn, Deutsche Telekom and others. The latest transition is the monetization of IoT malware by hiring out these botnets, ransomware or ad-click fraud providers such as the <a href=\"http://gosecure.net/2016/11/02/exposing-the-ego-market-the-cybercrime-performed-by-the-linux-moose-botnet/\">Linux/Moose botnet</a> operators selling Instagram followers.</p>\r\nIoT attack trends\r\n<p>While these attacks may be minor compared to the mega-record, mega-expensive breaches we’ve seen, the potential is huge. <a href=\"http://www.gartner.com/newsroom/id/3165317\">Gartner predicts</a> IoT devices will reach an installed base of 21 billion units by 2020. And we’re not just talking toasters, teddy bears and TVs — by 2020, there will be 250 million “<a href=\"http://www.computerworld.com/article/2875572/gartner-foresees-250m-connected-vehicles-on-the-road-by-2020.html\">connected</a>” cars on the road. This brings the problem to an entirely new level.</p>\r\n<p>Given the sheer variety of IoT devices and opportunities to exploit them, IoT attacks will develop in several directions.</p>\r\n<p><strong>DDoS attacks<br /></strong>As IoT expands so will <a href=\"http://internetofthingsagenda.techtarget.com/definition/IoT-botnet-Internet-of-Things-botnet\">IoT botnets</a> — and their capacity to launch large-scale <a href=\"http://searchsecurity.techtarget.com/definition/distributed-denial-of-service-attack\">DDoS attacks</a>. The Mirai DDoS attacks on the Dyn network were the most massive in history, with <a href=\"http://searchsecurity.techtarget.com/news/450401962/Details-emerging-on-Dyn-DNS-DDoS-attack-Mirai-IoT-botnet\">reported attack strength</a> of 1.2 Tbps and taking down more than 80 major websites. Dyn’s <a href=\"http://dyn.com/blog/dyn-statement-on-10212016-ddos-attack/\">preliminary analysis found</a> that tens of millions of discrete IP addresses associated with the Mirai botnet were part of the attack.</p>\r\n<p>The same botnet interfered with heating distribution in Finland, knocked nearly a million Deutsche Telekom users offline, was used in a DDoS attack on WikiLeaks and disrupted operations of five major Russian banks.</p>\r\n<p>With the public release of the <a href=\"http://searchsecurity.techtarget.com/news/450400369/Release-of-Mirai-IoT-botnet-malware-highlights-bad-password-security\">Mirai source code</a> by its creator last October, hackers have already begun developing more virulent and broader reaching strains. Mirai is not a simple attack tool but a development framework. Additional capabilities such as new credential stealing, IP anonymization, persistency and traffic hiding will <a href=\"http://icitech.org/wp-content/uploads/2016/12/ICIT-Brief-Rise-of-the-Machines.pdf\">expand its attack potential</a>. New Mirai strains will also likely include obfuscation techniques that make it difficult to track activity and expanded infection capabilities to target more types of devices.</p>\r\n<p><strong>IoT ransomware attacks<br /></strong>Until recently, IoT ransomware was all theory. At the 2016 DEF CON conference, researchers demonstrated they could infect smart thermostats with ransomware. And in a Bloomberg interview, GM of Intel Security Chris Young <a href=\"https://www.bloomberg.com/news/videos/2016-08-18/a-perfect-storm-is-coming-intel-security-chief\">sketched a future</a> where hackers demand a ransom before allowing a car owner to drive to work. That future has come sooner than anticipated. In January, attackers locked the electronic key system and computers of a four-star Austrian hotel, demanding $1,800 in bitcoins to restore functionality. They paid up. One can easily imagine cybercriminals making similar ransom demands to unlock hacked medical devices such as insulin pumps or pacemakers.</p>\r\n<p>Ironically, one reason that IoT ransomware is not yet a bigger problem is what makes IoT so difficult to secure — the variety of IoT devices and operating systems means hackers can’t write ransomware that spreads superfast or easily.</p>\r\n<p><strong>IoT as attack vectors to enter an organization<br /></strong>As edge devices proliferate, so do the opportunities to gain entry into the wider network to which they are connected. Unfortunately, in the rush to get to market, many IoT device manufacturers neglect security aspects. Even manufacturers that are conscious of security issues might unknowingly embed insecure third-party components into their products. Many of the webcams enlisted by the Mirai botnet utilized electronic components from the <a href=\"http://fortune.com/2016/10/24/china-cyberattack-webcams-xiongmai/\">same manufacturer</a>.</p>\r\n<p><strong>IoT for spying and surveillance<br /></strong>One of the most concerning IoT security issues is the ability to invade and expose our most private moments. <a href=\"https://motherboard.vice.com/en_us/article/this-website-streams-camera-footage-from-users-who-didnt-change-their-password\">First reported in 2014</a>, tens of thousands of home security cameras are being hacked and streamed live online. In most cases, changing the default password blocks the feed. However, Senrio researchers <a href=\"http://searchsecurity.techtarget.com/news/450410626/In-a-post-Mirai-world-the-FTC-wants-more-secure-routers-from-D-Link\">discovered a security flaw</a> in D-Link cameras that lets attackers overwrite administrator passwords, exposing thousands of users to hacks not only of their cameras, but the network it connects to.</p>\r\n<p>Even more disturbing are the types of attacks revealed this month by the <a href=\"https://wikileaks.org/ciav7p1/\">WikiLeaks CIA dump</a>. According to the documents, Britain’s MI5 and the American CIA worked together to develop a smart TV app, Weeping Angel, that can <a href=\"http://www.zdnet.com/article/how-cia-mi5-hacked-your-smart-tv-to-spy-on-you/\">turn televisions into spying tools</a>. Targeting Samsung TVs specifically, the malware records audio from surrounding areas, including when the user has turned the set off. While it’s unclear at what stage of development this particular project is in, the potential for hacks of this type, when used by malicious hackers, are enormous.</p>\r\nVendors need to step up\r\n<p>Vendors have been slow to respond to the push for better IoT security, particularly more advanced penetration testing. However, they soon may find the financial consequences persuade them. In 2015, Fiat Chrysler recalled 1.4 million vehicles to install a security patch to prevent hackers from gaining remote control of the engine, steering and other systems. And the FTC recently <a href=\"http://www.zdnet.com/article/ftc-files-lawsuit-against-d-link-for-router-and-camera-security-flaws/\">filed a lawsuit</a> against D-Link for “failing to protect its customers against well-known and easily preventable software security flaws in its routers and IoT cameras.”</p>\r\nIoT antimalware\r\n<p>Nascent IoT antimalware holds some promise, however approaches that work for PC-based attacks will not work in the IoT world. The high level of device diversity and operating systems versioning pose a barrier for security vendors. Currently, most IoT security products focus on the network side, trying to detect and block attacks by analyzing the traffic. However, these techniques become less relevant when encrypted traffic is involved.</p>\r\n<p>IoT brings new opportunities but also new challenges. Awareness was the first hurdle. Now manufacturers, legislators, cybersecurity vendors and end users all need to do their part.</p>\r\n<p><em>All IoT Agenda network contributors are responsible for the content and accuracy of their posts. Opinions are of the writers and do not necessarily convey the thoughts of IoT Agenda.</em></p>', NULL, '2017-03-31 21:56:33', '2017-03-31 21:56:36', 'iot-attack-trends-and-how-to-mitigate-them', 1, 19),
(23, 'cloud-computing', 'Virtualization divination: Which expert predictions came true in 2016?', '<p>At the beginning of 2016, we asked our panel of experts on the SearchServerVirtualization Advisory Board to gaze into their crystal balls and offer predictions for virtualization trends in 2016. These predictions came hot on the heels of Dell announcing its acquisition of EMC, so it’s no surprise that the potential ramifications of this merger occupied their thoughts, but our experts also forecast the rise of containers and hyper-converged technology, an uncertain road ahead for virtualization and more. Were our experts given the gift of sight and the ability to prophesy the future? Read on to find out.</p>\r\n<p><strong>The Dell-EMC merger shakes up the market</strong></p>\r\n<p>Let’s start with the elephant in the room: the Dell-EMC merger. Dell bought out storage giant EMC in October of 2015 <a href=\"http://searchstorage.techtarget.com/news/4500255282/Dell-and-EMC-agree-on-blockbuster-67-million-buyout\">to the tune of $67 million</a> and with it acquired a stake in VMware. Dell and EMC CEOs claimed that the merger would result in the companies taking a unified leadership position in new technologies, and that EMC going private would allow the company to remain agile on the business side while keeping the peace with shareholders. For its part, VMware was slated to remain public. The Dell-EMC merger closed on September 7, 2016.</p>\r\n<p>This news was still hot off the presses back in January 2016, so our experts were left with <a href=\"http://searchservervirtualization.techtarget.com/feature/Server-virtualization-trends-will-de-emphasize-hypervisor-in-2016\">more questions than answers</a>. Brian Kirsch of the Milwaukee Area Technical College, deliberated the acquisition’s effect on VMware, wondering whether the virtualization company would remain a disruptive force or stabilize and become an established market player. Maish Saidel-Keesing of Cisco Video Technologies Israel questioned how the merger would affect the virtualization market.</p>\r\n<p>Fortunately, the insight and perspective of time have given us the answers to these questions. Initially, the merger appeared <a href=\"http://searchservervirtualization.techtarget.com/news/4500272016/Dell-EMC-merger-weighs-on-VMware-fortunes\">to be a dark cloud</a> looming over VMware, coinciding with layoffs and plummeting stock shares. Despite the doom and gloom, the benefits of the merger for VMware <a href=\"http://searchvirtualdesktop.techtarget.com/news/4500255375/How-Dells-acquisition-of-EMC-affects-VMware-EUC-Citrix\">have since become more apparent</a>: VMware’s clientele will likely increase thanks to Dell’s sales team, and the merger has inspired the company to focus on new cloud and networking strategies with particular attention on NSX.</p>\r\n<p>As for its effect on the virtualization market as a whole, the Dell-EMC <a href=\"http://searchservervirtualization.techtarget.com/opinion/How-the-Dell-EMC-acquisition-will-affect-employees-and-customers\">merger has created some confusion</a> in regards to redundant products, support systems and sales teams, which has understandably led to customer anxiety. Going forward, Dell will have to make some cuts or, at the very least, some upgrades, which may result in the company emphasizing its best products.</p>\r\n<p><strong>The container explosion</strong></p>\r\n<p>Our experts agreed almost unanimously that 2016 would be the year of the container, speculating that the capabilities of containerization would grow, that the number of container startups would increase exponentially and that container technology, such as Microsoft Nano Server, would make a splash. It would seem that our experts were right on the money with this prediction: According to <a href=\"https://451research.com/report-short?entityId=88907&amp;referrer=marketing&amp;utm_term=Social&amp;utm_content=buffer76cba&amp;utm_medium=social&amp;utm_source=twitter.com&amp;utm_campaign=buffer\">a report from 451 Research</a>, in a survey of 960 IT professionals polled on their adoption of containers, 32% said they were in the process of discovery and evaluation, 10% were running trials, 8% were focused on test and dev environments, 9% reported initial implementation in production applications and 5% reported broad implementation in production applications.</p>\r\n<p>Why the commotion over containers? Containers are easy to deploy and can be more resource efficient than VMs. They’re also faster to provision, offer greater performance in terms of speed and are highly portable. And the container explosion of 2016 isn’t just a passing fad — it’s carried over into 2017 and <a href=\"http://searchmicroservices.techtarget.com/news/450410820/Popularity-of-application-containers-begins-to-shadow-DevOps-PaaS\">is expected to continue</a>, with another 451 Research survey reporting that the application container market will grow from $762 million in 2016 to $2.6 billion by 2020.</p>\r\n<p><strong>HCI takes its seat at the table</strong></p>\r\n<p>Another trend our experts forecast was the rise of hyper-converged infrastructure (HCI). It doesn’t take psychic ability to understand <a href=\"http://searchvirtualdesktop.techtarget.com/feature/Comparing-converged-vs-hyper-converged-infrastructure\">the appeal of HCI</a> — it neatly packages the different elements of a traditional data center into a single appliance, and offers tighter integration.</p>\r\n<p>Rob McShinsky of the Dartmouth-Hitchcock Medical Center predicted that HCI would enter the mainstream in 2016 and that hyper-converged technologies would take their seat at the table as the base hardware platform for many medium- to large-sized organizations. This prediction proved particularly prescient, with IDC reporting hyper-convergence growth at 137.5% year-over-year during the second quarter of 2016. <a href=\"http://searchdatacenter.techtarget.com/news/450400680/Hyper-converged-infrastructure-watchers-mull-losses-and-layoffs\">This veritable boom</a> drew the interest of legacy and new vendors alike, with new HCI vendors leading the pack. The oversaturation of the market has led vendors to lower their prices significantly, which is good news for customers, but could spell trouble for vendors’ profits. As a result, the market has started to consolidate, as evidenced by <a href=\"http://searchconvergedinfrastructure.techtarget.com/news/450411201/HPE-pays-650-million-for-SimpliVitys-hyper-convergence\">the recent acquisition of SimpliVity</a> by Hewlett Packard Enterprise.</p>\r\n<p>Our experts may not have proven themselves to be clairvoyant, but, for the most part, their predictions for 2016 rang true; we can only hope to be as perceptive looking to the future of server virtualization in 2017.</p>', NULL, '2017-03-31 21:58:16', '2017-03-31 21:58:16', 'virtualization-divination-which-expert-predictions-came-true-in-2016', 0, 19),
(24, 'computer-security', 'Risk mapping key to security, business integration', '<p>It’s no secret that data protection has become integral to bottom line success for digital businesses. As a result, it’s time for <a href=\"http://searchsecurity.techtarget.com/definition/information-security-infosec\">InfoSec professionals</a> to crawl out of their caves and start communicating with the rest of the business, Tom Kartanowicz, head of information security at Natixis, North America, told the audience at the recent <a href=\"http://www.cisonewyorksummit.com/\">CDM Media CISO Summit</a>.</p>\r\n<p>To facilitate this communication, the language these pros will use is the language of security risk, Kartanowicz said.</p>\r\n<p>“As security professionals, if we want to be taken seriously we need to put what we do into the risk lens to talk to the business so they understand the impact and how we’re trying to reduce the <a href=\"http://www.computerweekly.com/feature/How-information-security-professionals-can-help-business-understand-cyber-risk\">impact of the types of threats</a> we’re seeing,” Kartanowicz said.</p>\r\n<p>For example, even though the chief information security officer and <a href=\"http://searchcompliance.techtarget.com/definition/Chief-risk-officer-CRO\">chief risk officer</a> may appear to be two different islands in an organization, they are part of the same team, he reminded the audience.</p>\r\n<p>Business is the bridge that links them together so instead of working in silos, security professionals should carve out what Kartanowicz calls a “friends and family plan” that forms allies with other departments in their organization. The human resources department can help discipline somebody who might be an internal threat to the organization, corporate communications can help talk to the media and customers when there are incidents like <a href=\"http://searchsecurity.techtarget.com/opinion/Tool-time-Picking-DDoS-prevention-products\">DDoS</a> and malware attacks, and the legal department can be valuable allies when it is time to take action against bad actors, he explained.</p>\r\n<p>“As the <a href=\"http://searchsecurity.techtarget.com/definition/CISO-chief-information-security-officer\">CISO</a> or as the head of InfoSec, you are missing out on a lot of valuable intelligence if you are not talking to all these different teams,” he stressed.</p>\r\n<p><a href=\"http://searchcompliance.techtarget.com/definition/risk-map\">Risk mapping</a> — a data visualization tool that outlines an organization’s specific risks — is an effective way to identify threats and vulnerabilities, then communicate them to the business, he said. Risk mapping helps an organization identify the areas where it’s going to spend their security budget, how to implement solutions and, most importantly, helps identify specific instances of risk reduction, he said.</p>\r\n<p>Kartanowicz said there are two things to consider when evaluating and determining the likelihood of a risk: how easy is it to exploit and how often it occurs.</p>\r\n<p>“If the vulnerabilities require technical skills held by 1% of the population, it’s going to be pretty difficult to exploit,” he said. “If on the other hand, anybody on the street can exploit it, it’s going to be pretty easy.”</p>\r\n<p>It is then time to address the specific risks, he said.</p>\r\n<p>“In the <a href=\"http://searchcio.techtarget.com/definition/enterprise-risk-management\">enterprise risk management</a> world, the business can accept the risks, avoid the risks or [work to] mitigate the risks — this is where InfoSec comes in — or <a href=\"http://www.investopedia.com/terms/t/transferofrisk.asp\">transfer the risks</a>,” he said.</p>\r\n<p>Using tools such as the <a href=\"https://www.nist.gov/cyberframework\">NIST cybersecurity framework</a> can help InfoSec reduce the risks, he said. It’s important that organizations tie in their disaster recovery, backup strategy, business continuity and crisis management into whatever the framework they choose, he added. Organizations should also ensure they have baseline controls in place to help minimize the risk of a data breach, he added.</p>\r\n<p>But as threats evolve and vulnerabilities change, he suggested that the risk map be re-evaluated annually. Business requirements are constantly evolving and organizations are always entering different markets, but companies need to be constantly aware of the threat landscape, he added.</p>\r\n<p>“Incidents will always occur; risk is not going away,” he said.</p>', NULL, '2017-03-31 21:59:30', '2017-03-31 21:59:30', 'risk-mapping-key-to-security-business-integration', 0, 19),
(25, 'system-analysis', 'Apple, SAP iOS SDK hits the shelves for enterprise developers', '<p>Apple and SAP have followed through on their promise to deliver a new iOS SDK that allows developers to build business apps based on SAP back-end technology.</p>\r\n<p>With the new <a href=\"http://searchmobilecomputing.techtarget.com/news/450295826/Apple-SAP-deal-gives-enterprise-developers-new-iOS-SDK\">developer toolkit</a>, out this week, developers can create apps using Apple’s Swift programming language and connect them to SAP systems for business workflows and data analytics. SAP already has its own mobile apps, but the knock against them is that they look like desktop applications formatted for a mobile device — not specifically designed for the smaller form factor.</p>\r\n<p>“Apple is in every enterprise right now, except people aren’t using high-end business apps on those phones,” said Eric Klein, director of mobile software at VDC Research Group in Natick, Mass. “But it’s beginning to happen, and SAP will really spur that along.”</p>\r\n<p>The iOS SDK allows SAP shops to customize apps for their use cases. Businesses can build iOS apps for retail workers to more easily collect customer information, for example, or for workers at construction sites and warehouses who want to access product data without stopping to open up a laptop.</p>\r\n<p>As for the vendors, SAP benefits from getting more complex business apps on iOS. Apple, meanwhile, moves the needle on its initiative to move into the enterprise with iPhones, iPads and <a href=\"http://searchmobilecomputing.techtarget.com/feature/Apple-Swift-language-gains-traction-among-mobile-app-developers\">Swift-made apps</a>.</p>\r\n<p>“Swift is very, very popular with the developer community, and they’re going to want to use it to make these apps,” Klein said.</p>\r\n<p>Apple has focused on increasing its presence in business via other partnerships with IBM and Cisco over the past three years. IBM and Apple have been working on iOS apps that <a href=\"http://searchmobilecomputing.techtarget.com/news/4500269289/Apple-IBM-deal-delivers-100-iOS-business-apps-Watson-next\">incorporate IBM’s Watson technology</a>, and <a href=\"http://searchmobilecomputing.techtarget.com/news/4500252748/Apple-iOS-gets-fast-lane-status-on-Cisco-mobile-networks\">Cisco has delivered a fast lane</a> on its networks for iOS devices to get better connectivity when accessing business content.</p>', NULL, '2017-03-31 22:18:44', '2017-03-31 22:18:44', 'apple-sap-ios-sdk-hits-the-shelves-for-enterprise-developers', 0, 20),
(26, 'web-development', 'How data governance software helps ensure the integrity of your data', '<p>In data management, integrity is the assurance that digital information is uncorrupted and can only be accessed or modified by those authorized to do so. Integrity involves maintaining the consistency, accuracy and trustworthiness of data over its entire lifecycle. <a href=\"http://searchdatacenter.techtarget.com/definition/integrity\">Continued…</a></p>\r\n<p><strong>Quote of the Day</strong></p>\r\n\r\n<p>“The interesting thing from a data management perspective is that blockchain provides a complete, immutable, historical record that everyone in the network agrees with.” – <a href=\"http://searchdatamanagement.techtarget.com/news/450415535/Blockchain-data-disruption-aborning-IDC-analyst-says\">Stewart Bond</a></p>\r\n\r\n<p><strong>Learning Center</strong><br /><a href=\"http://searchdatamanagement.techtarget.com/news/450415535/Blockchain-data-disruption-aborning-IDC-analyst-says\">Blockchain data disruption growing, IDC analyst says</a><br /> IDC’s Stewart Bond discusses the potential impact of blockchain data architectures. It’s early, but the technology could someday change data governance.</p>\r\n<p><a href=\"http://searchdatamanagement.techtarget.com/feature/How-data-governance-software-helps-ensure-the-integrity-of-your-data\">How data governance software helps ensure the integrity of your data</a><br /> Data governance software, one facet of a data governance program, helps organizations manage and ensure the integrity of their growing volumes of data.</p>\r\n<p><a href=\"http://searchsecurity.techtarget.com/opinion/Block-chain-startups-signal-new-approaches-to-data-integrity\">Blockchain startups signal new approaches to data integrity</a><br /> The Bitcoin phenomenon is fueling widespread development. The blockchain mechanisms that secure the Bitcoin network hold promise for security applications, says Robert Richardson.</p>\r\n<p><a href=\"http://searchbusinessanalytics.techtarget.com/opinion/Predictive-analytics-tools-hinge-on-good-data-business-expertise\">Predictive analytics tools hinge on good data, business expertise</a><br /> Predictive analytics tools won’t take you very far unless you have the right data — and the right people — involved from the get-go.</p>\r\n<p><a href=\"http://internetofthingsagenda.techtarget.com/blog/IoT-Agenda/Blockchain-An-answer-to-governmental-hacking-concerns\">Blockchain: An answer to governmental hacking concerns</a><br /> In a world of evolving cyberthreats, how can governments protect data? Enter blockchain, a growing presence as we move further into the IoT age.</p>', NULL, '2017-03-31 22:20:16', '2017-04-01 09:44:47', 'how-data-governance-software-helps-ensure-the-integrity-of-your-data', 2, 20);

-- --------------------------------------------------------

--
-- Table structure for table `article_categories`
--

CREATE TABLE `article_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_categories`
--

INSERT INTO `article_categories` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 3, '2017-02-21 04:00:26', '2017-02-21 04:00:26'),
(5, 'Android Development', 3, '2017-02-21 04:00:26', '2017-02-21 04:00:26'),
(6, 'Java Programming', 3, '2017-02-21 04:00:26', '2017-02-21 04:00:26'),
(8, 'Wordpress Developer', 3, '2017-02-21 04:00:26', '2017-02-21 04:00:26'),
(13, 'Computer Security', 18, '2017-03-31 21:50:06', '2017-03-31 21:50:06'),
(14, 'Big Data', 18, '2017-03-31 21:50:16', '2017-03-31 21:50:16'),
(15, 'Data Analysis', 18, '2017-03-31 21:50:29', '2017-03-31 21:50:29'),
(16, 'System Analysis', 18, '2017-03-31 21:50:41', '2017-03-31 21:50:41'),
(17, 'Software Engineering', 18, '2017-03-31 21:50:59', '2017-03-31 21:50:59'),
(18, 'Database Administration', 18, '2017-03-31 21:51:20', '2017-03-31 21:51:20'),
(19, 'System Adminstration', 18, '2017-03-31 21:52:06', '2017-03-31 21:52:06'),
(20, 'Web App Development', 18, '2017-03-31 21:52:20', '2017-03-31 21:52:20'),
(21, 'Mobile App Development', 18, '2017-03-31 21:52:45', '2017-03-31 21:52:45'),
(22, 'IOT', 18, '2017-03-31 21:53:01', '2017-03-31 21:53:01'),
(23, 'Higher Study', 18, '2017-03-31 21:53:12', '2017-03-31 21:53:12'),
(24, 'Game Development', 18, '2017-03-31 21:53:51', '2017-03-31 21:53:51'),
(25, 'Computer Science', 18, '2017-03-31 21:54:05', '2017-03-31 21:54:05'),
(26, 'Artificial Intelligence', 18, '2017-03-31 21:54:19', '2017-03-31 21:54:19'),
(27, 'Cloud Computing', 18, '2017-03-31 21:54:50', '2017-03-31 21:54:50');

-- --------------------------------------------------------

--
-- Table structure for table `article_tag`
--

CREATE TABLE `article_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tag`
--

INSERT INTO `article_tag` (`id`, `article_id`, `tag_id`) VALUES
(1, 7, 2),
(2, 8, 1),
(3, 8, 6),
(4, 9, 3),
(5, 9, 6),
(6, 10, 2),
(7, 10, 3),
(8, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `article_tags`
--

CREATE TABLE `article_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `article_tags`
--

INSERT INTO `article_tags` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Php', 3, '2017-02-21 04:09:08', '2017-02-21 04:09:08'),
(2, 'Html5', 3, '2017-02-21 04:09:08', '2017-02-21 04:09:08'),
(3, 'CSS3', 5, '2017-02-21 04:09:08', '2017-02-21 04:09:08'),
(4, 'Php Laravel Framework', 3, '2017-02-21 04:09:08', '2017-02-21 04:09:08'),
(5, '', 3, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(6, 'Php Codeigniter Framework', 3, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(7, 'Java', 5, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(8, '.Net', 3, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(9, 'Ruby', 5, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(10, 'OOP', 3, '2017-02-21 04:09:09', '2017-02-21 04:09:09'),
(11, 'Python', 5, '2017-02-21 04:09:09', '2017-02-21 04:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `carrier_advices`
--

CREATE TABLE `carrier_advices` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `view` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carrier_advices`
--

INSERT INTO `carrier_advices` (`id`, `title`, `slug`, `body`, `image`, `created_by`, `category`, `view`, `created_at`, `updated_at`) VALUES
(1, 'Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu', 'aenean-vulputate-eleifend-tellus-aenean-leo-ligula-porttitor-eu', '<p><span style=\"color:#666666;font-family:Verdana, Geneva, sans-serif;font-size:10px;\">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. \"What\'s happened to me?\" he thought. It wasn\'t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops</span><span style=\"color:#666666;font-family:Verdana, Geneva, sans-serif;font-size:10px;\">One morning, when Gregor Samsa woke from troubled dreams, he found himself transformed in his bed into a horrible vermin. He lay on his armour-like back, and if he lifted his head a little he could see his brown belly, slightly domed and divided by arches into stiff sections. The bedding was hardly able to cover it and seemed ready to slide off any moment. His many legs, pitifully thin compared with the size of the rest of him, waved about helplessly as he looked. \"What\'s happened to me?\" he thought. It wasn\'t a dream. His room, a proper human room although a little too small, lay peacefully between its four familiar walls. A collection of textile samples lay spread out on the table - Samsa was a travelling salesman - and above it there hung a picture that he had recently cut out of an illustrated magazine and housed in a nice, gilded frame. It showed a lady fitted out with a fur hat and fur boa who sat upright, raising a heavy fur muff that covered the whole of her lower arm towards the viewer. Gregor then turned to look out the window at the dull weather. Drops</span></p>', NULL, 'dalim', 'CV Writing', 46, '2017-03-29 16:06:38', '2017-03-31 18:06:12'),
(2, '10 Steps to a Tech Career', '10-steps-to-a-tech-career', '<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">\"Where do I start?\" That\'s an obvious question when you\'re considering a <a href=\"http://www.monster.com/information-technology-careers\">technology career</a>. Should you get a technical certification? Learn a programming language? You\'ll hear a seemingly endless variety of answers, largely because the technology field is so vast, with numerous career paths ranging from database administrator to network engineer.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">For those just starting to consider a technology career, it\'s best to avoid the temptation to jump into a potentially expensive, time-intensive training program unless you know it\'s the right program and career path for you. Instead, explore the field by picking and choosing from this list of 10 mix-and-match steps to get a sense of the technology job world and what you\'re likely to find fulfilling.</p>\r\n<ul><li>Attend an Industry Organization Meeting</li>\r\n</ul><p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Techies working in the industry\'s trenches can provide lots of guidance to those just getting started. They can also serve as mentors to assist you as you embark on a tech career. Where can you find these mentors? At industry groups, many of them with college chapters and mentoring programs. Be up front with your need for advice, and ask lots of questions.</p>\r\n<ul><li> <span>Explore Tech Job Roles</span></li>\r\n</ul><p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Too many would-be techies blast into the field without thinking through the myriad job roles available. Why commit to studying networks when programming may be right for you? The <a href=\"http://tcc.comptia.org/\">TechCareer Compass</a>, a resource from industry group <a href=\"http://www.comptia.org/\">CompTIA</a> will help you sort through the possibilities with its still-evolving taxonomy of technology job roles.\" </p>\r\n<ul><li><span>Learn HTML</span></li>\r\n</ul><p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Programmers, technical writers, information architects and many other techies are now expected to know HTML, the language used to display Web pages. Learning HTML is a first step in moving beyond browsing to delve into the Internet\'s innards.<br /><br /></p>\r\n<ul><li>Read Computer Books</li>\r\n</ul><p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Visit your local library or bookstore, and head to the computer books section. If it\'s a megastore, you\'ll find hundreds of books, many with obscure titles and topics. Simply perusing books about the industry, as well as specific topics like programming and networking, will help you explore the variety of jobs in the field.</p>\r\n<ul><li>Write a Program</li>\r\n</ul><p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Programming is an essential skill for technology pros. Scores of languages exist, such as C++, Java, C#, Visual Basic and more. Learning JavaScript is one relatively quick way to get started in programming. You\'ll need nothing more than a Web browser, a text-editing program and the help of an online tutorial.</p>\r\n<ul><li>Install Linux</li>\r\n</ul><p style=\"font-size:16px;font-family:Roboto, sans-serif;\">If you install and run the Linux operating system, you\'ll accomplish several things at once. You\'ll learn about the open source software movement, and you\'ll also get a quick course on an OS other than Windows. </p>\r\n<ul><li>Volunteer Your Services</li>\r\n</ul><p style=\"font-size:16px;font-family:Roboto, sans-serif;\">You may be a newbie, but don\'t stay that way. Find someone -- even an older relative -- who needs computer assistance. This will test your ability to communicate clearly about technology, an essential skill for tech professionals. Nonprofits, religious organizations and other community groups may also be in need of individuals with computer expertise, however newly acquired.</p>\r\n<ul><li>Contribute to an Open Source Project</li>\r\n</ul><p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Just because you\'re not a pro with PHP or MySQL doesn\'t mean you\'re not ready to contribute to an open source project. The open source movement needs people to help stamp out bugs, write documentation and lend a hand in other ways. Any contribution will help you make contacts and learn about the techie life</p>\r\n<ul><li> <span>Enroll in a Course or Workshop</span></li>\r\n</ul><p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Community colleges, universities and technology training centers often offer weekend or evening workshops with entry-level instruction in programming, Web development and networking. Online courses also provide a relatively fast, cost-effective way to gain insight into the field.</p>\r\n<ul><li><span>Build a Web Site</span></li>\r\n</ul><p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Forget about those automated homepage building tools. Instead, use your knowledge of HTML and JavaScript to display your prowess with Web technologies. Experiment, have fun and focus on useful tools rather than glitzy graphics</p>', 'images/1490982800.jpg', 'masum billah', 'Career Path', 8, '2017-03-31 17:53:21', '2017-03-31 19:03:47'),
(3, 'Are All These IT Skills Required?', 'are-all-these-it-skills-required', '<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">A job posting lists these skills: J2EE, EJB, JSP, XML, WebSphere, Oracle, UML, HTML, servlets and a minimum GPA of 3.0. You meet them all, aside from the one for UML. But does the company really expect to find a candidate with this laundry list of skills?</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Should you apply, or keep looking?</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Technology executives, hiring managers and human resource professionals say they don\'t intend to frustrate job seekers with lists of technical skills. However, they acknowledge techies must contend with a variety of approaches to listing skills that require candidates to read between the lines to determine what a company really wants.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">\"There\'s no real law or rule on job postings,\" says Sean Chou, CTO of Fieldglass, a software technology company.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">The current job market adds to the difficulty. Companies sometimes post over-the-top laundry lists of skills just to see what kind of talent they can attract -- or to screen out unqualified applicants.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">\"As soon as the market slowed down, companies were creating unrealistic lists of skills,\" says Scott Hajer, senior corporate recruiter at Software Architects, an IT consulting firm.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\"><span>Fantasy Combinations</span></p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">A classic example is a position requiring more years of experience with a technology than it has been in existence. According to Hajer, such postings are sometimes \"written by recruiters who don\'t understand what they\'re putting in an ad. [Job seekers] make fun of companies that will list something like four years of .NET. The laundry listing is something they find really frustrating.\"</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Hajer contends such lists don\'t help companies weed out candidates. \"In this market, candidates don\'t self-screen,\" he says. \"They\'re more into resume spamming.\"</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\"><span>What Does \"Required\" Mean?</span></p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Thus, a simple question -- \"Does required mean required?\" -- becomes a conundrum for conscientious job seekers. Many companies differentiate between required skills and desired or preferred skills. In such listings, \"required\" often means just that.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">\"If you don\'t have the required skills, you should not even consider applying for the job,\" Chou says of his company\'s listings. \"It\'s a right to play. If you don\'t meet it, you shouldn\'t be in the ballpark.\"</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Others concur. \"When we say they\'re required on our postings, they are essential,\" says Mary Medved, vice president of human resources for <a href=\"http://company.monster.com/wamnet/\">Netco Government Services</a>.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">However, not everyone agrees. \"Those things are the wish list for the company,\" says Lee Morrow, chief technology officer of Quantum AI, an enterprise application integration firm. \"If half of the stuff on the list is what you do, give it a shot.\"</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\"><span>Read Between the Lines</span></p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Hiring managers and others say job applicants should read job postings carefully to determine if a company is presenting a wish list or set-in-stone requirements.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">For instance, RightNow Technologies listed the following requirements for a senior software developer: three or more years of professional software development experience, expertise in C/C++, proficiency in SQL (preferably Oracle, SQL Server, MySQL) and Unix software development. Other desired skills included DHTML, Java and .NET.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Candidates must meet the requirements for consideration, says Susan Carstensen, the company\'s chief financial officer and head of HR. RightNow goes one step further, sending questionnaires to potential candidates asking them to rate themselves on a scale from one (for no knowledge) to five (for expert) in areas such as C, C++, Unix, SQL and Java.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">There are other clues to how seriously a company views the requirements. Netco, for example, needs to fill scores of openings that require security-clearance eligibility. Got a sordid past? Don\'t even think about applying.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">Chou recommends candidates review postings for comparable positions. If the target job\'s requirements seem overblown compared to other postings, the company may be posting a dream listing and will likely be more flexible about granting interviews.</p>\r\n<p style=\"font-size:16px;font-family:Roboto, sans-serif;\">That\'s not to say candidates will always know when to apply. \"In today\'s economy, people are thinking of job postings as a fuzzy match,\" says Chou. \"If they\'re close, they\'re willing to send in their esume.\"</p>', 'images/1490987007.jpg', 'masum billah', 'skill', 5, '2017-03-31 19:03:27', '2017-04-01 09:54:44');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Web Development', 'dalim', '2017-01-30 13:09:00', '2017-01-30 13:09:00'),
(4, 'Desktop Application', 'dalim', '2017-01-30 13:10:33', '2017-01-30 13:10:33'),
(6, 'Web Security', 'dalim', '2017-01-30 13:11:01', '2017-01-30 13:11:01'),
(12, 'theme development', 'dalim', '2017-01-30 13:19:55', '2017-01-30 13:19:55'),
(14, 'Data Science', 'masum billah', '2017-03-31 20:32:43', '2017-03-31 20:32:43'),
(15, 'Big Data', 'masum billah', '2017-03-31 20:32:52', '2017-03-31 20:32:52'),
(16, 'Database', 'masum billah', '2017-03-31 20:33:02', '2017-03-31 20:33:02'),
(17, 'System Analysis', 'masum billah', '2017-03-31 20:33:14', '2017-03-31 20:33:14'),
(18, 'Backend Development', 'masum billah', '2017-03-31 20:33:31', '2017-03-31 20:33:31'),
(19, 'Frontend Development', 'masum billah', '2017-03-31 20:33:42', '2017-03-31 20:33:42'),
(20, 'Software Engineering', 'masum billah', '2017-03-31 20:33:58', '2017-03-31 20:33:58'),
(21, 'Project Management', 'masum billah', '2017-03-31 20:34:09', '2017-03-31 20:34:09'),
(22, 'Embedded System', 'masum billah', '2017-03-31 20:34:35', '2017-03-31 20:34:35'),
(23, 'Computer Network', 'masum billah', '2017-03-31 20:35:02', '2017-03-31 20:35:02'),
(24, 'Algorithm', 'masum billah', '2017-03-31 20:35:13', '2017-03-31 20:35:13'),
(25, 'Data Structure', 'masum billah', '2017-03-31 20:35:25', '2017-03-31 20:35:25'),
(26, 'Image Processing', 'masum billah', '2017-03-31 20:36:01', '2017-03-31 20:36:01'),
(27, 'IOT', 'masum billah', '2017-03-31 20:36:09', '2017-03-31 20:36:09'),
(28, 'Research', 'masum billah', '2017-03-31 20:36:24', '2017-03-31 20:36:24'),
(29, 'Mobile App Development', 'masum billah', '2017-03-31 20:36:53', '2017-03-31 20:36:53'),
(30, 'Problem Solving', 'masum billah', '2017-03-31 20:46:42', '2017-03-31 20:46:42'),
(31, 'Cloud Computing', 'masum billah', '2017-03-31 20:48:50', '2017-03-31 20:48:50');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `name`, `email`, `comment`, `approved`, `article_id`, `created_at`, `updated_at`, `category_id`) VALUES
(0, 'iftekhar masud', 'masud@gmail.com', 'going back to the Blue House. After her father was buried next to her mothergoing back to the Blue House. After her father was buried next to her mother', 1, 19, '2017-03-15 16:43:37', '2017-03-15 16:43:37', 'java-programming'),
(25, 'tanvir hasan', 'tanvir@gmail.com', 'Oh, God… one evening in 1988 (29 years ago), I stepped into the bathroom to fetch a hairbrush. The bath was running, so I tried the handle and the door wasn’t locked, and I just walked in.', 1, 6, '2017-01-31 11:27:29', '2017-01-31 11:27:29', 'java-programming'),
(28, 'tanjina akter', 'tanzina@yahoo.com', 'While Bootstrap will apply these styles in all browsers, Internet Explorer 11 and below don\'t fully support the disabled attribute on a <fieldset>. Use custom JavaScript to disable the fieldset in these browsers.', 1, 10, '2017-01-31 16:43:33', '2017-01-31 16:43:33', 'wordpress-developer'),
(30, 'Tarek hasan', 'php@yahoo.com', 'A migration class contains two methods: up and down. The up method is used to add new tables, columns, or indexes to your database, while the down method should simply reverse the operations performed by the up method.', 1, 10, '2017-02-01 07:51:53', '2017-02-01 07:51:53', 'wordpress-developer'),
(32, 'tanjina akter', 'tanjina@yahoo.com', 'Migrations are like version control for your database, allowing your team to easily modify and share the application\'s database schema. Migrations are typically paired with Laravel\'s schema builder to easily build your application\'s database schema. If you have ever had to tell a teammate to manually add a column to their local database schema, you\'ve faced the problem that database migrations solve.', 1, 10, '2017-03-10 15:12:17', '2017-03-10 15:12:17', 'wordpress-developer'),
(37, 'tanjina akter', 'tanjina@yahoo.com', 'yess nyc work', 1, 11, '2017-03-10 17:15:54', '2017-03-10 17:15:54', 'wordpress-developer'),
(38, 'tanjina akter', 'tanjina@yahoo.com', 'He lay on his he found himself transformed in his bed into a horrible vermin. He lay on his he found himself transformed', 1, 5, '2017-03-10 17:21:59', '2017-03-10 17:21:59', 'java-programming'),
(39, 'tanjina akter', 'tanjina@yahoo.com', 'the work is done', 1, 11, '2017-03-11 04:14:11', '2017-03-11 04:14:11', 'wordpress-developer'),
(44, 'iftekhar masud', 'masud@gmail.com', 'yeeeeeeeeeeeeeeeeeeeeeeeeeeeeessssssssssssssss', 1, 19, '2017-03-15 16:46:59', '2017-03-15 16:46:59', 'java-programming'),
(46, 'dalim', 'nazmul@yahoo.com', 'After her father was buried next to her motherthere was no going back to the Blue House. After her father was buried next to her motherthere', 1, 19, '2017-03-20 14:54:24', '2017-03-20 14:54:24', 'java-programming'),
(47, 'dalim', 'nazmul@yahoo.com', 'going back to the Blue House. After her father was buried next to her motherthere was no going back to the Blue House. After her father', 1, 18, '2017-03-20 14:55:06', '2017-03-20 14:55:06', 'java-programming'),
(48, 'dalim', 'nazmul@yahoo.com', 'josssssssssssss', 1, 19, '2017-03-21 06:31:11', '2017-03-21 06:31:11', 'java-programming');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `email`, `body`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ashraf@yahoo.com', '<p>hi,</p>\n<p>mr Admin!</p>\n<p>how are you?</p>\n<p>are u fine?</p>\n<p> </p>', 5, '2017-03-24 19:14:35', '2017-03-24 19:14:35'),
(2, 'nazmul@yahoo.com', '<h4>Public Directory</h4>\n<p>After installing Laravel, you should configure your web server\'s document / web root to be the <span>public</span> directory. The index<span>.</span>php in this directory serves as the front controller for all HTTP requests entering your application.</p>\n<h4>Configuration Files</h4>\n<p>All of the configuration files for the Laravel framework are stored in the config directory. Each option is documented, so feel free to look through the files and get familiar with the options available to you.</p>\n<h4>Directory Permissions</h4>\n<p>After installing Laravel, you may need to configure some permissions. Directories within the storage and the bootstrap<span>/</span>cache directories should be writable by your web server or Laravel will not run. If you are using the <a href=\"https://laravel.com/docs/5.4/homestead\">Homestead</a> virtual machine, these permissions should already be set.</p>', 4, '2017-03-24 19:34:34', '2017-03-24 19:34:34'),
(3, 'nazmul@yahoo.com', '<p><strong>Vivek Oberoi</strong> (born 3 September 1976) is an <a title=\"Indian people\" href=\"https://en.wikipedia.org/wiki/Indian_people\">Indian</a> film actor known for his works exclusively in <a title=\"Bollywood\" href=\"https://en.wikipedia.org/wiki/Bollywood\">Bollywood</a>. He made his Hindi film debut with <a title=\"Ram Gopal Varma\" href=\"https://en.wikipedia.org/wiki/Ram_Gopal_Varma\">Ram Gopal Varma</a>\'s super-hit <em><a title=\"Company (film)\" href=\"https://en.wikipedia.org/wiki/Company_%28film%29\">Company</a></em> (2002). His performance in the film earned him <a title=\"Filmfare Awards\" href=\"https://en.wikipedia.org/wiki/Filmfare_Awards\">Filmfare Awards</a> for <a title=\"Filmfare Best Male Debut Award\" href=\"https://en.wikipedia.org/wiki/Filmfare_Best_Male_Debut_Award\">Best Male Debut</a> and <a title=\"Filmfare Best Supporting Actor Award\" href=\"https://en.wikipedia.org/wiki/Filmfare_Best_Supporting_Actor_Award\">Best Supporting Actor</a>. He later featured in several notable films which include <em><a title=\"Saathiya (film)\" href=\"https://en.wikipedia.org/wiki/Saathiya_%28film%29\">Saathiya</a></em>, <em><a title=\"Masti (2004 film)\" href=\"https://en.wikipedia.org/wiki/Masti_%282004_film%29\">Masti</a></em>, <em><a title=\"Yuva\" href=\"https://en.wikipedia.org/wiki/Yuva\">Yuva</a></em>, <em><a title=\"Omkara (2006 film)\" href=\"https://en.wikipedia.org/wiki/Omkara_%282006_film%29\">Omkara</a></em>, and <em><a title=\"Grand Masti\" href=\"https://en.wikipedia.org/wiki/Grand_Masti\">Grand Masti</a></em>. He performed lead antagonist in <em><a title=\"Krrish 3\" href=\"https://en.wikipedia.org/wiki/Krrish_3\">Krrish 3</a></em>. He is also starred in biographical films such as <a title=\"Maya Dolas\" href=\"https://en.wikipedia.org/wiki/Maya_Dolas\">Maya Dolas</a> in <em><a title=\"Shootout at Lokhandwala\" href=\"https://en.wikipedia.org/wiki/Shootout_at_Lokhandwala\">Shootout at Lokhandwala</a></em>, <a title=\"Paritala Ravindra\" href=\"https://en.wikipedia.org/wiki/Paritala_Ravindra\">Paritala Ravindra</a> in <em><a title=\"Rakta Charitra\" href=\"https://en.wikipedia.org/wiki/Rakta_Charitra\">Rakta Charitra</a></em>, and <a title=\"Muthappa Rai\" href=\"https://en.wikipedia.org/wiki/Muthappa_Rai\">Muthappa Rai</a> in <em><a title=\"Rai (2016 film)\" href=\"https://en.wikipedia.org/wiki/Rai_%282016_film%29\">Rai</a></em>.</p>', 4, '2017-03-28 13:46:47', '2017-03-28 13:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `edit_profiles`
--

CREATE TABLE `edit_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `education` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `profession_category` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `edit_profiles`
--

INSERT INTO `edit_profiles` (`id`, `name`, `education`, `bio`, `users_id`, `profession_category`, `created_at`, `updated_at`) VALUES
(6, 'dalim', 'chittagong university', 'never tell a lie', 4, 12, '2017-03-13 14:03:02', '2017-03-13 14:03:02'),
(8, 'tanjina akter', 'Comilla women\'s schools', 'early to bad early to rise', 3, 12, '2017-03-13 14:06:52', '2017-03-13 14:06:52'),
(11, 'iftekhar masud', 'BSC in CSE at Diu', 'the sun rise in the east', 9, 12, '2017-03-13 14:42:26', '2017-03-13 14:42:26');

-- --------------------------------------------------------

--
-- Table structure for table `featured_interest_articles`
--

CREATE TABLE `featured_interest_articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `interest_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_interest_articles`
--

INSERT INTO `featured_interest_articles` (`id`, `interest_id`, `users_id`) VALUES
(1, 9, 3),
(2, 4, 3),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `featured_interest_jobs`
--

CREATE TABLE `featured_interest_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `interest_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `featured_interest_question`
--

CREATE TABLE `featured_interest_question` (
  `id` int(10) UNSIGNED NOT NULL,
  `interest_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `featured_interest_question`
--

INSERT INTO `featured_interest_question` (`id`, `interest_id`, `users_id`) VALUES
(4, 11, 5),
(5, 8, 5),
(24, 12, 4),
(25, 11, 4),
(29, 4, 3),
(30, 3, 3),
(31, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `users_id`, `created_at`, `updated_at`) VALUES
(16, 'php laravel framework', 4, '2017-03-30 23:32:50', '2017-03-30 23:32:50'),
(17, 'java programmer', 5, '2017-03-31 15:14:59', '2017-03-31 15:14:59'),
(18, 'Cyber Security Expert', 19, '2017-03-31 19:09:48', '2017-03-31 19:09:48'),
(19, 'DIU 35th Batch', 19, '2017-03-31 19:13:10', '2017-03-31 19:13:10'),
(20, 'Data Miner', 19, '2017-03-31 19:15:22', '2017-03-31 19:15:22'),
(21, 'AWS Engineer of BD', 20, '2017-03-31 22:16:23', '2017-03-31 22:16:23'),
(22, 'java developer', 4, '2017-04-01 09:51:30', '2017-04-01 09:51:30');

-- --------------------------------------------------------

--
-- Table structure for table `groups_users`
--

CREATE TABLE `groups_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `user_role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `groups_users`
--

INSERT INTO `groups_users` (`id`, `group_id`, `users_id`, `user_role`, `created_at`, `updated_at`) VALUES
(30, 16, 4, 'admin', NULL, NULL),
(31, 16, 3, 'user', NULL, NULL),
(33, 17, 5, 'admin', NULL, NULL),
(35, 18, 19, 'admin', NULL, NULL),
(36, 18, 9, 'user', NULL, NULL),
(37, 18, 3, 'user', NULL, NULL),
(38, 18, 13, 'user', NULL, NULL),
(39, 19, 19, 'admin', NULL, NULL),
(40, 19, 9, 'user', NULL, NULL),
(41, 19, 13, 'user', NULL, NULL),
(43, 19, 18, 'user', NULL, NULL),
(44, 19, 10, 'user', NULL, NULL),
(45, 20, 19, 'admin', NULL, NULL),
(46, 20, 6, 'user', NULL, NULL),
(47, 20, 3, 'user', NULL, NULL),
(48, 20, 18, 'user', NULL, NULL),
(49, 19, 20, 'user', NULL, NULL),
(50, 21, 20, 'admin', NULL, NULL),
(51, 21, 5, 'user', NULL, NULL),
(52, 21, 9, 'user', NULL, NULL),
(53, 21, 13, 'user', NULL, NULL),
(55, 22, 4, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `group_comments`
--

CREATE TABLE `group_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `group_id` int(10) UNSIGNED NOT NULL,
  `posts_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_comments`
--

INSERT INTO `group_comments` (`id`, `name`, `email`, `comment`, `approved`, `group_id`, `posts_id`, `created_at`, `updated_at`) VALUES
(1, 'dalim', 'nazmul@yahoo.com', 'nice wtfhtfgh', 1, 16, 4, '2017-04-01 09:49:53', '2017-04-01 09:49:53');

-- --------------------------------------------------------

--
-- Table structure for table `group_posts`
--

CREATE TABLE `group_posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_posts`
--

INSERT INTO `group_posts` (`id`, `body`, `user_id`, `created_at`, `updated_at`, `group_id`) VALUES
(1, '<p>What is career prospect in Cyber Security? Can I be an expert in Six months in this field?</p>\r\n<p>What is career prospect in Cyber Security? Can I be an expert in Six months in this field?</p>\r\n<p> </p>', 19, '2017-03-31 19:12:29', '2017-03-31 19:12:29', 18),
(2, '<p> dummy replydummy replydummy replydummy replydummy reply   dummy reply</p>\r\n<p>dummy replydummy replydummy replydummy reply</p>', 20, '2017-03-31 22:15:42', '2017-03-31 22:15:42', 19),
(3, '<p><a>AWS Engineer of BD</a> <a>AWS Engineer of BD</a><a>AWS Engineer of BD</a><a>AWS Engineer of BD</a></p>', 20, '2017-03-31 22:17:05', '2017-03-31 22:17:05', 21),
(4, '<p><span style=\"color:#666666;font-family:Verdana, Geneva, sans-serif;font-size:10px;\">Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,</span></p>', 4, '2017-04-01 09:49:12', '2017-04-01 09:49:12', 16);

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `users_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jobs_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary1` int(191) DEFAULT NULL,
  `salary2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qualification` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `skill` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `binefits` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `activities` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `duration` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dedline` date NOT NULL,
  `salary3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `users_id`, `name`, `company_title`, `location`, `email`, `jobs_type`, `salary1`, `salary2`, `qualification`, `skill`, `binefits`, `activities`, `description`, `created_at`, `updated_at`, `category_id`, `duration`, `slug`, `dedline`, `salary3`) VALUES
(1, 3, 'laravel php programmer', 'bangladesh it', 'Bagerhat', 'tanjina@yahoo.com', 'Full Time', 50000, NULL, '<p><span>@user3386779: It works but is not the most beautiful solution :) Laravel has few mechanisms to do this things. If you choose my answer you need set date format in one place and don\'t need remember to change the date format every time you need display from_date column.</span></p>', '<p><span>@user3386779: It works but is not the most beautiful solution :) Laravel has few mechanisms to do this things. If you choose my answer you need set date format in one place and don\'t need remember to change the date format every time you need display from_date column.</span></p>', '<p><span>@user3386779: It works but is not the most beautiful solution :) Laravel has few mechanisms to do this things. If you choose my answer you need set date format in one place and don\'t need remember to change the date format every time you need display from_date column.</span></p>', '<p><span>@user3386779: It works but is not the most beautiful solution :) Laravel has few mechanisms to do this things. If you choose my answer you need set date format in one place and don\'t need remember to change the date format every time you need display from_date column.</span></p>', '<p><span>@user3386779: It works but is not the most beautiful solution :) Laravel has few mechanisms to do this things. If you choose my answer you need set date format in one place and don\'t need remember to change the date format every time you need display from_date column.</span></p>', '2017-03-22 07:59:36', '2017-03-22 07:59:36', 1, 'per year', '', '2017-03-10', NULL),
(3, 10, 'Check whether an array is empty', 'we devs it', 'Barisal', 'tanveerhasan1998@gmail.com', 'Full Time', 55000, NULL, '<p>I have a variable passed from my controller to my view. And I want to do a check in my view if the variable is empty I show a message if it\'s not empty I show a div.</p>\n<p>This is what I\'ve tried but it gives me a syntax error</p>', '<p>I have a variable passed from my controller to my view. And I want to do a check in my view if the variable is empty I show a message if it\'s not empty I show a div.</p>\n<p>This is what I\'ve tried but it gives me a syntax error</p>', '<p>I have a variable passed from my controller to my view. And I want to do a check in my view if the variable is empty I show a message if it\'s not empty I show a div.</p>\n<p>This is what I\'ve tried but it gives me a syntax error</p>', '<p>I have a variable passed from my controller to my view. And I want to do a check in my view if the variable is empty I show a message if it\'s not empty I show a div.</p>\n<p>This is what I\'ve tried but it gives me a syntax error</p>', '<p>I have a variable passed from my controller to my view. And I want to do a check in my view if the variable is empty I show a message if it\'s not empty I show a div.</p>\n<p>This is what I\'ve tried but it gives me a syntax error</p>', '2017-03-22 13:48:26', '2017-03-22 13:48:26', 10, 'per year', '', '2017-03-25', NULL),
(4, 4, 'Lead/Senior Back End Engineers - Bangkok (PHP and Laravel)', 'MAQE is looking', 'Chittagong', 'tanveerhasan1998@gmail.com', 'Temporary', 30000, NULL, '<ul><li>4+ years of professional experience</li>\r\n<li>A relevant degree (BS/MS) or comparable years of experience</li>\r\n<li>Experience leading various projects or a small team</li>\r\n<li>Excellent knowledge of PHP, SQL and/or NoSQL languages</li>\r\n<li>Excellent knowledge of the back end ecosystem, including frameworks and tools</li>\r\n<li>Experience translating business processes and business logic into working code</li>\r\n<li>Thorough understanding of the challenges of maintainable and extensible code</li>\r\n<li>Experience measuring and ensuring optimal back end application performance</li>\r\n<li>Experience with front end languages (HTML, CSS and JS)</li>\r\n<li>Good level of English: Written, Reading and Speaking</li>\r\n<li>Strong problem solving skills</li>\r\n<li>Strong teamwork, believe that communication is a key to project’s success</li>\r\n</ul>', '<ul><li>4+ years of professional experience</li>\r\n<li>A relevant degree (BS/MS) or comparable years of experience</li>\r\n<li>Experience leading various projects or a small team</li>\r\n<li>Excellent knowledge of PHP, SQL and/or NoSQL languages</li>\r\n<li>Excellent knowledge of the back end ecosystem, including frameworks and tools</li>\r\n<li>Experience translating business processes and business logic into working code</li>\r\n<li>Thorough understanding of the challenges of maintainable and extensible code</li>\r\n<li>Experience measuring and ensuring optimal back end application performance</li>\r\n<li>Experience with front end languages (HTML, CSS and JS)</li>\r\n<li>Good level of English: Written, Reading and Speaking</li>\r\n<li>Strong problem solving skills</li>\r\n<li>Strong teamwork, believe that communication is a key to project’s success</li>\r\n</ul>', '<ul><li>4+ years of professional experience</li>\r\n<li>A relevant degree (BS/MS) or comparable years of experience</li>\r\n<li>Experience leading various projects or a small team</li>\r\n<li>Excellent knowledge of PHP, SQL and/or NoSQL languages</li>\r\n<li>Excellent knowledge of the back end ecosystem, including frameworks and tools</li>\r\n<li>Experience translating business processes and business logic into working code</li>\r\n<li>Thorough understanding of the challenges of maintainable and extensible code</li>\r\n<li>Experience measuring and ensuring optimal back end application performance</li>\r\n<li>Experience with front end languages (HTML, CSS and JS)</li>\r\n<li>Good level of English: Written, Reading and Speaking</li>\r\n<li>Strong problem solving skills</li>\r\n<li>Strong teamwork, believe that communication is a key to project’s success</li>\r\n</ul>', '<ul><li>4+ years of professional experience</li>\r\n<li>A relevant degree (BS/MS) or comparable years of experience</li>\r\n<li>Experience leading various projects or a small team</li>\r\n<li>Excellent knowledge of PHP, SQL and/or NoSQL languages</li>\r\n<li>Excellent knowledge of the back end ecosystem, including frameworks and tools</li>\r\n<li>Experience translating business processes and business logic into working code</li>\r\n<li>Thorough understanding of the challenges of maintainable and extensible code</li>\r\n<li>Experience measuring and ensuring optimal back end application performance</li>\r\n<li>Experience with front end languages (HTML, CSS and JS)</li>\r\n<li>Good level of English: Written, Reading and Speaking</li>\r\n<li>Strong problem solving skills</li>\r\n<li>Strong teamwork, believe that communication is a key to project’s success</li>\r\n</ul>', '<ul><li>4+ years of professional experience</li>\r\n<li>A relevant degree (BS/MS) or comparable years of experience</li>\r\n<li>Experience leading various projects or a small team</li>\r\n<li>Excellent knowledge of PHP, SQL and/or NoSQL languages</li>\r\n<li>Excellent knowledge of the back end ecosystem, including frameworks and tools</li>\r\n<li>Experience translating business processes and business logic into working code</li>\r\n<li>Thorough understanding of the challenges of maintainable and extensible code</li>\r\n<li>Experience measuring and ensuring optimal back end application performance</li>\r\n<li>Experience with front end languages (HTML, CSS and JS)</li>\r\n<li>Good level of English: Written, Reading and Speaking</li>\r\n<li>Strong problem solving skills</li>\r\n<li>Strong teamwork, believe that communication is a key to project’s success</li>\r\n</ul>', '2017-03-30 10:36:08', '2017-03-30 10:36:08', 11, 'per year', '', '2017-03-08', NULL),
(6, 19, 'Technical Support Engineer', 'REVE Systems', 'Bagerhat', 'kmasud02@gmail.com', 'Temporary', 40000, NULL, '<p>Diploma/ Engineering in Computers </p>\r\n<p> </p>\r\n<p> </p>', '<ul><li>2 to 6 year(s)</li>\r\n<li>The applicants should have experience in the following area(s):<br />System Engineer (Computer Network &amp; System), Hardware Engineer, Customer Support, IT System Management, Security Management of IT System</li>\r\n</ul><ul>\r\n<li>The applicants should have experience in the following business area(s):<br />Computer Hardware/Network Companies, Engineering Firms, IT Enabled Service, ISP, Software Company, Security Service</li>\r\n</ul>', '<p>Negotiable  </p>\r\n<div> </div>', '<p>Must have own Motor Cycle/ Two wheeler/ HONDA (Mandatory)</p>\r\n<p>Must have own Motor Cycle/ Two wheeler/ HONDA (Mandatory)</p>\r\n<p> </p>', '<p>REVE SystemsAddress : Facilities Tower, Kha-199/2, Maddhya Badda, Dhaka-1212, Bangladesh</p>', '2017-03-31 21:09:17', '2017-03-31 21:09:17', 28, 'per year', '', '2017-04-15', NULL),
(7, 19, 'Big Data Analyst', 'Ranks IIT Limited', 'Dhaka', 'kmasud02@gmail.com', 'Full Time', 120000, NULL, '<p> </p>\r\n<ul><li>      4 years Graduate or Post Graduate in Computer Science or EEE                                                                                                                                                                         </li>\r\n<li>The applicants should have experience in the following area(s):<br />Network Engineer/Network Administrator, IT System Management</li>\r\n<li>3 to 5 year(s) Working Experience</li>\r\n</ul>', '<ul><li>Carry out Special Duty assigned by the supervisor.Capable to work with team &amp; under pressure. Flexible mind to compromise beyond the office time and roster duty.</li>\r\n<li>Maintain the total IT inventory system.</li>\r\n<li>Must be capable to resolve problems, prioritize tasks, work on multiple tasks simultaneously and adjust project schedules to meet deadlines.</li>\r\n<li>Monitoring total system as well as network traffic, keep server and user\'s data backup periodically &amp; maintaining data storage system.</li>\r\n<li>Prepare Network Diagram, required report and review with superior.</li>\r\n<li>Having Strong knowledge of Network Operation Center (NOC) and Network Monitoring System (NMS).</li>\r\n<li>Having sound knowledge of Domain, Hosting and remote management.</li>\r\n<li>Server hardware experience with HP, IBM and Dell blade systems. Expertise on Installation, configuration and administering Linux and Windows Server independent and VM (DNS, mail, DHCP, FTP and Cacti, Nagios etc.)</li>\r\n<li>Capable to Install, configure and manage of Juniper, Cisco, Huawei Router, Switches, Firewall and Mikrotik.</li>\r\n<li>Having sound knowledge in traffic engineering, QoS and Bandwidth Shaping.</li>\r\n<li>Strong ability to diagnose server or network alerts, events or issues and Understanding of common information architecture frameworks.</li>\r\n<li>Experience managing, supporting and deploying large scale network infrastructures.</li>\r\n<li>Having strong knowledge and hands on experience of ISP Data Communication for both Internet and intranet (MPLS, VPLS, VRF, VLAN, MSTP, RSTP, BGP, OSPF, VLSM, ACL, VPN etc.) architecture.</li>\r\n</ul>', '<p>As per the company policy </p>', '<ul><li>Excellent time management and organizational skills, and ability to handle multiple concurrent tasks and projects with minimal supervision.Vendor Certification of Juniper, Cisco and RHCE will get preference.</li>\r\n<li>Ability to learn quickly and adapt with new technology, and keen interest in acquiring new technical knowledge and skills beyond regular assignments.</li>\r\n<li>Experience with Disaster Recovery plans and related technologies will be added advantages.</li>\r\n<li>Good oral and written communication skills, and ability to address conflict with others constructively.</li>\r\n<li>Only males are allowed to apply.</li>\r\n<li>Age At most 30 year(s) </li>\r\n</ul>', '<p>RANKS - ITT LTD. (A Member of Rangs Group)Address : Ranks ITT Ltd., Rangs Bhaban, 117/A, Level-3, Old Airport Road Tejgaon, Dhaka-1215</p>', '2017-03-31 21:19:50', '2017-03-31 21:19:50', 30, 'per year', '', '2017-04-19', NULL),
(8, 19, 'Marketing Manager', 'Amber IT Ltd', 'Comilla', 'kmasud02@gmail.com', 'Full Time', NULL, '20000', '<p>Graduate from any reputed university </p>', '<p>3 to 5 year(s)</p>', '<p>As per company policy</p>', '<ul><li>Leverage inside sales teams to build greater presence in the regionWilling to Travel</li>\r\n<li>Explain value-proposition of company\'s Products &amp; Services to the prospect</li>\r\n<li>Develop Alliances and Partnerships and drive channels sales in the assigned region</li>\r\n<li>Leverages internal teams to pursue and convert prospects and build robust pipeline</li>\r\n<li>Contacting clients to present company capabilities and help clients in evaluating our solutions and manages the end-to-end sales cycle</li>\r\n<li>Undertaking market research to determine target organizations and key decision makers</li>\r\n</ul>', '<p>Amber IT Ltd.Address : Navana Tower (7th Floor), 45 Gulshan South C/A, Circle-1</p>', '2017-03-31 21:23:40', '2017-03-31 21:23:40', 1, 'per year', '', '2017-04-11', 30000),
(9, 19, 'Full Stack Developer', 'Masud IT', 'Sylhet', 'kmasud02@gmail.com', 'Full Time', NULL, '40000', '<ul><li>Candidate from DIU will get preference</li>\r\n<li>B.S. in Computer Science from any reputed University. </li>\r\n</ul>', '<p>Age 25 to 30 year(s)</p>\r\n<p>Experience in Problem Solving</p>', '<p>As per company Policy </p>', '<ul><li>Ensure high quality, adherence to standards and best practices, high performance and scalable deliverable.Takes the lead role to Analyze, Architect and Design databases and asp.net projects.</li>\r\n<li>Deliver projects on-time and to the specification with an appropriate level of quality.</li>\r\n<li>Must have excellent capability on an HTML frame like Bootstrap or other and CSS frame</li>\r\n<li>iOS Familiar</li>\r\n<li>Develop Web Forms application in team environment using ASP .NET with C#, Visual Studio, SQL Server, Web Service, WCF, Ajax, JQuery etc.</li>\r\n</ul>', '<p>A Sister Concern of Kai Altech GroupBusiness : Manufacturing (Light Engineering &amp; Heavy Industry)</p>', '2017-03-31 21:37:59', '2017-03-31 21:37:59', 29, 'per month', '', '2017-04-15', 60000);

-- --------------------------------------------------------

--
-- Table structure for table `job_applies`
--

CREATE TABLE `job_applies` (
  `id` int(10) UNSIGNED NOT NULL,
  `jobs_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applies`
--

INSERT INTO `job_applies` (`id`, `jobs_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 2, 10, '2017-03-22 13:06:57', '2017-03-22 13:06:57'),
(2, 1, 10, '2017-03-22 13:33:33', '2017-03-22 13:33:33'),
(3, 3, 10, '2017-03-22 13:52:23', '2017-03-22 13:52:23');

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Accounting', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(4, 'Banking', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(5, 'Biotech', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(6, 'Broadcast - Journalism', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(7, 'Business Development', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(9, 'Consultant', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(10, 'Customer Service', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(11, 'Design', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(12, 'Education - Teaching', 'Dalim', '2017-02-03 10:12:29', '2017-02-03 10:12:29'),
(16, 'Marketing', 'Dalim', '2017-02-03 10:12:30', '2017-02-03 10:12:30'),
(21, 'Human Resources', 'Dalim', '2017-02-03 10:12:30', '2017-02-03 10:12:30'),
(25, 'Data Entry', 'Dalim', '2017-02-03 10:12:30', '2017-02-03 10:12:30'),
(26, 'Database Administrator', 'Dalim', '2017-02-03 10:12:30', '2017-02-03 10:12:30'),
(28, 'System Administrator', 'masum billah', '2017-03-31 17:35:06', '2017-03-31 17:35:06'),
(29, 'Security Engineer', 'masum billah', '2017-03-31 17:35:27', '2017-03-31 17:35:27'),
(30, 'Data Analysis', 'masum billah', '2017-03-31 17:35:54', '2017-03-31 17:35:54'),
(31, 'Data Science', 'masum billah', '2017-03-31 17:36:08', '2017-03-31 17:36:08'),
(32, 'Software Engineer', 'masum billah', '2017-03-31 17:36:36', '2017-03-31 17:36:36'),
(33, 'Game Developer', 'masum billah', '2017-03-31 17:37:42', '2017-03-31 17:37:42'),
(34, 'Mobile App Developer', 'masum billah', '2017-03-31 17:38:02', '2017-03-31 17:38:02'),
(35, 'Web App Developer', 'masum billah', '2017-03-31 17:38:50', '2017-03-31 17:38:50'),
(36, 'System Analysis', 'masum billah', '2017-03-31 17:40:00', '2017-03-31 17:40:00'),
(37, 'Management', 'masum billah', '2017-03-31 17:41:31', '2017-03-31 17:41:31');

-- --------------------------------------------------------

--
-- Table structure for table `job_levels`
--

CREATE TABLE `job_levels` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_levels`
--

INSERT INTO `job_levels` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Entry level', '2017-02-23 07:40:21', '2017-02-23 07:40:21'),
(2, 'Experienced', '2017-02-23 07:40:21', '2017-02-23 07:40:21'),
(3, 'Management', '2017-02-23 07:40:21', '2017-02-23 07:40:21'),
(4, 'Senior executive', '2017-02-23 07:40:21', '2017-02-23 07:40:21'),
(5, 'Internship', '2017-02-23 07:40:22', '2017-02-23 07:40:22');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dhaka', NULL, NULL),
(2, 'Comilla', NULL, NULL),
(3, 'chandpur', NULL, NULL),
(4, 'Sylhet', NULL, NULL),
(5, 'Rajshahi', NULL, NULL),
(6, 'Bagerhat', NULL, NULL),
(7, 'Bandarban', NULL, NULL),
(8, 'Barguna', NULL, NULL),
(9, 'Rajshahi', NULL, NULL),
(10, 'Barisal', NULL, NULL),
(11, 'Bhola', NULL, NULL),
(12, 'Bogra', NULL, NULL),
(13, 'Rajshahi', NULL, NULL),
(14, 'Brahmanbaria', NULL, NULL),
(15, 'Chittagong', NULL, NULL),
(16, 'Chuadanga', NULL, NULL),
(17, 'Rajshahi', NULL, NULL),
(18, 'Cox\'s Bazar', NULL, NULL),
(19, 'Dinajpur', NULL, NULL),
(20, 'Faridpur', NULL, NULL),
(21, 'Rajshahi', NULL, NULL),
(22, 'Feni', NULL, NULL),
(23, 'Gaibandha', NULL, NULL),
(24, 'Gazipur', NULL, NULL),
(25, 'Gopalganj', NULL, NULL),
(26, 'Habiganj', NULL, NULL),
(27, 'Jaipurhat', NULL, NULL),
(28, 'Jamalpur', NULL, NULL),
(29, 'Jessore', NULL, NULL),
(30, 'Jhalakati', NULL, NULL),
(31, 'Jhenaidah', NULL, NULL),
(32, 'Khagrachari', NULL, NULL),
(33, 'Khulna', NULL, NULL),
(34, 'Kishoreganj', NULL, NULL),
(35, 'Kurigram', NULL, NULL),
(36, 'Kushtia', NULL, NULL),
(37, 'Lakshmipur', NULL, NULL),
(38, 'Lalmonirhat', NULL, NULL),
(39, 'Madaripur', NULL, NULL),
(40, 'Magura', NULL, NULL),
(41, 'Manikganj', NULL, NULL),
(42, 'Meherpur', NULL, NULL),
(43, 'Moulvibazar', NULL, NULL),
(44, 'Munshiganj', NULL, NULL),
(45, 'Mymensingh', NULL, NULL),
(46, 'Naogaon', NULL, NULL),
(47, 'Narail', NULL, NULL),
(48, 'Narayanganj', NULL, NULL),
(49, 'Narsingdi', NULL, NULL),
(50, 'Natore', NULL, NULL),
(51, 'Nawabganj', NULL, NULL),
(52, 'Netrakona', NULL, NULL),
(53, 'Nilphamari', NULL, NULL),
(54, 'Noakhali', NULL, NULL),
(55, 'Pabna', NULL, NULL),
(56, 'Panchagarh', NULL, NULL),
(57, 'Parbattya Chattagram', NULL, NULL),
(58, 'Patuakhali', NULL, NULL),
(59, 'Pirojpur', NULL, NULL),
(60, 'Rajbari', NULL, NULL),
(61, 'Rangpur', NULL, NULL),
(62, 'Satkhira', NULL, NULL),
(63, 'Shariatpur', NULL, NULL),
(64, 'Sherpur', NULL, NULL),
(65, 'Sirajganj', NULL, NULL),
(66, 'Sunamganj', NULL, NULL),
(67, 'Tangail', NULL, NULL),
(68, 'Thakurgaon', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_26_195516_create_categories_table', 1),
(4, '2017_01_26_195540_create_tags_table', 1),
(5, '2017_01_29_144138_entrust_setup_tables', 1),
(6, '2017_01_30_201925_create_articles_table', 2),
(7, '2017_01_30_203114_create_post_tag_table', 2),
(8, '2017_01_30_234802_add_createdBy_column', 3),
(9, '2017_01_31_004736_add_slug_article_table', 4),
(10, '2017_01_31_124626_Add_total_view_column', 5),
(11, '2017_01_31_150433_create_comments_table', 6),
(12, '2017_01_31_150447_create_replays_table', 6),
(13, '2017_02_01_131112_create_question_table', 7),
(14, '2017_02_01_131216_create_question_tag_table', 7),
(15, '2017_02_01_133444_add_slug_question_table', 8),
(16, '2017_02_01_134159_add_view_createdby_question_table', 9),
(17, '2017_02_01_164158_create_question_comments_table', 10),
(18, '2017_02_01_175127_create_question_replies_table', 11),
(19, '2017_02_01_235839_create_groups_table', 12),
(20, '2017_02_02_131113_create_jobs_table', 13),
(21, '2017_02_03_092019_create_location_table', 13),
(22, '2017_02_03_144133_Create_jobs__table', 14),
(23, '2017_02_03_154238_create_job__categories_table', 15),
(24, '2017_02_03_184712_Add_slug_jobs_table', 16),
(25, '2017_02_03_185225_Add_dedline_jobs_table', 17),
(26, '2017_02_03_194730_Add_salary3_jobs_table', 18),
(29, '2017_02_08_074118_create_group_posts_table', 19),
(30, '2017_02_08_173819_add_group_id_group_post_table', 19),
(31, '2017_02_11_184345_create_all_users_join_table', 20),
(32, '2017_02_20_094151_create_group_comments_table', 21),
(33, '2017_02_21_095121_create_article_categories_table', 22),
(34, '2017_02_21_100256_create_article_tags_table', 23),
(36, '2017_02_21_112538_create_articles_post_tags_table', 24),
(43, '2017_02_21_140009_Add_Preference_Question', 25),
(44, '2017_02_21_140034_Add_Preference_Articles', 25),
(45, '2017_02_21_140047_Add_Preference_Jobs', 25),
(46, '2017_02_22_183925_create_alert_job_category', 26),
(47, '2017_02_23_133121_create_job_levels_table', 27),
(48, '2017_02_23_141027_Add_alert_job_level_id', 28),
(50, '2017_02_23_203605_Add_alert_job_level_id_save', 29),
(51, '2017_02_24_144151_Add_timestump_in_alert_salary', 30),
(53, '2017_02_24_172648_Add_timestump_in_alert_hours', 31),
(54, '2017_03_10_204808_add_users_id_to_articles_table', 32),
(56, '2017_03_11_103310_create_save_jobs_table', 33),
(57, '2017_03_13_180821_create_edit_profiles_table', 34),
(58, '2017_03_13_185347_create_user_skill_table', 35),
(59, '2017_03_15_171549_change_question_tag_type_column', 36),
(62, '2017_03_20_202331_add_category_id_arti_comment_table', 37),
(63, '2017_03_20_203948_add_category_id_articlesss_comment_table', 38),
(64, '2017_03_20_210526_add_category_id_questions_comment_table', 39),
(65, '2017_03_21_083417_add_category_id_in_question_tag', 40),
(66, '2017_03_22_185307_create_job_applies_table', 41),
(67, '2017_03_23_100947_add_facebook_id_users_table', 42),
(68, '2017_03_23_102727_change_pass_type_users_table', 43),
(69, '2017_03_23_145847_add_google_id_users_table', 44),
(70, '2017_03_25_010135_create_contacts_table', 45),
(71, '2017_03_29_044846_create_alert_job_categories_table', 46),
(72, '2017_03_29_211605_create_carrier_advices_table', 47),
(73, '2017_03_29_212658_create_carrieer_advice_categorytable', 47),
(74, '2017_03_29_223301_add_usersid_carrieer_advice_categorytable', 48),
(75, '2017_03_30_004704_create_carrieer_advice_comments_table', 49);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'create-post', 'Create Post', 'i create a post', '2017-01-29 09:49:41', '2017-01-29 09:49:41'),
(2, 'edit-post', 'Edit Post', 'i can edit a post', '2017-01-29 09:49:42', '2017-01-29 09:49:42');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_view` int(255) NOT NULL DEFAULT '0',
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `category_id`, `title`, `body`, `image`, `created_at`, `updated_at`, `slug`, `total_view`, `created_by`) VALUES
(1, 'web-development', 'whether the migration will be creating a new table', '<p>A migration class contains two methods: up and down. The up method is used to add new tables, columns, or indexes to your database, while the down method should simply reverse the operations performed by the up method.</p>\n<p> </p>\n<p>Within both of these methods you may use the Laravel schema builder to expressively create and modify tables. To learn about all of the methods available on the Schema builder, <a href=\"https://laravel.com/docs/5.4/migrations#creating-tables\">check out its documentation</a>. For example, this migration example creates a flights table:</p>\n<p> </p>\n<p>A migration class contains two methods: up and down. The up method is used to add new tables, columns, or indexes to your database, while the down method should simply reverse the operations performed by the up method.</p>\n<p> </p>\n<p>Within both of these methods you may use the Laravel schema builder to expressively create and modify tables. To learn about all of the methods available on the Schema builder, <a href=\"https://laravel.com/docs/5.4/migrations#creating-tables\">check out its documentation</a>. For example, this migration example creates a flights table:</p>\n<p> </p>', NULL, '2017-02-01 07:44:17', '2017-04-01 09:42:28', 'whether-the-migration-will-be-creating-a-new-table', 23, '3'),
(7, 'web-security', 'like these sweet mornings of spring which I enjoy with my whole heart', '<p> A wonderful serenity has taken possession of my entire soul, like these sweet mornings of spring which I enjoy with my whole heart. I am alone, and feel the charm of existence in this spot, which was created for the bliss of souls like mine. I am so happy, my dear friend, so absorbed in the exquisite sense of mere tranquil existence, that I neglect my talents. I should be incapable of drawing a single stroke at the present moment; and yet I feel that I never was a greater artist than now. When, while the lovely valley teems with vapour around me, and the meridian sun strikes the upper surface of the impenetrable foliage of my trees, and but a few stray gleams steal into the inner sanctuary, I throw myself down among the tall grass by the trickling stream; and, as I lie close to the earth, a thousand unknown plants are noticed by me: when I hear the buzz of the little world among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath</p>', NULL, '2017-02-24 16:28:43', '2017-03-31 22:13:12', 'like-these-sweet-mornings-of-spring-which-i-enjoy-with-my-whole-heart', 34, '3'),
(12, 'web-development', 'Remove-Item Powershell not working in Windows Temp folder', '<p style=\"text-align:left;\">I have a server with an incredibly overloaded Windows/Temp folder. So, I wanted to run a simple Powershell script to clear it out (I\'m talking tens of thousands of .tmp and .bak files that are over a year old). Below is the code: <br />Remove-Item C:\\Windows\\Temp\\* -include .txt,.bak,.tmp -whatif <br /> I tried removing the whatif as well (I just had that in there because I was playing around with some stuff) and nothing happens. It\'s so simple I\'m almost definitely missing something simple. <br /> Thanks in advance</p>', NULL, '2017-03-14 17:16:44', '2017-03-31 22:12:55', 'remove-item-powershell-not-working-in-windows-temp-folder', 10, '5'),
(18, 'desktop-application', 'After installing Laravel, you should configure your web server\'s document', '<p>After installing Laravel, you should configure your web server\'s document / web root to be the <span>public</span> directory. The index<span>.</span>php in this directory serves as the front controller for all HTTP requests entering your application.</p>\n<h4>Configuration Files</h4>\n<p>All of the configuration files for the Laravel framework are stored in the config directory. Each option is documented, so feel free to look through the files and get familiar with the options available to you.</p>\n<h4>Directory Permissions</h4>\n<p>After installing Laravel, you may need to configure some permissions. Directories within the storage and the bootstrap<span>/</span>cache directories should be writable by your web server or Laravel will not run. If you are using the <a href=\"https://laravel.com/docs/5.4/homestead\">Homestead</a> virtual machine, these permissions should already be set.</p>\n<h4>Application Key</h4>\n<p>The next thing you should do after installing Laravel is set your application key to a random string. If you installed Laravel via Composer or the Laravel installer, this key has already been set for you by the php artisan key<span>:</span>generate command.</p>\n<p>Typically, this string should be 32 characters long. The key can be set in the <span>.</span>env environment file. If you have not renamed the <span>.</span>env<span>.</span>example file to <span>.</span>env, you should do that now. <strong>If the application key is not set, your user sessions and other encrypted data will not be secure!</strong></p>', NULL, '2017-03-21 06:49:09', '2017-03-28 20:45:26', 'after-installing-laravel-you-should-configure-your-web-servers-document', 6, '4'),
(19, 'web-development', 'To learn about Laravel powerful validation features, let look at a complete', '<p>To learn about Laravel\'s powerful validation features, let\'s look at a complete example of validating a form and displaying the error messages back to the user.</p>\n<p>Defining The Routes</p>\n<p>First, let\'s assume we have the following routes defined in our routes/web.php file:</p>\n<p>Route::get(\'post/create\', \'PostController@create\'); Route::post(\'post\', \'PostController@store\');</p>\n<p>Of course, the GET route will display a form for the user to create a new blog post, while the POST route will store the new blog post in the database.</p>\n<p>Creating The Controller</p>\n<p>Next, let\'s take a look at a simple controller that handles these routes. We\'ll leave the store method empty for now:</p>\n<p>&lt;?php namespace App\\Http\\Controllers; use Illuminate\\Http\\Request; use App\\Http\\Controllers\\Controller; class PostController extends Controller { /** * Show the form to create a new blog post. * * @return Response */ public function create() { return view(\'post.create\'); } /** * Store a new blog post. * * @param Request $request * @return Response */ public function store(Request $request) { // Validate and store the blog post... } } Writing The Validation Logic</p>\n<p>Now we are ready to fill in our store method with the logic to validate the new blog post. If you examine your application\'s base controller (App\\Http\\Controllers\\Controller) class, you will see that the class uses a ValidatesRequests trait. This trait provides a convenient validate method to all of your controllers.</p>\n<p>The validate method accepts an incoming HTTP request and a set of validation rules. If the validation rules pass, your code will keep executing normally; however, if validation fails, an exception will be thrown and the proper error response will automatically be sent back to the user. In the case of a traditional HTTP request, a redirect response will be generated, while a JSON response will be sent for AJAX requests.</p>\n<p>To get a better understanding of the validate method, let\'s jump back into the store method:</p>', NULL, '2017-03-24 11:43:15', '2017-03-28 20:45:23', 'to-learn-about-laravel-powerful-validation-features-let-look-at-a-complete', 25, '3'),
(20, 'web-development', 'Django select field without defining choices', '<div>\r\n<p>How do I create a form select field in Django without defining the choices in it? I\'m using {{ myform.field }}.</p>\r\n<p>Usual form select fields are defined in models as follows:</p>\r\n<span>CHOICE_1 </span><span>=</span> <span>\"choice1\"</span><span>\r\nCHOICE_2 </span><span>=</span> <span>\"choice2\"</span><span>\r\n\r\nMY_CHOICES </span><span>=</span> <span>(</span>\r\n<span>(</span><span>CHOICE_1 </span><span>=</span> <span>\"1\"</span><span>),</span>\r\n<span>(</span><span>CHOICE_2 </span><span>=</span> <span>\"2\"</span><span>),</span>\r\n<span>)</span><span>\r\n\r\nfield </span><span>=</span><span> models</span><span>.</span><span>CharField</span><span>(</span><span>max_length</span><span>=</span><span>20</span><span>,</span><span> choices</span><span>=</span><span>MY_CHOICES</span><span>,</span><span> defaults</span><span>=</span><span>\"1\"</span><span>)</span>\r\n<p>But I don\'t want to define my choices here, I want to add them in jQuery because the value list depends on the contents of another field. And I want this to change dynamically.</p>\r\n<p>1) How do I get my template tag {{ myform.field }} to render as a select without choices?</p>\r\n<p>2) If you define your choice list, will django allow you to save other values that aren\'t in the list or will this raise a validation error? This way I can use a \'default\' choice list that I change later.</p>\r\n</div>', NULL, '2017-03-28 14:25:11', '2017-03-28 20:51:00', 'django-select-field-without-defining-choices', 15, '4'),
(21, 'web-security', 'MySQL select datetime without Daylight saving time change', '<div>\r\n<p>I have the following sql create statement</p>\r\n<span>mysql</span><span>&gt;</span> <span>CREATE</span>  <span>TABLE</span> <span>IF</span> <span>NOT</span> <span>EXISTS</span> <span>`</span><span>erp</span><span>`.`</span><span>je_menus</span><span>`</span> <span>(</span>\r\n    <span>-&gt;</span>   <span>`</span><span>id</span><span>`</span><span> INT</span><span>(</span><span>11</span><span>)</span> <span>NOT</span> <span>NULL</span><span> AUTO_INCREMENT </span><span>,</span>\r\n    <span>-&gt;</span>   <span>`</span><span>name</span><span>`</span><span> VARCHAR</span><span>(</span><span>100</span><span>)</span> <span>NOT</span> <span>NULL</span> <span>,</span>\r\n    <span>-&gt;</span>   <span>`</span><span>description</span><span>`</span><span> VARCHAR</span><span>(</span><span>255</span><span>)</span> <span>NOT</span> <span>NULL</span> <span>,</span>\r\n    <span>-&gt;</span>   <span>`</span><span>live_start_date</span><span>`</span><span> DATETIME </span><span>NULL</span> <span>DEFAULT</span> <span>NULL</span> <span>,</span>\r\n    <span>-&gt;</span>   <span>`</span><span>live_end_date</span><span>`</span><span> DATETIME </span><span>NULL</span> <span>DEFAULT</span> <span>NULL</span> <span>,</span> \r\n    <span>-&gt;</span>   <span>`</span><span>notes</span><span>`</span><span> VARCHAR</span><span>(</span><span>255</span><span>)</span> <span>NULL</span> <span>,</span>\r\n    <span>-&gt;</span>   <span>`</span><span>create_date</span><span>`</span><span> TIMESTAMP </span><span>NOT</span> <span>NULL</span> <span>DEFAULT</span>  <span>\'0000-00-00 00:00:00\'</span><span>,</span>\r\n    <span>-&gt;</span>   <span>`</span><span>created_by</span><span>`</span><span> INT</span><span>(</span><span>11</span><span>)</span> <span>NOT</span> <span>NULL</span> <span>,</span>\r\n    <span>-&gt;</span>   <span>`</span><span>update_date</span><span>`</span><span> TIMESTAMP </span><span>NOT</span> <span>NULL</span> <span>DEFAULT</span>  <span>CURRENT_TIMESTAMP</span>  <span>,</span>\r\n    <span>-&gt;</span>   <span>`</span><span>updated_by</span><span>`</span><span> INT</span><span>(</span><span>11</span><span>)</span> <span>NOT</span> <span>NULL</span> <span>,</span> \r\n    <span>-&gt;</span>   <span>`</span><span>status</span><span>`</span><span> VARCHAR</span><span>(</span><span>45</span><span>)</span> <span>NOT</span> <span>NULL</span> <span>,</span>\r\n    <span>-&gt;</span>   <span>PRIMARY</span> <span>KEY</span> <span>(`</span><span>id</span><span>`)</span> <span>)</span> \r\n    <span>-&gt;</span><span> ENGINE </span><span>=</span><span> InnoDB</span><span>;</span>\r\n<p>giving following error</p>\r\n<p>ERROR 1067 (42000): Invalid default value for \'create_date\'</p>\r\n<p>What is the error here?</p>\r\n</div>', NULL, '2017-02-28 14:28:59', '2017-03-29 13:59:55', 'mysql-select-datetime-without-daylight-saving-time-change', 64, '4'),
(22, 'web-development', 'We are a tech-driven company and keep a close watch on recent scientific', '<p><br />   public function store(Request $request,$id){<br />     $this-&gt;validate($request,[<br />     \'email\' =&gt;\'required|email\',<br />     \'subject\' =&gt; \'min:3\',<br />     \'message\' =&gt;\'min:10\',<br />     \'a_file\' =&gt;\'required|max:10000|mimes:doc,docx,pdf,rtf,txt\'<br />]);<br />   $data = array(<br />\'email\' =&gt; $request-&gt;email,<br />\'subject\' =&gt;$request-&gt;subject,<br />\'bodyMessage\' =&gt; $request-&gt;message,<br />\'a_file\' =&gt;$request-&gt;a_file<br />     );<br />Mail::send(\'frontend.pages.emails.contact\', $data,function($message) use ($data)<br />{<br />    $message-&gt;to($data[\'email\']);<br />    $message-&gt;subject($data[\'subject\']);<br />    $message-&gt;from(Auth::user()-&gt;email);<br />    $message-&gt;attach($data[\'a_file\']-&gt;getRealPath(), array(<br />        \'as\' =&gt; \'a_file.\' . $data[\'a_file\']-&gt;getClientOriginalExtension(), <br />        \'mime\' =&gt; $data[\'a_file\']-&gt;getMimeType())<br />    );<br />});</p>', NULL, '2017-03-30 10:46:38', '2017-03-31 22:13:16', 'we-are-a-tech-driven-company-and-keep-a-close-watch-on-recent-scientific', 3, '3'),
(23, 'web-development', 'Can send emails with PHP, but not with Python - \'Relay access denied\'', ' \r\n\r\n<div>\r\n<div>\r\n<p>When I send an email using PHP\'s mail function, it sends without issue.</p>\r\n<span>$to </span><span>=</span> <span>\'test@gmail.com\'</span><span>;</span><span>\r\n$from </span><span>=</span> <span>\'test@example.com\'</span><span>;</span><span>\r\n$msg </span><span>=</span> <span>\'Hello, world!\'</span><span>;</span><span>\r\nmail</span><span>(</span><span>$to</span><span>,</span><span> $from</span><span>,</span><span> $msg</span><span>);</span>\r\n<p>Now, if I try to send an email using Python\'s smtplib, I am given an error message:</p>\r\n<p>Here is my code:</p>\r\n<span>sender </span><span>=</span> <span>\'test@example.com\'</span><span>\r\nrecipient </span><span>=</span> <span>\'test@gmail.com\'</span><span>\r\nmsg </span><span>=</span> <span>\'Hello, world!\'</span><span>\r\n\r\nsmtp </span><span>=</span><span> smtplib</span><span>.</span><span>SMTP</span><span>(</span><span>smtp_server_ip</span><span>)</span><span>\r\nsmtp</span><span>.</span><span>sendmail</span><span>(</span><span>sender</span><span>,</span><span> recipient</span><span>,</span><span> msg</span><span>)</span>\r\n<p>The same SMTP server IP address is being as the one in the php.ini file, and no authentication should be required. Does the PHP mail() function use a different protocol to smtplib.sendmail()?</p>\r\n<p>Looking at the mail log I can see the following error, which doesn\'t offer any additional information: </p>\r\n</div>\r\n</div>\r\n\r\n<p> </p>', NULL, '2017-03-06 19:18:34', '2017-03-31 22:13:38', 'can-send-emails-with-php-but-not-with-python-relay-access-denied', 1, '19'),
(24, 'backend-development', 'Combining to tables and sorting by latest latest date', ' \r\n\r\n<div>\r\n<div>\r\n<p>I am real beginner to php-mysql and am trying to figure this out.</p>\r\n<p>I have two tables, as shown: a topic table and a conversation table.</p>\r\n<p>I\'m trying to merge the tables to:</p>\r\n<p>1) display the titles that belong to a specific category (for example, if category=color, display the titles: \'Color of orange\' and \'Color of banana\'.)</p>\r\n<p>2) display the date of the last comment made associated with each title (for, example, the latest date for \'Color of orange\' is 2009</p>\r\n<p>3) Sort the titles by the latest date - descending</p>\r\n<p>I can manage doing part I, but I\'m lost with part 2 and 3. Any help is appreciated</p>\r\n</div>\r\n</div>\r\n\r\n<p> </p>', NULL, '2016-03-31 20:38:34', '2017-03-31 20:38:34', 'combining-to-tables-and-sorting-by-latest-latest-date', 0, '19'),
(25, 'iot', '1 down vote favorite Please help me connect with AWS IOT services with esp8266 12e. I am using aws-mqtt-websocket example but I an not able to connect with AWS IOT', '<p>include &lt;Arduino.h&gt;<br />#include &lt;Stream.h&gt;<br /><br />#include &lt;ESP8266WiFi.h&gt;<br /><br />//AWS<br />#include \"sha256.h\"<br />#include \"Utils.h\"<br />#include \"AWSClient2.h\"<br /><br />//WEBSockets<br />#include &lt;Hash.h&gt;<br />#include &lt;WebSocketsClient.h&gt;<br /><br />//MQTT PAHO<br />#include &lt;SPI.h&gt;<br />#include &lt;IPStack.h&gt;<br />#include &lt;Countdown.h&gt;<br />#include &lt;MQTTClient.h&gt;<br /><br />//AWS MQTT Websocket<br />#include \"Client.h\"<br />#include \"AWSWebSocketClient.h\"<br />#include \"CircularByteBuffer.h\"<br /><br />//AWS IOT config, change these:<br /><br />const char* ssid = \"XXXX\";<br />const char* password = \"XXXXXXXX\";<br />char aws_endpoint[] = \"XXXXXXXXXXXXXXXXXXXXXXX\";<br />char aws_key[] = \"XXXXXXXXXXXXXXXXXX\";<br />char aws_secret[] = \"XXXXXXXXXXXXXXXXXXXX\";<br />char aws_region[] = \"XXXXXXXXXXXXXXXX\";<br />const char* aws_topic = \"XXXXXXXXXXXXXXXXXX\";<br />int port = 443;<br /><br />//MQTT config<br />const int maxMQTTpackageSize = 512;<br />const int maxMQTTMessageHandlers = 1;<br /><br />WiFiClientSecure espclient;<br /><br />AWSWebSocketClient awsWSclient(1000);<br /><br />IPStack ipstack(awsWSclient);<br /><br />MQTT::Client&lt;IPStack, Countdown, maxMQTTpackageSize, maxMQTTMessageHandlers&gt; *client = NULL;<br /><br />//# of connections<br />long connection = 0;<br /><br />//generate random mqtt clientID<br />char* generateClientID() {<br />    char* cID = new char[23]();<br />    for (int i = 0; i&lt;22; i += 1)<br />        cID[i] = (char)random(1, 256);<br />    return cID;<br />}<br /><br />//count messages arrived<br />int arrivedcount = 0;<br /><br /><br />//callback to handle mqtt messages<br />void messageArrived(MQTT::MessageData&amp; md)<br />{<br />    MQTT::Message &amp;message = md.message;<br /><br />    Serial.print(\"Message \");<br />    Serial.print(++arrivedcount);<br />    Serial.print(\" arrived: qos \");<br />    Serial.print(message.qos);<br />    Serial.print(\", retained \");<br />    Serial.print(message.retained);<br />    Serial.print(\", dup \");<br />    Serial.print(message.dup);<br />    Serial.print(\", packetid \");<br />    Serial.println(message.id);<br />    Serial.print(\"Payload \");<br />    char* msg = new char[message.payloadlen + 1]();<br />    memcpy(msg, message.payload, message.payloadlen);<br />    Serial.println(msg);<br />    delete msg;<br />}<br /><br />//connects to websocket layer and mqtt layer<br />bool connect() {<br /><br />    if (client == NULL) {<br />        client = new MQTT::Client&lt;IPStack, Countdown, maxMQTTpackageSize, maxMQTTMessageHandlers&gt;(ipstack);<br />    }<br />    else {<br /><br />        if (client-&gt;isConnected()) {<br />            client-&gt;disconnect();<br />        }<br />        delete client;<br />        client = new MQTT::Client&lt;IPStack, Countdown, maxMQTTpackageSize, maxMQTTMessageHandlers&gt;(ipstack);<br />    }<br /><br /><br />    //delay is not necessary... it just help us to get a \"trustful\" heap space value<br />    delay(1000);<br />    Serial.print(millis());<br />    Serial.print(\" - conn: \");<br />    Serial.print(++connection);<br />    Serial.print(\" - (\");<br />    Serial.print(ESP.getFreeHeap());<br />    Serial.println(\")\");<br /><br /><br /><br /><br />    int rc = ipstack.connect(aws_endpoint, port);<br />    Serial.print(rc);<br /><br />    if (rc != 1)<br />    {<br />        Serial.println(\"error connection to the websocket server\");<br />        return false;<br />    }<br />    else {<br />        Serial.println(\"websocket layer connected\");<br />    }<br /><br /><br />    Serial.println(\"MQTT connecting\");<br />    MQTTPacket_connectData data = MQTTPacket_connectData_initializer;<br />    data.MQTTVersion = 3;<br />    char* clientID = generateClientID();<br />    data.clientID.cstring = clientID;<br />    rc = client-&gt;connect(data);<br />    delete[] clientID;<br />    if (rc != 0)<br />    {<br />        Serial.print(\"error connection to MQTT server\");<br />        Serial.println(rc);<br />        return false;<br />    }<br />    Serial.println(\"MQTT connected\");<br />    return true;<br />}<br /><br />//subscribe to a mqtt topic<br />void subscribe() {<br />    //subscript to a topic<br />    int rc = client-&gt;subscribe(aws_topic, MQTT::QOS0, messageArrived);<br />    Serial.println(rc);<br />    if (rc != 0) {<br />        Serial.print(\"rc from MQTT subscribe is \");<br />        Serial.println(rc);<br />        return;<br />    }<br />    Serial.println(\"MQTT subscribed\");<br />}<br /><br />//send a message to a mqtt topic<br />void sendmessage() {<br />    //send a message<br />    MQTT::Message message;<br />    char buf[100];<br />    strcpy(buf, \"{\\\"state\\\":{\\\"reported\\\":{\\\"on\\\": false}, \\\"desired\\\":{\\\"on\\\": false}}}\");<br />    message.qos = MQTT::QOS0;<br />    message.retained = false;<br />    message.dup = false;<br />    message.payload = (void*)buf;<br />    message.payloadlen = strlen(buf) + 1;<br />    int rc = client-&gt;publish(aws_topic, message);<br />}<br /><br />void setup_wifi() {<br /><br />    delay(10);<br />    // We start by connecting to a WiFi network<br />    Serial.println();<br />    Serial.print(\"Connecting to \");<br />    Serial.println(ssid);<br /><br />    WiFi.begin(ssid, password);<br /><br />    while (WiFi.status() != WL_CONNECTED) {<br />        delay(500);<br />        Serial.print(\".\");<br />    }<br /><br />    Serial.println(\"\");<br />    Serial.println(\"WiFi connected\");<br />    Serial.println(\"IP address: \");<br />    Serial.println(WiFi.localIP());<br />}<br /><br />void setup() {<br />    Serial.begin(115200);<br />    setup_wifi();<br /><br />    Serial.setDebugOutput(1);<br />    //fill AWS parameters    <br />    awsWSclient.setAWSRegion(aws_region);<br />    awsWSclient.setAWSDomain(aws_endpoint);<br />    awsWSclient.setAWSKeyID(aws_key);<br />    awsWSclient.setAWSSecretKey(aws_secret);<br />    awsWSclient.setUseSSL(true);<br /><br />    if (connect()) {<br />        subscribe();<br />        sendmessage();<br />    }<br />}<br /><br />void loop() {<br />    //keep the mqtt up and running<br />    if (awsWSclient.connected()) {<br />        client-&gt;yield();<br />    }<br />    else {<br />        //handle reconnection<br />        if (connect()) {<br />            subscribe();<br />        }<br />    }<br />}<br /></p>', NULL, '2017-03-31 20:52:11', '2017-03-31 20:52:11', '1-down-vote-favorite-please-help-me-connect-with-aws-iot-services-with-esp8266-12e-i-am-using-aws-mqtt-websocket-example-but-i-an-not-able-to-connect-with-aws-iot', 0, '19'),
(26, 'big-data', 'Comparing data in 2 separate DataFrames and producing a result in Python/Pandas', '<p>I am new to Python and I\'m trying to produce a similar result of Excel\'s IndexMatch function with Python &amp; Pandas, though I\'m struggling to get it working.</p>\r\n<p>Basically, I have 2 separate DataFrames:</p>\r\n<p>The first DataFrame (\'market\') has 7 columns, though I only need 3 of those columns for this exercise (\'symbol\', \'date\', \'close\'). This df has 13,948,340 rows.</p>\r\n<p>The second DataFrame (\'transactions\') has 14 columns, though only I only need 2 of those columns (\'i_symbol\', \'acceptance_date\'). This df has 1,428,026 rows.</p>\r\n<p>My logic is: If i_symbol is equal to symbol and acceptance_date is equal to date: print symbol, date &amp; close. This should be easy.</p>\r\n<p>I have achieved it with iterrows() but because of the size of the dataset, it returns a single result every 3 minutes - which means I would have to run the script for 1,190 hours to get the final result.</p>\r\n<p>Based on what I have read online, itertuples should be a faster approach, but I am currently getting an error:</p>\r\n<p><em>ValueError: too many values to unpack (expected 2)</em></p>\r\n<p>This is the code I have written (which currently produces the above ValueError):</p>\r\n<span>for</span><span> i_symbol</span><span>,</span><span> acceptance_date </span><span>in</span><span> transactions</span><span>.</span><span>itertuples</span><span>(</span><span>index</span><span>=</span><span>False</span><span>):</span>\r\n  <span>for</span><span> symbol</span><span>,</span><span> date </span><span>in</span><span> market</span><span>.</span><span>itertuples</span><span>(</span><span>index</span><span>=</span><span>False</span><span>):</span>\r\n    <span>if</span><span> i_symbol </span><span>==</span><span> symbol </span><span>and</span><span> acceptance_date </span><span>==</span><span> date</span><span>:</span>\r\n        <span>print</span><span>(</span><span>market</span><span>.</span><span>symbol </span><span>+</span><span> market</span><span>.</span><span>date </span><span>+</span><span> market</span><span>.</span><span>close</span><span>)</span>\r\n<p>2 questions:</p>\r\n<ol><li>Is itertuples() the best/fastest approach? If so, how can I get the above working?</li>\r\n<li>Does anyone know a better way? Would indexing work? Should I use an external db (e.g. mysql) instead?</li>\r\n</ol><p>Thanks, Matt</p>', NULL, '2017-03-31 22:03:35', '2017-03-31 22:03:35', 'comparing-data-in-2-separate-dataframes-and-producing-a-result-in-pythonpandas', 0, '20'),
(27, 'software-engineering', 'SOAP WS-Addressing property with Wss4jSecurityInterceptor with Java', '\r\n<div><span>6</span><a title=\"This question does not show any research effort; it is unclear or not useful\">down vote</a><a href=\"http://stackoverflow.com/questions/42943996/soap-ws-addressing-property-with-wss4jsecurityinterceptor-with-java\">favorite</a>\r\n<div><strong>3</strong></div>\r\n</div>\r\n\r\n\r\n<div>\r\n<div>\r\n<p>Hi I create code for consume SOAP service,</p>\r\n<p>For Authentication Header I used Wss4jSecurityInterceptor for set Header information.</p>\r\n<p>I am getting fail response like below</p>\r\n <span>Exception</span><span> in thread </span><span>\"main\"</span><span> org</span><span>.</span><span>springframework</span><span>.</span><span>ws</span><span>.</span><span>soap</span><span>.</span><span>client</span><span>.</span><span>SoapFaultClientException</span><span>:</span> <span>Required</span><span> element </span><span>{</span><span>http</span><span>:</span><span>//www.w3.org/2005/08/addressing}Action is missing</span>\r\n<p>My Configuration code as below</p>\r\n    <span>@Configuration</span>\r\n    <span>public</span> <span>class</span> <span>SoapClientConfig</span> <span>{</span>\r\n\r\n\r\n        <span>@Bean</span>\r\n        <span>public</span> <span>Jaxb2Marshaller</span><span> marshaller</span><span>()</span> <span>{</span>\r\n            <span>Jaxb2Marshaller</span><span> marshaller </span><span>=</span> <span>new</span> <span>Jaxb2Marshaller</span><span>();</span><span>\r\n            marshaller</span><span>.</span><span>setContextPath</span><span>(</span><span>\"com.xyz.client\"</span><span>);</span><span>\r\n            marshaller</span><span>.</span><span>setCheckForXmlRootElement</span><span>(</span><span>false</span><span>);</span>\r\n            <span>return</span><span> marshaller</span><span>;</span>\r\n        <span>}</span>\r\n\r\n        <span>@Bean</span>\r\n        <span>public</span> <span>MyClient</span><span> myClient</span><span>(</span><span>Jaxb2Marshaller</span><span> marshaller</span><span>)</span> <span>throws</span> <span>Exception</span> <span>{</span>\r\n            <span>MyClient</span><span> client </span><span>=</span> <span>new</span> <span>MyClient</span><span>();</span><span>\r\n            client</span><span>.</span><span>setDefaultUri</span><span>(</span><span>\"https://localhost:8080/ws/service\"</span><span>);</span><span>\r\n            client</span><span>.</span><span>setMarshaller</span><span>(</span><span>marshaller</span><span>);</span><span>\r\n            client</span><span>.</span><span>setUnmarshaller</span><span>(</span><span>marshaller</span><span>);</span>\r\n\r\n            <span>ClientInterceptor</span><span>[]</span><span> interceptors </span><span>=</span> <span>new</span> <span>ClientInterceptor</span><span>[]</span> <span>{</span><span>securityInterceptor</span><span>()};</span><span>\r\n\r\n            client</span><span>.</span><span>setInterceptors</span><span>(</span><span>interceptors</span><span>);</span>\r\n            <span>return</span><span> client</span><span>;</span>\r\n        <span>}</span>\r\n\r\n        <span>@Bean</span>\r\n        <span>public</span> <span>Wss4jSecurityInterceptor</span><span> securityInterceptor</span><span>()</span> <span>{</span>\r\n            <span>Wss4jSecurityInterceptor</span><span> wss4jSecurityInterceptor </span><span>=</span> <span>new</span> <span>Wss4jSecurityInterceptor</span><span>();</span><span>\r\n\r\n            wss4jSecurityInterceptor</span><span>.</span><span>setSecurementActions</span><span>(</span><span>\"UsernameToken\"</span><span>);</span><span>\r\n            wss4jSecurityInterceptor</span><span>.</span><span>setSecurementMustUnderstand</span><span>(</span><span>true</span><span>);</span><span>\r\nwss4jSecurityInterceptor</span><span>.</span><span>setSecurementPasswordType</span><span>(</span><span>\"PasswordText\"</span><span>);</span><span>\r\n            wss4jSecurityInterceptor</span><span>.</span><span>setSecurementUsername</span><span>(</span><span>\"XXXXXXXXXXX\"</span><span>);</span><span>\r\n            wss4jSecurityInterceptor</span><span>.</span><span>setSecurementPassword</span><span>(</span><span>\"XXXXXXXX\"</span><span>);</span>\r\n            <span>return</span><span> wss4jSecurityInterceptor</span><span>;</span>\r\n        <span>}</span>\r\n<p>Can anyone suggest me what I am missing?</p>\r\n<p>If I try from SOAPUI its working fine. If I set WS-Addressing=false from SOAPUI also giving me same error, So Issue with set WS-Addressing property with above code. How can I?</p>\r\n</div>\r\n</div>\r\n\r\n<p> </p>', NULL, '2017-03-31 22:04:49', '2017-03-31 22:04:49', 'soap-ws-addressing-property-with-wss4jsecurityinterceptor-with-java', 0, '20'),
(28, 'computer-network', 'command not found: how do I know what to install?', '<p>Sometimes you run a command and get a \"command not found\" error message.</p>\r\n<p>After that you try to install the package that contains that command (I think that\'s what happens anyway?)</p>\r\n<p>e.g. showmount: command not found</p>\r\n<p>apt-get install showmount does nothing, so I guess the showmount command is part of a package, but I don\'t know what that package is.</p>\r\n<p>How can I find out what package I need to install to get whichever command I need? I am using Kali Linux.</p>', NULL, '2017-02-28 22:06:01', '2017-03-31 22:06:01', 'command-not-found-how-do-i-know-what-to-install', 0, '20');

-- --------------------------------------------------------

--
-- Table structure for table `question_comments`
--

CREATE TABLE `question_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_comments`
--

INSERT INTO `question_comments` (`id`, `name`, `email`, `comment`, `approved`, `question_id`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 'sourav dash', 'dalim@gmail.com', 'Some migration operations are destructive, which means they may cause you to lose data. In order to protect you from running these commands against your production database,', 1, 1, '2017-02-01 11:49:01', '2017-02-01 11:49:01', 'web-development'),
(2, 'sourav dash', 'dalim@gmail.com', 'Some migration operations are destructive, which means they may cause you to lose data. In order to protect you from running these commands against your production database,', 1, 1, '2017-02-01 11:54:27', '2017-02-01 11:54:27', 'web-development'),
(3, 'sourav dash', 'dalim@gmail.com', 'Some migration operations are destructive, which means they may cause you to lose data. In order to protect you from running these commands against your production database,', 1, 1, '2017-02-01 11:58:03', '2017-02-01 11:58:03', 'web-development'),
(4, 'masud vai', 'masud@yahoo.com', 'A migration class contains two methods: up and down. The up method is used to add new tables, columns, or indexes to your database, while the down method should simply reverse the operations performed by the up method.', 1, 1, '2017-02-01 12:17:01', '2017-02-01 12:17:01', 'web-development'),
(6, 'nazmul hasan dalim', 'nhdalim@yahoo.com', 'among the stalks, and grow familiar with the countless indescribable forms of the insects and flies, then I feel the presence of the Almighty, who formed us in his own image, and the breath', 1, 7, '2017-03-10 16:36:15', '2017-03-10 16:36:15', 'web-security'),
(26, 'dalim', 'nazmul@yahoo.com', 'nice comments for test', 1, 12, '2017-03-21 06:30:09', '2017-03-21 06:30:09', 'web-development'),
(27, 'dalim', 'nazmul@yahoo.com', 'nice comments for test', 1, 12, '2017-03-21 06:30:48', '2017-03-21 06:30:48', 'web-development'),
(28, 'dalim', 'nazmul@yahoo.com', 'nice job', 1, 18, '2017-03-21 06:51:48', '2017-03-21 06:51:48', 'desktop-application'),
(29, 'tanjina akter', 'tanjina@yahoo.com', 'niceeee work', 1, 22, '2017-03-30 10:47:04', '2017-03-30 10:47:04', 'web-development'),
(30, 'Jakariya Chowdhury', 'jak@yahoo.com', 'dummy reply dummy reply dummy reply', 1, 1, '2017-03-31 22:12:16', '2017-03-31 22:12:16', 'web-development'),
(31, 'Jakariya Chowdhury', 'jak@yahoo.com', 'dummy reply', 1, 1, '2017-03-31 22:12:23', '2017-03-31 22:12:23', 'web-development'),
(32, 'Jakariya Chowdhury', 'jak@yahoo.com', 'dummy reply', 1, 1, '2017-03-31 22:12:29', '2017-03-31 22:12:29', 'web-development'),
(33, 'Jakariya Chowdhury', 'jak@yahoo.com', 'dummy reply', 1, 12, '2017-03-31 22:12:46', '2017-03-31 22:12:46', 'web-development'),
(34, 'Jakariya Chowdhury', 'jak@yahoo.com', 'dummy reply', 1, 12, '2017-03-31 22:12:51', '2017-03-31 22:12:51', 'web-development'),
(35, 'Jakariya Chowdhury', 'jak@yahoo.com', 'dummy reply dummy reply', 1, 7, '2017-03-31 22:13:05', '2017-03-31 22:13:05', 'web-security'),
(36, 'Jakariya Chowdhury', 'jak@yahoo.com', 'dummy reply dummy reply', 1, 7, '2017-03-31 22:13:10', '2017-03-31 22:13:10', 'web-security'),
(37, 'Jakariya Chowdhury', 'jak@yahoo.com', 'dummy reply', 1, 22, '2017-03-31 22:13:21', '2017-03-31 22:13:21', 'web-development'),
(38, 'Jakariya Chowdhury', 'jak@yahoo.com', 'dummy reply', 1, 22, '2017-03-31 22:13:27', '2017-03-31 22:13:27', 'web-development'),
(39, 'Masud Ahmed', 'masud@live.com', 'Nice Work', 1, 23, '2017-03-31 22:14:08', '2017-03-31 22:14:08', 'web-development'),
(40, 'diu cse', 'diu1234@gmail.com', 'jryfmghdjghdgbdhfgbdmghbdmjghdbhdhgh', 1, 1, '2017-04-01 09:43:35', '2017-04-01 09:43:35', 'web-development');

-- --------------------------------------------------------

--
-- Table structure for table `question_replays`
--

CREATE TABLE `question_replays` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `question_comment_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_replays`
--

INSERT INTO `question_replays` (`id`, `name`, `email`, `comment`, `approved`, `question_comment_id`, `created_at`, `updated_at`) VALUES
(1, 'dalim khan', 'dalimkhan@gmail.com', 'If you would like to specify a custom output path for the generated migration, you may use the --path option when executing the make:migration command. The given path should be relative to your application\'s base path.', 1, 3, '2017-02-01 12:17:33', '2017-02-01 12:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `question_tag`
--

CREATE TABLE `question_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `question_id` int(10) UNSIGNED NOT NULL,
  `tag_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `question_tag`
--

INSERT INTO `question_tag` (`id`, `question_id`, `tag_id`, `category_id`) VALUES
(1, 1, 'php-developer', 'web-development'),
(2, 1, 'javascript', 'web-development'),
(3, 1, 'codeigniter', 'web-development'),
(16, 7, 'oracle', 'web-security'),
(17, 7, 'python', 'web-security'),
(18, 7, 'java', 'web-security'),
(19, 7, 'mysql', 'web-security'),
(30, 12, 'oracle', 'web-development'),
(31, 12, 'java', 'web-development'),
(32, 12, 'javascript', 'web-development'),
(47, 18, 'c', 'desktop-application'),
(48, 18, 'javascript', 'desktop-application'),
(53, 19, 'java', 'web-development'),
(54, 19, 'c', 'web-development'),
(55, 19, 'laravel', 'web-development'),
(56, 19, 'html', 'web-development'),
(57, 19, 'oracle', 'web-development'),
(58, 19, 'python', 'web-development'),
(59, 20, 'oracle', 'web-development'),
(60, 20, 'python', 'web-development'),
(61, 20, 'java', 'web-development'),
(62, 20, 'mysql', 'web-development'),
(63, 21, 'oracle', 'web-security'),
(64, 21, 'laravel', 'web-security'),
(65, 21, 'mysql', 'web-security'),
(66, 22, 'php-developer', 'web-development'),
(67, 22, 'laravel', 'web-development'),
(68, 23, 'python', 'web-development'),
(69, 23, 'jquery', 'web-development'),
(70, 24, 'mysql', 'backend-development'),
(71, 25, 'arduino', 'iot'),
(72, 25, 'aws', 'iot'),
(73, 26, 'python', 'big-data'),
(74, 26, 'mapreduce', 'big-data'),
(75, 27, 'java', 'software-engineering'),
(76, 27, 'aws', 'software-engineering'),
(77, 28, 'hacking', 'computer-network'),
(78, 28, 'linux', 'computer-network');

-- --------------------------------------------------------

--
-- Table structure for table `replays`
--

CREATE TABLE `replays` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `comment_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `replays`
--

INSERT INTO `replays` (`id`, `name`, `email`, `comment`, `approved`, `comment_id`, `created_at`, `updated_at`) VALUES
(9, 'iftekhar masud', 'masud@yahoo.com', 'Now, when a request matches the specified route URI, the show method on the UserController class will be executed. Of course, the route parameters will also be passed to the method.', 1, 24, '2017-01-31 11:21:30', '2017-01-31 11:21:30'),
(10, 'iftekhar masud', 'masud@yahoo.com', 'Now, when a request matches the specified route URI, the show method on the UserController class will be executed. Of course, the route parameters will also be passed to the method.', 1, 24, '2017-01-31 11:21:46', '2017-01-31 11:21:46'),
(11, 'iftekhar masud', 'masud@yahoo.com', 'Now, when a request matches the specified route URI, the show method on the UserController class will be executed. Of course, the route parameters will also be passed to the method.', 1, 24, '2017-01-31 11:23:29', '2017-01-31 11:23:29'),
(12, 'kamrul hasan', 'kamrul@yahoo.com', 'yesssssssss', 1, 24, '2017-01-31 11:24:10', '2017-01-31 11:24:10'),
(13, 'nh dalim', 'dalimkhan@gmail.com', 'Rendering problems can arise when you have dozens of inline labels within a narrow container, each containing its own inline-block element (like an icon). The way around this is setting display: inline-block;. For context and an example, see #13219.', 1, 25, '2017-01-31 11:28:06', '2017-01-31 11:28:06'),
(14, 'masud rana', 'masud@yahoo.com', 'Get the lowdown on the key pieces of Bootstrap\'s infrastructure, including our approach to better, faster, stronger web development.Get the lowdown on the key pieces of Bootstrap\'s infrastructure, including our approach to better, faster, stronger web development.', 1, 28, '2017-01-31 16:46:58', '2017-01-31 16:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'owner', 'project owner', 'he is project owner', '2017-01-29 09:38:14', '2017-01-29 09:38:14'),
(2, 'admin', 'use administration', 'he is project owner', '2017-01-29 09:46:47', '2017-01-29 09:46:47'),
(3, 'user', 'normal user', 'user genaral', '2017-01-29 09:48:01', '2017-01-29 09:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(2, 3),
(3, 3),
(4, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(14, 3),
(16, 2),
(18, 2),
(19, 3),
(20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `save_jobs`
--

CREATE TABLE `save_jobs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jobs_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `save_jobs`
--

INSERT INTO `save_jobs` (`id`, `user_id`, `jobs_id`, `created_at`, `updated_at`, `category_id`) VALUES
(1, 4, 3, NULL, NULL, 10),
(3, 19, 3, NULL, NULL, 10),
(4, 20, 9, NULL, NULL, 29),
(5, 4, 9, NULL, NULL, 29);

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'oracle', 'dalim', '2017-01-30 11:55:55', '2017-01-30 11:57:09'),
(5, 'java', 'dalim', '2017-01-30 11:56:04', '2017-01-30 11:56:59'),
(6, 'python', 'dalim', '2017-01-30 11:56:11', '2017-01-30 11:56:11'),
(7, 'c++', 'dalim', '2017-01-30 11:56:20', '2017-01-30 11:56:48'),
(8, 'c', 'dalim', '2017-01-30 11:56:25', '2017-01-30 11:56:25'),
(9, 'codeigniter', 'dalim', '2017-01-30 11:57:23', '2017-01-30 11:57:23'),
(10, 'laravel', 'dalim', '2017-01-30 11:57:32', '2017-01-30 11:57:32'),
(11, 'javascript', 'dalim', '2017-01-30 11:57:41', '2017-01-30 11:57:41'),
(12, 'html', 'dalim', '2017-01-30 11:57:47', '2017-01-30 11:57:47'),
(15, 'css 3', 'dalim', '2017-01-30 11:58:18', '2017-01-30 11:58:18'),
(16, 'mysql', 'dalim', '2017-01-30 11:58:25', '2017-01-30 11:58:25'),
(17, 'jump', 'dalim', '2017-01-30 11:58:32', '2017-01-30 11:58:32'),
(18, 'jquery', 'dalim', '2017-01-30 11:58:49', '2017-01-30 11:58:49'),
(19, 'arduino', 'masum billah', '2017-03-31 20:39:57', '2017-03-31 20:39:57'),
(20, 'sql', 'masum billah', '2017-03-31 20:40:08', '2017-03-31 20:40:08'),
(21, 'nosql', 'masum billah', '2017-03-31 20:40:22', '2017-03-31 20:40:22'),
(22, 'postgresql', 'masum billah', '2017-03-31 20:40:33', '2017-03-31 20:40:33'),
(23, 'perl', 'masum billah', '2017-03-31 20:40:42', '2017-03-31 20:40:42'),
(24, 'laravel', 'masum billah', '2017-03-31 20:40:50', '2017-03-31 20:40:50'),
(25, 'django', 'masum billah', '2017-03-31 20:41:02', '2017-03-31 20:41:02'),
(26, 'hadoop', 'masum billah', '2017-03-31 20:41:11', '2017-03-31 20:41:11'),
(27, 'hive', 'masum billah', '2017-03-31 20:41:19', '2017-03-31 20:41:19'),
(28, 'pig', 'masum billah', '2017-03-31 20:41:27', '2017-03-31 20:41:27'),
(29, 'mapreduce', 'masum billah', '2017-03-31 20:41:37', '2017-03-31 20:41:37'),
(30, 'ajax', 'masum billah', '2017-03-31 20:41:43', '2017-03-31 20:41:43'),
(31, 'c', 'masum billah', '2017-03-31 20:41:48', '2017-03-31 20:41:48'),
(32, 'oop', 'masum billah', '2017-03-31 20:42:00', '2017-03-31 20:42:00'),
(33, 'spark', 'masum billah', '2017-03-31 20:42:32', '2017-03-31 20:42:32'),
(34, 'cake_php', 'masum billah', '2017-03-31 20:42:49', '2017-03-31 20:42:49'),
(35, 'raspberry_pi', 'masum billah', '2017-03-31 20:45:12', '2017-03-31 20:45:12'),
(36, 'pascal', 'masum billah', '2017-03-31 20:46:26', '2017-03-31 20:46:26'),
(37, 'mysql', 'masum billah', '2017-03-31 20:47:19', '2017-03-31 20:47:19'),
(38, 'encryption', 'masum billah', '2017-03-31 20:47:44', '2017-03-31 20:47:44'),
(39, 'hacking', 'masum billah', '2017-03-31 20:47:59', '2017-03-31 20:47:59'),
(40, 'linux', 'masum billah', '2017-03-31 20:48:24', '2017-03-31 20:48:24'),
(41, 'aws', 'masum billah', '2017-03-31 20:48:30', '2017-03-31 20:48:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `facebook_id`, `google_id`) VALUES
(2, 'dalim vai', 'dalim66@yahoo.com', '$2y$10$b/CGlqjPKile21EPSgCkE.ufLm8HC/OEqFoqgebobWNHKpjuM4oKq', 'B8e3NjWsmzxAkbGFzHFegJwjL9k8pMHYFYHGGofaMAms64So6J5yb7t7Ahka', '2017-01-29 10:17:56', '2017-01-29 10:17:56', NULL, NULL),
(3, 'tanjina akter', 'tanjina@yahoo.com', '$2y$10$2t3y8Lo6BIXy7d0vOxuzPeEEkIXb043JAQMc4wh2Bzbdx.K.1GwSG', 'vpnMoXNwiZjtSo6VEaYNlMC0zN1eHmKFmVGAui3FJYvvBKNAN16xBC4NUiv1', '2017-01-29 10:18:53', '2017-01-29 10:18:53', NULL, NULL),
(4, 'dalim', 'nazmul@yahoo.com', '$2y$10$z3OiMFYisKbTkBfDjT16NuqiYWxHUH1Ww59txe9VPbcD8l5FHVUGO', 'Hu0qOI6t4IGnsAOolPjESC4DROCBIHUFL0PXqCAxPRZOB4HOF3G311YhXxT2', '2017-01-29 10:20:08', '2017-01-29 10:20:08', NULL, NULL),
(5, 'ashraf miah', 'ashraf@yahoo.com', '$2y$10$BxaB9O9c5E..OmvI5rRseOAVM7fM2.O29eRYfVNDHsb2Q6smRGEjK', 'U4nL0PXaKTf5hmq7dQsoFRCG3ubwSdwPBdGkvB2yayACuGkSk81EQ0NUhA5r', '2017-01-29 16:01:55', '2017-03-31 15:12:55', NULL, NULL),
(6, 'manjurul islam rana', 'hhh@yahoo.com', '$2y$10$gJLYbCqCRlBJ9M8oUiCblOR4KQ.bSGPF9vXzA4CI2/e3FWoI2KY6G', 'MBBMf1hC0AFHKwUHpsBnOYxjElk0P7YCqEi5aqIPdlIJfsFXD5XYDwzdFQhL', '2017-01-31 15:26:27', '2017-01-31 15:26:27', NULL, NULL),
(7, 'Codeigniter', 'codeig@yahoo.com', '$2y$10$3FxRjvDLFSNehsVdWQ1OPOCQoNvxtYRYB2nElHbNEQA4r3IVWaEvG', 'YZX0xM2cbGEWRZGB2WKhuSyHkmsLyxIMgWAPh2MPwkC8PcG0dfO3mcBwjUqu', '2017-01-31 15:29:17', '2017-01-31 15:29:17', NULL, NULL),
(8, 'kagin', 'kagin@yahoo.com', '$2y$10$raXHOtgLtcuH9rl05UnOz.p6ZxtDRtvTxKirojSrBPGlORmhdioqe', 'dqL5ScGA2oYNx6mVuzqbpm9aKbu4ui9AqgSiuMKk4mo0T4aYP8dGq5S4rRgZ', '2017-01-31 15:31:03', '2017-01-31 15:31:03', NULL, NULL),
(9, 'iftekhar masud', 'masud@gmail.com', '$2y$10$q/f4T576/kprHUVqAGQesOLffUgJFQ.krI6FzImmAwAOxIGN37FqK', '4dJIUnwFDcOhKyT9IbNQ9hBoDSiJCwzBXXMkS65kSa4bIk0QehdQ4mUQKSOY', '2017-01-31 15:59:56', '2017-01-31 15:59:56', NULL, NULL),
(10, 'tanveer', 'tanveerhasan1998@gmail.com', '$2y$10$5p4/GWAAacF4FIXxmIAJaONU5vUy79LXJzn3nlrDsY0jq2Sq7mzma', 'p4DJClaKjXh21BvmtGF2JuXoZgNloWfejTIoNsLnXpWyPBfUg438xtheupSo', '2017-03-22 13:00:50', '2017-03-22 13:00:50', NULL, NULL),
(13, 'NH Dalim', 'nazmul_2734@diu.edu.bd', NULL, 'AloKz3RgpVhXg6RoIJbjRXGtPWPVREWs209plI1gffeidfPMP7eKsdR7UZtg', '2017-03-23 07:12:18', '2017-03-23 07:12:18', '649864811863282', NULL),
(14, 'billah miah', 'billah@yahoo.com', '$2y$10$Oo1reqfkE/tri/08yxSfw.9lBWe8i1hdllZbpgYKHB0zfODwJB.o2', 'j8u1zy2qNX9UER39lO3TeCvRswPQJi7qe5SiikVWX5DFn1I1Zk0XxHvLLrLH', '2017-03-31 12:15:26', '2017-03-31 12:15:26', NULL, NULL),
(16, 'amimasud', 'amimasud@yahoo.com', '$2y$10$XyqSJoguOPz.L/lA9WIXuug7MHaHKCmHyRY4QC0Emf3uqtH439DRq', 'DVKQOOARYVowXIDrrclFcvAUiPKFJpi1nbuisrTwauEGIk95wErGddFAGPrz', '2017-03-31 12:22:47', '2017-03-31 13:45:55', NULL, NULL),
(18, 'masum billah', 'masum@yahoo.com', '$2y$10$7CGo7KX1Su6PQMJGv3Q0L.ThoL7QAqC6Pal2hC5mbMV8yX9TiKVIC', '0iN7YL02NIHSKCJV9Cq4dLDj6wSHMCD6mmxe3gDWKf57lC2WaX6JG5X7tUWp', '2017-03-31 14:10:33', '2017-03-31 14:16:41', NULL, NULL),
(19, 'Ashraf Ahmed', 'ashraf@gmail.com', '$2y$10$eiXYrkIHHg8oqp3xY6e20.AYwPioFBJBOcqroq1bCAcNKg9XlnWYG', 'zCBbULVmG4cJ5sonhnHhB7WbLRniUvMoy04RABAIBbh2pBmji15DwntdqXxU', '2017-03-31 19:08:37', '2017-03-31 19:08:37', NULL, NULL),
(20, 'Jakariya Chowdhury', 'jak@yahoo.com', '$2y$10$qq/.gEtKHKPzG7ggO4xAiOFgisT7ZNfNTyrXWHSjasGdbtzWnfM6W', 'D59YaIpdTMYzyASsNfpb4CIeEPFPVeNZMA1fNo4fVvl0wodausqwfbtDyOuL', '2017-03-31 22:00:44', '2017-03-31 22:00:44', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_skill`
--

CREATE TABLE `users_skill` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `skill_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users_skill`
--

INSERT INTO `users_skill` (`id`, `user_id`, `skill_id`, `created_at`, `updated_at`) VALUES
(15, 4, 8, NULL, NULL),
(16, 4, 7, NULL, NULL),
(17, 4, 6, NULL, NULL),
(21, 3, 18, NULL, NULL),
(22, 3, 15, NULL, NULL),
(23, 3, 13, NULL, NULL),
(24, 3, 12, NULL, NULL),
(25, 3, 11, NULL, NULL),
(26, 9, 11, NULL, NULL),
(27, 9, 10, NULL, NULL),
(28, 9, 9, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `advice_category`
--
ALTER TABLE `advice_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advice_category_users_id_foreign` (`users_id`);

--
-- Indexes for table `advice_comments`
--
ALTER TABLE `advice_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advice_comments_advice_id_foreign` (`advice_id`);

--
-- Indexes for table `alert_job_categories`
--
ALTER TABLE `alert_job_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `alert_job_categories_jobscategory_id_foreign` (`jobscategory_id`),
  ADD KEY `alert_job_categories_users_id_foreign` (`users_id`);

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_user_id_foreign` (`user_id`);

--
-- Indexes for table `article_categories`
--
ALTER TABLE `article_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_categories_created_by_foreign` (`created_by`);

--
-- Indexes for table `article_tag`
--
ALTER TABLE `article_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_tag_article_id_foreign` (`article_id`),
  ADD KEY `article_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `article_tags`
--
ALTER TABLE `article_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `article_tags_created_by_foreign` (`created_by`);

--
-- Indexes for table `carrier_advices`
--
ALTER TABLE `carrier_advices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_article_id_foreign` (`article_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `edit_profiles`
--
ALTER TABLE `edit_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `edit_profiles_users_id_foreign` (`users_id`),
  ADD KEY `edit_profiles_profession_category_foreign` (`profession_category`);

--
-- Indexes for table `featured_interest_articles`
--
ALTER TABLE `featured_interest_articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_interest_articles_interest_id_foreign` (`interest_id`),
  ADD KEY `featured_interest_articles_users_id_foreign` (`users_id`);

--
-- Indexes for table `featured_interest_jobs`
--
ALTER TABLE `featured_interest_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_interest_jobs_interest_id_foreign` (`interest_id`),
  ADD KEY `featured_interest_jobs_users_id_foreign` (`users_id`);

--
-- Indexes for table `featured_interest_question`
--
ALTER TABLE `featured_interest_question`
  ADD PRIMARY KEY (`id`),
  ADD KEY `featured_interest_question_interest_id_foreign` (`interest_id`),
  ADD KEY `featured_interest_question_users_id_foreign` (`users_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_users_id_foreign` (`users_id`);

--
-- Indexes for table `groups_users`
--
ALTER TABLE `groups_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `groups_users_group_id_foreign` (`group_id`),
  ADD KEY `groups_users_users_id_foreign` (`users_id`);

--
-- Indexes for table `group_comments`
--
ALTER TABLE `group_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_comments_group_id_foreign` (`group_id`),
  ADD KEY `group_comments_posts_id_foreign` (`posts_id`);

--
-- Indexes for table `group_posts`
--
ALTER TABLE `group_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_posts_user_id_foreign` (`user_id`),
  ADD KEY `group_posts_group_id_foreign` (`group_id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_users_id_foreign` (`users_id`);

--
-- Indexes for table `job_applies`
--
ALTER TABLE `job_applies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `job_applies_jobs_id_foreign` (`jobs_id`),
  ADD KEY `job_applies_user_id_foreign` (`user_id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_levels`
--
ALTER TABLE `job_levels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_comments`
--
ALTER TABLE `question_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_comments_question_id_foreign` (`question_id`);

--
-- Indexes for table `question_replays`
--
ALTER TABLE `question_replays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_replays_comment_id_foreign` (`question_comment_id`);

--
-- Indexes for table `question_tag`
--
ALTER TABLE `question_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_tag_question_id_foreign` (`question_id`);

--
-- Indexes for table `replays`
--
ALTER TABLE `replays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `replays_comment_id_foreign` (`comment_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `role_user_role_id_foreign` (`role_id`);

--
-- Indexes for table `save_jobs`
--
ALTER TABLE `save_jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `save_jobs_user_id_foreign` (`user_id`),
  ADD KEY `save_jobs_jobs_id_foreign` (`jobs_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_facebook_id_unique` (`facebook_id`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`);

--
-- Indexes for table `users_skill`
--
ALTER TABLE `users_skill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `users_skill_user_id_foreign` (`user_id`),
  ADD KEY `users_skill_skill_id_foreign` (`skill_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `advice_category`
--
ALTER TABLE `advice_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `advice_comments`
--
ALTER TABLE `advice_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `alert_job_categories`
--
ALTER TABLE `alert_job_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `article_categories`
--
ALTER TABLE `article_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `article_tag`
--
ALTER TABLE `article_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `article_tags`
--
ALTER TABLE `article_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `carrier_advices`
--
ALTER TABLE `carrier_advices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `edit_profiles`
--
ALTER TABLE `edit_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `featured_interest_articles`
--
ALTER TABLE `featured_interest_articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `featured_interest_jobs`
--
ALTER TABLE `featured_interest_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `featured_interest_question`
--
ALTER TABLE `featured_interest_question`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `groups_users`
--
ALTER TABLE `groups_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `group_comments`
--
ALTER TABLE `group_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `group_posts`
--
ALTER TABLE `group_posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `job_applies`
--
ALTER TABLE `job_applies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `job_levels`
--
ALTER TABLE `job_levels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `question_comments`
--
ALTER TABLE `question_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `question_replays`
--
ALTER TABLE `question_replays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `question_tag`
--
ALTER TABLE `question_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
--
-- AUTO_INCREMENT for table `replays`
--
ALTER TABLE `replays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `save_jobs`
--
ALTER TABLE `save_jobs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users_skill`
--
ALTER TABLE `users_skill`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `advice_category`
--
ALTER TABLE `advice_category`
  ADD CONSTRAINT `advice_category_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `advice_comments`
--
ALTER TABLE `advice_comments`
  ADD CONSTRAINT `advice_comments_advice_id_foreign` FOREIGN KEY (`advice_id`) REFERENCES `carrier_advices` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `alert_job_categories`
--
ALTER TABLE `alert_job_categories`
  ADD CONSTRAINT `alert_job_categories_jobscategory_id_foreign` FOREIGN KEY (`jobscategory_id`) REFERENCES `job_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `alert_job_categories_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `articles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `article_categories`
--
ALTER TABLE `article_categories`
  ADD CONSTRAINT `article_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `article_tags`
--
ALTER TABLE `article_tags`
  ADD CONSTRAINT `article_tags_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
