<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>index</title>
</head>
<body>
	 <header>
        <nav>
            <input type="checkbox" id="check">
            <label for="check" class="checkbtn">
                <i class="fas fa-bars"></i>
            </label>
            <label class="logo">Logo</label>
            <ul>
                <li><a href="<%=request.getContextPath()%>/inicio-escola" target="_self">Página inicial escola</a></li>
                <li><a href="<%=request.getContextPath()%>/nova-escola" target="_self">Cadatrar Escola</a></li>

            </ul>
        </nav>
    </header>
	
</body>
</html>