<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form:form   modelAttribute="mat"  action="Ajout" method="post">
		<table>


			<tr>
				<td><form:label path="idMatiere">id de la mati�re</form:label></td>
				<td><form:input path="idMatiere" /></td>
			</tr>
			<tr>
				<td><form:label path="nomMatiere">Nom de la mati�re</form:label></td>
				<td><form:input path="nomMatiere" /></td>
			</tr>
      <tr>
			<td><input type="submit" value="Ajouter Mati�re" /></td>

      </tr>

		</table>

	</form:form>


	<p>Ici la liste des Mati�res</p>

	<table class="table table-striped">
		<tr>
			<th>Id mati�re</th>
			<th>Nom de la Mati�re</th>


		</tr>

		<c:forEach items="${listeDesMati�res}" var="mat">
			<tr>
				<td>${mat.idMatiere}</td>
				<td>${mat.nomMatiere}</td>


			</tr>
		</c:forEach>
	</table>





</body>
</html>