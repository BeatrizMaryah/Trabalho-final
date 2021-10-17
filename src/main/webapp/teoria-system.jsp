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
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/l4J4iDeC003PwPhvu9Dqxhjejv0-DsY4oX9nroiY760tGzvfXkIqofNt4nrT4l2fdiVC6EsHE4sPYle4KpuCUQ9YgZ1lDjNHL_YrDMbbvKXRSGDOtXqeORKSFRWIA4w_InZPFj-VXpe7F_rB9eAbo4RzUXBIUAuPCiqbCDuru5BIevjiGAVHFbI56VpxR-inAc_CLPVtLS4eqSnGoRjLUhSB3fPnZSERs7lWpHULp7UiFXewLk8q4imyH51OgKtnBnpuUE_mkKqAMjrIPjpRzIdk6r2H0ZwnQoJPwGgHxV9blbJUmjoKKXqgz3hg3IlAkg4Klw0MJTuULaeuTO5oO32hjBJSeBGUkkKTGP2e8eCElZkIwsFUA3R0ST_dbX3MTSt07mwzM9d9IZa5eRNlqwbYXf0PbcTHC4ShGfNP2qlEzZ8K19kLKdWdPDIULl04cMsl1Mz1x-BrXyPVG95mVtofu8FJJ2-vzfjE9x0Hs22bCjbim-EAXXYXCeuVddKLDwBP_stni7oMZL_EocIUWNAWo2STdzKG6bwHDDfJyfO-ACnRKj309uYTQj5doMg-2ZbkgpAAlHuQHC-FzgPOQ3ymTzYmBut8d2UjE8PKmqdELBw7VxGtxRNUNq5PHyx7MuyZPMHUgrmhbvc-zjO49VAfWnhhAhK1EOJIjjomWg0GNJxg3b-CCGnuos9R9wdaU6gcYMNgLHRdj3ieKNKtwgcZ=w1006-h566-no?authuser=0"></li>

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