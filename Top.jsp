<%@ page language="java" contentType="text/html; charset=windows-31j"
	pageEncoding="windows-31j"%>

<jsp:useBean id="syllabus" class="javacode.Syllabus" scope="session" />
<jsp:useBean id="cart" class="javacode.Cart" scope="session" />

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
	  "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ja">
<head>
<meta http-equiv="content-type" content="text/html; charset=windows-31j">
<title>Web�V���o�X�{���E���C�o�^</title>
<meta http-equiv="content-style-type" content="text/css">
<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

	<div id="container">

		<div id="heading">
			<h1>Web�V���o�X�{��</h1>
		</div>

		<div id="main">
			<h2>�Ȗڈꗗ</h2>
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
					<input type="submit" value="�ڍ�">
				</form>

			</h3>

			<table>
				<tr>
					<td><b>�w�N</b></td>
					<td><jsp:getProperty name="syllabus" property="currentGrade" /></td>
				</tr>
				<tr>
					<td><b>�w��</b></td>
					<td><jsp:getProperty name="syllabus" property="currentTerm" /></td>
				</tr>
				<tr>
					<td><b>���Ɨv��</b></td>
					<td><jsp:getProperty name="syllabus" property="currentRequire" /></td>
				</tr>
				<tr>
					<td><b>�P�ʐ�</b></td>
					<td><jsp:getProperty name="syllabus" property="currentCredit" /></td>
				</tr>
				<tr>
					<td><b>�S������</b></td>
					<td><jsp:getProperty name="syllabus" property="currentTeacher" /></td>
				</tr>
			</table>
			<jsp:getProperty name="syllabus" property="currentDescription" />
			<br>
			<form action="Main.jsp" method="get">
				<input type="hidden" name="function" value="add"> <input
					type="hidden" name="target"
					value='<jsp:getProperty name="syllabus" property="currentId" />'>
				<input type="submit" value="�J�[�g�ɒǉ�">
			</form>
			<%
				}
			%>
		</div>

		<div id="side">
			<h2>�c�[��</h2>

			<div class="box">

				<%
					if (cart.isUserRegistered() == true) {
				%>
				<p>
					�悤����
					<jsp:getProperty name="cart" property="userName" />
					����
				</p>
				<form action="Main.jsp" method="get">
					<input type="hidden" name="function" value="logout">
					<input type="submit" value="���O�A�E�g">
				</form>

				<%
					} else {
				%>
				<p>�ȉ��̏���o�^�����O�C�����Ă��������B</p>
				<form action="Main.jsp" method="get">
					<input type="hidden" name="function" value="login">���O
					<input type="text" name="name">
					<br>
					�w�Дԍ�<input type="text" name="id">
					<br>
					���C���A�h���X<input type="text"
						name="mailto"><br> <input type="submit" value="���O�C��">
				</form>
				<%
					}
				%>
			</div>

			<div class = "box">

			     <form action="Main.jsp" method="get">
			         <input type="hidden" name="function" value="search">
			         �L�[���[�h<input type="text" name="key">
			         <br>
				     <input type="radio" name="function" value="search">�Ȗږ����猟��
				     <br>
				     <input type="radio" name="function" value="search">�T�v�������猟��
				     <br>
				     <input type="submit" value="����">

				     <input type="hidden" name="function" value="top">
				     <br>
			         <input type="submit" value="�S�ĕ\��">
				 </form>
			</div>
			<div class="box">
				<p>
					���C�J�[�g�̒��ɂ�
					<jsp:getProperty name="cart" property="totalCredit" />
					�P�ʕ��̉Ȗڂ������Ă܂��B
				</p>
				<form action="Main.jsp" method="get">
					<input type="hidden" name="function" value="cart">
					<input type="submit" value="�J�[�g�̊m�F">
				</form>

			</div>
		</div>
	</div>
</body>
</html>