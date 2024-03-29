<jsp:useBean id="calcula" class="Beans.BeanJsp" type="Beans.BeanJsp" scope="page" />

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="myprefix" uri="WEB-INF/testetag.tld" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>JSP</title>
</head>
<body>

<!-- SITE REFER�NCIA (ESTUDO): https://www.tutorialspoint.com/jsp/ -->

	<h1>JSP - Home</h1>
	<!-- -------------------------------------------------------- -->
	
	<!-- Incluide Din�mico -->
	
	<jsp:include page="cabecalho.jsp"/>
	
	<!-- -------------------------------------------------------- -->
	
	<form action="receber-nome.jsp">
		<input type="text" id="nome" name="nome">
		<input type="submit" value="Enviar"/>
	</form>
	
	<% out.print("OK - Tag Print" ); %>
	<br/>
	<%= "Tag Express�o de Print" %>
	<br/>
	
	<%! int cont = 10; 
	
		public int retorna(int n){
			return n * 3;
		}
		
	%>
	
	<!-- -------------------------------------------------------- -->
	
	<%! String tag = "Tag declarativa"; %>
	
	<%= cont %>
	<br/>
	<%= tag %>
	<br/>
	<%= retorna(5) %>
	<br/>
	<%= application.getInitParameter("estado") %>
	
	<!-- -------------------------------------------------------- -->
	
	<!-- Directivas -->
	<%@ page import="java.util.Date"%>
	
	<%= "Data de hoje: " + new Date()%>
	
	<%@ page errorPage="receber-nome.jsp"%>
	
	<%= 100/2%>
	
	<!-- -------------------------------------------------------- -->
	
	<!-- Include e Tag lib em JSP -->
	
	<%@ include file="pagina-incluide.jsp" %>
	
	<myprefix:minhatag/>
	
	
	<jsp:include page="rodape.jsp"/>
	
	<!-- Java Ben � uma Class que processar dados na memoria em tempode execu��o -->
	
	<%= calcula.calculaMetodo(50) %>
	<br/>
	<!-- -------------------------------------------------------- -->
	
	<!-- Setters e Getters -->
	
	<form action="cabecalho.jsp" method="post">
		<input type="text" id="nome" name="nome">
		<br/>
		<input type="text" id="ano" name="ano">
		<br/>
		<input type="text" id="sexo" name="sexo">
		<br/>
		<input type="submit" value="testar"/>
	</form>
	<br/>
	<!-- -------------------------------------------------------- -->
	
	<!-- Expression language jsp -->
	
	<form action="cabecalho.jsp" method="post">
		<input type="text" id="endereco" name="endereco">
		<br/>
		<input type="text" id="complemento" name="complemento">
		<br/>
		<input type="submit" value="Endere�o"/>
	</form>
	
	<% session.setAttribute("user", "douglas"); %>
	<a href="cabecalho.jsp">Ver teste</a>
	
</body>
</html>