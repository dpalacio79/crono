<%-- 
    Document   : altaCompetencia
    Created on : 14 ago 2024, 13:07:12
    Author     : daniel
--%>
<%@page import="java.util.ArrayList"%>

<%@page import="Controller.GestorDB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/index.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Edu+AU+VIC+WA+NT+Hand&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital@1&display=swap"
            rel="stylesheet">
        <title>Cronometrajes</title>
    </head>

    <body>
        <%
            String mensaje = (String) request.getAttribute("alta");
            if (mensaje != null && mensaje.equals("OK")) {
                out.println("Competencia guardada correctamente.");
            } else if (mensaje != null) {
                out.println("No se guardó la competencia.");
            }
        %>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
        <div class="container-fluid bg-dark">
            <div class="container-md" style="padding: 0px 50px;">

                <div class="header">

                </div>
                <div class="nav nav-pills botones d-flex flex-row">
                    <button type="button" class="btn p-2" disabled>Alta de Competencia</button>
                    <button type="button" class="btn btn-outline-light p-2" enabled>Carga de Resultados</button>
                    <button type="button" class="btn btn-outline-light p-2" enabled>Clasificaciones</button>
                </div>
                <div class="main"></div>
                <section class="wrapper">
                    <h3 class="page-header" style="margin-bottom: 5px; margin-top: 5px;"><i class="fa fa-file-text-o"></i> Nueva Competencia</h3>
                    <section class="layout">
                        <div class="grow1"></div>
                        <div class="grow1 text-light text-right">
                            <form class="form-horizontal " method="POST" action="Competencias" name="propFormulario" id="propFormulario">
                                <div class="form-group">
                                    <label class="control-label text-right">Nombre de Competencia</label>
                                    <input type="text" name="nombre" id="nombre" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label text-right">Lugar</label>
                                    <input type="text" name="lugar" id="lugar" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label text-right">Descripcion</label>
                                    <input type="text" name="descripcion" id="descripcion" class="form-control">
                                </div>
                                <div class="form-group">
                                    <label class="control-label">Fecha</label>
                                    <input type="date" name="fecha" id="fecha" class="form-control" required>
                                </div>
                                <br>

                                <input type="submit" class="btn btn-secondary" value="Cargar Competencia" id="submitBoton"> 
                                <a href="Menu" class="btn btn-danger">Cancelar</a>
                            </form>
                        </div>
                        <div class="grow1"></div>
                    </section>

                </section>
                <div class="footer">Pie de pagina</div>

            </div>
        </div>



        <script>
            function validar() {
                let nombre = document.getElementById('nombre');
                let lugar = document.getElementById('lugar');
                let fecha = document.getElementById('fecha');
                let hoy = Date.parse(new Date());

                if (nombre.value.trim() === "") {
                    alert('El campo "Nombre" es obligatorio.');
                    nombre.focus();
                    return false;
                }
                if (lugar.value.trim() === "") {
                    alert('El campo "Lugar" es obligatorio.');
                    lugar.focus();
                    return false;
                }
                if (Date.parse(fecha.value) < hoy) {
                    alert("La fecha ingresada no puede ser anterior a la fecha de hoy.");
                    fecha.focus();
                    return false;
                }

                // Todas las validaciones pasaron
                return true;
            }

// Obtener el botón de envío por su ID
            let submitButton = document.getElementById('submitBoton');

// Agregar un event listener al botón
            submitButton.addEventListener('click', function (event) {
                if (!validar()) {
                    event.preventDefault(); // Evitar envío del formulario
                }
            });

        </script>



        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>


        <script src="https://code.jquery.com/jquery-3.6.0.min.js"  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>

    </body>
</html>
