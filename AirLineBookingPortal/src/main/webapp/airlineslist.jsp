<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%


Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/flyaway","root","root");
Statement st = con.createStatement();
ResultSet rs = st.executeQuery("select * from airlines order by name");
%>
<h1>AirLines List :</h1>
<table border="1">
	<tr>
		<th>code</th>
		<th>name</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td>
			<%=
			rs.getString(1)
			%>
		</td>
		<td>
			<%=
			rs.getString(2)
			%>
		</td>
		
	</tr>
	<%
	}
	%>
</table>

