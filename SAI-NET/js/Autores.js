// JavaScript Document
$(document).ready(inicializarEventos);
function inicializarEventos() {
	// var x;
	// x = $("#boton1");
	// x.click(Mostrar);

	// var R;
	// R = $("#boton2");
	// R.click(Ocultar);

	$("#boton1").click(Mostrar);
	$("#boton2").click(Ocultar);
	$("#boton3").click(Aparecer);
	$("#boton4").click(Desaparecer);
	$("#boton5").click(Agrandar);
	$("#boton6").click(Achicar);
	$("#boton7").click(CambiarFondo);
	$("#boton8").click(Aclarar);
	$("#boton9").click(Oscurecer);
	$("#boton10").click(MostrarOcultar);
}

function Mostrar() {
	$("#cuadro").show("slow");
}

function Ocultar() {
	$("#cuadro").hide("slow");
}

function Aparecer() {
	$("#cuadro").fadeIn("slow");
}

function Desaparecer() {
	$("#cuadro").fadeOut("slow");

}

function Agrandar() {
	$("#cuadro").css("width", "1000px");
	$("#cuadro").css("height", "1000px");
}
function Achicar() {
	$("#cuadro").css("width", "250px");
	$("#cuadro").css("height", "250px");
}
function CambiarFondo() {
	$("#cuadro").css("background-color", "#0C0");
}
function Aclarar() {
	$("#cuadro").fadeTo("slow", 0.2);
}
function Oscurecer() {
	$("#cuadro").fadeTo("slow", 1);
}
function MostrarOcultar() {
	$("#cuadro").toggle("slow");
}
