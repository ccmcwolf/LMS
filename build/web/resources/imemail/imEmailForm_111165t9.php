<?php
if(substr(basename($_SERVER['PHP_SELF']), 0, 11) == "imEmailForm") {
	include '../res/x5engine.php';
	$form = new ImForm();
	$form->setField('Exam ID', $_POST['imObjectForm_1_1'], '', false);
	$form->setField('Exam Name', $_POST['imObjectForm_1_2'], '', false);
	$form->setField('Module ID', $_POST['imObjectForm_1_3'], '', false);
	$form->setField('Duration in hours', $_POST['imObjectForm_1_4'], '', false);
	$form->setField('Number of Questions', $_POST['imObjectForm_1_5'], '', false);

	if(@$_POST['action'] != 'check_answer') {
		if(!isset($_POST['imJsCheck']) || $_POST['imJsCheck'] != 'jsactive' || (isset($_POST['imSpProt']) && $_POST['imSpProt'] != ""))
			die(imPrintJsError());
		$db = getDbData('eo4258za');
		if (!$db)
			die("Cannot find db");
		if (!$form->saveToDb($db['host'], $db['user'], $db['password'], $db['database'], 'add_lecturer'))
			die("Unable to connect to db");
		@header('Location: ../index.html');
		exit();
	} else {
		echo $form->checkAnswer(@$_POST['id'], @$_POST['answer']) ? 1 : 0;
	}
}

// End of file