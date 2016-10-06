-- phpMyAdmin SQL Dump
-- version 4.1.8
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 15 Août 2014 à 19:50
-- Version du serveur :  5.5.36-cll
-- Version de PHP :  5.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `eng4f651_xyz`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE IF NOT EXISTS `xyz_article` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `img` varchar(150) NOT NULL,
  `summary` varchar(1500) NOT NULL,
  `username` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(150) NOT NULL,
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  `allow_cm` tinyint(1) NOT NULL DEFAULT '1',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `article`
--

INSERT INTO `xyz_article` (`id`, `title`, `cat_id`, `img`, `summary`, `username`, `content`, `time`, `slug`, `is_hot`, `allow_cm`, `is_show`) VALUES
(7, 'Quality and Reliablility Engineering', 2, 'b3f8b-global3.png', 'Ensure products meet engineering quality requirements such as: Durability, reliability and performance specifications under various environmental conditions, loads, stresses and usage frequencies', 'bahai', '<h1>Quality and Reliablility Engineering</h1>\n<img alt="" class="imgr" src="http://www.azglobalengineeringresources.com/images/quality.jpg" style="border:3px solid rgb(255, 51, 51); clear:right; color:rgb(0, 0, 0); display:block; float:right; font-family:verdana,arial,helvetica,sans-serif; font-size:12px; line-height:16.799999237060547px; margin:0px 0px 8px 8px; padding:5px" />\n<ul>\n	<li>Ensure products meet engineering quality requirements such as:\n	<ul>\n		<li>Durability, reliability and performance specifications under various environmental conditions, loads, stresses and usage frequencies</li>\n		<li>Test up till failure to determine the weibull slope and the life of the product</li>\n		<li>Inspect components both during and at the end of test teardowns</li>\n		<li>Determine the weak link and to propose improvements</li>\n		<br />\n		<br />\n		<br />\n		<br />\n		<br />\n		<br />\n		&nbsp;\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n	</ul>\n	</li>\n	<li>Examine warranty concerns (IPTV, C/1000):\n	<ul>\n		<li>Analyze concern locations, cycles, environments, and stresses</li>\n		<li>Contact specialists to determine system affects, root causes and to submit both a temporary and a permanent solution</li>\n		<li>Create standards to eliminate future quality issues</li>\n		<br />\n		<br />\n		<br />\n		<br />\n		<br />\n		<br />\n		&nbsp;\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n		<li>&nbsp;</li>\n	</ul>\n	</li>\n	<li>Plans and directs activities concerned with the development, application and maintenance of quality standards for industrial processes, materials and products.&nbsp;</li>\n	<br />\n	<li>Interface with customers&#39; internal manufacturing and suppliers team on quality related issues.</li>\n	<br />\n	<li>Ensure programs follow and meet the required APQP processes and have TS 16949 based quality systems.</li>\n	<br />\n	<li>Lead the problem solving sessions for both the internal and external (customer and supplier) related quality issues within the Business Operating Systems.</li>\n	<br />\n	<li>Establish and maintain PPAP/APQP documentation to ensure it meets customer and AIAG requirements and to ensure applicable team members are properly trained.</li>\n	<br />\n	<li>Review and maintain the Quality Open Desk Issues Book and address all issues with the core team for a timely resolution.</li>\n	<br />\n	<li>Address audits by working with the core team on daily audit findings and following up with a resolution for closures.</li>\n</ul>\n', '2014-06-14 06:32:13', 'Quality-and-Reliablility-Engineering', 1, 1, 1),
(8, 'Global Engineering RAP', 1, '34d57-global4.jpg', 'Welcome to our website and to the University of Colorado at Boulder''s many living and learning options.  ', '', '<div class="container" style="margin: 0px auto; padding: 0px; width: 960px; color: rgb(44, 87, 91); font-family: Arial, Tahoma, Helvetica, sans-serif; font-size: 14px; line-height: normal;">\n<div class="content" style="margin: 0px 0px 40px; padding: 0px; min-height: 600px;">\n<h3><span dir="ltr" style="background-color:transparent !important">Global Engineering RAP</span></h3>\n\n<div class="sites-canvas-main" id="sites-canvas-main" style="min-height: 150px; padding-bottom: 5px; padding-top: 15px; color: rgb(68, 68, 68); font-family: arial, sans-serif; line-height: 21.333332061767578px; background-image: none !important; background-color: transparent !important;">\n<div id="sites-canvas-main-content">\n<div class="sites-layout-name-one-column-hf sites-layout-vbox">\n<div class="sites-layout-tile sites-tile-name-header" style="padding: 10px 10px 0px;">\n<div dir="ltr">\n<p><strong><span style="font-size:12pt">Comunidad---Globalizaci&oacute;n---Tecnolog&iacute;a inform&aacute;tica</span></strong></p>\nWelcome to the Global Engineering Residential Academic Program</div>\n</div>\n\n<div class="sites-layout-tile sites-tile-name-content-1" style="padding: 10px;">\n<div dir="ltr">\n<div>\n<h2><a name="TOC-Welcome-to-our-website-and-to-the-University-of-Colorado-at-Boulder-s-many-living-and-learning-options.-"></a>W<span style="color:rgb(51, 51, 51); font-family:georgia,sans-serif; font-size:14px">elcome to our website and to the University of Colorado at Boulder&#39;s many living and learning options. &nbsp;</span></h2>\n\n<div class="sites-embed-align-right-wrapping-on" style="display: inline; float: right; margin: 5px 0px 5px 20px;">\n<div class="sites-embed-border-on sites-embed" style="margin: 0px 0px 6px; color: inherit; font-size: 12px; border: 1px solid rgb(204, 204, 204); padding-bottom: 0px; display: table-cell; width: 40px; background-image: initial; background-attachment: initial; background-size: initial; background-origin: initial; background-clip: initial; background-position: initial; background-repeat: initial;">\n<div class="sites-embed-content sites-embed-type-text" style="overflow: hidden;">\n<div class="sites-embed-content-textbox" style="padding: 5px;">\n<div dir="ltr">\n<div>&nbsp;</div>\n\n<div>\n<div><a href="https://sites.google.com/a/colorado.edu/global-engineering-rap/home/KittCentral-tower.jpg" rel="nofollow" style="border-bottom-style: none; color: rgb(0, 0, 0) !important; background: none;"><img alt="Kttredge Central main entrance" src="https://sites.google.com/a/colorado.edu/global-engineering-rap/home/KittCentral-tower.jpg" style="border:0px; height:179px; padding:0px; width:320px" /></a></div>\n<br />\nThe new&nbsp;<a href="http://housing.colorado.edu/residences/residence-halls/kittredge-central" rel="nofollow" style="color: rgb(0, 0, 0) !important;">Kittredge Central residence hall</a>--just 4 minutes&nbsp;<span style="background-color:transparent">on foot from the Engineering Center--opened in August 2013.&nbsp;</span><span style="background-color:transparent">Global Engineering RAP members and the Faculty Director and her family live here</span><span style="background-color:transparent">.</span></div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<div>&nbsp;\n<h2><a name="TOC-As-Faculty-Director-of-the-Global-Engineering-Residential-Academic-Program-CU-I-invite-you-to-consider-whether-living-in-a-community-which-helps-you-to-practice-and-improve-your-Spanish-language-skills-while-focusing-on-global-engineering-projects-and-IT-d"></a><span style="color:rgb(51, 51, 51); font-family:georgia,sans-serif; font-size:14px">As Faculty Director of the&nbsp;</span><span style="color:rgb(51, 51, 51); font-family:georgia,sans-serif; font-size:14px">Global Engineering Residential Academic Program CU, I invite you to consider whether living in a community which helps you to practice and improve your Spanish language skills while focusing on global engineering projects and IT-driven intercultural communication matches your life and career goals.&nbsp;&nbsp;</span><em>Esta comunidad nos proporciona la oportunidad de vivir la ingenier&iacute;a global, de aprender el vocabulario t&eacute;cnico de varios campos de especializaci&oacute;n y de aprender a comunicarnos con colaboradores internacionales en proyectos t&eacute;cnicos mediante tecnolog&iacute;as inform&aacute;ticas emergentes.</em></h2>\nThe type of community we are creating involves much more than just being good at science and math. Although that is clearly part of it,&nbsp;<em>we are also looking for students who:</em>\n\n<ul>\n	<li>want more from their education than technical skills</li>\n</ul>\n\n<ul>\n	<li><span style="font-family:georgia,serif">are already or&nbsp;<em>want to become</em>&nbsp;fluent in Spanish&nbsp;</span></li>\n</ul>\n\n<ul>\n	<li><span style="font-family:georgia,serif">want to learn how to leverage the latest in international telecommunications tools for working on collaborative international development projects</span></li>\n	<li><span style="font-family:georgia,serif">want to be part of building a community that critically engages the needs of the world&nbsp;</span></li>\n</ul>\n\n<ul>\n	<li><span style="font-family:georgia,serif">want to be part of building a community in which students work together and support each other&nbsp; as well-rounded individuals</span></li>\n</ul>\n\n<ul>\n	<li><span style="font-family:georgia,serif">care more about having&nbsp;<em>real global impact</em>&nbsp;than meeting minimum requirements&nbsp;</span></li>\n</ul>\n\n<ul>\n	<li><span style="font-family:georgia,serif">want to have the type of&nbsp;<em>fun</em>&nbsp;that comes from collaborating using cool emerging technologies</span></li>\n</ul>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n', '2014-06-14 06:43:06', 'Global-Engineering-RAP', 0, 1, 1),
(9, 'Great opportunities for engineering students', 1, 'b4615-global22.jpg', 'There are several great opportunities for engineering students', 'leo', '<span style="font-family:lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">There are several great opportunities for engineering students to study abroad this summer, but the deadline to apply is February 1. Make sure you submit your application now for these experiences, many of which are open to students beginn</span><span style="font-family:lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">ing in their first year.<br />\n<br />\nChina: Impact of Culture on Engineering in China (Engineering students can use credits as GS/IL;<a href="http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10030" rel="nofollow nofollow" style="color: rgb(59, 89, 152); cursor: pointer; text-decoration: none;" target="_blank">http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10030</a>)<br />\n<br />\nEngineering Design: Nantes, France (<a href="http://l.facebook.com/l.php?u=http%3A%2F%2Fgpglobalea.gp.psu.edu%2Findex.cfm%3FFuseAction%3DPrograms.ViewProgram%26Program_ID%3D10671&amp;h=VAQHJ9MOB&amp;s=1" rel="nofollow nofollow" style="color: rgb(59, 89, 152); cursor: pointer; text-decoration: none;" target="_blank">http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10671</a>)<br />\n<br />\nEngineering Design: Navarra, Spain (<a href="http://l.facebook.com/l.php?u=http%3A%2F%2Fgpglobalea.gp.psu.edu%2Findex.cfm%3FFuseAction%3DPrograms.ViewProgram%26Program_ID%3D10667&amp;h=IAQEu7hhG&amp;s=1" rel="nofollow nofollow" style="color: rgb(59, 89, 152); cursor: pointer; text-decoration: none;" target="_blank">http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10667</a>)<br />\n<br />\nEngineering Design: Singapore (<a href="http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10556" rel="nofollow nofollow" style="color: rgb(59, 89, 152); cursor: pointer; text-decoration: none;" target="_blank">http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10556</a>)<br />\n<br />\nEngineers Made in Germany: Automotive Engineering in Pforzheim, Germany (Mechanical, Industrial, and Electrical engineering students can use the 6 credits of engineering coursework to meet degree requirements;<a href="http://l.facebook.com/l.php?u=http%3A%2F%2Fgpglobalea.gp.psu.edu%2Findex.cfm%3FFuseAction%3DPrograms.ViewProgram%26Program_ID%3D10691&amp;h=HAQH3nixi&amp;s=1" rel="nofollow nofollow" style="color: rgb(59, 89, 152); cursor: pointer; text-decoration: none;" target="_blank">http://gpglobalea.gp.psu.edu/index.cfm?FuseAction=Programs.ViewProgram&amp;Program_ID=10691</a>)<br />\n<br />\nIf you have questions about these programs, stop by to meet with the international engineering envoys during their office hours.</span>', '2014-06-14 06:57:23', 'Great-opportunities-for-engineering-students', 0, 1, 1),
(10, 'Information Sessions - International Opportunities for Engineering Students', 2, '5f88e-global2.jpg', 'As part of International Education Week, we will be holding information sessions to inform engineering students about opportunities to gain international experience. These include semester study abroad, summer and short-term study abroad, work and research abroad, on-campus programs, and more! These sessions will include a presentation as well as opportunities to hear from past program participants and time to answer your questions.', 'bahai', '<span style="font-family:lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">Information Sessions - International Opportunities for Engineering Students:&nbsp;</span><br />\n<span style="font-family:lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">As part of International Education Week, we will be holding information sessions to inform engineering students about opportunities to gain international experience. These include semester study abroad, summer and short-term study abroad, work and research abroad, on-campus programs, and more! These sessions will include</span><span style="font-family:lucida grande,tahoma,verdana,arial,sans-serif; font-size:14px">&nbsp;a presentation as well as opportunities to hear from past program participants and time to answer your questions.<br />\n<br />\nThe sessions will be held at the following times. All sessions will be the same, so you only need to attend one.&nbsp;<br />\n1) Monday, November 11, 10:10am-11:00am, 218 Hosler<br />\n2) Tuesday, November 12, 3:30pm-4:20pm, 107 EE West<br />\n3) Wednesday, November 13, 12:20pm-1:10pm, 117 EE West<br />\n4) Thursday, November 14, 5:40-6:30pm, 212 Hammond<br />\n5) Friday, November 15, 11:10am-12:00pm, 201 EE West<br />\n6) Monday, November 18, 1:20pm-2:10pm, 218 Hosler<br />\n7) Tuesday, November 19, 4:40pm-5:30pm, 212 Hammond<br />\n8) Wednesday, November 20, 2:30pm-3:20pm, 110 Sackett<br />\n<br />\nThere are opportunities for students in any major to go abroad, and opportunities for students from first-year through seniors. Attend one of these sessions to learn more!</span>', '2014-06-21 23:48:17', 'Information-Sessions-International-Opportunities-for-Engineering-Students', 1, 1, 0),
(11, 'Global Engineering Education', 2, 'eec10-global-engineer.jpg', 'Over the past decade or so educators and researchers have made an effort to transform engineering education in light of global trends in the profession. In 1985, the National Research Council issued a study that spotlighted the need for universities to graduate engineers with professional skills.[1] This message was reinforced through a 1994 joint report published by the Engineering Deans Council and ASEE[2] that stated, “Today, engineering colleges … must educate their students to work as part of teams, communicate well, and understand the economic, social, environmental and international context of their professional activities.”', '', '<p><strong>Global Engineering Education</strong>&nbsp;is a field of study that focuses on the impact of globalization on the engineering industry.</p>\n\n<h2>Impact</h2>\n\n<p>The number of engineers coming from outside the United States has risen significantly in recent years.&nbsp;2008 data shows that the number of engineers graduating from university in China and India has risen by 9.9 and 10.4 percent, respectively.</p>\n\n<h2>History</h2>\n\n<p>Over the past decade or so educators and researchers have made an effort to transform engineering education in light of global trends in the profession. In 1985, the National Research Council issued a study that spotlighted the need for universities to graduate engineers with professional skills.<sup><a href="http://en.wikipedia.org/wiki/Global_Engineering_Education#cite_note-1" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[1]</a></sup>&nbsp;This message was reinforced through a 1994 joint report published by the Engineering Deans Council and ASEE<sup><a href="http://en.wikipedia.org/wiki/Global_Engineering_Education#cite_note-2" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[2]</a></sup>&nbsp;that stated, &ldquo;Today, engineering colleges &hellip; must educate their students to work as part of teams, communicate well, and understand the economic, social, environmental and international context of their professional activities.&rdquo;</p>\n\n<h2>Definitions</h2>\n\n<h3>Global Competency</h3>\n\n<p>Global competency is essential for engineers from any country who now compete in an international market for engineering know-how. No longer is cultural sensitivity needed only for product design destined for diverse markets. Increasingly, successful entry into the engineering profession requires significant intercultural skills in order to join efficient and productive collaborations with diverse engineering colleagues. Those colleagues may be encountered &ldquo;virtually&rdquo; at a distance, in person at an international site, or next door in the office of a multinational corporation. Outsourcing is increasing, not only for products but also for processes, including highly technical engineering work. Projects are distributed across sites and effective collaboration requires professionals who can work productively with colleagues who are very different from themselves.<sup><a href="http://en.wikipedia.org/wiki/Global_Engineering_Education#cite_note-3" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[3]</a></sup></p>\n\n<h2>Resources</h2>\n\n<p>Global HUB is the world&#39;s first virtual organization dedicated to global engineering and global engineering education. Whether one is a student looking for a virtual team for a global service learning project, or a faculty member interested in integrating global engineering content into lecture courses, or a researcher studying cross-cultural teams,&nbsp;sponsored engineering virtual organization.</p>\n\n<p><a href="http://en.wikipedia.org/wiki/IEEE_Education_Society" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="IEEE Education Society">IEEE Education Society</a><sup><a href="http://en.wikipedia.org/wiki/Global_Engineering_Education#cite_note-4" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[4]</a></sup>&nbsp;belongs to the IEEE&nbsp;(Institute of Electrical and Electronics Engineers) and its major objective is to strive a global leader in engineering education. The organization of education engineering worldwide conferences as they are the EDUCON&nbsp;and the FIE&nbsp;with an open view of all the publications included there as well the integration of engineering educator leaders along all the world in the Administration Committee allows a world integration of different views and perspectives. Newly publication IEEE-RITA&nbsp;(Revista Iberoamericana de Tecnolog&iacute;as del Aprendizaje - Revista Iberoamericana de Tecnolog&iacute;as de Aprendizagem - Latin-American Learning Technologies Journal) incorporates a new vision of technology and engineering education in Spanish and Portuguese languages.<sup><a href="http://en.wikipedia.org/wiki/Global_Engineering_Education#cite_note-5" style="text-decoration: none; color: rgb(11, 0, 128); white-space: nowrap; background: none;">[5]</a></sup></p>\n\n<h2>Benchmark Organizations</h2>\n\n<p><strong>These are some higher education institutions around the world that focus on global engineering education</strong></p>\n\n<ul>\n	<li><a href="http://en.wikipedia.org/wiki/Purdue_University" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Purdue University">Purdue University</a>, USA</li>\n	<li><a href="http://en.wikipedia.org/wiki/RMIT_University" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="RMIT University">RMIT University</a>, Australia</li>\n	<li><a href="http://en.wikipedia.org/wiki/Shanghai_Jiao_Tong_University" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Shanghai Jiao Tong University">Shanghai Jiao Tong University</a>, China</li>\n	<li><a class="mw-redirect" href="http://en.wikipedia.org/wiki/Universit%C3%A4t_Karlsruhe" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Universität Karlsruhe">Universit&auml;t Karlsruhe</a>, Germany</li>\n	<li><a href="http://en.wikipedia.org/wiki/Worcester_Polytechnic_Institute" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Worcester Polytechnic Institute">Worcester Polytechnic Institute</a>, USA</li>\n	<li><a class="mw-redirect" href="http://en.wikipedia.org/wiki/Virginia_Polytechnic_Institute_and_State_University" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Virginia Polytechnic Institute and State University">Virginia Polytechnic Institute and State University</a>, USA</li>\n	<li>\n	<div><span style="font-family:arial,helvetica,sans-serif"><a href="http://www.engr.utexas.edu/academics/studyabroad" rel="nofollow" style="font-family: Tahoma; line-height: 20px; orphans: 2; text-align: -webkit-auto; widows: 2; color: rgb(102, 51, 102); text-decoration: none; padding-right: 13px;">University of Texas at Austin, Cockrell School of Engineering</a>, USA</span></div>\n	</li>\n	<li><a href="http://en.wikipedia.org/wiki/University_of_British_Columbia" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="University of British Columbia">University of British Columbia</a>, Canada</li>\n	<li><a href="http://en.wikipedia.org/wiki/Kogakuin_University" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Kogakuin University">Kogakuin University</a>, Tokyo, Japan</li>\n</ul>\n\n<h2>&nbsp;</h2>\n\n<h2>See also</h2>\n\n<ul>\n	<li><a href="http://en.wikipedia.org/wiki/Global_Education_Network_Europe" style="text-decoration: none; color: rgb(11, 0, 128); background: none;" title="Global Education Network Europe">Global Education Network Europe</a></li>\n</ul>\n<br />\nhttp://en.wikipedia.org/wiki/Global_Engineering_Education', '2014-06-23 17:00:00', 'Global-Engineering-Education', 1, 1, 1),
(12, 'What is Global Engineering Education For?', 2, '1d609-global-bus.jpg', 'Global engineering offers the seductive image of engineers figuring out how to optimize work through collaboration and mobility. Its biggest challenge to engineers, however, is more fundamental and difficult: to better understand what they know and value qua engineers and why. This volume reports an experimental effort to help sixteen engineering educators produce "personal geographies" describing what led them to make risky career commitments to international and global engineering education. The contents of their diverse trajectories stand out in extending far beyond the narrower image of producing globally-competent engineers. Their personal geographies repeatedly highlight experiences of incongruence beyond home countries that provoked them to see themselves and understand their knowledge differently. The experiences were sufficiently profound to motivate them to design educational experiences that could challenge engineering students in similar ways.', 'leo', '<table border="0" cellpadding="0" cellspacing="0" style="color:rgb(0, 0, 0); font-family:arial,helvetica,sans-serif; line-height:normal; width:100%">\n	<tbody>\n		<tr>\n			<td>\n			<h1>What is Global Engineering Education For? The Making of International Educators, Part I &amp; II</h1>\n\n			<h2><a href="http://www.morganclaypool.com/toc/ges/1/1" style="color: rgb(0, 103, 144);">Synthesis Lectures on Global Engineering</a></h2>\n\n			<div>November 2010, 264 pages, (doi:10.2200/S00302ED1V01Y201010GES001)</div>\n\n			<div class="Authors" style="font-size: 13pt; margin-top: 1em;">Gary Lee&nbsp;Downey\n			<div class="aff" style="margin-bottom: 1em; font-size: 10pt;">Virginia Tech</div>\n			Kacey&nbsp;Beddoes\n\n			<div class="aff" style="margin-bottom: 1em; font-size: 10pt;">Virginia Tech</div>\n			</div>\n\n			<p><strong>Abstract</strong></p>\n\n			<p>Global engineering offers the seductive image of engineers figuring out how to optimize work through collaboration and mobility. Its biggest challenge to engineers, however, is more fundamental and difficult: to better understand what they know and value&nbsp;<em>qua</em>&nbsp;engineers and why. This volume reports an experimental effort to help sixteen engineering educators produce &quot;personal geographies&quot; describing what led them to make risky career commitments to international and global engineering education. The contents of their diverse trajectories stand out in extending far beyond the narrower image of producing globally-competent engineers. Their personal geographies repeatedly highlight experiences of incongruence beyond home countries that provoked them to see themselves and understand their knowledge differently. The experiences were sufficiently profound to motivate them to design educational experiences that could challenge engineering students in similar ways.</p>\n\n			<p>For nine engineers, gaining new international knowledge challenged assumptions that engineering work and life are limited to purely technical practices, compelling explicit attention to broader value commitments. For five non-engineers and two hybrids, gaining new international knowledge fueled ambitions to help engineering students better recognize and critically examine the broader value commitments in their work.</p>\n\n			<p>A background chapter examines the historical emergence of international engineering education in the United States, and an epilogue explores what it might take to integrate practices of critical self-analysis more systematically in the education and training of engineers. Two appendices and two online supplements describe the unique research process that generated these personal geographies, especially the workshop at the U.S. National Academy of Engineering in which authors were prohibited from participating in discussions of their manuscripts.</p>\n\n			<p>Table of Contents: The Border Crossers: Personal Geographies of International and Global Engineering Educators (Gary Lee Downey) / From Diplomacy and Development to Competitiveness and Globalization: Historical Perspectives on the Internationalization of Engineering Education (Brent Jesiek and Kacey Beddoes) / Crossing Borders: My Journey at WPI (Rick Vaz) / Education of Global Engineers and Global Citizens (E. Dan Hirleman) / In Search of Something More: My Path Towards International Service-Learning in Engineering Education (Margaret F. Pinnell) / International Engineering Education: The Transition from Engineering Faculty Member to True Believer (D. Joseph Mook) / Finding and Educating Self and Others Across Multiple Domains: Crossing Cultures, Disciplines, Research Modalities, and Scales (Anu Ramaswami) / If You Don&#39;t Go, You Don&#39;t Know (Linda D. Phillips) / A Lifetime of Touches of an Elusive &quot;Virtual Elephant&quot;: Global Engineering Education (Lester A. Gerhardt) / Developing Global Awareness in a College of Engineering (Alan Parkinson) / The Right Thing to Do: Graduate Education and Research in a Global and Human Context (James R. Mihelcic) / Author Biographies</p>\n\n			<p><strong>Reviews</strong></p>\n\n			<p>&quot;This unique publication provides compelling evidence of the benefits, both personal and professional, of infusing engineering education with international perspectives and experience abroad. It combines a set of fascinating personal histories from leading engineering faculty members and international educators with a thoughtful analysis of why our country, and every country, needs to produce engineers with the critical knowledge and self-awareness required to work effectively in international environments. The contents will inspire future engineers to step outside their &#39;comfort zones&#39; early in their academic careers and should be required reading for every academic, industrial, and government leader.&quot;--Dr. Allan E Goodman, President and CEO, Institute of International Education</p>\n\n			<p>&quot;Through a series of engaging personal essays, this work challenges the reader to understand engineering as a discipline and a profession within a national context and then to broaden, or even re-cast, that understanding based on global commonalities and international distinctions. The reader is thereby provoked to use the personal journeys of self-discovery to help elucidate sign posts for the types of learning journeys we hope to motivate within our students. The end result may well be discovering how to guide the development of engineers in a world increasingly connected (and yet, separated) physically, socially, culturally, intellectually, emotionally, etc. and enhancing their ability to comfortably operate and thrive in such an environment.&quot;--Dr. Norman L. Fortenberry, Director, Center for the Advancement of Scholarship on Engineering Education, National Academy of Engineering</p>\n			</td>\n		</tr>\n	</tbody>\n</table>\n', '2014-06-22 14:21:05', 'What-is-Global-Engineering-Education-For', 1, 1, 1),
(13, 'FAQ', 0, 'ac978-faq_png.png', 'Find an answer to your question. We''re happy to help', 'vuson', '<h2><span style="font-size:24px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:#FFD700">General</span></strong></span></span></h2>\n\n<ol>\n	<li>\n	<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><em>​What is The engineerXYZ?</em></span></span></p>\n\n	<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px">The EngineerXYZ is a website for Global Engineer Course at UTE.</span></span></p>\n	</li>\n	<li>\n	<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:12px"><span style="font-size:14px"><em>​Do I have to pay to join the Engineerxyz?​</em><br />\n	No! The EngineerXYZ is sponsored by USAID,..</span></span></span></p>\n	</li>\n</ol>\n\n<p><span style="font-size:24px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:rgb(255, 215, 0)">On The Day</span></strong></span></span></p>\n\n<ol>\n	<li>\n	<h4><span style="font-size:14px"><em>What do i need to prepare for the course?</em></span></h4>\n\n	<h4><span style="color:rgb(51, 51, 51); font-size:14px">You just only need to bring along laptop and smartphone during the course.</span></h4>\n	</li>\n</ol>\n\n<h2><span style="font-size:24px"><span style="font-family:arial,helvetica,sans-serif"><strong><span style="color:#FFD700">How To Get There</span></strong></span></span></h2>\n\n<ol>\n	<li>\n	<p><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><em>Where is the event?</em></span></span></p>\n\n	<p><span style="background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:arial,helvetica,sans-serif; font-size:12.727272033691406px"><span style="font-size:14px">University of Technical Education &nbsp;Address:&nbsp;</span></span><span style="background-color:rgb(255, 255, 255); color:rgb(51, 51, 51); font-family:arial,helvetica,sans-serif; font-size:14px">1 Vo Van Ngan Street, Thu Duc District, Ho Chi Minh City, Viet Nam</span></p>\n	</li>\n</ol>\n\n<p style="margin-left:40px"><span style="font-family:arial,helvetica,sans-serif"><span style="font-size:14px"><span style="color:rgba(0, 0, 0, 0.780392)">Please consult the&nbsp;</span><strong><a href="https://www.facebook.com/globalengineers" style="box-sizing: border-box; background: transparent;">Facebook Group</a></strong></span><span style="color:rgba(0, 0, 0, 0.780392); font-size:14px">&nbsp;or hotline </span><strong><span style="color:#0000CD"><span style="font-size:14px">0974 468 160 </span></span></strong><span style="color:rgba(0, 0, 0, 0.780392); font-size:14px">(Mr.Son) for directions and further event information</span></span></p>\n\n<div>&nbsp;</div>\n\n<h5><span style="color:#FFD700"><strong><span style="font-size:24px">Other question?</span></strong></span></h5>\n\n<div><span style="font-size:14px">We will be adding more information to our&nbsp;FAQ&nbsp;section periodically.&nbsp; Please visit back again often.&nbsp; For answers to questions not covered here, please reach out to us directly via our contact infomation.</span></div>\n\n<p>&nbsp;</p>\n', '2014-07-12 17:00:00', 'FAQ', 0, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `xyz_category` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `parent_id` int(9) NOT NULL,
  `slug` varchar(150) NOT NULL,
  `order` int(4) NOT NULL DEFAULT '10',
  `num_post` int(11) NOT NULL,
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `category`
--

INSERT INTO `xyz_category` (`id`, `title`, `parent_id`, `slug`, `order`, `num_post`, `is_show`) VALUES
(1, 'Events', 0, 'events', 10, 4, 1),
(2, 'News', 0, 'tin-tuc', 1, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `config`
--

CREATE TABLE IF NOT EXISTS `xyz_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_key` varchar(20) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int(3) NOT NULL,
  `meta` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_show` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Contenu de la table `config`
--

INSERT INTO `xyz_config` (`id`, `group_key`, `title`, `value`, `order`, `meta`, `is_show`) VALUES
(1, 'tools', 'Google', 'https://www.google.com.vn/', 0, '', 1),
(2, 'tools', 'IEEE', 'http://www.ieee.org/index.html', 0, '', 1),
(3, 'youtube', 'Global engineer?', 'RzJRhi-QdRk', 0, '', 1),
(4, 'youtube', 'The first challenge: What are the characteristics of a global engineer?', 'omlb0s2Ag6o', 0, '', 1),
(5, 'banner', 'Global engineering', '8e98a-5e104-globval.jpg', 0, '11', 1),
(7, 'banner', 'What is Global Engineer ?', '7eced-10d4a-globalbanneer.jpg', 0, '12', 1),
(8, 'info', 'Email', 'email', 0, 'contact@engineerxyz.com', 1),
(10, 'info', 'The EngineerXYZ(footer)', 'the_xyz', 0, '<span style="color:#FFFFFF"><span style="font-size:14px">University of Technical Education &nbsp;<br />\nAddress:&nbsp;1 Vo Van Ngan Street, Thu Duc District, Ho Chi Minh City, Viet Nam<br />\nEmail: contact@engineerxyz.com<br />\nHotline: 0974 468 160 (Mr. Vu Son)</span></span>', 0),
(11, 'info', 'What is EngineerXYZ', 'what_is', 0, 'EngineerXYZ is a website for Global Engineer Course at UTE.', 0),
(13, 'sponors', 'UTE', 'b8c4e-logo32.jpg', 1, '', 1),
(14, 'sponors', 'USAID', '04622-usaid.png', 10, 'http://www.usaid.gov/', 1),
(17, 'steps', 'STEP 2 - PROBLEM SOLVING', '88a06-1236274_10151818065711168_145568205_n.jpg', 2, 'To solve the defined problem, learners should be able to search knowledge, solutions and gather all information, and experiences, and resources from local and global networks/sources.<br />\nMembers should work in an international team, communicate in English and other languages, discuss, debate and propose various methods/approaches to solve the defined problems.<br />\nThe professors in this class only work as coaches to support and give guidelines when the teams go wrong.&nbsp;Tools (like management tools, working online in team, task tracking tool, mindmap,...) are listed and introduced to learners/teams.&nbsp;Equipments (measurement devices, meters, so on) are provided when teams need/ask for support.', 1),
(18, 'steps', 'STEP 1 - DEFINING A GLOBAL PROBLEM', '28a95-11158207_s.jpg', 1, 'One of the most critical skills for today engineers is to define problems. Problems are always challenges but looking problems at a positive point of view, problems can be also new potential opportunities. In our Global Engineer Course (GEC), defining problem is the FIRST step in problem solving.<br />\nAt the first days of GEC, there will be a BIG EVENT to meet a lot of people from students, engineers, experts from industry, professors and so on, to discuss/ignite initial ideas, various open problems (see menu Open Problems) from daily life to industrial application, from environment protection, energy, green technology, healthcare, business will be given to learners.', 1),
(19, 'steps', 'STEP 3 - WRITING AN EFFECTIVE PROPOSAL', '6ad14-luu-y-danh-cho-nhan-vien-van-phong.jpg', 3, 'Learners from various fields of study gather in teams to discuss, collect ideas and compose a proposal. Components of a proposal and rubrics for evaluating a proposal will be presented to give learners helpful guidelines.', 1),
(22, 'steps', 'STEP 4 - PRESENTATION AND CONTEST', 'ccdfd-10384285_708587369206760_9150956714430433962_n.jpg', 4, 'Give presentation to the experts from industry, university&#39;s professors and potential investors. Rubrics for best presentation will be set to rate the presentations. Project presentations and activities will be recorded share to community. Teams and investors/donators can can go further on turning ideas to a prototype of the proposed solutions/products. All successful team (good presentation and solution) will be invested by donors. In addition, the total of GEC entrance fee (Each learner pays only 1usd as GEC entrance fee) will be given to the top and second team.', 1),
(26, 'sponors', 'National Instruments', '649ce-ni-logo.png', 10, '', 1),
(27, 'sponors', 'ASU', '6b91f-asu.png', 10, '', 1),
(28, 'sponors', 'Danaher', '8e5a3-danaher-logo.png', 10, '', 1),
(29, 'sponors', 'Cadence', '7a817-cadence.png', 10, '', 1),
(30, 'sponors', 'Siemens', '640d9-siemens.png', 10, '', 1),
(31, 'sponors', 'SHTP', 'd86c3-1709f-logo-shtp-2.jpg', 10, '', 1),
(33, 'sponors', 'Pearson', '8e26a-pearson.png', 10, '', 1),
(34, 'sponors', 'Intel', 'ee48e-intel.png', 10, '', 1);

-- --------------------------------------------------------

--
-- Structure de la table `course`
--

CREATE TABLE IF NOT EXISTS `xyz_course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(200) NOT NULL,
  `summary` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order` int(4) NOT NULL DEFAULT '10',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Contenu de la table `course`
--

INSERT INTO `xyz_course` (`id`, `title`, `img`, `summary`, `order`) VALUES
(3, 'DAY 1 - BIG EVENT', 'c2868-big-event-logo-v1-cropped.jpg', '<p style="text-align:justify"><strong>8:30-9:30</strong>&nbsp;&nbsp; &nbsp;Registration desk.<br />\n<br />\n<strong>9:30-9:40</strong>&nbsp;&nbsp; &nbsp;Music.<br />\n<br />\n<strong>9:40-9:45</strong>&nbsp;&nbsp; &nbsp;MC introduces VIPs.<br />\n<br />\n<strong>9:45-9:50</strong>&nbsp;&nbsp; &nbsp;Openning speech&nbsp;(Board of Rectors).<br />\n<br />\n<strong>9:50-10:20</strong>&nbsp;&nbsp; &nbsp;Global Engineer Introduction: What, &nbsp;Why, How, When?.<br />\n<br />\n<strong>10:20-10:40</strong>&nbsp;&nbsp; &nbsp;Invited talks.<br />\n<br />\n<strong>10:40-11:15</strong>&nbsp;&nbsp; &nbsp;Tea break for networking.<br />\n<br />\n[Assignment 1 - &nbsp;Find your partners to form a team (male/female, year 1-4, &nbsp;5 members, various fields of study)].<br />\n<br />\n<strong>11:15-13:00</strong>&nbsp;&nbsp; &nbsp;Lunch at classroom.<br />\n<br />\n<strong>13:00-14:00&nbsp;</strong>&nbsp; &nbsp;Introduce your team (5min/each team).<br />\n<br />\n<strong>14:00-16:00&nbsp;</strong>&nbsp; &nbsp;Defining global problems.<br />\nPurposes &ndash; Steps (fill in forms and bring along everyday).<br />\n<br />\n[Assignment 2: Think/Propose/Invent ideas/products/services relating to technical or engineering areas under these requirements (as many as possible): Low-cost, using recycled materials, big impact to society, useful, health care, security, improve human safety, comfort, environment protection, alternative energy, smart systems].<br />\n<br />\nHomework &ndash; Flipped class.<br />\n(Watching additional&nbsp;video clips)</p>\n\n<p style="text-align:justify">&nbsp;</p>\n', 1),
(10, ' DAY 6 - PRESENTATION AND CONTEST', 'bcd9d-original.jpg', '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>8:00- 11:15 </strong>&nbsp;&nbsp; &nbsp;- Rubrics.<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Evaluation committe.&nbsp;<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Report new findings and share/submit to stakeholders.<br />\n<br />\n<strong>11:15-12:30</strong>&nbsp;&nbsp; &nbsp;LUNCH.<br />\n<br />\n<strong>12:30-16:30&nbsp;</strong>&nbsp; &nbsp;- Rubrics.<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Evaluation committe.&nbsp;<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Report new findings and share/submit to stakeholders.</span></span></p>\n', 6),
(6, 'DAY 2 - ENGINEERING COMMUNICATION & DEFINING GLOBAL PROBLEMS', 'ce072-0136044204.jpg', '<span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>8:00-8:15</strong>&nbsp;&nbsp; &nbsp;Gameshow.<br />\n<br />\n<strong>8:15-9:30&nbsp;&nbsp;</strong> &nbsp;Engineering communication.<br />\n<br />\n<strong>9:30-9:45</strong>&nbsp; &nbsp; Tea break.<br />\n<br />\n<strong>9:45-11:15</strong>&nbsp; &nbsp;Engineering communication.<br />\n<br />\n<strong>11:15-12:30</strong>&nbsp; LUNCH.<br />\n<br />\n<strong>12:30-13:40</strong>&nbsp; &nbsp;Engineering Design Process.<br />\n<br />\n<strong>13:40-14:00 &nbsp;&nbsp;</strong>Case study 1 &ndash; Drilling without dust.<br />\n<br />\n<strong>14:00-14:15</strong>&nbsp; &nbsp;Case study 2 &ndash; A haptic device for the blinds.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Health care/mechatronics, business.<br />\n<br />\n<strong>14:15-14:30</strong>&nbsp; &nbsp;Case study 3 &ndash; &nbsp;Waste water treatment.<br />\n<br />\n<strong>14:30-14:45</strong>&nbsp; &nbsp;Case study 4 &ndash; &nbsp;Japan &ndash;Vietnam Cooperation in Mechanical Engineering.<br />\n<br />\n<strong>14:45-15:00&nbsp;</strong>&nbsp; &nbsp;Tea break.<br />\n<br />\n<strong>15:00-15:15</strong> &nbsp; &nbsp;Reviewing introduction videoclips.<br />\n<br />\n<strong>15:15-18:00</strong>&nbsp;&nbsp; &nbsp;BBQ - Defining global problems/issues.</span></span>', 2),
(7, 'DAY 3 - FINDING AND LINKING YOUR PASSION TO YOUR STUDY', 'e05cd-bigstock-find-your-passion-44435605.jpg', '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>8:00-9:30 </strong>&nbsp; &nbsp; &nbsp; &nbsp;Finding my real passion.<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;[Assignment &ndash; Writing your own CV (4 samples)].&nbsp;&nbsp; &nbsp;<br />\n<br />\n<strong>9:30-9:45 &nbsp;</strong> &nbsp; &nbsp; &nbsp;Tea break. &nbsp; &nbsp;<br />\n<br />\n<strong>9:40-11:15 &nbsp;</strong> &nbsp; &nbsp;Linking your passion to real world problems. &nbsp; &nbsp;<br />\n<br />\n<strong>11:15-12:30</strong>&nbsp;&nbsp; &nbsp;LUNCH.<br />\n<br />\n<strong>12:30-14:30&nbsp;</strong>&nbsp; &nbsp;How to write an effective proposal.<br />\n<br />\n<strong>14:30-15:15</strong>&nbsp;&nbsp; &nbsp;Tea break. &nbsp; &nbsp;<br />\n<br />\n<strong>15:15-15:45&nbsp;&nbsp;</strong> &nbsp;Proposal form preparation. &nbsp; &nbsp;<br />\n<br />\n<strong>15:45-18:00&nbsp;</strong>&nbsp; &nbsp;MOVIE TIME.</span></span></p>\n', 3),
(8, 'DAY 4 - PROBLEM SOLVING', '75ca0-becoming-your-own-business-consultant.jpg', '<p><strong>8:00 -10:00</strong>&nbsp;&nbsp; &nbsp;Working in teams with coaches.</p>\n\n<p style="margin-left:120px">-&nbsp;&nbsp; &nbsp;Data collection.<br />\n-&nbsp;&nbsp; &nbsp;Observation (Process, rules, safety, suggestions, etc...).<br />\n-&nbsp;&nbsp; &nbsp;Report.<br />\n-&nbsp;&nbsp; &nbsp;Industry visit (companies) &ndash; Viet Nhat Company, Thai Binh Automation Company (Thu Duc),...<br />\n-&nbsp;&nbsp; &nbsp;Lab visit (GE, Rockwell Automation, Energy, ).</p>\n\n<p><strong>13:30-16:00</strong>&nbsp;&nbsp; &nbsp;Proposal refining.</p>\n', 4),
(9, 'DAY 5 - PRESENTATION AND CONTEST PREPARATION', '92e70-group-presentation.png', '<p><span style="font-size:14px"><span style="font-family:arial,helvetica,sans-serif"><strong>8:00-9:30</strong>&nbsp;&nbsp; &nbsp;- Presentation instruction.&nbsp;<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Presentation evaluation and rubrics.&nbsp;<br />\n<strong>9:30-9:45</strong> &nbsp; &nbsp; &nbsp;Tea break.<br />\n<br />\n<strong>9:45-11:15</strong> &nbsp; - Presentation instruction.<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Presentation evaluation and rubrics.<br />\n<br />\n&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Proposal finalization.<br />\n<br />\n<strong>11:15-12:30</strong>&nbsp;&nbsp; &nbsp;LUNCH.<br />\n<br />\n<strong>12:30-16:00</strong>&nbsp;&nbsp; &nbsp;Presentation rehearsal.<br />\n<br />\n<strong>16:00-16:30</strong> &nbsp;&nbsp; &nbsp;Wrap-up.</span></span></p>\n', 5);

-- --------------------------------------------------------

--
-- Structure de la table `course_media`
--

CREATE TABLE IF NOT EXISTS `xyz_course_media` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(10) NOT NULL,
  `course_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `value` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Structure de la table `idea`
--

CREATE TABLE IF NOT EXISTS `xyz_idea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(15) NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `accepted` int(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Contenu de la table `idea`
--

INSERT INTO `xyz_idea` (`id`, `name`, `email`, `phone`, `content`, `accepted`) VALUES
(1, 'Nguyễn Khánh', 'nguyenkhank@yahoo.com', '01263535353', 'Thiết kế website nghe nhạc trực tuyến', 1),
(2, 'Tèo', 'teo@yahoo.com', '0836401636', 'Nh&acirc;n vi&ecirc;n tiếp tế', 1);

-- --------------------------------------------------------

--
-- Structure de la table `problem`
--

CREATE TABLE IF NOT EXISTS `xyz_problem` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `img` varchar(150) NOT NULL,
  `summary` varchar(1500) NOT NULL,
  `content` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(150) NOT NULL,
  `allow_cm` tinyint(1) NOT NULL DEFAULT '1',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `star` int(1) NOT NULL DEFAULT '0',
  `is_hot` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Contenu de la table `problem`
--

INSERT INTO `xyz_problem` (`id`, `title`, `status`, `img`, `summary`, `content`, `time`, `slug`, `allow_cm`, `is_show`, `star`, `is_hot`) VALUES
(1, 'PRODUCT COUNTING SYSTEM USING IMAGE PROCESSING', 0, '8e1f6-varnishstripepapershoppingbags1.jpg', 'In our company, we have from 10 to 20 workers to count our final products to put in a plastic bag. Each bag contains 20 products. ', '<div><span style="font-size:20px"><strong>Product counting system using image processing</strong></span><br />\n<span style="font-family:arial,sans,sans-serif">In our company, we have from 10 to 20 workers to count our final products to put in a plastic bag. Each bag contains 20 products. We have to spend a significant amount of budget for paying salary for a group of 10 to 20 people every month. Each month we spend 60.000.000 to 120.000.000VNĐ for this task. We are looking for solutions from researchers (students and professors from universities) to solve this issue.</span><br />\n<br />\n<span style="font-family:arial,sans,sans-serif; font-size:13px">We can invite you to our company and we can discuss this topic. We can donate some budget for the initial ideas.</span></div>\n', '2014-07-11 17:00:00', 'Product-counting', 1, 1, 4, 1),
(3, 'REDUCING ENERGY WASTED, USING RENEWABLE ENERGY', 0, '93ef3-recycling-symbol-and-globe.jpg', 'Presently, Vietnam emissions approximately 150.9 million tons of carbon dioxide annually to the atmosphere each year....', '<span style="font-size:20px"><strong>REDUCING ENERGY&nbsp;WASTED, USING RENEWABLE ENERGY</strong></span><br />\n&nbsp;<br />\nTo engage students in&nbsp;devising innovative solutions in reducing energy&nbsp;wasted, using renewable energy in global design and manufacturing system and machine.<br />\n<strong>The Goal:</strong>&nbsp;Presently, Vietnam emissions approximately 150.9 million tons of carbon dioxide annually to the atmosphere each year. One goal of the UTE is to work with students, faculty and staff to make Vietnam carbon neutral in future.<br />\n<strong>The Challenge:&nbsp;</strong>To develop an implementable plan reducing energy consumption, using renewable energy as well as promoting awareness about smarter eco-friendly practices in machine and equipment.&nbsp; Students must demonstrate how energy can be conserved by creating innovative solutions to common energy expenditures.<br />\n<strong>Expected outcome:</strong> Submitted energy reduction plans selected to be the most innovative, Environmental, Renewable&nbsp;energy, Entrepreneur, Global.<br />\n<strong>Resources:</strong><br />\nUsing green energy<br />\nDesign new machine<br />\nMoving factory to another country', '2014-07-11 17:00:00', 'reducing-energy-wasted-using-renewable-energy', 1, 1, 3, 0),
(4, 'REDUCE TOXIC GAS IN HCM CITY', 0, 'd4eb5-1376678947_reduce-reuse-recycle.jpg', 'Presently, Hochiminh City emissions very high carbon dioxide by car and bus to the atmosphere each year. One goal of you is to design or make a machine to treat or reduce Hochiminh city carbon neutral in future.', '<span style="font-size:20px"><strong>REDUCE TOXIC GAS IN HCM CITY</strong></span><br />\n<strong>Goal:</strong> Presently, Hochiminh City emissions very high carbon dioxide by car and bus to the atmosphere each year. One goal of you is to design or make a machine to treat or reduce Hochiminh city carbon neutral in future.<br />\n<strong>Challenge</strong>: Students must demonstrate how carbon dioxide can be reduced by creating innovative solutions.<br />\n<strong>Expected outcome:</strong> To develop an implementable and submitted carbon dioxide reduction plans with some criteria as Innovative, environmental, Entrepreneur, and Global&nbsp;<br />\n<strong>Resources: </strong><br />\nGas treatment methods<br />\nUsing green car and Bus<br />\nNo car in city<br />\nUsing public traffic&nbsp;', '2014-07-11 17:00:00', 'reduce-toxic-gas-in-hochiminh-city', 1, 1, 4, 1),
(5, 'MAKING NEW DESIGN FOR OUR PRODUCT', 0, 'b084a-new_development_final_logo_by_pie89-d3h6rh8.jpg', 'We wish to have our new design which is compact and wearable for users. We have a R&D team in our company however, we are looking for more ideas from society. Our device can be', '<span style="font-family:arial,sans,sans-serif"><span style="font-size:20px"><strong>Making new design for our product</strong></span><br />\n<br />\nWe wish to have our new design which is compact and wearable for users. We have a R&amp;D team in our company however, we are looking for more ideas from society. Our device can be mounted on glasses frame, watches. Please contact us for more information about this.</span><br />\n<br />\n<strong>How/how much can you support/donate to our team to solve your problem</strong><br />\n<span style="font-family:arial,sans,sans-serif">We can take you to our R&amp;D team and work together. Food will be provided and equipment will be given without any fee.</span>', '2014-07-11 17:00:00', 'MAKING-NEW-DESIGN-FOR-OUR-PRODUCT', 1, 1, 4, 1);

-- --------------------------------------------------------

--
-- Structure de la table `problem_rate`
--

CREATE TABLE IF NOT EXISTS `xyz_problem_rate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `problem_id` int(11) NOT NULL,
  `star` int(1) NOT NULL,
  `IP` varchar(20) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Contenu de la table `problem_rate`
--

INSERT INTO `xyz_problem_rate` (`id`, `problem_id`, `star`, `IP`, `time`) VALUES
(1, 1, 4, '14.169.17.205', '2014-07-04 02:00:11'),
(2, 1, 5, '123.21.50.86', '2014-07-04 04:19:08'),
(3, 1, 3, '222.253.84.54', '2014-07-04 14:12:08'),
(4, 1, 4, '115.72.157.228', '2014-07-04 14:22:34'),
(5, 1, 5, '123.20.179.1', '2014-07-06 04:01:55'),
(6, 2, 4, '222.253.84.54', '2014-07-08 16:50:50'),
(7, 3, 4, '222.253.84.54', '2014-07-08 17:08:10'),
(8, 4, 3, '222.253.84.54', '2014-07-08 17:47:33'),
(9, 4, 5, '14.169.17.205', '2014-07-09 02:55:35'),
(10, 3, 5, '123.21.32.14', '2014-07-09 02:55:38'),
(11, 3, 1, '14.169.17.205', '2014-07-09 02:55:54'),
(12, 4, 2, '123.21.32.14', '2014-07-09 02:56:15'),
(13, 3, 1, '123.20.179.1', '2014-07-09 06:42:10'),
(14, 4, 5, '123.20.179.1', '2014-07-09 06:42:31'),
(15, 3, 5, '123.20.157.169', '2014-07-12 13:11:26'),
(16, 1, 5, '123.20.157.169', '2014-07-12 13:13:37'),
(17, 4, 3, '1.53.209.159', '2014-07-14 14:24:09'),
(18, 1, 5, '123.20.177.226', '2014-07-21 06:10:15');

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE IF NOT EXISTS `xyz_slider` (
  `id` int(9) NOT NULL AUTO_INCREMENT,
  `img` varchar(150) NOT NULL,
  `order` int(4) NOT NULL DEFAULT '10',
  `is_show` tinyint(1) NOT NULL DEFAULT '1',
  `caption` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Contenu de la table `slider`
--

INSERT INTO `xyz_slider` (`id`, `img`, `order`, `is_show`, `caption`) VALUES
(1, 'dba34-banner03.jpg', 5, 1, '&Agrave; ha, pla pla pla'),
(2, '90b9a-1398739761theme-video.png', 5, 1, ''),
(3, 'f2951-2014-06-15_ht_comm_8410.jpg', 10, 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `xyz_user` (
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` int(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `user`
--

INSERT INTO `xyz_user` (`username`, `password`, `role`) VALUES
('bahai', 'bahai', 9),
('demo', 'tung', 3),
('leo', 'leo', 9),
('vuson', '199016', 9);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
