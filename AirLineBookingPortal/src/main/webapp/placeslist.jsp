<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.sql.*"%>
<%
String driver="com.mysql.cj.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/flyaway";
String user="root";
String password="root";
String sql = "select * from places order by name";
Connection con = DriverManager.getConnection(url, user, password);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<h1>Places List</h1>
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
