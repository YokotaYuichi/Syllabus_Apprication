<%@ page language="java" contentType="text/html; charset=windows-31j"
	pageEncoding="windows-31j"%>

<jsp:useBean id="syllabus" class="javacode.Syllabus" scope="session" />

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
			<h1>Web�V���o�X�{�� - �Ȗڏڍ�</h1>
		</div>

		<div id="main_detail">
			<h2><jsp:getProperty name="syllabus" property="currentName" /></h2>

			<table width="auto">
				<tr>
					<td width="5%"><b>�w�N</b></td>
					<td width="50%"><jsp:getProperty name="syllabus"
							property="currentGrade" /></td>
				</tr>
				<tr>
					<td><b>�w��</b></td>
					<td><jsp:getProperty name="syllabus"
							property="currentTerm" /></td>
				</tr>
				<tr>
					<td><b>����</b></td>
					<td><jsp:getProperty name="syllabus"
							property="currentDayOfWeek" /> �j��<jsp:getProperty
							name="syllabus" property="currentHours" />����
					</td>
				</tr>
				<tr>
					<td><b>���Ɨv��</b></td>
					<td><jsp:getProperty name="syllabus"
							property="currentRequire" /></td>
				</tr>
				<tr>
					<td><b>�P�ʐ�</b></td>
					<td><jsp:getProperty name="syllabus"
							property="currentCredit" /></td>
				</tr>
				<tr>
					<td><b>�S������</b></td>
					<td><jsp:getProperty name="syllabus"
							property="currentTeacher" /></td>
				</tr>
				<tr>
					<td valign="top"><b>�T�v</b></td>
					<td colspan="3"><jsp:getProperty name="syllabus"
							property="currentDescription" /></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>