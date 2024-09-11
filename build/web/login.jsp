<%-- 
    Document   : login
    Created on : 29 ago 2024, 9:32:27
    Author     : Daniel
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="shortcut icon" href="img/favicon.png">
        <link rel="stylesheet" href="css/index.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Edu+AU+VIC+WA+NT+Hand&family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&family=Raleway:ital@1&display=swap"
            rel="stylesheet">
        <title>Login</title>
    </head>
    <body class="login-img3-body">

        <div class="container-fluid bg-dark">
            <div class="container-md" style="padding: 0px 50px;">

                <div class="header">

                </div>
                <div class="main"></div>
                <section class="wrapper">
                    <h3 class="page-header" style="margin-bottom: 5px; margin-top: 5px;"><i class="fa fa-file-text-o"></i> Inicio de Sesion</h3>
                    <section class="layout">
                        <form class="login-form" method="post" action="Login">
                            <div class="login-wrap">

                                <p class="login-img"><i class="icon_lock_alt"></i></p>
                                    <% if ((request.getAttribute("mensajeError") != null) && (!request.getAttribute("mensajeError").equals(""))) { %>
                                <h4 style="align-content: center; color: black">${mensajeError}</h4>
                                <% }%>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="icon_profile"></i></span>
                                    <input type="text" class="form-control" name="txtUsuario" placeholder="Usuario" autofocus>
                                </div>
                                <br>
                                <div class="input-group">
                                    <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                                    <input type="password" class="form-control" name="txtPass" placeholder="Password">
                                </div>
                                <br>
                                <input type="submit" class="btn btn-secondary btn-lg btn-block" value="Iniciar Sesion">
                                <a href="menuPrincipal.jsp" class="btn btn-black btn-lg btn-block">Cancelar</a>

                            </div>
                        </form>


                    </section>

                </section>
                <div class="footer">Pie de pagina</div>

            </div>
        </div>


        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
        crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/axios/0.18.0/axios.min.js"></script>


        <script src="https://code.jquery.com/jquery-3.6.0.min.js"  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="crossorigin="anonymous"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>


    </body>        

</html>
