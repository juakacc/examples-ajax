
function carregarCidade() {
	var httpRequest = new XMLHttpRequest();
	var estado = document.getElementById("estado").value;

	httpRequest.onreadystatechange = function() {
		if (this.readyState == 4 && this.status == 200) {
			var response = this.responseText;
			// carregar no html
			document.getElementById("cidade").innerHTML = response;
		}
	}
	httpRequest.open("POST", "loadCidade.php", true);
	httpRequest.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	httpRequest.send("e=" + estado);
}

window.onload = carregarCidade;