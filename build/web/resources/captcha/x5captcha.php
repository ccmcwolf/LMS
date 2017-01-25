<?php
include("../res/x5engine.php");
$nameList = array("r57","ul4","5f7","chc","xyh","ayd","3dg","t28","skp","p6t");
$charList = array("S","8","E","Y","Y","6","2","W","X","F");
$cpt = new X5Captcha($nameList, $charList);
//Check Captcha
if ($_GET["action"] == "check")
	echo $cpt->check($_GET["code"], $_GET["ans"]);
//Show Captcha chars
else if ($_GET["action"] == "show")
	echo $cpt->show($_GET['code']);
// End of file x5captcha.php
