-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 15, 2013 at 07:05 AM
-- Server version: 5.5.32
-- PHP Version: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `quiz`
--
CREATE DATABASE IF NOT EXISTS `quiz` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `quiz`;

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE IF NOT EXISTS `answer` (
  `id` varchar(1) NOT NULL,
  `question_id` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `isright` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`,`question_id`),
  KEY `question_id` (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`id`, `question_id`, `content`, `isright`) VALUES
('A', 6, 'Standard tag', 1),
('A', 7, '!==', 1),
('A', 8, '74', 1),
('A', 10, 'false', 0),
('A', 11, 'script, function and class', 0),
('A', 12, 'x = 2 y = 3', 1),
('A', 15, '&lt;js&gt;', 0),
('A', 16, 'echo &quot;Hello World&quot;;', 0),
('A', 17, 'The &lt;head&gt; section', 0),
('A', 18, '&lt;script href=&quot;xxx.js&quot;&gt;', 0),
('A', 19, 'True', 1),
('A', 20, 'alertBox(&quot;Hello World&quot;);', 0),
('A', 21, 'function:myFunction()', 0),
('A', 22, 'call myFunction()', 0),
('A', 23, 'if i==5 then', 0),
('A', 24, 'if (i != 5)', 1),
('A', 25, 'while (i&lt;=10;i++)', 0),
('A', 26, 'for (i &lt;= 5; i++)', 0),
('A', 27, '//This is a comment', 1),
('A', 28, '&lt;!--This comment has more than one line--&gt;', 0),
('A', 29, 'var txt = new Array:1=(&quot;tim&quot;)2=(&quot;kim&quot;)3=(&quot;jim&quot;)', 0),
('A', 30, 'round(7.25)', 0),
('A', 31, 'Math.max(x,y)', 1),
('A', 32, 'w2=window.open(&quot;http://www.w3schools.com&quot;);', 1),
('A', 33, 'True', 0),
('A', 34, 'client.navName', 0),
('A', 35, 'X-Markup Language', 0),
('A', 36, 'XML uses a description node to describe data', 0),
('A', 37, 'True', 0),
('B', 6, 'ASP tag', 0),
('B', 7, '===', 0),
('B', 8, '154', 0),
('B', 10, 'true', 1),
('B', 11, 'class, global and script', 0),
('B', 12, 'x = 2 y = 2', 0),
('B', 15, '&lt;javascript&gt;', 0),
('B', 16, 'response.write(&quot;Hello World&quot;);', 0),
('B', 17, 'The &lt;body&gt; section', 0),
('B', 18, '&lt;script src=&quot;xxx.js&quot;&gt;', 1),
('B', 19, 'False', 0),
('B', 20, 'msg(&quot;Hello World&quot;);', 0),
('B', 21, 'function=myFunction()', 0),
('B', 22, 'myFunction()', 1),
('B', 23, 'if i=5', 0),
('B', 24, 'if i&lt;&gt;5', 0),
('B', 25, 'while i=1 to 10', 0),
('B', 26, 'for (i = 0; i &lt;= 5)', 0),
('B', 27, '&lt;!--This is a comment--&gt;', 0),
('B', 28, '/*This comment has more than one line*/', 1),
('B', 29, 'var txt = new Array(1:&quot;tim&quot;,2:&quot;kim&quot;,3:&quot;jim&quot;)', 0),
('B', 30, 'Math.round(7.25)', 1),
('B', 31, 'Math.ceil(x,y)', 0),
('B', 32, 'w2=window.new(&quot;http://www.w3schools.com&quot;);', 0),
('B', 33, 'False', 1),
('B', 34, 'navigator.appName', 1),
('B', 35, 'Example Markup Language', 0),
('B', 36, 'XML uses XSL to describe data', 0),
('B', 37, 'False', 1),
('C', 6, 'Script tag', 0),
('C', 7, '!=', 0),
('C', 8, '26', 0),
('C', 10, 'The script will throw an error message.', 0),
('C', 11, 'global, function and class', 1),
('C', 12, 'x = 2 y = 1', 1),
('C', 15, '&lt;scripting&gt;', 0),
('C', 16, 'document.write(&quot;Hello World&quot;);', 1),
('C', 17, 'Both the &lt;head&gt; section and the &lt;body&gt; section are correct', 1),
('C', 18, '&lt;script name=&quot;xxx.js&quot;&gt;', 0),
('C', 20, 'msgBox(&quot;Hello World&quot;);', 0),
('C', 21, 'function myFunction()', 1),
('C', 22, 'call function myFunction()', 0),
('C', 23, 'if (i==5)', 1),
('C', 24, 'if i=! 5 then', 0),
('C', 25, 'while (i&lt;=10)', 1),
('C', 26, 'for i = 1 to 5', 0),
('C', 27, 'This is a comment', 0),
('C', 28, '//This comment has more than one line//', 0),
('C', 29, 'var txt = new Array(&quot;tim&quot;,&quot;kim&quot;,&quot;jim&quot;)', 1),
('C', 30, 'rnd(7.25)', 0),
('C', 31, 'ceil(x,y)', 0),
('C', 34, 'browser.name', 0),
('C', 35, 'eXtensible Markup Language', 1),
('C', 36, 'XML uses a DTD to describe the data', 1),
('D', 6, 'Short tag', 0),
('D', 7, '==', 0),
('D', 8, '130', 0),
('D', 10, 'true false', 0),
('D', 11, 'global, script and function', 0),
('D', 12, 'x = 1 y = 3', 1),
('D', 15, '&lt;script&gt;', 1),
('D', 16, '(&quot;Hello World&quot;);', 0),
('D', 20, 'alert(&quot;Hello World&quot;);', 1),
('D', 23, 'if i=5 then', 0),
('D', 24, 'if (i &lt;&gt; 5)', 0),
('D', 26, 'for (i = 0; i &lt;= 5; i++)', 1),
('D', 29, 'var txt = new Array=&quot;tim&quot;,&quot;kim&quot;,&quot;jim&quot;', 0),
('D', 30, 'Math.rnd(7.25)', 0),
('D', 31, 'top(x,y)', 0),
('D', 35, 'eXtra Modern Link', 0),
('E', 12, 'x = 1 y = 2', 1),
('F', 12, 'x = 1 y = 1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE IF NOT EXISTS `question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` int(1) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `subject_id` (`subject_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=38 ;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id`, `content`, `type`, `subject_id`, `time`) VALUES
(6, 'Consider the following script:\r\n<pre> <code data-language="php">&lt;html&gt;\r\n&lt;head&gt;\r\n&lt;title&gt;\r\n       This is a test script.\r\n&lt;/title&gt;\r\n&lt;/head&gt;\r\n&lt;body&gt;\r\n&lt;?php\r\n    echo ''This is some sample text'';\r\n?&gt;\r\n&lt;/body&gt;\r\n&lt;/html&gt;\r\n</code>\r\n</pre>\r\nWhich of the following tags is used in the php script?', 1, 1, '2013-09-12 15:36:57'),
(7, 'Which of the following equivalence operations evaluates to true if the two operands are not of the same data type or do not have the same value?', 1, 1, '2013-09-12 05:31:35'),
(8, 'Consider the following code:\r\n<pre><code data-language="php">&lt;?php   \r\n    $a=5;\r\n    $b=12;\r\n    $c=10;\r\n    $d=7;\r\n    $e=($a*$b)+$c*$d/$a;\r\n    print($e);\r\n?&gt;\r\n</code></pre>\r\nWhat will be the output of the above code?', 1, 1, '2013-09-12 15:36:57'),
(10, 'You work as a Web Developer for Remote Inc. What will be the output when you try to run the script below?\r\n<pre><code data-language="php">&lt;?php\r\n    $b = false;\r\n    if($b = true)\r\n      print(&quot;true&quot;);\r\n    else\r\n      print(&quot;false&quot;);\r\n?&gt;</code></pre>', 1, 1, '2013-09-12 15:26:16'),
(11, 'Which of the following options is/are correct regarding variable scopes in PHP?', 1, 1, '2013-09-12 06:48:28'),
(12, 'You run the following PHP script:\r\n<pre><code data-language="php">&lt;?php\r\nfor($x = 1; $x &lt;= 2; $x++){\r\n      for($y = 1; $y &lt;= 3; $y++){\r\n         if ($x == $y) continue; \r\n         print(&quot;x = $x  y =  $y&quot;);\r\n      }\r\n   }\r\n?&gt;</code></pre>\r\nWhat will be the output? Each correct answer represents a complete solution. Choose all that apply.', 2, 1, '2013-09-12 15:25:20'),
(15, 'Inside which HTML element do we put the JavaScript?', 1, 12, '2013-09-13 09:03:31'),
(16, 'What is the correct JavaScript syntax to write "Hello World"?', 1, 12, '2013-09-13 09:05:22'),
(17, 'Where is the correct place to insert a JavaScript?', 1, 12, '2013-09-13 09:06:25'),
(18, 'What is the correct syntax for referring to an external script called "xxx.js"?', 1, 12, '2013-09-13 09:08:04'),
(19, 'The external JavaScript file must contain the &lt;script&gt; tag', 1, 12, '2013-09-13 09:11:48'),
(20, 'How do you write "Hello World" in an alert box?', 1, 12, '2013-09-13 09:09:25'),
(21, 'How do you create a function in JavaScript?', 1, 12, '2013-09-13 09:10:05'),
(22, 'How do you call a function named "myFunction"?', 1, 12, '2013-09-13 09:10:41'),
(23, 'How to write an IF statement in JavaScript?', 1, 12, '2013-09-13 09:14:42'),
(24, 'How to write an IF statement for executing some code if &quot;i&quot; is NOT equal to 5?', 1, 12, '2013-09-13 09:15:16'),
(25, 'How does a WHILE loop start?', 1, 12, '2013-09-13 09:16:00'),
(26, 'How does a FOR loop start?', 1, 12, '2013-09-13 09:16:37'),
(27, 'How can you add a comment in a JavaScript?', 1, 12, '2013-09-13 09:17:07'),
(28, 'How to insert a comment that has more than one line?', 1, 12, '2013-09-13 09:17:34'),
(29, 'What is the correct way to write a JavaScript array?', 1, 12, '2013-09-13 09:18:13'),
(30, 'How do you round the number 7.25, to the nearest integer?', 1, 12, '2013-09-13 09:18:51'),
(31, 'How do you find the number with the highest value of x and y?', 1, 12, '2013-09-13 09:19:32'),
(32, 'What is the correct JavaScript syntax for opening a new window called &quot;w2&quot; ?', 1, 12, '2013-09-13 09:21:03'),
(33, 'JavaScript is the same as Java.', 1, 12, '2013-09-13 09:21:29'),
(34, 'How can you detect the client''s browser name?', 1, 12, '2013-09-13 09:22:05'),
(35, 'What does XML stand for?', 1, 13, '2013-09-13 17:17:37'),
(36, 'There is a way of describing XML data, how?', 1, 13, '2013-09-13 17:21:17'),
(37, 'XML''s goal is to replace HTML', 1, 13, '2013-09-13 17:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE IF NOT EXISTS `subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `public` tinyint(1) NOT NULL DEFAULT '0',
  `slug` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `slug` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `public`, `slug`) VALUES
(1, 'PHP Basics', 1, 'php-basics'),
(11, 'hoa hoè', 0, 'te-le'),
(12, 'Javascript', 1, 'Javascript'),
(13, 'XML', 1, 'XML');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`) VALUES
(1, 'leo', 'leo', 0),
(2, 'khank', 'khank', 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answer`
--
ALTER TABLE `answer`
  ADD CONSTRAINT `answer_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `question` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
