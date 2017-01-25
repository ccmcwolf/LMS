<?php
if(substr(basename($_SERVER['PHP_SELF']), 0, 11) == "imEmailForm") {
	include '../res/x5engine.php';
	$form = new ImForm();
	$form->setField('Student ID', $_POST['imObjectForm_4_1'], '', false);
	$form->setField('Student Name', $_POST['imObjectForm_4_2'], '', false);
	$form->setField('Date of Birth', $_POST['imObjectForm_4_3'], '', false);
	$form->setField('Address', $_POST['imObjectForm_4_4'], '', false);
	$form->setField('Contact Number', $_POST['imObjectForm_4_5'], '', false);

	if(@$_POST['action'] != 'check_answer') {
		if(!isset($_POST['imJsCheck']) || $_POST['imJsCheck'] != 'jsactive' || (isset($_POST['imSpProt']) && $_POST['imSpProt'] != ""))
			die(imPrintJsError());
		$db = getDbData('eo4258za');
		if (!$db)
			die("Cannot find db");
		if (!$form->saveToDb($db['host'], $db['user'], $db['password'], $db['database'], 'course'))
			die("Unable to connect to db");
		@header('Location: ../index.html');
		exit();
	} else {
		echo $form->checkAnswer(@$_POST['id'], @$_POST['answer']) ? 1 : 0;
	}
}

// End of file