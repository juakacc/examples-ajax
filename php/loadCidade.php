<?php
if (isset($_GET['e']) and strlen($_GET['e']) > 1) {
	// Abri conexão
	$mysqli = new mysqli();

	$sql = "SELECT * FROM cidade WHERE estado = ?";

	if ($prepare = $mysqli.prepare($sql)) {
		$prepare.bind_param("s", $_GET['e']);

		$result = $prepare->execute();

		$carregar = "";

		while ($now = $result.array_fetch_assoc()) {
			// Carregar
			$carregar .= "<option value=". $now['cidade'] .">" . $now['cidade'] . "</option>";
		}
		echo $carregar;
	}
	$mysqli.close();
}