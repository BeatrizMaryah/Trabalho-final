<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria If e Else</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/teoria.css" />
<style><%@include file="/resources/css/teoria.css"%></style>
</head>
<body>
    <form action="quiz-if">
        <button id="submit">Jogar</button>
    </form>
	   <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/pQ3o2RCClsyufpq9sNwsfFCNh1oVXfaIQZ8z13yq4rIV4Y-D9TX1oG62DoDYfTErFATO7ecsTYr6fsQzWprYR1R7G17ybA4foRIg5asYKVYxNiXU0lnKK6N4cRREu8b21c6WCXU04KZ1EED_jJCktaEIKj0AFK28DiSL4SRtjkDE0yEOoSoHltnBF2zN4CQSYZ4wMrep3znV-VeejCptG8AtCACScM-P5psfC4kZ_WLAwpF5fcrsiiv5M0r507Pp6W9ppEn25whg-v5mDUyT-Ey7a0ujlbi5xfCunjwqtA6X1kYYNiY73HNRCLimQfVIPchPNFRKnJfvkOj3aa8ZniLiOkRN3klKW2r2v1ty2c_isoAwrPtxUONfZoL0ZWkkC7KYtRv7m0RfggEdDBZmGIv_fDJLFAmDB59Jwz2wReYjnTPIXdPJqZk8RXvjtymsk5-bdR-dzjafOBIWwSWXUQB6xHr9g_a7sFDIl7vEeEIFJsnaV_c2z2sxjmttOeKClZomUgHObrgp1ro_dwLLF2Gme3ae55xdLqcccp12n-La-PvZCEYEvFtaAo2DAO-xIhHANNyjNYBAk3CuLYh60mGZnrf8MBn8RJbOfwmAjy_ex8svIuthONQSS0TyKoo8gFuP6p2c3bRTJCe48qy0TNYDPcN4gBnDEcQqnZUhSbWjNjk9w6WMrZF3aqzT1TRs-bxyyG3BB0SDoIMs2NuYvw=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/NEiBfkNXsh5BdYQRH4dhtnVtH5SkuWAh-4DWccRPs9uFcPSoWu04FUTTPeA7-oH_o6GlCPYU0Zp0fhEbpIBi6AKpDwBnSnxUXvTI7gvnvIxMr8zU_x9X-MUDgMmzEkWKBAls7zmQxG0QB-txnJ4s8mrbU97lSbCIPkb8tyU3QuyB4BlyJQIU0WAKb5rLaW1nXRQ9o_5cnEjAXOR3F3j9GkLsZQBws_sHpLxUagDXblLOm2Dkn8WrJz_6YJqlo0jNtOuZ-KH2Px8tuF-upfW3iq9DxZhIuU8Bm-SVPoeB2tm88_s_c4MqXNt97WxTTyfJK_41GFf2LRydYPENEPzfI_oI0UoJ_j55Iii5m3fGS07PapmzxugOwuTjDOoKVQVHl6uBmanBwA_mvTLX9bXZd4_pBMrc-m_NYjbF8me2RupFqEKoGs-l4eMx1_xgrpF664HPGqczawv8GesHB_hrJg1ArojNL_ZU4e2vzQjWSuLNIXNn6H8pPgxJN-E6aeQI6cW0DwIWFnZ33rA25zfkBYZLnMiaPKnk8h-R6lufRBq4hZo4OnPRXScZXlERR5NxUCxz5PIUkAlOtiGBnguv1mfC1s1ulYVpjVoli7cDTPua-XodKqte6D1NY02ho_d-1j9lktb_m23-zqdTnVbMZ7ayBCvy28-Cu1uqerOSmbUDEPpLlcGz_1MSxDmxIX3OeDV4JhboMnbdmnv7bFzTOw=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/k98zG6rjDIYvYFORu9upHz_lX_zuxbp7efMUF3-y4eGq8fCVLYZ3rtTICosX6E7d1ntfY_dzmUyduNLXZ1xGZrYzjWhUzlkvUQG4ptIIPZ0gC3Ari_1EoQrWAWlXAjqPIhp3pEQVl_wiIxdIZy26juCtH7BrjFiQXHr9KT9kz-tK__s1-dYSmqE-vhHvQE35DGTdOwYzG0GL2Gr5QqRgg3XxKde44ROdLlJs2G5VUp0JCjKsxQC413xOnOl27J5jClU_vADJ96aVPqxJYfriQuHG3swvpoz2kKphYvNQNB_KAUNrswsWalIFVXGoRe1TFCPUk_JgwT0sPBFzIbnBcF89UqGkz1nhn9iDpn5SI5mq4Iutzklhwi5HqhZCISFc_hgacjXSG6u81K90sc4dRL5Jb-xXb_YHi_jAv4GHQeByUSwRlUYsUR5ZA6d9ko7kYUkH0DJm8BZbDrwp2KQudurcin7Nz41jGaPkGSqKi6ly7r_8r1lY-yrjfWya1NQ8fuiAr79O3tqCglyoRR98I640oL9el6YMIbXIp6o2fykq36rBLnPWxBizZERKfkYqM8Bix1qlx8GSZmK8I8nTkbX6_xS7AxZdrAyzenffz2ZMYcH9-TMvwLbn6fxAQri48QyOGovOfQhvo5a8AGmmgQ5MUOFdQ5IZ3MbVtzfeZW-DBvXyVoTgL-2KhCH0h3Z5jt9v-0BspJIE3bx2tFfcYA=w1006-h566-no?authuser=0"></li>

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
            </div>
        </div>

    </div>
</body>
</html>