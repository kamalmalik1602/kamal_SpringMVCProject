<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<%@ page isELIgnored="false"%>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Page</title>
<style type="text/css">

.form-card {
        max-width: 400px;
        margin: 0 auto;
        background-color: #f9f9f9;
        border: 1px solid #ddd;
        border-radius: 8px;
        padding: 20px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
/* Reset default browser styles */
body, h1, h2, h4, table, td, input, a {
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

h1, h2, h4 {
    text-align: center;
    margin: 20px 0;
    color: #333;
}

h2 {
    font-size: 24px;
}

form {
    margin-top: 20px;
}

label {
    font-weight: bold;
}

input[type="number"],
input[type="text"] {
    width: 200px;
    padding: 8px;
    border: 1px solid #ccc;
    border-radius: 4px;
    margin-bottom: 10px;
}

.input-group {
    margin-bottom: 20px;
}

.input-group label {
    display: inline-block;
    width: 100px;
}

.form-submit-button {
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    background-color: #007bff;
    color: #fff;
    cursor: pointer;
    transition: background-color 0.3s;
}

.form-submit-button:hover {
    background-color: #0056b3;
}

a {
    text-decoration: none;
    color: #007bff;
}

a:hover {
    color: #0056b3;
}

</style>
</head>
<body>


	<div align="center">
		<h1>Employee Management System</h1>
		<h2>Update Employee</h2>
<div class="form-card">
		<form:form
			action="${pageContext.request.contextPath}/employees/processAdd"
			modelAttribute="employee">

			<table class="tg">
				<tr>
					<td><label for="Id">Id:</label> &nbsp;&nbsp;</td>

					<td><input type="number" id="Id" name="employeeId"
						value="${employee.employeeId}"></td>
				</tr>

				<tr>
					<td><label for="name">Name:</label> &nbsp;&nbsp;</td>

					<td><input type="text" id="name" name="employeeName"
						value="${employee.employeeName}"></td>
				</tr>

				<tr>
					<td><label for="address">Address:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="address" name="employeeAddress"
						value="${employee.employeeAddress}"></td>
				</tr>

				<tr>
					<td><label for="phone">Phone:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="phone" name="employeePhone"
						value="${employee.employeePhone}"></td>
				</tr>

				<tr>
					<td><label for="salary">Salary:</label> &nbsp;&nbsp;</td>
					<td><input type="number" id="salary" name="employeeSalary"
						value="${employee.employeeSalary}"></td>
				</tr>
				<tr>
					<td><input class="form-submit-button" type="submit"
						value="Submit"></td>
					<td><input class="form-submit-button" type="reset"
						value="Reset"></td>
				</tr>
			</table>
		</form:form>
</div>
		<h4>
			<a href="${pageContext.request.contextPath}/index.jsp"> Click
				here to go Home Page</a>
		</h4>
	</div>
</body>
</html>