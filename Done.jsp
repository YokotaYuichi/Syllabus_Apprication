<%@ page language="java" contentType="text/html; charset=windows-31j"
	pageEncoding="windows-31j"%>

<jsp:useBean id="cart" class="javacode.Cart" scope="session" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	  "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=windows-31j">
<title>�J�[�g�ꗗ</title>
<meta http-equiv="content-style-type" content="text/css">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div id="container">

		<div id="main">
			<h2>�ȉ��̓��e�Ő\������܂���</h2>
			<p><b>���C�o�^�m�F��</b></p>

			<h3>
				<form action="Main.jsp" method="get">
					<input type="hidden" name="function" value="top">
				</form>
			</h3>

			<table none width="100%" height="50">

				<tr>
					<td>�Ȗږ�</td>
					<td>�w�N</td>
					<td>�w��</td>
					<td>�j��</td>
					<td>����</td>
					<td>�v��</td>
					<td>�P�ʐ�</td>
				</tr>

				<%
				cart.newIterator();
				while (cart.nextSubject()) {
				%>

				<tr>
					<td><jsp:getProperty name="cart" property="currentName" /></td>
					<td><jsp:getProperty name="cart" property="currentGrade" /></td>
					<td><jsp:getProperty name="cart" property="currentTerm" /></td>
					<td><jsp:getProperty name="cart" property="currentDayOfWeek" /></td>
					<td><jsp:getProperty name="cart" property="currentHours" /></td>
					<td><jsp:getProperty name="cart" property="currentRequire" /></td>
					<td><jsp:getProperty name="cart" property="currentCredit" /></td>
				</tr>

				<%
				}
				%>
				<tr>
					<td>���v</td>
				</tr>
			</table>

			<form action="Main.jsp" method="get">
					<input type="hidden" name="function" value="logout">
					<input type="submit" value="�I��">
			</form>

		</div>
	</div>

</body>
</html>