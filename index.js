$(document).ready(function() {

    //Verificar que se elijan al menos 2 checkbox
    document.querySelector("form").addEventListener("submit", function(event) {
        var opcionesSeleccionadas = document.querySelectorAll("input[type=checkbox]:checked").length;
        var checkboxInfo = $("#checkbox-info");
        //muestra texto si hay menos de 2 checkbox seleccionados
        if (opcionesSeleccionadas < 2) {
            event.preventDefault();
            checkboxInfo.text("Por favor Selecciona al menos 2 opciones");
            checkboxInfo.css("color", "red");
        }
    });
    
    //verificar Rut
    $("#Rut").on("input", function() {
        var rutInput = $(this);
        var rut = rutInput.val().replace(/\./g, "").replace(/-/g, ""); //eliminar puntos y guion
        var cuerpo = rut.slice(0, -1);
        var verificador = rut.slice(-1).toUpperCase();

        var rutInfoLabel = $("#rut-info");
        //muestra texto segun estado de rut (valido/invalido)

        // Validar el formato del RUT con la expresión regular
        if (!/^\d{1,2}\.\d{3}\.\d{3}-[0-9kK]{1}$/.test(rutInput.val())) {
            // Mostrar mensaje de error
            rutInput.addClass("invalido");
            rutInput.removeClass("valido");
            rutInfoLabel.text("RUT inválido EJ: XX.XXX.XXX-X");
            rutInfoLabel.css("color", "red");
        } else {
            // Verificar el dígito verificador
            var suma = 0;
            var factor = 2;
            for (var i = cuerpo.length - 1; i >= 0; i--) {
                suma += parseInt(cuerpo.charAt(i)) * factor;
                factor = factor === 7 ? 2 : factor + 1;
            }
            var digitoCalculado = 11 - (suma % 11);
            if ((digitoCalculado === 10 && verificador === "K") || (digitoCalculado === 11 && verificador === "0") || digitoCalculado === parseInt(verificador)) {
                // Mostrar mensaje de RUT válido
                rutInput.removeClass("invalido");
                rutInput.addClass("valido");
                rutInfoLabel.text("RUT válido");
                rutInfoLabel.css("color", "green");
            } else {
                // Mostrar mensaje de error
                rutInput.addClass("invalido");
                rutInput.removeClass("valido");
                rutInfoLabel.text("RUT inválido EJ: XX.XXX.XXX-X");
                rutInfoLabel.css("color", "red");
            }
        }
    });


    // Cargar  Candidatos desde BD
    $.get("candidatos.php", function(data) {
        $("#Candidato").append(data);
    });

    // Cargar  regiones desde BD
    $.get("regiones.php", function(data) {
        $("#Region").append(data);
    });

    // Actualizar comunas al seleccionar región
    $("#Region").change(function() {
        var region_id = $(this).val();
        $.get("comunas.php", { region_id: region_id }, function(data) {
            $("#Comuna").html(data);
        });
    });

});