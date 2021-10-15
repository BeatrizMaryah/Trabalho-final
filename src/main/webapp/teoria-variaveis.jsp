<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria Variaveis</title>
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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/lrjCtUimvN6p7vAk5GKYqSm4NNo64HuU6WsBRzdfK7DVV-QXJ1E3pz7gNfcS11uZQnShSlV_ltD1t3UMnipfddsC3X5F1UIvvpfchzWJ41jn4qpgb-xOL_yobczKQDF9ugTqLKs-zCbqomJDpNkQa-kIShCkImdBXYCwj3F5uTbZHkM-Wqml6rlchofDHprlJ-WT5fK5eAhrJHEa8jVGmLDvkSdu7HFphsVMV5yPC4v4GtgCsiqD--MqF4w2G5nohItfy9bmeHvADc_-ilbofh-Uynqa0wDCjiJW86pVfpx5lpUm4RQlqgqmXF_pINujN6TuDl6byHNlCQZN8lAWBxDFoe6A5HBZ_eo8AkNyLXSU9D1bwzws-hglRuL8VX-AyRvinstqkka3STL9DURlOLuZPgB5I9k0Gzwhp56KYzOQqUHrOGwVu3X6WbGsdW9jdNTH2J5EYWo-tgUJhz1zWA2aq3my0GGtZrOhJ84FkYW0dhnM1OjdWD6LvOpasXofj9xSyPK1NcVvLwmVf8xbymxiT5BApt_YssvstGWjShCbd_hb-73bmzZjWZojIPQGl5Xo-zh98I2Q49u_I22bDwqomUpy3P6Fi8lbA7smOrBG4GsNlrx0c2Z24mEfi-maND5QEP3cpu8Fmy-HSbY4wn43Qj611KIZxshPhEj9Lr8MOtIiVFg1nxW2bQnTKWJugEo6cPLyr8fN1kC7=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/2aq24AB2J68eqbKrAB8jCGNg_8gxGnKUO0y8DVawupajmY3gipA6yQMFt4Rp0G_hKCmKwlKkXILmni7eHDbQ7w88bwTACUZQsjui4vc0_1Gl1wgCrZEsbUqYUbF8FMZVEmbQn1dJTWx44e7bn0N8XJLB5oZmDIbtGjVWTYEmxERvfH0bPT_9Em1yTeS3avj1jJaXB0yyhwvHJKaaQKTi-VYzJOcqWLDcZvg3mnY3qrf9T2bdEz45ccpCBTquf84SNwfhJC7AkSeQ_EbX0VR-D3MqTwyOdUaLX8gqyHztgsTcA_Id8g1GZn_1nktkoDA2FEgRIosIGCgm-khaslmSE3rRyPlhkWd8yezlGUbHe0yFLSPOBRYlR9XaaWW1K4VwqgjJcUOpiNeWAQqaV_P9t5PrS1ZJikj0xP-lZIkzXXzpovKGbPom1afeQp8RMQG0b5Qu1SHsr_VwlaAetT9bEZ0KLZk2YOQhsgesmcb0Ye_8X7KybvEIByblf_Xxsro33N7vgjGHuFShCPP5cjgny6JKYXyial2YcwdbhODUjV-v8FRque1BGLjsuOBSClqsoY2j_8GlxlDJn2Ng6CqgdCr6li2VQIj0BEBIEQ5wTD7Rty-ISh7jgt3E0HCogSK6knJ5NZW5J084YlXnQbZ5vQaYBhxGCqD-jryGrGWxDxe1Fi296B5fw9MSH8B4gX-kC35-A06cVwVzYv-N=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/NO1uuLaKUgDoYd-TDkerx3r4r221F5JpG8Oq8N0OTtz1ujNHBeTt5rZM1ufoZk3_G9vc2trBMO6ZpmRT8Z4XV-AeBmdXPuSky278Y-M3s9eat-b5yzGjZwwW71usYsGZR2_j710BMaFVPvpgBOZoAZ_2lWb2DaNIZYZCMr8t8xHu4jL18mBAFihRqjE9zNSr0BeJVyoNrjJT6D370OD_8gSQ3ZdZ48mQo_4A-f5BRNr7ciATsdsnnmyF1isFiyyVWhrrWSTd8juCZudJx8VpSeWKmQXdqOlmhGpkbbDcgJd7oSMXOcyCHoL8zR8zsalwvYaie0hyIwM8TO0ksQCgHsAkU82ejvkK8qoXFlkeHOWVEBGIhbpvbEuQmyHE1eiB1RUHfj0Op5g6Y-AwZDqAbtMQjeVv8pvgn7Qz6u6tat1PboBIOh8DJzU8YTb7ryJTO3hoL-GllCLQ2t7jU7WdL-j1JgMae_RC7E6G8ZTOkhP5uk5rfxNuOFBRJ922caT8okeehw9ZjZcVChKccME-0JxP8lpE6WZKrFXr82jqUeIxPkNniCb6l0KkKQsqO6M-nz1hR3_YnR2RtwyBSXgKP13PFL26iAER-EcS6zSrilEVlYGlMQE7lLGs-B6iiM_1WR_OoK9Ww8r1Giq800chcOH5gz2FOF_bVIw1a3oxb44IqQu-2qL3kY9XujJbps2QeYdcStPFmHInmwjt=w1560-h878-no?authuser=0"></li>

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
    <form action="quiz-variaveis">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>