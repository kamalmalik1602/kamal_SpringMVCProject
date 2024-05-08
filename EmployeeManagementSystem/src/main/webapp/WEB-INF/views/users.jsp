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
/* Reset default browser styles */
body, h1, h5, table {
    margin: 0;
    padding: 0;
}

body {
    font-family: Arial, sans-serif;
    background-color: #f2f2f2;
}

h1 {
    text-align: center;
    margin: 20px 0;
    color: #333;
}

h5 {
    text-align: center;
}

a {
    text-decoration: none;
    color: #007bff;
}

a:hover {
    color: #0056b3;
}

table {
    width: 100%;
    border-collapse: collapse;
    margin: 20px auto;
    background-color: #fff;
}

th, td {
    padding: 10px;
    text-align: left;
}

th {
    background-color: #007bff;
    color: #fff;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:hover {
    background-color: #d9edf7;
}

td a {
    display: inline-block;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    transition: background-color 0.3s;
}

td a:hover {
    background-color: #007bff;
    color: #fff;
    border-color: #007bff;
}


</style>
</head>
<body>
	<h1>Employee Management System</h1>
	<h5>
		<a href="add">Add Record</a><br />
	</h5>

	<c:if test="${!empty listEmployees}">
		<table class="tg">
			<tr>
				<th width="80">Employee ID</th>
				<th width="120">Employee Name</th>
				<th width="120">Employee Address</th>
				<th width="120">Employee Phone</th>
				<th width="120">Employee Salary</th>
				<th width="60">Action1</th>
				<th width="60">Action2</th>
			</tr>
			<c:forEach items="${listEmployees}" var="employee">
				<tr>
					<td>${employee.employeeId}</td>
					<td>${employee.employeeName}</td>
					<td>${employee.employeeAddress}</td>
					<td>${employee.employeePhone}</td>
					<td>${employee.employeeSalary}</td>
					<td><a href="edit/${employee.employeeId}">Update</a></td>
					<td><a href="remove/${employee.employeeId}">Delete</a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>

</body>
</html>