<?php
if(substr(basename($_SERVER['PHP_SELF']), 0, 11) == "imEmailForm") {
	include '../res/x5engine.php';
	$form = new ImForm();
	$form->setField('Assignment ', $_POST['imObjectForm_1_1'], '', false);
	$fileResult = $form->setFile('Upload Attachment', $_FILES['imObjectForm_1_2'], $imSettings['general']['public_folder'], '', 'pdf,ppt,doc,docx,xlsx,xls,pptx,jpg');
	if ($fileResult == -1) { die(imPrintError('Cannot send file: Upload Attachment')); }
	if ($fileResult < -1) { die(imPrintError('"Upload Attachment" is in the wrong format.')); }

	if(@$_POST['action'] != 'check_answer') {
		if(!isset($_POST['imJsCheck']) || $_POST['imJsCheck'] != 'jsactive' || (isset($_POST['imSpProt']) && $_POST['imSpProt'] != ""))
			die(imPrintJsError());
		$db = getDbData('eo4258za');
		if (!$db)
			die("Cannot find db");
		if (!$form->saveToDb($db['host'], $db['user'], $db['password'], $db['database'], 'uploadfile'))
			die("Unable to connect to db");
		@header('Location: ../index.html');
		exit();
	} else {
		echo $form->checkAnswer(@$_POST['id'], @$_POST['answer']) ? 1 : 0;
	}
}

// End of file