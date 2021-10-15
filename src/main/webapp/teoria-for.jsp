<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria For</title>
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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/VC8r6MQECMIUlzXKwbkQZ9zonwEj8zWHQ11hDsHMGjtYKp7zCIA2LYktPmBh1ZiRpR9NXF085Gm8JPVRkmW4EKkzzate9VrKcYfDelieDdi-F6VsHzN-RZHuW9EH4aXqyxe10ZXvNeUaqd5ar5gogE7Xz9b3qb5B2Bz_bCdsQKS4ruq7CjpKxK8DAtR25RgmQut-5jcjEqrvae3Xq3D21zsB-RoyRZHrYNgoXVvERhR82LJ5uIRlLO2kkDhJulDWizvPg5QOa0F3DedunIB012NsoD6qrUR2Zx58LQ92UY3qv43CfGVKO0iEtgZyQ4Ye4S_OKIH-BCnjiIyS3T_O7oZxQdDjdqCHJbFurSA8EnTekXv4BZZRVYpCYfb1y06Pn_Ij9nWdAyJJk5PYCqaJ7mzCdivjm48KIHTNnupOOLnqrbbtxjFB1bJHsAkJooxKS6usmHYCAHBtBaZH1Uv96VS8kzCsHORx73o41YcxDl5gFgSs3qF230dvTerZ5Rxrc-0dRLnjCuBdX_d_4t9zhSSCnSD4gPwapSx5mzpoR2y3M2-_TNK8stSQHYMP4w9FPdCXgN5lDJ3peVGTP_uw_J1UUchZDhhy-ojxGeS9d68u0HUKxCEYxTpZtwq5G1MiorNQ3VRajjGOouCVbobdNjkNwx-mHOZIEj5urODfEjY7MhHAhRonQoOf7y4QvdiZPOC44lTiF41hshUy=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/J856ci_7Eva3RY77MQ7ABDNqlILzw9z1pgCsXUnAqYuLNGWhhjHIOqsTWQNlUSa90GuWAOyGJ4n202tn9QTn7EG94ZOYudAJh6nn5IDKf79AmJ3kUIujwnTeXJ8DBZ33qhOO-Q9o2-ZTipL0QFiub6DnJeFU_kpXJiWiCCeJ-6suB_lFd976zY4XhGFH6zWviRu2weUshYrgTRyCFejvmPiuIh4Ccb-rsz1_rfCNdjVCuqdRJq4W6SwbLUqpkmXxwPgrfdO0U0tkziWfLXjoFOAybk2ENc4wUkNtXWaDg761bZXSfFYlf291ATAPRZth58FiyOg7lQS-aUweabxt4u7NUFE42SRPOkKmG5irlxt2cnrPxTVxsYTLvT6WwA1w3pJSf8R9H8VPJD4PUemqB1iIsggEhNY1hvwGknQ5lfU5oDWmd3fz2E-gI3JV8GQFvZhvQ25cn0OgiJRf6MLg_89MVgXse9EM4PjKYxvh5pusqTVs-VoVp3m00_VL60x_PcGkGSYBIlSqzTbyiXodlM1VmtBlfxf-ENl9ewn5aRMdw2ULQY_ELNfkCeo5u1C_hxZeJlXK9XM86rGUb1RBp3lePfUrNh1BW3lDXig6vBUZxofmoP0XlAG9gm5MMZXV5qyiLJj2ja0xPtv4ASc2TlqbjMBcWGqFsgaGqJePo-9x7EVN_gdLrwGmCkTfFtAQE0JomFf7QRb-HHLQ=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/ONrdDramQTCUxuRFmVu9yU8rry2YpRUeKsX_49WHytM9E21__5PaES_xFHG-HE91Jc4Ojycf8Fxuu5R_ulj_-D7RnnFHsVS3fTaOY6SwXX1lA-Kv-SpBx9Z-sEpq3DfNLvZ5NK4IC_cm1ORB0vhAnDCDdF072WbPilzBscrHe1_NgHocQcQ5MdoVPvsokUijWjgQrFTkHvKS8G0FEONgRv127NG6NnkgY2zuCEU22xI7s9nUDD9CYIgA3lGdP-osNLx2ydeVN2JBomAem7ILsPw1z0tvP99L1r0aeNNkcPffPTG4OgO5L_s8FTzLCTS694-1rEY94Cpc5aR0bGV-AAtuVzNqRQJPiKS56ck4SsKH_0T7I8MD2buNJjDlSJG088ZpZzPLnvzsjeOIxzPPLLJWHVpOFuZLml1N6r171UGA4mR6vuS76vdjJabKYzcPy7MJSxMJTa9YlM-PgypI3l7c9WDtrudH5Um1bp-tZMDQ6TURZjh_3MpxrTDH0ILXwXpTnnO3Pf3Ld4WeHKuAg_ruuQSoEhqwJ4uFdtzHNpQgIV86Uw84wjoOGukEZcl0Ivrsl_dokRPHCeDpeNCURuOD-6IIf-GLNw5cb-nMN1XMhjqvhRniSJ7-GBwqSECaR33rek6Zhhei8HSPYOynJ3w2lP0uaH8JT9yas66_thurxhDvDRKZ33NIlKHwPc-dM8Yc-ITeqWgVP_6Q=w1560-h878-no?authuser=0"></li>

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
    <form action="quiz-for">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>