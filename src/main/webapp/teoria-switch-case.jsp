<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria Switch case</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/teoria.css" />
<style><%@include file="/resources/css/teoria.css"%></style>
</head>
<body>	
      <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/grciePZWdt1CDu1Ca4BloWRvYgs4OAMYdr4Th0_MJXFOTHIQCIbSMKmFJZrUQQoihE-cBI09rfSpZ8xs87IZ_CoVU9Ikt45Rfl8HU_svjM0FNTvXFa-zo_GgTHY1FN5ovs50Rk7a2wkxvFqlNIzZA1RMDfrgFJClE4BZLqFT2rVQ3WRHchejX0Ttmn5z0bmK2SdZ9langkXrQOt5koQFvvVPsTaDdy2o9zrNCLuoZU74lH-OPe68FGT9Db28w_6YwAPFr4RKpQW8h4N5IolpiOfnd2NAI-07g1P38kj9ALSRPtAl9XUsOYvhcPKEQPsMbez9BucOoS4FPorwIBY8sXDhW1v1c3MFcVaY5YBZHbxb-LdWZnFjWnCaAeeYbW7cpta8Hq_88CDlDv-MrSEZdL-GSoC-k2WfeqhX3Z6Jc7ApEofg0XqWCb0E9qhOL40icCKMVnaVGlbrzAGCgUaLW1OGR1uJlkS7vRfw1KQhTtmWcI3yZzDiYU_aoLK9gfBZCUiK3X1JZQ4itWiUfo0Wo5h2OndkhRQ58HQTxw-OKF2zyubrCdJyVS8rPBZjlzLC1t3bVJckO5pNP60UDxPO8Okj6nwNXsdG-W5MlGF2Dr6XPE3CEBqGi1M9_18eTNlpgygv6G1n6NY9xrluAzNc91-9l6Q3UuaLzZ6-MNldIGAyupTLwigCa8FynGrHYES_Q2dxQZC6cqmi0djL=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/8hKegZoqcAyWDggU2WxwJyskf-AWhDQap-0gxpBI1J6BhOJBlGx5BnS2_9PqAfORscirjILJ7z6Vl3dxLRLCI5SRzH__9PAFXVQ1RU78j8sB5cimOkpj9qyzpmK8rxV_Oe_EXf-UaJ5fsplBDt4H5BrvYjgYK3FBNEEMzW6-4waK6wMN7lgz0GsCnbbxCfN0y8Gy3L9gAH2Y2MREi3pwv0g9W-k7CrH3SYI8Vgh9wpRHkADEF5qeUbdOPHXVQsrjbq8PoXU0ShokVsBuxQZmrp838vhUGOLj3th1D3QrQo3ZzuvhXQMfeyn_r1r7Ty0KtHP5DRM0W5adM774VbotA-ZgGpSHyjd7Y0e2BlsZAip8vzchF2dadbk9Z1At3Ci6MT2s8rSIlggta8ipq5cTt66LM7-ihszRJGe2N1PEh-7zHcWMMn4PbRcFduQ1w3HtuOuJ6s8sLaLirsQV-b78jI-v8IkKfqhZtXANAMGNEyj66Ik3e5zz49f1nPXnKr50EH0YaUh8WeqUn-zD8n6lnFY5YEGTkNjIhUFi1g5WdtrBUTwz-bowFXKy8G_79ebOjBxMzLMc4ic7Z0-RHK0spNYE3ugp2wGOcc1fqmqf4cCzLRN_raw9EZbOchJDZ2PfkKLb7K5NQOIDMiwQVb5qRILFrnDQKl05QUG3ffSeZe_SlSqbk3MTJw4P2CikZkotDeVRtDHBO7HM_o28=w1560-h878-no?authuser=0"></li>

            </ul>
            <div class="s-control">
                <label class="s-c-1" for="s-1"></label>
                <label class="s-c-2" for="s-2"></label>

            </div>
            <div class="s-nav">
                <label class="s-nav-1 right" for="s-2"></label>
                <label class="s-nav-2 left" for="s-1"></label>
                <label class="s-nav-2 right" for="s-1"></label>
            </div>
        </div>
    </div>
    <form action="quiz-switch-case">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>