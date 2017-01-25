<?php
if(substr(basename($_SERVER['PHP_SELF']), 0, 11) == "imEmailForm") {
	include '../res/x5engine.php';
	$form = new ImForm();
	$form->setField('Batch Name', $_POST['imObjectForm_1_1'], '', false);
	$form->setField('Course ', $_POST['imObjectForm_1_2'], '', false);
	$form->setField('Start', $_POST['imObjectForm_1_3'], '', false);

	if(@$_POST['action'] != 'check_answer') {
		if(!isset($_POST['imJsCheck']) || $_POST['imJsCheck'] != 'jsactive' || (isset($_POST['imSpProt']) && $_POST['imSpProt'] != ""))
			die(imPrintJsError());
		$db = getDbData('eo4258za');
		if (!$db)
			die("Cannot find db");
		if (!$form->saveToDb($db['host'], $db['user'], $db['password'], $db['database'], 'tmpbatch'))
			die("Unable to connect to db");
		@header('Location: ../index.html');
		exit();
	} else {
		echo $form->checkAnswer(@$_POST['id'], @$_POST['answer']) ? 1 : 0;
	}
}

// End of file