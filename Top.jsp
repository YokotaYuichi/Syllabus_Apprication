<%@ page language="java" contentType="text/html; charset=windows-31j"
	pageEncoding="windows-31j"%>

<jsp:useBean id="syllabus" class="javacode.Syllabus" scope="session" />
<jsp:useBean id="cart" class="javacode.Cart" scope="session" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	  "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=windows-31j">
<title>Webシラバス閲覧・履修登録</title>
<meta http-equiv="content-style-type" content="text/css">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div id="container">

		<div id="heading">
			<h1>Webシラバス閲覧</h1>
		</div>

		<div id="main">
			<h2>科目一覧</h2>
			<%
				syllabus.newIterator();
				while (syllabus.nextSubject()) {
			%>

			<h3>
				<form action="Main.jsp" method="get">
					<jsp:getProperty name="syllabus" property="currentName" />
					<input type="hidden" name="function" value="detail"> <input
						type="hidden" name="target"
						value='<jsp:getProperty name="syllabus" property="currentId" />'>
					<input type="submit" value="詳細">
				</form>

			</h3>

			<table>
				<tr>
					<td><b>学年</b></td>
					<td><jsp:getProperty name="syllabus" property="currentGrade" /></td>
				</tr>
				<tr>
					<td><b>学期</b></td>
					<td><jsp:getProperty name="syllabus" property="currentTerm" /></td>
				</tr>
				<tr>
					<td><b>卒業要件</b></td>
					<td><jsp:getProperty name="syllabus" property="currentRequire" /></td>
				</tr>
				<tr>
					<td><b>単位数</b></td>
					<td><jsp:getProperty name="syllabus" property="currentCredit" /></td>
				</tr>
				<tr>
					<td><b>担当教員</b></td>
					<td><jsp:getProperty name="syllabus" property="currentTeacher" /></td>
				</tr>
			</table>
			<jsp:getProperty name="syllabus" property="currentDescription" />
			<br>
			<form action="Main.jsp" method="get">
				<input type="hidden" name="function" value="add"> <input
					type="hidden" name="target"
					value='<jsp:getProperty name="syllabus" property="currentId" />'>
				<input type="submit" value="カートに追加">
			</form>
			<%
				}
			%>
		</div>

		<div id="side">
			<h2>ツール</h2>

			<div class="box">

				<%
					if (cart.isUserRegistered() == true) {
				%>
				<p>
					ようこそ
					<jsp:getProperty name="cart" property="userName" />
					さん
				</p>
				<form action="Main.jsp" method="get">
					<input type="hidden" name="function" value="logout">
					<input type="submit" value="ログアウト">
				</form>

				<%
					} else {
				%>
				<p>以下の情報を登録しログインしてください。</p>
				<form action="Main.jsp" method="get">
					<input type="hidden" name="function" value="login">名前
					<input type="text" name="name">
					<br>
					学籍番号<input type="text" name="id">
					<br>
					メイルアドレス<input type="text"
						name="mailto"><br> <input type="submit" value="ログイン">
				</form>
				<%
					}
				%>
			</div>

			<div class = "box">

			     <form action="Main.jsp" method="get">
			         <input type="hidden" name="function" value="search">
			         キーワード<input type="text" name="key">
			         <br>
				     <input type="radio" name="function" value="search">科目名から検索
				     <br>
				     <input type="radio" name="function" value="search">概要説明から検索
				     <br>
				     <input type="submit" value="検索">

				     <input type="hidden" name="function" value="top">
				     <br>
			         <input type="submit" value="全て表示">
				 </form>
			</div>
			<div class="box">
				<p>
					履修カートの中には
					<jsp:getProperty name="cart" property="totalCredit" />
					単位分の科目が入ってます。
				</p>
				<form action="Main.jsp" method="get">
					<input type="hidden" name="function" value="cart">
					<input type="submit" value="カートの確認">
				</form>

			</div>
		</div>
	</div>
</body>
</html>