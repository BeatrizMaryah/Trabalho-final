<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria Boolean</title>
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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/xRN0y8enXiVmvx28bK4LSucKPBnqsMKV1O2RgEmcju4E2rTivvKEZJWm0cuJBl1E1mAy9HNhX0Tufh8fNv6ragCkBTbYFt77xAHXy-ZvteQXdmzW4S0s0IV_pZZeQ-OD16yGhbgpjDw3QToHtmJKOObr0R2i5MvyzwJD813Cj-FCyOLbcOky6SMlsk6Cy27gxeeJTLBPx0vNAFMZNVPOefc8fz_uofOuHdNdtWgUH0Wmxpv290ygIR9YPLLpDxcWDamhwnMW3CV2WMWVwf5k6bnU8DiTwFpY6_Wq9SwEHr3ckZ57UxHLsvxB9nojGaJcKOClpDbZJ36cB8S--t3WB_iT84pvrYcHyx9bNYPC12B2iBxvtBNIuJn010jg0tx22E9wQ_gvR2ZhmX4qAn0o9A-WPWoA9fTI4pt-0w0ndRY4PSg-lePguVnlAAWsaUfh7zvXaLryks4cskFdltZqX9wPlzS4f-QjvJLcbmz3ezSs03TxxzQaKRdNzk60P6pVmngIolk8np3V95teDD4nS-qwpOwlEZR3vxtF0IsF-9e1_fKH1n-mRqIkhLjIiuwW6XEd-5QyIVML07YG7hJAicWpVP6G1uHpeCpiebd2gQgQwyn9vSiH-aBGfbpr9QqraeYVL2xB57frdKQC_WfHI0GwMv5fMWaGw3LvifZFyBCP98SSHH5griVIGlIpmAKN4GTaw5vW-XufK3MrUf5Xmzkl=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/w4SLBQdRsAwQavXzXBlKYL1uQN3ibP-9T_bBL0re60A2JJxTBsZyReoyzNs8cYaL0w1F5LA8ylpK5msVVL83k3l9AXXIppzl3WgTZ_nxuZ9zCuFE0Ikh_R2rIHVL3Kh4jCNfcMlOdyA6Arn9IGAkqNX1QvyMeJCaGyn0WXdwqQaf8KOzC5aG-Zy0j6EnS2LM4COPmbWKZrOiDqIH-eoKgqpIZRYf6MVd6-9Gep2KYtBozNEUGscezEIJZS7KZJy6gEuLSZmwBqGdNfrm8fZaW1cPZsWOnEn7QmhVg9QUC8tsrbfWB3yAkN3Dqq9bKqU2GeN9_yej0_mROyhI5JrwFrGS-yhRJyUveyOvq8bCzNV4Fd1dAeHAo9eIpbIOzRQOjijARm3Gfma8yFstRgoTBfzy4OUU8vB4vmRxelg_0MthQ_7m4lqZveDNJiZnFMwfGdoBuDYdQI8jIw9VZlouCiYAUnJcGfrm8VL69M1IhfD56ZiYzck-kSYv4SY_oCgopKYFeNYxGjERsUU-0iIu-07UQyQh25qpnto3HKWSvBylfeTJUDGHfGPmQXB4ddIlT4K2IUFvkxAEo4JJ5hB4ZUO3IrlZmbA1YONQw9zaNq-v__P2740Vz8e-lnSCjDiciN2qMqQ0i7Xb8gO4y9j7V7LkKRY8wj8mD8O1ALbBQISs2V0gTQLpsBjlSvH2v_hhbb-Q6R6LSL0idDjD1S9njtQL=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/c2ZKwGXVE1WDk8bEjRL8GdgpIOmfyiqy1mutPVIZnjcSuhLcNEwmK1wtcCVfU1jV0s-ihIy97CxCIxPiC0e2tU_6bDKw4lrCtgDBitGRn6mMzxAlxjbZxHfgbKlvPpaOViVcrTjqP9NTqgpGpzD4z-T8wrrSninU4U0fRZDBLfv71gM3Pp5oroifrjQ1VNI1sksTWAgzPp2GszDS8W3Bkhe9YJ3-XeTLznR0QjG2GAIsjBgLYXFSQRx8dG8rqnKfMXetEuoy-riHvI7_kgrBaWrzl0QNASj0VzLCsCnolFBNBPpyvS_reGTcZ6NEx2oLcjjfUiNiaGXUa8T2CpO8bQ3-OAyPrt6671drxsV48vMY97zd419__SDbvPOiYs9ybQiJ66ByzKn2JpsPlehGiXcffpsxIB836yj9GVejOYYaOJttaQXsbCVW3AjWM5_7sTRXUi8k4xtvWeoACQd4sefpdaKTCem2s8NguQ7O9228hRjLiqikWBQOVkyGecVigmPGBbLRDSrhrAm87tX6hfQp3h-H1FRsNwT6qremXZ7Oxe-1IahtPwrtclmfl8MzXIGHi44WiwMnVA2rxf06JfbOqnAHI22j4oU4UDq8NScVHdV4TZylG7Q7GslRD_B2Uxn7Mc7QxbSq_DcLxuj1z4fCHdvrwgFVqMFEa6yU4zqvGpmQEbi62xSBCiDuUKgG64aKj1Q4yFEhqqVHTdBSNRaA=w1006-h566-no?authuser=0"></li>

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

    <form action="quiz-boolean">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>