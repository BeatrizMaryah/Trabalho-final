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
    <form action="quiz-boolean">
        <button id="submit">Jogar</button>
    </form>
	   <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/QhSsg8tp5ypOoB4l5jgxGgrEFvs4Fsll9Erv7HQ_oJF4VqAzfZyfl0UMU4F4At1uwJ5zjisY_lBUk5TYtnPs0XnQW6P3vrcUBKjBj5iXkD1SXDc5IlBTwtszjvPcGZyGICCfS4jVRGr3p9u7aLmyMKOe_DM9uFSui1l8NLD7UiId894uN3O8ERgVVImTsa1L_CMVw0s07zxP25RbODsP00HeJZOGLd7JXAXNJQ3mB9qsHN2o9vZMIHRDwp1q5-aSEtG89F21l6UNNkVcNf3fenR8BA4s4OafU9HUatF23ZlcpKeLpi6CfxY8Tm1frrMz_4Y1JiLqVz5gfxYidtLfjXelVJJrEP-hIjkigWJilc3McZJCiIHGw4vES_Ob4EFTE8C3EkUJO15ajkhvRDqJdfX8qRrdkqq184HVNKQf_pG1JCFCCf5xSJO_vJOQU5SQeCf7jR-uKnddpBw_XPhF570Z10VI9TdJVRVtLF-yhzC6KFEX9kCc4iH2UqkLOOOVXUZJNr3oYXOMGN8b0_yj8kFU_Gsn72p4piXv9EFqHN0e69iWI_vTmEx9kILivdz_cJyr6Ycm8tnE08cx9-kADcvdT_eClNb2Wp-fv7wgXvcujARkwYkU8iLYH6j3MylGLGdzSKZg0uGmjoYCXA81PD6arWdzIxyQwu_nuntF2v9tPNEooxl6Z0wRBioMqdON7mduf2lAU26AqNt3iCTBpA=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/PScqC8v1zkVUrM_4hkbvmixnpuHYByAh18ny5qFNYRYyW6R-UtTPeSjTyRMLFV66F-hf1jud3311UL3FHhpgXM7Sk4XE13l2cyQtX3MlmJ8r9TdDd1ENPopDEh-ZavyUf5xgs8-jmjvvTwY6xqd9AcJTzDoxYf1sKDdDMkSqpE_GRR34oS1zm6FeipaB3PXLF-3WdLYEn2hnd1qzk-SASljJZY8uLBzA9Hcfahwm3u8aQZhm87YIiWB3Db0lr44tTqjykd-mZexFt6ACCzz-uB6Q_hK13ttTTq5zH_78atndhLkk4YapjWKekM5LaovBBISoQzbaNKz4WL7JNMjv3L0oOk3Cq2GHhG8W2oZNX9jkf6UUdym8sEzNDb-2A3zZfJbwpP8LYRUu4DgkcAfz4NV3CxNFcFWyxshvwGWsLgrvGckXdklybXc4e4O7IOYDdJuAlVpSgia3j3qeX7LmyS9eilIa2xj2kKyhI3cn2v5K0zLcpyvSUpfm0rnVpkLMvusNr4N4EbjvDSmjrrUTEA01DiAtGlVr3FQgIoZyi7LTEveOuBS1xiK1DCGzvmoQBEXAK-hLIitjfnxZHUYdrBiMfmYPAaY-snlxzK2P8slNsmiBff8v5-pK8Uc_F7BUb38Q_ap8w_Uj6bs0iRjUYWYZqc6oXOd7MQ_3FSyVCwxKgGy36ICLk6bhdxbB2Kc4JfGBUmewHwgQYxk72vDKww=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/cTaBdron4fqaTPuhP__3JlZFWhOU-1IhLo3_ALpRhBWFRcm2juNrolvgE-ZV9SsSoVdBiYzKOG7n7y86oiAbjQF21xC80N8QEKrgXShvmgifINt-kJIibb1OH9SxeTOgY5QODktWu_BDVttncvFdlMyNriTCqw3ArPdDfdgpfqsSDwMnma5Wk_fnVNAK25YgLb3mJYb1qHzCm8Myj1UdnLtDDoSkF53z0HtasNef-cgsTceKy0Uc6jScX_mzmF2ansnhx1eRYb5xpq4WIXgxjipqh9cJZHBZUoc8Pm_BBso5xPIcluDQ0LgiAmKL4IcOMAFJxRQL1x1SsyNsK2McFRf63NNcvmy4vk4oG2XevY9WCsT8h7JurblxhesocDWHzx3faUNI95w7BGUGYVQxLSWDwYzRkbYddIxqFtUzdqYT2gpVjWSK3ev48XD-ZOeGFq7obdlJwFfwvoZjPBEnghQP9NJAk5x6L_bqvrz0KFSOK7D3og3dlwGh1paiboirUQohS3EfXY4snbz8H0M0_BT_sujYv6umNLzPvbFnvIM-7_3eoL6qAMzWAayz39GEWwme4SdnlnrfCf_E75sBEdz7euRnSM_-WNKyVU7csAZi_mgiHEfSpLT1gkQBaWA2olVNgE42KWRFZBO8VDQH5M3FjMkxJc1DyMg4Y8bEjzvwVJQS4IQXStrjyyG6QmJoEUwItulW3OoLs7ZYIIS9VQ=w1006-h566-no?authuser=0"></li>

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