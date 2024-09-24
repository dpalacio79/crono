<%-- 
    Document   : index
    Created on : 2 ago 2024, 13:14:53
    Author     : daniel
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/favicon.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Edu+AU+VIC+WA+NT+Hand&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital@1&display=swap"
            rel="stylesheet">
        <link rel="stylesheet" type="text/css" href="css/index.css">

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

        <title>Cronometrajes</title>
    </head>

    <body>
        <script>
            $(document).ready(function () {
            $.ajax({
            url:"/Prueba",
                    type: "GET",
                    dataType: "json",
                    success: function (data) {
                    // Iterar sobre los datos y construir la tabla
                    var tabla = $("#tabla");
                    let contadorColumnas = 0;
                    $.each(data, function (index, data) {

                        if (contadorColumnas % 4 === 0) {
                        // Si el contador es múltiplo de 4, iniciamos una nueva fila
                            tabla.append("<tr>");
                        }
                        if (data.flyer===""){
                            data.flyer="https://picsum.photos/200/300";
                        }
                        var celda = "<td><img src='" + data.flyer + "' alt='" + data.nombre + "'><p>" + data.id + "</p><p>" + data.nombre + "</p></td>";
                            tabla.append(celda);
                            contadorColumnas++;
                        if (contadorColumnas % 4 === 0) {
                            // Si el contador es múltiplo de 4, cerramos la fila
                            tabla.append("</tr>");
                        }
                    });
    // Si sobran elementos y no se ha cerrado la última fila, la cerramos
                        if (contadorColumnas % 4 !== 0) {
                        tabla.append("</tr>");
                        }

                    //este es el script anterior 
                    //var fila = "<tr><td>" + producto.id + "</td><td>" + producto.nombre + "</td></tr>";
                    //tabla.append(fila);
                    //});
            }
            });
        });
        </script>
        <div class="container-fluid bg-dark">
            <div class="container-md" style="padding: 0px 50px;">

                <div class="header">

                </div>
                <div class="nav nav-pills botones d-flex flex-row">
                    <button type="button" class="btn p-2" disabled>Alta</button>
                    <button type="button" class="btn btn-outline-light p-2" disabled>Clasificaciones</button>
                    <button type="button" class="btn btn-outline-light p-2" disabled>Carga de Datos</button>
                </div>
                <div class="main"></div>
                <!--div class="formulario">
                    <h4>Subir JSON</h4>

                    <form id="myForm" onsubmit="return CargarJSON()">
                        <input type="file" name="archivo" id="file-input">
                        <input type="submit" value="Cargar">
                    </form>


                </div-->
                <div class="tablaClass">
                    <table class="table table-dark" id="tabla">
                        <thead>
                            <tr>
                                <th>Categoria</th>
                                <th>Corredor</th>
                                <th>Documento</th>
                                <th>Equipo</th>
                                <th>Peso</th>
                                <th>Ciudad</th>
                            </tr>
                        </thead>
                    </table>
                </div>
                <div class="footer">3</div>

            </div>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>
     <!--   <script>
            const elemento = document.getElementById("file-input")

                    elemento.addEventListener('change', (event) => {
                    const file = event.target.files[0];
                    const reader = new FileReader();
                    reader.onload = () => {
                    const jsonContent = reader.result;
                    const jsonData = JSON.parse(jsonContent);
                    fetch('Personas', {
                    method: 'POST',
                            headers: {
                            'Content-Type': 'application/json'
                            },
                            body: JSON.stringify(jsonData)
                    })
                            .then(response => response.json())
                            .then(data => {
                            // Procesar    la respuesta del servidor
                            })
                            .catch(error => {
                            // Manejar errores
                            });
                    };
                    //////////cargar tabla
                    const tabla = document.getElementById('tabla');
                    jsonData.forEach(item => {
                    const fila = document.createElement("tr");
                    // Crear celdas para cada propiedad
                    const celdaCat = document.createElement('td');
                    celdaCat.textContent = item.Cat;
                    const celdaNombre = document.createElement('td');
                    celdaNombre.textContent = item.Co1;
                    const celdaDNI = document.createElement('td');
                    celdaDNI.textContent = item.Do1;
                    const celdaEquipo = document.createElement('td');
                    celdaEquipo.textContent = item.Equ;
                    const celdaCiudad = document.createElement('td');
                    celdaCiudad.textContent = item.Nro;
                    const celdaPeso = document.createElement('td');
                    celdaPeso.textContent = item.Lo1;
                    // Agregar las celdas a la fila
                    fila.appendChild(celdaCat);
                    fila.appendChild(celdaNombre);
                    fila.appendChild(celdaDNI);
                    fila.appendChild(celdaEquipo);
                    fila.appendChild(celdaCiudad);
                    fila.appendChild(celdaPeso);
                    // Agregar la fila a la tabla
                    tabla.appendChild(fila);
                    });
                    // Ahora puedes trabajar con los datos del JSON
                    console.log(jsonData); // Accediendo a una propiedad del JSON
                    // ... otras operaciones con los datos
                    };
                    reader.readAsText(file);
                    });
        </script>
     -->
        <script src="js/crono.js"></script>
    </body>


</html>
