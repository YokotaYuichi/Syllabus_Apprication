<%@ page language="java" contentType="text/html; charset=windows-31j"
	pageEncoding="windows-31j"%>

<jsp:useBean id="cart" class="javacode.Cart" scope="session" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	  "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=windows-31j">
<title>カート一覧</title>
<meta http-equiv="content-style-type" content="text/css">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div id="container">

		<div id="main">
			<h2>履修カートの内容を確認する</h2>

			<h3>
				<form action="Main.jsp" method="get">
					<input type="hidden" name="function" value="top">
					<input type="submit" value="戻る">
				</form>
			</h3>

			<table none width="100%" height="50">


				<tr>
					<td>科目名</td>
					<td>学年</td>
					<td>学期</td>
					<td>曜日</td>
					<td>時限</td>
					<td>要件</td>
					<td>単位数</td>
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
					<td>
						<form action="Main.jsp" method="get">
							<input type="hidden" name="function" value="remove"> <input
								type="hidden" name="target"
								value="<jsp:getProperty name="cart" property="currentId" />">
							<input type="submit" value="削除">
						</form>
					</td>
				</tr>

				<%
				}
				%>
				<tr>
					<td>合計</td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> </td>
					<td> </td>
				    <td><jsp:getProperty name="cart" property="totalCredit" /></td>
				    
				</tr>
			</table>
			<%
			if (cart.isUserRegistered() == true) {
			%>
            <form action="Main.jsp" method="get">
					<input type="hidden" name="function" value="submit">
					<input type="submit" value="申告内容を確定">
			</form>

			<%
			}
			%>

		</div>
	</div>
</body>
</html>