<?php
if(substr(basename($_SERVER['PHP_SELF']), 0, 11) == "imEmailForm") {
	include '../res/x5engine.php';
	$form = new ImForm();
	$form->setField('Content ID', $_POST['imObjectForm_2_1'], '', false);
	$form->setField('Module ID', $_POST['imObjectForm_2_2'], '', false);
	$form->setField('Heading', $_POST['imObjectForm_2_3'], '', false);
	$form->setField('Sub Heading', $_POST['imObjectForm_2_4'], '', false);
	$form->setField('Descriptions', $_POST['imObjectForm_2_5'], '', false);
	$fileResult = $form->setFile('Attach Content', $_FILES['imObjectForm_2_6'], $imSettings['general']['public_folder'], '', 'jpg');
	if ($fileResult == -1) { die(imPrintError('Cannot send file: Attach Content')); }
	if ($fileResult < -1) { die(imPrintError('"Attach Content" is in the wrong format.')); }

	if(@$_POST['action'] != 'check_answer') {
		if(!isset($_POST['imJsCheck']) || $_POST['imJsCheck'] != 'jsactive' || (isset($_POST['imSpProt']) && $_POST['imSpProt'] != ""))
			die(imPrintJsError());
		$db = getDbData('eo4258za');
		if (!$db)
			die("Cannot find db");
		if (!$form->saveToDb($db['host'], $db['user'], $db['password'], $db['database'], 'tmpcontent'))
			die("Unable to connect to db");
		@header('Location: ../index.html');
		exit();
	} else {
		echo $form->checkAnswer(@$_POST['id'], @$_POST['answer']) ? 1 : 0;
	}
}

// End of file