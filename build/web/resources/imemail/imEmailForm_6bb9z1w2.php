<?php
if(substr(basename($_SERVER['PHP_SELF']), 0, 11) == "imEmailForm") {
	include '../res/x5engine.php';
	$form = new ImForm();
	$form->setField('Assignment ID', $_POST['imObjectForm_2_1'], '', false);
	$form->setField('Course ID', $_POST['imObjectForm_2_2'], '', false);
	$form->setField('Assignment Name', $_POST['imObjectForm_2_3'], '', false);
	$form->setField('Sumbission Closing Date', $_POST['imObjectForm_2_4'], '', false);
	$fileResult = $form->setFile('Reference Materials', $_FILES['imObjectForm_2_5'], $imSettings['general']['public_folder'], '', 'pdf,jpg,jpeg,png,zip,docx,doc,xls,xlsx,ppt,pptx');
	if ($fileResult == -1) { die(imPrintError('Cannot send file: Reference Materials')); }
	if ($fileResult < -1) { die(imPrintError('"Reference Materials" is in the wrong format.')); }

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