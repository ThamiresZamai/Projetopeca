<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastro</title>

<link rel="stylesheet" href="bootstrap/css/bootstrap.css">

</head>
<body>
<div align="center">
		<h1>Agenda</h1>
		<form action="cadastrar.jsp" method="post">

			<div class="col-sm-6">

				<div class="form-group">
					<div class="row">
						<label for="nome">Nome</label> <input type="text"
							class="form-control" id="nome" name="nome">

					</div>

				</div>
				<div class="form-group">
					<div class="row">
						<label for="nome">Peso</label> <input type="text"
							class="form-control" id="peso" name="peso">
					</div>
				</div>
				
				<div class="form-group">
					<div class="row">
						<label for="nome">Tipo</label> <input type="text"
							class="form-control" id="tipo" name="tipo">
					</div>
				</div>
				
				<div class="form-group">
					<div class="row">
						<label for="nome">Data Cadastro</label> <input type="text"
							class="form-control" id="dataCadastro" name="dataCadastro">
					</div>
				</div>
				
				<div class="form-group">
					<div class="row">
						<label for="nome">Valor</label> <input type="text"
							class="form-control" id="valor" name="valor">
					</div>
				</div>

				<input type="submit" value="Salvar" class="btn btn-primary" />
				<a href="consultar.jsp" class="btn btn-light">Cancelar</a>
			</div>
		</form>
	</div>


</body>
</html>