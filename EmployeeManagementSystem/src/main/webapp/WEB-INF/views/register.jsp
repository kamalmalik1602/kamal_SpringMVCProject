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
    
.form-card label {
        font-weight: bold;
    }

    .form-card input[type="text"],
    .form-card input[type="number"] {
        width: calc(100% - 10px);
        padding: 8px;
        margin-bottom: 10px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }

    .form-submit-button {
        padding: 10px 20px;
        background-color: #007bff;
        color: #fff;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .form-submit-button:hover {
        background-color: #0056b3;
    }
</style>
</head>
<body>
	<div align="center">
		<h1>Employee Management System</h1>
		<h2>Enter Employee Details</h2>
		
		<div class="form-card">
		<form:form action="processAdd" modelAttribute="employee" class="form">
			<table class="tg">
				<tr>

					<td><label for="name">Name:</label> &nbsp;&nbsp;</td>

					<td><input type="text" id="name" name="employeeName"
						placeholder="Enter name"></td>
				</tr>

				<tr>
					<td><label for="address">Address:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="address" name="employeeAddress"
						placeholder="Enter address"></td>
				</tr>

				<tr>
					<td><label for="phone">Phone:</label> &nbsp;&nbsp;</td>
					<td><input type="text" id="phone" name="employeePhone"
						placeholder="Enter phone no."></td>
				</tr>

				<tr>
					<td><label for="salary">Salary:</label> &nbsp;&nbsp;</td>
					<td><input type="number" id="salary" name="employeeSalary"
						placeholder="Enter salary"></td>
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