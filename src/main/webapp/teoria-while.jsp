<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria While</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/teoria.css" />
<style><%@include file="/resources/css/teoria.css"%></style>
</head>
<body>
	 <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/iTASctABkqHruTn3aUGqaHanuCEMeTp-FxmC7id7qpbunkn_tCh3zBTb49i8QMK92ou3brdETKXkizF44ehpD9vVJeiJlIu4hrOAfyIc4O2gH1hLoV7wq_AoTo2-twIxysjZ6KWPKlL9lEkqm9W7g1LeAZtEj5L0bf52DUL0XM9iV5Z1s7KfXJKGmuSZyxKn76YVV28k6qPATej7VriNVuFnDmjuhxt3ILN7Z9xBQ4Wxf5NoIHQdTKJ4asApf7Eug8sutC_p47rLbmQPGnETVNFk6YiEi-KtT1l2_J2CzEiwoqG-rzbk4505kNZPphXPGCC5UvsY9czPKHd_fPzkH0wUJxRuvIFz4cm3xuXr9Lt3fRwHHOCoXy8JxdpYNXRrRg9Q-LdofgnC6DfYa387jl0vPkfWdwpfjSHt8PoTH2icfnSg_XhaanfqFdH2pqSJSoPOXR7FjhZdTl1ExT9VYux0vovcv2SYTXq1oVqpp9HyLGklgNgonR2Fn4m9cliJWuU0XwqaFFFezfOBqeKPIDTbi545qfd7C2xmVmfgRlc4y3XdU58OB7M7pMon7OPVruod9o2BMiCvVj3ppzuaAsQEx7vk6XGNnsbuqAycZA4IujMmkPIz5Nvy6bR3s8BTX2qEBJ2yRtclZ-APHj0s4BwF15-1qyp7hb7_W5a3xbKLKyNA5B9aQ8uN9YiXry93AsgW-Jrm3wc_BT1d=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/5WZ4alxI6uUdUT40YuWPGUSTHOVCtifVi_xfVQQb_EvS2T5rRMZu1sUcr3ZCs2eXIb6AoKHBly4zoLwHUVHCakLegNdhJtCIale5LFhltoSVw00ogsq7OIBCOvAFolGVKiZHOMMBWoKAJ69z6rTKDaxAj5JrdLSp5IbfMCOSFYhWu9rMG5xYnD9o3TIxOdOxFUnFYZ92vLcz8OErfy6oWfiThT8U739jPP6aTELiXUZUUHj9UziB_0SWLXjU7gsNw6Xp-f_1CPnVYUj6JhWX6kokinzeV6v31mdcjwsie5djqNFQL3V9kIUaICxuHYnCt3hOY49XfRlwn1KnFMGiqt_RpsQfnM17iGTlM9rNoPdpS0JqsIPurKOYqOYe0UrLrudknLhxUoqZd272xIEli4wd6mqHRwLPCMwqtUE3eDIfsZQ5ZZVEmQkms0p9rZoyyYcpnnle9JNOaKJ-zidqba3XW_TDCBe_BgFBbfyL7anlfVtTdCZKI0W5LJS6I9rjlsbDDStdFXw7KdoiXMkbqjFbJCrGKRE9OL4ieEXBOVAHNYeUTENO0YOEQksxp8Te6TeA9I98GL-bFMJJ-FbrGHZJqFp1SqElscl-9Q8m1YOra9mSTrjDkUNEQ4yMgor6fqPqFCA0_43IJlSOSQXSD0wxD37gEN7LXRfryXXM2II-lwjsiNny1CLiCbIjFZLMiDOI06rR_uQOh9fO=w1560-h878-no?authuser=0"></li>

            </ul>
            <div class="s-control">
                <label class="s-c-1" for="s-1"></label>
                <label class="s-c-2" for="s-2"></label>


            </div>
            <div class="s-nav">
                <label class="s-nav-1 right" for="s-2"></label>
                <label class="s-nav-2 left" for="s-1"></label>
                <label class="s-nav-2 right" for="s-1"></label>
                <label class="s-nav-3 left" for="s-2"></label>
            </div>
        </div>

    </div>
    <form action="quiz-while">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>