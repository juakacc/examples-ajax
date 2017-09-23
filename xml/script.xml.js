var atual = -1;
carregar(next);

function carregar(funcao) {
	var httpRequest = new XMLHttpRequest();

	httpRequest.onreadystatechange = function () {
		if (httpRequest.readyState == 4 && httpRequest.status == 200) {
			funcao(this);
		}
	}
	httpRequest.open("GET", "carros.xml", true);
	httpRequest.send();
}

function todos(httpRequest) {
	var table = "<tr><th>Marca</th><th>Modelo</th><th>Ano</th><th>Valor</th></tr>";

	var resposta = httpRequest.responseXML;
	var xml = resposta.getElementsByTagName("CARRO");

	for (i = 0; i < xml.length; i++) {
		table += "<tr><td>" + 
		xml[i].getElementsByTagName("MARCA")[0].childNodes[0].nodeValue + 
		"</td><td>" +
		xml[i].getElementsByTagName("MODELO")[0].childNodes[0].nodeValue +
		"</td><td>" +
		xml[i].getElementsByTagName("ANO")[0].childNodes[0].nodeValue +
		"</td><td>" +
		xml[i].getElementsByTagName("VALOR")[0].childNodes[0].nodeValue
		"</td></tr>";
	}
	document.getElementById("carros").innerHTML = table;
}

function especifico(request) {
	
	var i = document.getElementById("index").value;
	
	resposta = request.responseXML;
	var xml = resposta.getElementsByTagName("CARRO");

	if (i >= 0 && i < xml.length) {
		atual = i;
		um_a_um(xml, i);
	}
}

function next(httpRequest) {
	resposta = httpRequest.responseXML;
	xml = resposta.getElementsByTagName("CARRO");

	if (atual < xml.length) {
		atual++;
		um_a_um(xml, atual);
	}
}

function previous(httpRequest) {
	resposta = httpRequest.responseXML;
	xml = resposta.getElementsByTagName("CARRO");

	if (atual > 0) {
		atual--;
		um_a_um(xml, atual);
	}
}

function um_a_um(xml, i) {
	var table = "<tr><th>Marca</th><th>Modelo</th><th>Ano</th><th>Valor</th></tr>";
	table += "<tr><td>"+xml[i].getElementsByTagName("MARCA")[0].childNodes[0].nodeValue + "</td>"
			+ "<td>"+xml[i].getElementsByTagName("MODELO")[0].childNodes[0].nodeValue + "</td>" +
			"<td>"+xml[i].getElementsByTagName("ANO")[0].childNodes[0].nodeValue + "</td>" + 
			"<td>"+xml[i].getElementsByTagName("VALOR")[0].childNodes[0].nodeValue + "</td></tr>";

	document.getElementById("carros").innerHTML = table;
}