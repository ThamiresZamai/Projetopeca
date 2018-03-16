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
String id = request.getParameter("id");
String nome = request.getParameter("nome");
String peso = request.getParameter("peso");
String tipo = request.getParameter("tipo");
String dataCadastro = request.getParameter("dataCadastro");
String valor = request.getParameter("valor");

Cadastro cadastro = new Cadastro();

cadastro.setNome(nome);
cadastro.setPeso(Double.parseDouble(peso));
cadastro.setTipo(tipo);
cadastro.setDataCadastro(dataCadastro);
cadastro.setValor(Double.parseDouble(valor));

if (!id.isEmpty() || Integer.parseInt(id) > 0){ 
	cadastro.setId(Integer.parseInt(id)); 
	new CadastroDB().alterar(cadastro);
	
}else{ 
new CadastroDB().inserir(cadastro); 
 } 
response.sendRedirect("consultar.jsp"); 
%>
</body>
</html>