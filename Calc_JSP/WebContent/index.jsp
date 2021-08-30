<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!Double value1;%>
<%!Double vaule2;%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
<meta name="viewport" content="width=device-width, innital-scale=1.0">
</head>
<body>
	<form action="index.jsp">
		<fieldset>
			<legend>Elad And Rotem Devops Project After</legend>
			<h1>Calculator</h1>
			<input type="number" name="number1" placeholder="number1"
				required="required"> <select name="sign">
				<option value="select">operation</option>
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select> <input type="number" name="number2" placeholder="number2"
				required="required"> <input type="submit" value="Solve"><br>

			<%
				try {
					value1 = Double.parseDouble(request.getParameter("number1"));
					vaule2 = Double.parseDouble(request.getParameter("number2"));
					String choice = request.getParameter("sign");
					if (choice.equals("+")) {
			%>
			<p>
				<b>Result: </b>
			</p>
			<%
				out.print(value1 + vaule2);
					} else if (choice.equals("-")) {
			%>
			<p>
				<b>Result: </b>
			</p>
			<%
				out.print(value1 - vaule2);
					} else if (choice.equals("*")) {
			%>
			<p>
				<b>Result: </b>
			</p>
			<%
				out.print(value1 * vaule2);
					} else if (choice.equals("/")) {
			%>
			<p>
				<b>Result: </b>
			</p>
			<%
				out.print(value1 / vaule2);
					} else
						out.print("please choose operator");

				} catch (Exception ex) {
				}
			%>
		</fieldset>
	</form>
</body>
</html>
