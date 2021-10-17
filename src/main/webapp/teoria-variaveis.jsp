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
    <form action="quiz-variaveis">
        <button id="submit">Jogar</button>
    </form>
	 <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/u05krrBQsvRhMX_toVYlFjjijbadCEtDtwr_mIFGf0bMqkgLIkIB7yaOsNbUnN_wLCDrKjfZv1_pjh7t8jHGiRZhSizDPi_jd8a63LORE0StwBeEOwBfeDoOUTq-JStpUAQ60eP62TSm2oGqEJtI4wFRbXxyWBkJ5IYEoLpNTnpgQ5wcAOJXRPoX2W_RtU6trnK39SS1mEWWxhyVVt3kf7ZnYrT80i1gyXutqvUgQ0tvHdhuqtvKNxHqlgwBipBX_t1XmIA1VeCCi8JNFtnTtKYVlzlIzO5-maHSG4iXWioksuFaUna1DGXBzOuIkMN1AdjEvchww7lbxHX3qL_klPNsPX2W5_0w5h5ATlGT1b_NsN-ZoeBVKfrfgYVv1eIomH9r6R3ysHArcEmSNIAJYgdZNgDtCYWXGxomrNYuCyq6gncrC8VyjVeBPfX_4jn3f5BPbQWZw7EU6_Dw7yp6kp5Jesk91O2EhohsceKi5FTfci7JLBvH3Uv7idv7-dgXC2x2ERgc4l_EXTDNlHnLjeTeZqF_Zk3FZc14uSr6rRu-6kxWegYaVoLf4CAttCtRNKkXuxOMSYjurL7RyxyvLcHhRSl_ySS0KLZPLrPnIkVxGZpkXicOtfo5uZtlxkyBU73nRHeHrRWhzdoojnc0pLLb5qcKOEl5znzzkgt67LZC9Zx_YxlCoZ8TkQyXrwznQqRnovqg6ZS8Ye6HYf2q6JdJ=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/d8_cPIPo_BYY23QqiFF1jWSDk11rbwi6Yz-q4BsVbITYRgld-T5pGE0YiTptpGlCRx_se_Ut7yWKvR1C4G7zOi_gbP64PLuHzwylyRz_ZJh4rRWmS7jH-VEyhX0NW1kuuOVD9PLpNBOqG3a_HpMO8ATuuwtfOhSlR4S-frycBwWP2dRtdaSlWYu65-iKoZfKB0fkqWMr90e0g7ubYNYScRusv3Nym1dRFuLRmpwKoUnMXIYsi7Fcwc8cEBccsXKpB9MjseMqiMzphLlvLmMQsQmyTiFFN9eHY4myWikaJhqjQm_bReOsngGh4rDs3t7q81dwhBLhwbOpPT7ScOsQnVtgK4n2f4LiiAJ4SUcdHYsxL66bM9x-IYuS1zo7svFIMSHuMNy9m0-d6yEobVhmHBdwd5SUxq2IMF3hYjvYd2NUDQhf7CkHKjVaY7waObgM9Ta0p0LlB17HAVZf2ejQ62qJqXYOUuJrH7IqAz6gnOilrtYPumZZvqEtg4vom2l2opms7wokWrA6w8KrNS7MLyoJ2UTCHnwCnw0l_yQivqIthQbkZHAGJ1N4Mr_OvPnus2Kh7VarwdC5uOp7rBeyJXju519M4tSbC8MFaSYm4xHxg19_1dpTWOHY53bc8MqCijfxxTlKVJWmnxzhNG7uPERYTlR2hV7A3JeXkqvmIxLH0JxVcTz_D-5p5qe6U26XlXxtsKbB6Be2_aEBqtv5pzzl=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/yxeVAecb7BPHgrRXueeG9Hcc_mPUzZ7z6OEg8tyQNtfYprUyjt7dJuoDpvLX7T-ETkjB6uU2tzrEa-UZWpBWzzYIGXmms5GC_yMgMQ6zi3aS4kFArLsTI_xPrGpp8j18RYXcljsVSB2mGT0CICIfwdMSiHOA9verFzMX22xMqH4i1yC11qpGNjQ0-mKlMKI79Mksbwz1Glbq0oP35Vi3gZ-rsW5gGzhYQsdrrxBBR7AHi4BMFv1beR165u1MBxYjJp2KMprLnHb-DDOaNrt3uCv-zRb7xkDf7Ft47I8iWapGlAbjzI1LfoCA5Q2kSeVZCMnKhlNMa8lNKg0Z3u0fyIOahcKdGNRgvdOT8xjRT50mQ_F_z9G44NiMSPkT_D3U5fKf6wh9TjRVu7jWYK6pe0vzw2CcKkdP_XsmLdnSRBGVmCrOOkKEsPeEI85N7gC2Z-Uv2iocQk51LE7SrC76NeLwRbi4q6aOJi4ouU_LzeyNM1EwemmPBwojhUVV85pP2atnA0kxfzhtbzdakMbpjIjhI9ZgMAJWwSgyxgqIct-8qvz79z3ecwUqWMWpkixSCVZ2XHiujc9_Xxxnc5cKeWsnnhkNhZQlyp-V-LGmFFQrVK_KdoLW47LrbVjkvnaiJndNL8cHi-s1WRw2VuSMth8CmVvcShCBnAoZTzqZroozFovYeEA8ddb9TwZ-l5rkg44kgJczufQ9tc5in7jOv_xr=w1006-h566-no?authuser=0"></li>

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