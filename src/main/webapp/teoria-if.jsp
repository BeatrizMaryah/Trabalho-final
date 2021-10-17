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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/HZSVxqBq24vt986Xzyb7AnQTECej3PGKnVEJVr-aaORAGYpKMtyTzBBX5gQxa8l5DtS3aXbigZ03di3WY1tyg8fIXebZ7qMcAPesk6s2YoygghgXG6s2cytIGyHBzrGHT7vLwepvx5NNXWSMLuRZ8-LqhgcyCGVf9jrpbpAM4kD1wadz742KNJ2gY9SUFE6PfebPGqBz8EtA3Q1dw6Pjh4tG2M7ZlA7kzvB0-BQ2etGTbpS1XxEkYqxl55Q2N_LmCfP-M5qbcJqHBld2SkZ8bFUoUFTaKjnNy8foQsezeo0TBSW8JlawovcNU1lQCxTsXH1zW1YaTqSgusifjTRanrokptyI6vEXPTAOl-tcIZRDDubJtVdkPGgEzg9nCx5RYvmxtY4Z-nV9otrlTdMRgbelKPuV9CJ7SFymwD7e3eZLpKb_GmqQaVBQKWkLgQ3mym9l8Xr31aq0WO-RVYBJoNLxeYyaXf9tg9G1zf4Q4B9GVoReusH9GVmEF3eTjMq5uW_GCVzmpz5wpT2miuOlNv6NU_vToD6kS1NCHCpA7uvZDIH_DFZl2w4os2IeRG_AeEOVadvJ4yISKGtY_x6qdZzdoZhMUdf2Jil9kLtDYzYnq_5aGzE2nExaIpv9-qyD1PSRDkaF6gXbMnoR1b4eWiEv4doOsW_nSvPEkW8BvoziHbcrqKAMqP-WqOkkvH4CQ1wLX6X7lv48_w_1NhNCGj3R=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/bP3OzJApAXHo9xXJzJ85lCxU4nF54Yvi_UBRJhXAAUFCSlGtGO8NZQo-3T-xYoOv6Wiv1mXVfEN--rh4_RRRt1_TMali942NXMs8Of52mPGtmTb6vH--eMywEeCXxFxRuEpPijjiMC2unPkOBRsm0xaHgoaGc1Efwgxio0vow2bUX6eZ7FqWZxsBzUqVmDWUvxfjJM8WWSUyvln_njS0kMqxQNanXSeytUt1ZldmjNUaSsXoXXYzQehtCr1mjvfl47zypFQaGST5zYV-MdJmTqQa07nLko3-H3U8iB0WykGQXx7Ea-5-T_AXcio4lAZ6O4LHR3mtigI5FgJhUt4_MuCO0WpCHN8u94SO4-9oqbT1MC-cxiaWlgyqDvnOlC7lY2eaV-uH5P-5ruffJ42JwNxpi0LVSKnfwcNMWwJaDdlPF4jgYdp5fhLd7j7bF5vWDhl9YEkEQIE_U1K0AohscbiDHKPwJBFp1MTYH83ufR9ipHxiYDzXCOB5iZjiBWxOiIvoXup8PWZP-nnyp1dgt3ys95VqG1pQQXV84baRWCUBOpctPQROFp6u0_ecupnv_IyKUuy6KQbTNobUWb7Aph4keUNHc7nTFyLGJufh_xjxSJ0wFNniqf4lVruxolVWDwc5Kt5JF2zyyKKTOpq1pzjpjM1g7_tMZjhi_tZGD05qgU1-KDd-3OWMfDT3X0uWURJ6cwYLTNA3L5KvhRdaxPqe=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/9ILKQobEj1i72SiAmFyOZkra7Yksi9QymuNFtSgcxsj6pITCTJ4LVhr-pskIn16BTcMqCZx3QuyOF1Z6_l1LlglPZifvJbQ10277CUHxfKAWHalOcVy3xyDfcP3nYkQkp3Q0W2a5GnzPgefk0ltsPV-XUh6UOqCGrriQAMPfhvcMUeGZ_fvyyt7cZYzh37VdgVJRnOnf-sv_7bZWZsF9Qh1VL1m2laJAZjV_ByoegLMlYkKMvxlAU9KE4Y4h99V9BwRWfIgJ48Skl77Wgjrpu7MiW08UB_b2iywiJkpK5m4zSQ0WpGAFJINVLzLO5e59LLrREaS7vuQ1lochxskAezf8prh9WiSyLT1i1_VKvhp6ggIutZGZIQg_1KODGBKXbP0Ci0EQVvZN_0xP7NO6BFKjQNdyytG8bTRgVfXvSjJejyiu0PF-adZwJJN3ry_olZCku6oKI5nvnRwpDymk1WXnRqK9AgBI-f0yHUvozlMmuTGqrp_I8JL6FREF7VolxBT-nOJK83W853m6cgqeu3uRFULLpXoO_IOZ1gMtbnMjGkhj923_JP6T3LMDtvoCCaPaJ5-z5H1x2-mw7Bhv3jgtHNoD5EESJIDLSopPwgu-MKGkUHSb2nzYMEAi7S7NLf7X2riFUstaYxym7UATLHpkc3HvN_YzU2H-dhcukTVGQ1bhqq3SrA99Q2YhmLFiCUCvyvxTXqj-6CdRa087_ght=w1006-h566-no?authuser=0"></li>

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