<?php
ini_set('display_errors', 1);
ini_set('log_errors', 1);
ini_set('error_log', dirname(__FILE__) . '/error_log.txt');
error_reporting(E_ALL);

//header('Content-Type: text/html; charset=UTF');

if (isset($_POST['e']) and strlen($_POST['e']) > 1) {
	// Abri conexão
	$mysqli = new mysqli('localhost', 'juakadb', 'juaka123', 'testeAjax');

	$sql = "SELECT cidade FROM cidade WHERE estado = ?";

	if ($prepare = $mysqli->prepare($sql)) {
		$prepare->bind_param("s", $_POST['e']);

		$prepare->execute();
		$prepare->bind_result($cidade);
		$carregar = "";

		while ($prepare->fetch()) {
			// Carregar
			$carregar .= "<option value=\" ".$cidade. "\">" . $cidade . "</option>";
		}
		echo utf8_encode($carregar);
	}
	$mysqli.close();
}