<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Ejercicio Calculadora</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous" />
<script defer src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script defer
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
	crossorigin="anonymous"></script>
</head>
<body>

	<main>
		<div class="container" style="background-color: #fafafa">
			<div class="row justify-content-center">
				<div class="col-md-6">
					<form action="CalculadoraServlet" method="POST">
	<h4>Calculadora En Maven</h4>
						<div class="form-group">
							<label for="numero1">Numero 1</label> <input type="text"
								class="form-control" id="numero1" name="txtNumero1" />
						</div>
						<div class="form-group">
						<label for="numero1">Operación</label>
							<select class="form-select" aria-label="Default select example"
								name="cboOperacion">
								<option selected>Seleccione</option>
								<option value="1">Suma</option>
								<option value="2">Resta</option>
								<option value="3">Multiplicación</option>
								<option value="4">Division</option>
							</select>
						</div>

						<div class="form-group">
							<label for="numero2">Numero 2</label> <input type="text"
								class="form-control" id="numero2" name="txtNumero2" />
						</div>
						<input type="submit" class="btn btn-info" id="calcular">

						<div class="form-group">
							<label for="calcular">Resultado de la operación:</label> <input type="text"
								class="form-control" id="resultado" disabled name="resultado"
								value="<% //Recuperar la variable de sesion
									if(request.getSession().getAttribute("resultado") == null){
										out.println("");
									}else{
										out.println(request.getSession().getAttribute("resultado"));	
									}
																
								%>" />
						</div>
					</form>
				</div>
			</div>
		</div>
	</main>


</body>
</html>

