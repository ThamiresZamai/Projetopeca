<%@ page import="br.com.projpeca.dados.CadastroDB"%>
<%@ page import="br.com.projpeca.entidade.Cadastro"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cadastrar</title>
</head>
<body>
<% 
String nome = request.getParameter("nome");
String peso = request.getParameter("peso");
String tipo = request.getParameter("tipo");
String dataCadastro = request.getParameter("dataCadastro");
String valor = request.getParameter("valor");

Cadastro cadastro = new Cadastro();
//double dOne = 0.0d;

//dOne = Double.parseDouble(peso);

cadastro.setNome(nome);

cadastro.setPeso(0);
cadastro.setPeso(Double.parseDouble(peso));
cadastro.setTipo(tipo);
cadastro.setDataCadastro(dataCadastro);
cadastro.setValor(0);
cadastro.setValor(Double.parseDouble(valor));

if (new CadastroDB().inserir(cadastro)){
	response.sendRedirect("consultar.jsp");
}
%>
</body>
</html>