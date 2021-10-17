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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/wNtrGvm0PDYfx4HOLwQcUMMf5czcHvygt_3wYSVPEnFFEB_Xi91kfff8xJCrEWaYj7C1rX7JxhMaKPyv8GClHfCtmDkWZdiN43iUltNUUTU0T8CealMOQH3dKDcD-zwH1TAxbmUGyEk7twHkxfjRhoQ0woIE0dECpb5NGmqrxltPUogt1RIFQa30U-Mh177xvouIAlR4LrAnzv8MCmW4FuvKTKNUDYxgwvHP2um-8V52ggvOZ0I-ZwrgzTIM4H4GIcuknObKSVSlBp1ZU3q8Ugs0Lj9gQwww-N58bjnNxCYz78yHLpSeHJdWAQ3WKxSc8yk1sJiYxZgwn0CgpDrPQV49dk8Q-wz9b3mbHu93ZanSW_E2eP9CB5V-3lqa08elXq-oMX8MpNOB85h9elk1B3RKpFmMPOO4K-RoIjuQFVf1P7NqwZfA4GVkwhOsHWPUnEX182buUulgv6gV589Poc-JuTID9F5BqgCsVkw38qucKfBLNEDRf_1M4sS1CJ26qxA5joVtmdO5OJbvs4kA3C4kSA_JujsgML-x4WQrgfBshVH3TN4x1Iocw3vFh861FcPcjTV1DMxtuktvW_7wmnO5c0PDMoannVgkFQ82QYIfBzydqmQ3y6cN-3jhGBl-dNQ6t1NxlqtgFTnVzMRwb95Ko6LpX2d8b8W7BVjVshFq9dbIq-yUuRrgHo036L4XAvIleXHPARLrII6wOQq-P0Ru=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/v8KrJYgnpgcL6LG90auprxHh0Ellq_DcYTKWFEeVmbKebSdJp9wkyS7grLH8aEM1Hzb_cou8Smo2ttZOj1a3HMNuElLkOkCbLhZJHmHN0iTQehWgFZxVzZB2GS2nmWyL9cDAHm9MJrQi-6db0PTK7UrZdoHnxC4UsJ06vGARZqIyzzdF7OZPnooPwLJrpnUBLRJUCEZ7ugQWfc7p6DGcei-j8i6rx_o9dsm1IIw77ydcyK2XJ_ilrnvPYEDuvbcOEaYhllnXBZk7C4L14CZtFMm0pg-sbl9Vg2TQxRLxw_JqR0LKDqX_ILA6CewniP8OUgLZP4o7v0DuM_VD-43j4jDy5Ymr-YzeHbW5gErZUyIVuJaV37UXlCzYlySUCstyCMFAOVcoApG_x1XMfjX2J_z4OAZ-UgvN4QNt2nxK1yN8fTa4T1p1OW2g8E1N96eBegSJVGAKQVpfiapR21I8OhqKWyiaPDRcU4Lxs4b-mhujo7mWmTbPUrambS3UDwRCwj9N4SYppcDsv8QiptvKzFmxcqMQ9TBt8Cf78mnCvkbl6EQrA8DNGv002X0ajklo2JMlgPRQOtp2qoRDr3kmCtrv2zNrcnSGpRjt_KSdBizTq1qlrH6UyWRt_wuiD4YYPdM1qhm2BXr8dxGAc0B4YbpaIX81u-T8JoyZy-XWC2VYnU-gNsAb8ylZNpHsPEsJF__8QUNk3HaNn9oMZbiiXy5K=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/ragKd1DmsTeXcGHO9ew5qh4VtBeg3CcBISKJuMhNMFTN8AdNnCal7hsnBG1_kbv05yo066iDu8OheFAZN99w0OzKts4TkpJuegfAciE-3Boy-NpKauWXkSEGk_HWKCqZoBofSdB7FaTyIx0uGdZW55tDTqb1nuqY4n5_CZj_euxZae-AVuRzUuuFDfLIJVz1sdbSomecGfLrJv8nRWX0aI6ounbLNTQV8g9UbCmTuqTeALE1cqhTZSKhJUqIMRtEcvf9wcUjnBLxC2WdJvlKV0Y2m_X2xmmeWRPLcGl23BwG_hq_KoElYDc79YWiWa_V70jmoWg4j5U_yLz8JZPjPpo1N3R5BDrlbL-MNspSQfErew96G8uG8u7zdA7CQ7tQTqlQ04V53Ayzd28A7FaHdmQlh8sX5l0sg-fA-26YCGYnKYPnQnUX_NaxPAo1ExWbDsb2CIlGa_8PQG6EjI4hx3QqlwGeRVu6gQMSL7MkclHFITI0xNlvspGfyw0wFzRQs1QhPEHqmO3fG98AqkxkYjOE2ATAyww5XIyUfhp6pgLwEHstYMbHug3YoOrKg5hxSoUm4_-EuJ2Ev4jXwSWNF6I68YJ_la9Q88ahdoDeKvhEm_MKG4HJ7xhoreFER141ohuqzoHMk6ku_XcWZt0Wt4tH95y99iv3hXbggGwbYd3D1hqgRoBSYgfkKjfk29sh0bN6_rQfDrFF7nexcx6WMYAE=w1006-h566-no?authuser=0"></li>

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