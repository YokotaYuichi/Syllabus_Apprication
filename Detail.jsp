<%@ page language="java" contentType="text/html; charset=windows-31j"
	pageEncoding="windows-31j"%>

<jsp:useBean id="syllabus" class="javacode.Syllabus" scope="session" />

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
			<h1>Webシラバス閲覧 - 科目詳細</h1>
		</div>

		<div id="main_detail">
			<h2><jsp:getProperty name="syllabus" property="currentName" /></h2>

			<table width="auto">
				<tr>
					<td width="5%"><b>学年</b></td>
					<td width="50%"><jsp:getProperty name="syllabus"
							property="currentGrade" /></td>
				</tr>
				<tr>
					<td><b>学期</b></td>
					<td><jsp:getProperty name="syllabus"
							property="currentTerm" /></td>
				</tr>
				<tr>
					<td><b>時限</b></td>
					<td><jsp:getProperty name="syllabus"
							property="currentDayOfWeek" /> 曜日<jsp:getProperty
							name="syllabus" property="currentHours" />時限
					</td>
				</tr>
				<tr>
					<td><b>卒業要件</b></td>
					<td><jsp:getProperty name="syllabus"
							property="currentRequire" /></td>
				</tr>
				<tr>
					<td><b>単位数</b></td>
					<td><jsp:getProperty name="syllabus"
							property="currentCredit" /></td>
				</tr>
				<tr>
					<td><b>担当教員</b></td>
					<td><jsp:getProperty name="syllabus"
							property="currentTeacher" /></td>
				</tr>
				<tr>
					<td valign="top"><b>概要</b></td>
					<td colspan="3"><jsp:getProperty name="syllabus"
							property="currentDescription" /></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>