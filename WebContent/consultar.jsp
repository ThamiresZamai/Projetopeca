<%@page import="br.com.projpeca.dados.CadastroDB"%>
<%@page import="br.com.projpeca.entidade.Cadastro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta Peças</title>
<link rel="stylesheet" href="bootstrap/css/bootstrap.css">
</head>
<body>

<div style="padding-top: 5%"></div>
<div class="col-sm-6">
<h1>Consulta de Peças</h1>
<div style="padding-top: 5%"></div>
<a href="cadastro.jsp" class="btn btn-danger">Novo</a>

<div style="padding-top: 3%"></div>
<table class="table table-hover table-danger">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Nome</th>
      <th scope="col">Peso</th>
       <th scope="col">Tipo</th>
        <th scope="col">Data_Cadastro</th>
         <th scope="col">Valor</th>
    </tr>
  </thead>
  <tbody>
    <%for (Cadastro cadastro : new CadastroDB().getAll()){%>
    <tr>
      <th scope="row"><%=cadastro.getId() %></th>
      <td><%=cadastro.getNome() %></td>
       <td><%=cadastro.getPeso() %></td>
        <td><%=cadastro.getTipo() %></td>
         <td><%=cadastro.getDataCadastro() %></td>
      <td><%=cadastro.getValor() %></td>
    </tr>
    <%}%>
  </tbody>
</table>
</div>
</body>
</html>