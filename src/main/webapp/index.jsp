<%@ page import="java.util.*"%>
<%@ page import="javax.naming.*"%>
<html>

<body>

	<%
		Context ctx = new InitialContext();
		String url = (String) ctx.lookup("java:comp/env/url");
	%>

	<ul>
		<h2>Reading on Object</h2>
		<li>url :
		<%=url%>
		</li>
	</ul>

	<ul>
		<h2>Reading all Objects</h2>


		<%
			for (Enumeration<Binding> e = ctx.listBindings("java:comp/env"); e.hasMoreElements();) {
				Binding bind = e.nextElement();
				out.println("<li>" + bind.getName() + " : " + bind.getObject() + "</li>");
			}
		%>

	</ul>


</body>
</html>