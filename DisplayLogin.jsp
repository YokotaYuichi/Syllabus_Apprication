<%@ page contentType="text/html; charset=windows-31j"%>
<jsp:useBean id="student" class="javacode.Student" />

<%
	request.setCharacterEncoding("windows-31j");

	String username = request.getParameter("username");
	String id = request.getParameter("userid");
	String mailto = request.getParameter("mailto");
%>

<jsp:setProperty name="student" property="name" param="username" />
<jsp:setProperty name="student" property="id" param="id" />
<jsp:setProperty name="student" property="mailAddress"
	param="mailto" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
        "http://www.w3.org/TR/html4/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=windows-31j" />
<title>ようこそ</title>
</head>
<body>
	<ul>
		<li>氏名 <%= username %>
		</li>
		<li>学籍番号 <%= id %>
		</li>
		<li>メイルアドレス <%= mailto %>
		</li>
	</ul>
</body>
</html>
