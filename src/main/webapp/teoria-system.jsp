<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria System</title>
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
                <li class="s-item s-item-1"><img src="/resources/imagens/1"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/7D3cm9T1RyaHYehLudB6GNrHIIMLcfOsUFdlTlkGBpgiLNOAgPR_B2Qn2Vd_GfrHxp1ZQGEgc5Csnxf5leIhrJR4AVJA8IB81H7FI1qnuCazRqXL0LMmMP1h2G8SdOwdQ7pV7TbJz4HqXphqIzsgqz3Om4vvdPzl6lQMBPTr5GypZNhU5TgzAEEXta--JqzL8vkuaLq38mCShVZEUCPce336t4A9IFSZhyWxwYU-XBtdQOYhHYpnz4d5ZDgDM_4zsSeM8HUh3w1KQIAm10ZQN-5mGxe9lUFin5P_yU2pgJ8hIM1zJwS0bZ6pqJVSkEZPBd7Tn0m1csPYJsB1ukyE8uR6xOAb3W59hdYTkbIwGeukhxiWoaQ2kiJxjlA0p_uEjpMvW85AX5acuTuAtmb72jrqyjBlPV1poxT14JhkzICWRZurbN3wgQRdN7tGnaQpI4EhVqwouBYDM3OmPr_qY7i4FDUcAP-MAR_yu9MBDsVQm5P1sC4dH1JCK4EMGzszrONUVyvk4qffIxrDXVXrlHkX7ovG1PWNIuEQ7ESbDjDhSLjH5iI5H3RtKap_PhI7m7iwerUrstWya4lRcF_U4p__LhDX8dPxUUA1KZ3JGoevLnePzrAjifGiMq0fczCSCvqJ6E6vxHimrFrOnIqSD3Badrh1FgrHeoGAIfcxEB2ppYnyJYnE3UwqdqKLK4BwKENiPTrGngI0diZ9=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/TLr2vGtE4QsY99HgtjCbZoMonkEN1Sdr9XiN6VX1tafBcgJLUw5-_E-Plvoz4FDDZ1TdBpWfCkQ24dq-LbBaOO8hZ6RZ3ldspmM4PzPZ9zP0WoeWQ6qA_Eyz728TPTYTKNhp72u0GMwfPiO53_DJ7gm9Fedo8F4B8rHO0lDjHxMZDrtmngMZAmPJZyGylv8SPRCUV3sSzMvk3ym_lJ_Sav0KwfWkuqua6eBOMQTyZ9TI9OTh5FdWapKY8LJWVNr8CVuuiO3THKsZcHg8FINYqbMwpFURxXsKeKC1KQ48S9h3sUMxXPhQp1DDRhNjS7ovGOl_x6fA5nwoNSeJpc7w225BgGPx0OKWl3ZZ7ttfqnhIEq0hIaPfclf2vSS7TPcpVjFMhvfu6HTnnTlv2mgeUhKBdLu11dGc7ZQ1fsaViBC0O4FbBTOH69hBue5b5vhwr-86ov73vLEA8uogQlOdeNESlcf-1X9qE0HLHjqI0oabQvM3PttnOFfzq4RSI9uH3-e17c6dsKXv4wM0opWSSXl7rrNQEpMfF5In0Y40vCvuNODaj5PJlS_CvYCmEHexbiIL0IAutc1DDABKGXwquDCtFC-1iFaJIo6FEful8WXhgPTmqN__JqcdBrJxUvVFJk3Rni76kTs6skt32vP0ByahUb2LFjDz7ziyypFihUzbG-_9pffyDFaR8KDEZUajCf2iIefdEhulq-nI=w1560-h878-no?authuser=0"></li>

            </ul>
            <div class="s-control">
                <label class="s-c-1" for="s-1"></label>
                <label class="s-c-2" for="s-2"></label>
                <label class="s-c-3" for="s-3"></label>

            </div>
            <div class="s-nav">
                <label class="s-nav-1 right" for="s-2"></label>
                <label class="s-nav-2 left" for="s-1"></label>
                <label class="s-nav-2 right" for="s-3"></label>
                <label class="s-nav-3 left" for="s-2"></label>
                <label class="s-nav-3 right" for="s-1"></label>
                <label class="s-nav-4 left" for="s-3"></label>
            </div>
        </div>
    </div>
    <form action="quiz-system">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>