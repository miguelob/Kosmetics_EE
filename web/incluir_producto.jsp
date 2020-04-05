<%--
  Created by IntelliJ IDEA.
  User: alexr
  Date: 03/04/2020
  Time: 19:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <jsp:include page="head.jsp"/>
    <title>Añadir producto · Kosmetics</title>
</head>
<body>
    <jsp:include page="cabecera.jsp"/>
        <form class="needs-validation justify-content-center" novalidate method="POST" action="addProduct">
            <div class="col-8 m-auto">
                <div id="titelIncluirProducto" class="panel-body py-auto mt-3 rounded">
                    <h1 class="text-center py-3 mt-5 "><strong>Añada un nuevo producto!!</strong></h1>
                </div>
                <h3 class="text-left text-muted pt-5 pb-1 px-3">Información general</h3>
                <div class="form-row py-2">
                    <label for="productName">Nombre</label>
                    <input type="text" class="form-control" id="productName" placeholder="Hello Happy Foundation" value="nombre" required name="name">
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="form-row py-2">
                    <label for="productDecripcion">Descripción</label>
                    <!--<input type="text" class="form-control" id="productDecripcion" placeholder="Base de maqullaje fluida con cobertura media /n SPF 15 PA++" value="descripcion" required>-->
                    <textarea class="form-control" id="productDecripcion" placeholder="Base de maqullaje fluida con cobertura media. SPF 15 PA++" rows="3" required name = "descripcion"></textarea>
                    <div class="valid-feedback">
                        Looks good!
                    </div>
                </div>
                <div class="form-row py-2">

                    <label for="productCategoria">Categoría</label>
                    <select id="productCategoria" class="custom-select" required name = "categoria">
                        <option value="bases" >bases</option>
                        <option value="máscaras de pestañas" >máscaras de pestañas</option>
                        <option value="pintalabios" >pintalabios</option>
                        <option value="sombras de ojos" >sombras de ojos</option>
                        <option value="pestañas postizas" >pestañas postizas</option>
                        <option value="contouring" >contouring</option>
                        <option value="colorete" >colorete</option>
                        <option value="cejas" >cejas</option>
                        <option value="correctores" >correctores</option>
                        <option value="eyeliner" >eyeliner</option>

                    </select>
                    <div class="invalid-feedback">
                        Debe asignar el producto a alguna categoría.
                    </div>
                </div>
                <div class="form-row">
                    <label for="productColores">Colores disponibles</label>
                    <input type="text" class="form-control" id="productColores" placeholder="fdeec7;fde457;ab11c7;11d5c7;" required name = "colores">
                    <div class="invalid-feedback">
                        Porfavor introduzca los colores en código hexadecimal separado por ';'.
                    </div>
                </div>

                <h3 class="text-left text-muted pt-5 pb-1 px-3">Información de venta</h3>
                <div class="form-row py-2">
                    <label for="productMarca">Marca</label>
                    <select id="productMarca" class="custom-select" required name = "marca">
                        <c:forEach var="brand" items="${sessionScope.brands}">
                            <option value=${brand} >${brand} </option>
                        </c:forEach>
                    </select>
                    <div class="invalid-feedback">
                        Debe asignar el producto a alguna categoría.
                    </div>
                </div>
                <div class="form-row pb-2 pt-0">
                    <label for="prodictPrecio">Precio</label>
                    <input type="text" class="form-control" id="prodictPrecio" placeholder="4,6" required name = "precio">
                    <div class="invalid-feedback">
                        Valor numérico invalido.
                    </div>
                </div>

                <div class="col-10">
                    <h6 class="text-left pt-1 pb-0">Ofertas</h6>
                    <div class="form-row">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="productOferta4" value="Sin oferta" name = "oferta" >
                            <label class="form-check-label" for="productOferta4">
                                sin oferta
                            </label>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="productOferta1" value="Envio gratis" name = "oferta" checked>
                            <label class="form-check-label" for="productOferta1">
                                envio gratis
                            </label>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="productOferta2" value="promocion gratuita" name = "oferta" >
                            <label class="form-check-label" for="productOferta2">
                                promoción gratuita
                            </label>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="form-check">
                            <input class="form-check-input" type="radio" name="gridRadios" id="productOferta3" value="descuento" name = "oferta">
                            <label class="form-check-label" for="productOferta3">
                                descuento
                            </label>
                        </div>
                    </div>

                </div>

                <h3 class="text-left text-muted mt-5 pb-1 px-3">Personalice las opciones de feedback</h3>
                <div class="form-row py-2">
                    <label for="productCaracteristicas">¿Que características desea resaltar del producto?</label>
                    <select id="productCaracteristicas" class="custom-select" required name = "resaltar">
                        <c:forEach var="feature" items="${sessionScope.features}">
                            <option value=${feature} >${feature} </option>
                        </c:forEach>


                    </select>
                    <div class="invalid-feedback">
                        Debe asignar el producto a alguna categoría.
                    </div>
                </div>

                <div class="form-row py-2">
                    <label for="productPreguntas">¿Que preguntas desea encuestara los usuarios?</label>
                    <select id="productPreguntas" class="custom-select" required name = "pregunta">
                        <c:forEach var="question" items="${sessionScope.questions}">
                            <option value=${question} >${question} </option>
                        </c:forEach>
                    </select>
                    <div class="invalid-feedback">
                        Debe seleccionar tres preguntas.
                    </div>
                </div>

                <div class="form-row">
                    <button class="btn btn-dark btn-block px-3 my-4 mx-auto" type="submit">Submit form</button>
                </div>
            </div>
        </form>

        <script>

             // Example starter JavaScript for disabling form submissions if there are invalid fields
            (function() {
                'use strict';
                window.addEventListener('load', function() {
                    // Fetch all the forms we want to apply custom Bootstrap validation styles to
                    var forms = document.getElementsByClassName('needs-validation');
                    // Loop over them and prevent submission
                    var validation = Array.prototype.filter.call(forms, function(form) {
                        form.addEventListener('submit', function(event) {
                            if (form.checkValidity() === false) {
                                event.preventDefault();
                                event.stopPropagation();
                            }
                            form.classList.add('was-validated');
                        }, false);
                    });
                }, false);
            })();
        </script>
        <jsp:include page="jsSources.jsp"/>
</body>
</html>
