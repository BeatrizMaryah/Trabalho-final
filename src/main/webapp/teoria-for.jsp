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
   <form action="quiz-for">
        <button id="submit">Jogar</button>
    </form>
	<div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/vDezRdersD1HACH0yQz-_srQu5pRmeSNi3MxhhpirFWppx6fyfenASpcS2hqhpUrZA2bovyysJRbDCGUgrIetpQhP0xpBxPa4R6C90VNuvTpozED1ynUhsF7I0agsCK2D9rOetM3W7J4Iryf1WiuAFibHYH8kPiQx24TtYXQFtmKvM3fmhQwdfuxOGr7UvIkyONWCPjK2PVOFcTmcYkjO3Pyn0gEiuYqOSwqRLw-BDGbc3AlT3w8iidU6kmMQg4Dc_UhvralTAqn6ArQdFijFODr2DGp95PGtW4QRFStoddw7MC9VqLQUKq3ajjPQCFE3wcIW45x-WJUL02y34m1_UX59UzlJLPJROvI2u88kXCF2hpfjz6T5Q68yLoUlfTnc0qp7MVOJOcygPrgxCm9eJmiS2MAvOdfLWQ4dZrkOLgUzgwyQ0hwiF3l9dDIIwjAynZS7rgWM2wGt3_0-dTpG1PnbUuxs-JFC-J5Z7qXIZEq3YTrb8cKKWgcBTibKH3aDkqzQEG-XL4d6D73pc1Y12_XZKW_x6sTPlGxi52vvZ3nkBDw2I2mLjJPTdqVbG9nBZuuAjZhGnErkl20qpLzWHtFiS_BsdS2D8jkw-FGrzrOLvtoBjmgreLtUACIqgOIwoZo3EaSr-4fk2rPJzpyR-r0v_S8mq48mBDpF1MgSvWHIwEPjFdt3EVk3FIO1MhnmaxitVsgHSPI0ntjtX0il0ii=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/OToCqiYwfLQkzvxSShPG7AcIKZwLgQgh4xorl2xZ4VRRSux--K7hsde4tiIjkwMQgzIIHugcINF3Wv5HTPMrm1Fm1rVwZjZN39Wae3Z3e7Q2uLcsJcUhtlMWfQrNWYY1S8LdsxrsuHFGdZB8kOmoa7obyNDDwcpasEgfFH1MZWTIidXNRXuKCR738H_LifRKWicea0-rwzgZyEkK7IDkdRYQWFx2qx8V8lBLh3cTYzK5t8w5j8kOGGz5s3TJbBD9JT7gsEz_0olutNPM5wGH3HrigA9SrdT09dIkHJR2GZpSIqIjjtmWhLTzT30h5qHHtVInc9SWHda2b_hc3V_YdPMeRwtDrX3FmEi7BcEplufuH7BOO4A7qAs3LFCmm5DDvOk-XgfpahhEKBVFITA8GFebIAZSJDZGDqHlcADP2sqHmcTDFvLUQnrtJkvj_G8moaP1jq3CLqiCvlD1rCZwEhIyo4FUSm_pdXDnXgL_AEFRQ_Z1kBFwDcUSp7bpwbOfgxApXmyj3-s_HnUXf9HSkv3_pvvzdUEJRnok_cz0jAAv63mlO6-keYAWQq-o-ICd3XxdHmW--FmGBV9mNsraehfEnLdhmbEiSYhOJ_SxdaxfPybuZhwb_MmtswJJ3l6Tyrdnq-CmCoENtnX_-0dAZbp3krnRBzxsIWaJTd_OINNqrR62avRO9XaZmvxchlrdW3PylxEsVLMfCK3iXCmgQ4Wm=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/gR5i0Z6VR9e1XzqVk4yVNcbuhqkT6dIbZUGVOgvGnNK8PhUAmQwC770z2-mol6UtOsCZ9VNa0qopEgEt7H_o3d-uUIRTWO4VIrCJeuL_v7Ed8P-qKPBydBU_Gb_7Lir-PdENEYfRZ5xwG446UMu-5bVz9-t4VqTDDzoJS_B-StGlJ93KeWICpespYKHdpxgSjWvBNf0YaQj9Jpszswnt9LNPmngA4m9cVcT1YFZu0fDJ1cqNrNjhqchsuwZ2VyUdjmKfrfiNobJ28OHWqQ41OxX6SwxIFx8AfRio_b_OqHFU_CGNFIQA_M3ygMsfNETNSGRTrjBybGgMxiRD76r1AI7scAosVESpkaCzXL6mFnvLIHWPwmVbh1nZuXk98p4i38PutGRk3OxJNJpxQ5eovLVu5A7OPXmN6icEnFYFRfxjYSJnDGFNQXbSLnVxCLeVeRZL0wdjkzTE02YVNsvEvhoeP7mM97sigo0plNuGSwZntH-LhXvFdPOXCNvG2xZ73cFeN5a56iqMJnq9jW6Ifv-HFpLW_-vZHCsVeVkul2LLzfofgLf2fj4v-heySpqbzcVfZQV0ce34bPjXKPNqkp7ahDG1WZYnJPS6E7i7vJlrboLy3P1118_q7BRj_iZQkT96il08cBtQERLwbK_i2GopHgDVVPjiTMzgIiZ7-zExgpohQlmTS91ittsGYfmMkoJACi7gG5QO_IvnS5qxPgrz=w1006-h566-no?authuser=0"></li>

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