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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/Y92nLPVGg0sgCQGisXkEKzL5Soim3EoT2ipU5xvTbcxaLKxkAD7V-LXcrcyyISny_ZjmJ7St5Xu0pB8HvZT4FBtXLeky0niwqVH6wayhuYv6UKrmBRwG_Ko64cMkHCVDqQIWYUa9qdR_wKm-i1_R7zhi8XWnPVF3Awo-wBv-FP7DO6jhSM6-IOF6eaUXDh5VFhE9aazXJIt1kYWsj2xqSRFfeEQY-g34S0eDJe7qVuZ8snkRNO3kDb4fvtMNKLNscg_-0Y3whoLYef0dGw0aIza6olj8zOUU7sBOHYDw9KEZKiSaDwicX4nxrTXymL5i00H1ImufYh9pzGRBu1fw6cpHkHkcbfLcd2JX8-Ot8pefmeboUOLq7BHaSJrhJzZQmk0s_oxU8VQpSIUUFWUGq2sqyHEAafr_kQaEHE0nw8FOfHNs7x_SmwNjImBmw2mcxELOa2_dzgrEF7uMR50sdS179unwku8cKrQMx7C6p0agSIQbHc53Cpv9s8EM2kHSEcC0svNO9ImNCLQci1R8Ivn9xyZwqHFKGo-AMLJKAdXB7vO-v4o8v3ANQSs_4j4-vqzUtYJ2YNYOFTfx5WdQVGbXZ5odxSVqKu_J988EcFoUYbA-p2Xxa2_sveoIJYRa6sE4nN8uZukVLVg6_5_r1vKk2hrs0BtHCzgpNIzWGLzJZVtoZulqaS9q3RdZv0KkJ3LRMP7Uj92-37cp2dFJ-HDZ=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/W4KTdRbp-r-FKGO4qYhmsG7JRRYEO1Dw3kehpmZZBqBsb6JCMpWCPkQfHzG0fB283ONfWrAXvRBJcd5huPGW4YvEGZvTUD9TZfeIkIJogia7xV6sISTfBoQjW852lZG6TiFCrxNXuIJgDYpa07w1vylPJSs3LOXc5C2Tb1yz8E5DXrfDxHxKDFOopHDxutIsHnb0C7MHc8gBlLHO5P7RxcjFfkd0yg2f6iFme1rMmRZL4BwggGHVIfn_Wqm5ODcTP3SGWkMKQvcbSQ3e6R_jOmv1P93Eo8T7WMQC-luYFjGUpFEJI1Sk87uEBBQBz5G-AQ2K_qLfARdMHsgdWT6PsCjx84fREZLVOzB5IVFrMqYAZvI4kpXXFz2s6Gv-_HCJsdhqy-fq0Qjhp-TTJPKtX9gjXZgd5ABY2Syygih_xcNQRj1RMY0Kq09JkGcSwm-Y13uhOpK6_IYn2hargQadzxZCEktxOUq9RwaSdx_CBGSs2OAfgdCNs09dlo2qAso9vkLVgtQ3b-JUzlb9I3__LMEeUZMqSSj1XWqxBitK5ROP2O7VhSpKKy846_wNR_lU2nPOdcCsUTb7moIlX5XH9GCubK0HXoA04Ep6XZv15FEIurbFgvYt2sO1chl42WqIu8baF5ejoA8Uj9Fwt6GyR2wOTNqpoU_1tk_PH05QeLWs6TUSaga0qyqLzmPuJOpDLTu2C8aOeoMBafpJrPY0lOvS=w1006-h566-no?authuser=0"></li>
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