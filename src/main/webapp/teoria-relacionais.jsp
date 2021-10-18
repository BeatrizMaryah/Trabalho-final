<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria Relacionais</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/teoria.css" />
<style><%@include file="/resources/css/teoria.css"%></style>
</head>
<body>
    <form action="quiz-relacionais">
        <button id="submit">Jogar</button>
    </form>
	 <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/txA3tREHbwHD3BEWEZmYChEu5J0rysI8qJ9vTE1IYHo_4xwdJ23_CaiuvxM1LkcEn8NjUgZyzuOQN-OZkrxzzhJYls4Gazqpmei-horikJU2Rd5KhY5XapOu0h2AAgdx3u5UFmMNQCGaiJouHu6vUVn4xsgBv8mowCyMB9cjvJzxyVD16hk6mqDxVTmQ14ZO6fosBZ1tjGjIp27QzIeex_S1fy_gM5hgv16hDGjdV06gmTUTuW0iIuyP08RBLsPmVFQ2tl7_FQEmXhSLr9oNfvxiYXJtD-gc_dg2UKUrjVW8BA6XIx5dRK5ThGdCFq8aJW5eH6DV6U1gPioM60Pjyjvjdk9umiDloZJ1APDhS69_r20uYiqnZFfCmC9044ntG2gg2VFI638wxhXem0zfG4XB2yVLcqJ5S7D-GuRJN4fiTklrPIyv8MxGW342gF3lmgRj0nrI4XSB4BFzUEWIs1Gp2UAgoBeIfmPhdGVZ9-c8e-nlqiNV9k5iyTPWFaQlzu28HAdzm2xFZ0dm_2P_83g_3-g9h9JN88mFbtocPwrK4JQmgRZovarRtdfhRytz5sV5Jb14o2TkqHrrFiWhDESTNiCbweydK6AF-YSfPmyHNHDk-GQ6wrZj2-mwmoHTy3dQUWpisrUN1q8YsgVyeUddsRz5yAiAD46yoQ_HzmnYvClLso7pbR0pSJsOOEi-TUvrtaAQlvy50Xf09AbIHg=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/y73VBk8rmXcOll_rlTOEF6e29EXoe7RbsoyWWQAlHb_o9nt2bE0GPOWFRZ_dGpAYcdg9aa6OWJ42SOLrTzZmv5e8Ts5qAutQ6qW2VXbSSYLrzIUuIcjr4Kh15YbuaZevdBd1ewP9nWYX5nn_fvYjbO1S-cJUvfehPhR00K03lMvrwyfH0UhQhABbqygFQJFK3fPDo6cVW-3wwVYrFxtG5eFbH6glsR44fyYYVVZXX1YFRe9G6q3k22ppVyp9cagMtqviaWHpcaU4BUGndAgZhuIK7faATDtvrVM4uw58F2xNIMOSJjYVZZgnRMzM1IgbxKjwM7k8QUW-0X7hTG_I6pjWOZV_L41PJent6da2_KOx41dqAM6UAD6TbigdEXiudmFCTyotPTz9oR7AG2UrzO5WZAagldE47EPFYv4Jw4wUCy3v5A_H-iMPj_aHaVSW_5NEus0K6AeKXAoxWiP_7wrMobZpAzDbT80gbxMRBKK47r71t70eCpMTBkFCppZmaT4TYhXdsvzCFhlfMdI6z6HD7lv5_zxSwG6XZL22kdxYjT7yXahtHID-xMFPYMeEt4OKa2OYTnQR4enth_sA11vnXw2ezMXz00JJa_46LYK3e5W2TVpAsGa1GXaC50F6u0rRHOaSYiXXKicTIk5vcJEljcoj-dWTqi-aF23qBIBq_2YYKa0Iz2_IMgA6TGBl-nqEfs-z-TlpmY9rwQsNew=w1006-h566-no?authuser=0"></li>
            </ul>
            
            <div class="s-control">
                <label class="s-c-1" for="s-1"></label>
                <label class="s-c-2" for="s-2"></label>
            </div>
            
            <div class="s-nav">
                <label class="s-nav-1 right" for="s-2"></label>
                <label class="s-nav-2 left" for="s-1"></label>
                <label class="s-nav-2 right" for="s-3"></label>
                <label class="s-nav-3 left" for="s-2"></label>
            </div>
        </div>
    </div>
</body>
</html>