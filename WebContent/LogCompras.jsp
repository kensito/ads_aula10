<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="../../favicon.ico">
<link rel="canonical"
	href="https://getbootstrap.com/docs/3.3/examples/starter-template/">

<title>Log de Compras</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">

<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<link href="css/ie10-viewport-bug-workaround.css" rel="stylesheet">

<!-- Custom styles for this template -->
<link href="starter-template.css" rel="stylesheet">

<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
<!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
<script src="js/ie-emulation-modes-warning.js"></script>

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>
	<!-- importa o menu do sistema -->
	<c:import url="Menu.jsp" />
	<!-- conteiner principal -->
	<div class="container">
		<fmt:setLocale value="pt_BR" />
		<div class="row">
			<h1>Lista de Filmes Comprados</h1>
		</div>
		<fmt:setLocale value="pt_BR" />
		<form action="comprar_filmes.do" method="POST">
			<div class="row">
				<div class="col-md-12">
					<table class="table table-striped">
						<tr>
							<th>Data da Compra</th>
							<th>Id do Filme comprado</th>
							<th>Título do Filme comprado</th>
							<th>Usuário</th>
						</tr>
						<c:forEach var="compra" items="${compras}">
							<tr>
								<c:if test="${not empty compra}">
									<td class="bg-info">${compra.dataCompra}</td>
									<td>${compra.idFilme}</td>
									<td>${compra.tituloFilme}</td>
									<td>${compra.usuario}</td>
								</c:if>
								<c:if test="${empty compra}">
									<h3 class="bg-danger">Ainda não há compras.</h3>
								</c:if>
							</tr>
						</c:forEach>
						<hr>
					</table>
				</div>
			</div>
			<div id="actions" class="row">
				<div class="col-md-12">
					<a href="index.jsp" class="btn btn-default">Voltar</a>
				</div>
			</div>
		</form>
	</div>
	<!-- /.container -->


	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>