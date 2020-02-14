<%@page import="javacode.Subject"%>
<jsp:useBean id="syllabus" class="javacode.Syllabus" scope="session" />
<jsp:useBean id="cart" class="javacode.Cart" scope="session" />

<%
	request.setCharacterEncoding("windows-31j");
	String function = request.getParameter("function");
	String url;

	if (function == null || function.equals("top")) {
		//何もパラメータが指定されていない、
		//またはパラメータ function が top の場合、
		syllabus.setIsSearch(false);

		url = "Top.jsp";
	} else if (function.equals("detail")) {
		//パラメータ function が detail の場合、

		int target = Integer.parseInt(request.getParameter("target"));
		syllabus.setCurrentSubject(target);

		url = "Detail.jsp";
	} else if (function.equals("add")) {
		//パラメータ function が add の場合

		int target = Integer.parseInt(request.getParameter("target"));
		javacode.Subject targetSubject = syllabus.getById(target);
		cart.add(targetSubject);
		url = "Cart.jsp";
	} else if (function.equals("cart")) {
		//パラメータ function が cart の場合

		url = "Cart.jsp";
	} else if (function.equals("login")) {
		//パラメータ function が login の場合
		syllabus.setIsSearch(false);

		String name = request.getParameter("name");//フォームのデータ name を取り出す
		String id = request.getParameter("id");//フォームのデータ id を取り出す
		String mailto = request.getParameter("mailto");//フォームのデータ mailto を取り出す

		if (name != null && id != null && mailto != null &&
				!name.equals("") && !id.equals("") && !mailto.equals("")) {
			cart.setUserName(name);
			cart.setUserId(id);
			cart.setUserMailAddress(mailto);
		}

		url = "Top.jsp";
	} else if (function.equals("logout")) {
		//パラメータ function が logout の場合
		syllabus.setIsSearch(false);

		session.invalidate();
		url = "Top.jsp";
	} else if (function.equals("submit")) {
		//パラメータ function が submit の場合

		cart.submit();
		url = "Done.jsp";
	}
	else if (function.equals("remove")) {
		//パラメータ function が remove の場合

		int target = Integer.parseInt(request.getParameter("target"));
		javacode.Subject targetSubject = cart.getById(target);
		cart.remove(targetSubject);
		url = "Cart.jsp";
	}
	else if (function.equals("search")){
		//パラメータ function が search の場合

		syllabus.setIsSearch(true);
		syllabus.setSearchKey("key");
		url = "Top.jsp";
	}
	else {
		//上記の条件のどれにもあてはまらない場合
		syllabus.setIsSearch(false);
		url = "Top.jsp";
	}
%>

<jsp:forward page="<%=url%>" />