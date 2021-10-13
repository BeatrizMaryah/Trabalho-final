<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria Relacionais</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/teoria.css" />
<style><%@include file="/resources/css/teoria.css"%></style>
</head>
<body>
	 <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/XAIDanHIvI2WNalLiPIJYRO-NFe5LlT8Yzv3Wu3QngR0R0tvsRzZVvG9mNMjYiicVM5qNt2IcOTjWiRjUIjC4BfpfDDneMiIhDu3K4XYhCsOZQwCgTT1nVcCxagv3X91E8nzpt0dQCVAOn_k7MdG3j5v7hLoNdMR6TJ1CRJ6FXAV_jqhGZ-LfUH1m_8RVpzGynniPAvr285wdDstu0c7vuezw4sy7VGi7VRz2FncZoFZ_ujnOrkNOvKfh-PdSdlpqP0N_txsEc_KdIm1hLoTWOErRR7kbW9jH0ZpVgXywTrgTJpJG2M04CIdXJoPQ1gno0_C1KGCnZVWpqPw5XckX7GzvotlKITVQTgCphGnjcglMtHkqX7AfBsQdDYtmgkvyRo-aikVhx-310V5FAGXQ9UVOUNutDRNJoL3CK8wEILX3V8_yGLKWN5kuqhRujOUPpd76ibAo9OZ4I6eRm3mDmfWquxRYMheDFQYMV__bDwULER2vB138qN7MA20e-5g-iSPcYFNpKZg1Fy7xXg3BBaYDFzbdI7BThFY4wCzHtVQvWhicSmJxEl129OhdXER76DdSr_MKyrrs43Pni88pbn19puRzJ7gy3mdhKdjioJ6mW6G2aUBcC4AOdMbR426Lyica09SEozAlTzI8nDBfONzTVtZ1V9om_jgEiSFHNyGOrFQKFmndUXMHs3rjIYhWmHL4bqP1b9XvtYY=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/Q1yMe44gYsfKtEYpoMJ_XKxfXpjVayfBwdC9iq05M2okRZpXMW3RKMiyzWbfpniYEp53BdWDDoD7v_Y_KHOrRMJi94j3V6CPeO0GbLDal53IAm3JyoNfH6WS3KYoQ3fFlw_K6O9jSKnZWwRbOaGZrNf4tQUa1pViDWWtCi-QP_vDYavuB5gKKPepPoi63Akn2oDAt8hGRDnqovcTyEePRuDgN2ABtCz-lRcxEGsh2q7aYgbVJINa8-Ivi-OtaBNFLmZMahT-CBwEkGOwkaeaYfdw_jALPV1TaiVOhyeSqQjA-s2Hnn3aWH0yNomHb3VXkSVdd6sIbJZLeBQZVhIEneQW6OkuwOnnMp0YdoPAvpBEQKqynTV_qOA7kX5XIl2VPNhTL-B8LR_J-RT-K0-IUUORQ9nAAyI4QCX_vCZl4SbH_EbsrHd1n7He3iuS6AqGeRUgjmCWpRrCE3qiGugmuP3lwUoayzjcw1Ro-toAbYiW3E3YURhbAUF0rLRfg26o3niuCSrmEoh4S0xDpAb9Q-NgkvPzsK_NugkgpycnnxIt0-2_YiE8nAd5j-43aqaNd4M-lMnR8bIE4MDp4iIffq3vr_xe5YNA4OZZTKYUYl3J4IpsKnSOZDsl3jHLhFYIgAjfZqCXLLFI1Lo7U2A4fPKxE8eXZJ0KU-huncNTsbGlt44OkRXw_hYvdxdDrIRFSBSbYv4SAMwdCM2K=w1560-h878-no?authuser=0"></li>
            </ul>
            
            <div class="s-control">
                <label class="s-c-1" for="s-1"></label>
                <label class="s-c-2" for="s-2"></label>
            </div>
            
            <div class="s-nav">
                <label class="s-nav-1 right" for="s-2"></label>
                <label class="s-nav-2 left" for="s-1"></label>
                <label class="s-nav-2 right" for="s-3"></label>
                <label class="s-nav-3 left" for="s-2"></label>
            </div>
        </div>
    </div>
    <form action="quiz-relacionais">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>