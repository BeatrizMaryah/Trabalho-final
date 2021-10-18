<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria Scanner</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/teoria.css" />
<style><%@include file="/resources/css/teoria.css"%></style>
</head>
<body>
    <form action="quiz-scanner">
        <button id="submit">Jogar</button>
    </form>
	<div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/OOUoxDz3Wl6ZuFBZBt1Xxt2qshheII9lAl0lhT-G9xdZDwTukGGptdQTYwgz7HB0IfD40qkrN6opyWW4kcGDlxCcmG9tJJ0jpIeBYNN7dWyx0kPYRouvresEvfN8Giz_fOY1mhhM_NaU46o8SUXuXCkwE6Ezc7tZ2TNfMjpg2C71ldfws3fHMfqYMRsvuIe0wolZsM6fUOGNO-aBWyr5pG3usnUsaB1ca1oGZuLla8JD2neksSbwt-_fxQXCHtk3kSnYsGNR6tzY7ZTcgnHLxORb4z8qkBOqGbHICYqU3vde2EDDLrl8-5ZA9gskmdn0gG63KaFTVMclFh48dNPzaydC7JR94c60E1NWzqhQN5scxa2XK4zZ4AfTuBpDBw15DMgexgVSHnle9_lfgSwdkbfK9F1EDi5O_OD5M-Li6LFzRvB09FMLwLRpdvkTsrmKacwmZcYiiNxvbd3HAi59UFyrz-na8z0wNGxJypeLBKl58iG_CplL-rnkRHIkbCVH_N3jvn9DMcpxxYlo-H1fGDXPsUqkZR_678IfTR1jwlpwZ5lb5NrPNWtVYV79sNqaQNSYxsdKqPwHgWzygNVl4PP47EOStwHp1yL92GclZUVui9pUNsa-2rnfAoXW1xP7R9GdBf2KW_6ZCD8r2JSd6KEgVAuregO49xw7Nqy_dmRiZH7zGwlIPrNcsF2dbx1eRMUNcPydWn3RZOKvB6d0_A=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/J3zR-lj51PhiuQqq-V1USxnElbppW7q7RV9LXfrP9sWpMMocqVMgsYsdHr8fpm3J1vrwMKV5YeKhgZvGOPBygTaf-hilK3SxnKzvxsur3DSahX8TMKevScFv1jy7Vc0h-u7WAPeMp0T4KZcNEnfgiq9HLpOlVThKaEoU3GOkNB61zmggUyw9EWTWIpLWWY9fGqpO1CN9nhKDzUCTmwi0zNxQoYK5jWbsgYGu0j1lMT4vufEBkB9kSuMca_KKZKbgetygLX0YbnS6HF_DRIVGnGXLEz0Ay2T436nREfy4Iu3yTM-1wfgZOfS0mtlR9g3hxnhGBNxsoRlwL6iZcnVBQfIpzF7cgB_EbxMkNvBT2I_2WSSGjwygy-E_56GhOIBcHPv-GUrDoZSIqE22CLr7O5OM6r21CAVllOmPAkSjIHA-P01IXdSoXvgKjc2C7sIRSOP_5qZ6F_vfILjxfiAQ8WkqvItqwCW5xz1IPRT5sFY9U_kwhNlRbalwqv9wHuZ8nryUNx1FPZ2mjcVDSF4-z5kWOgT71OOBzN4ppVMMyCjFpzJCta-OgmMd4ik43egXxwSav-xGNKm8RPEozvU6pPS1ZQE25JK63RR6YoI7w-gTbdO2UGM8UzyvLi3KJsknkFMxFpjwtpNLwqAiBvEHFipsfhtWmOF42OvZkhqk7vOMf2dGcl7UtpeGZdYuoiXse6JvQE4l1BJtPgpE7meZqw=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/fpwPSpYY80buJVTbSMiyOWadh4-huVVy2IsjPWtKt9aOST2KMLD9D5yZlq9_c_8iXvCi3I6gqDgOjQHltcySK1W5ZqwwVRJDXhdolImlZujWImwucPpj2DfyCqmYcql1s1ReC4MjZPc161RwZKlngDIePox0OZMjd0JJZnyu3bt6fPko_z6PRAOBalmJ43ef38NfbjF02hYoKEPogMv2eKLfIbq_N3IAdJsj7OeGvFYLLGBhz6Bbr_FLxUQqThzRsqXnDRRPBQbUC94ynRvcbr-zUf7ewSiSlHaWjfOYyV_nYm9uCajwoHt0m526Xlm2AOMvMZuzy7BbmG4b3zpneojGRj1jffqcOiaqhV_ZtbF87JEy_8lxWlzFRn54cQlz1vwMc3-yWAwD5sDw0VTGCmUX1Qm5kzSlZXB1EOQLCSq8ye9Jm04B15fWFpkCGKQdpryzYDtzd1OdDRH5T2bMT7PSfYT-1gBccak0RFpNU5zIzCiG0RaTqEBuSUjil0VUfBkKTG6f5ADAiD1KNvJT0tcTdWgU1ejXcbhm618fHiNBtlNAcVIZNb0UUBjYWMDmEQMgSgH6fRZZ_wyO8kLmyWraJRWxOgYOjTSLBVBMc2d5CHDMCJzksyDnDO1Q-FjD41zwBUWVK2GDyeECM2kPdtCajm56cCVFZhA5BDCTdGm38K7ButUI8QW1AWDjb-Jqb9XRQSHg-E2xWt-LDl0WEA=w1006-h566-no?authuser=0"></li>

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
</body>
</html>