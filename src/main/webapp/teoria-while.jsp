<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria While</title>
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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/3toHMZ1zpLNsDe927VNrySjvlF5Uj_3h1-tL5-Bx3sZLMf6iLikC_0NiAyvytBluW6Unpzdk-QE0oBaVicS_hj2D2zbdLKKQZPeBzVkaZoiMQixtXBGt0sx4ugw8pkKTHZDjEFvcavaNrzpvUMnYwdIpaZdqvFiLGK_DgwLH7oD2aBtcvbkngQEZqv-89BDGu8s4VDcavg4FEHUYwSjMIdM3sTlWwwd8yyxd1WNpmBMvE8jErliFe4TM1QQ_fwMGR-VfycheFo8FyWtoqkYEM29Ac5FQ1UQ0iMHmrGF18Ir7e8zp-i2XakTEjl8W6C6gExdNWbt3hZ2x7-MnaGgt1qc4JH6boNJj3ogb7O0G_cZNCDN2Vl_yTDZq5t6YulRseaIwJnHdtpWeWiAK6oL65RdmL6YDMHLUo3NGRuYCwuyabpOZC3gHqohjk5xNe2fy-sRlK6MDSgdT4VXe0JOakfZV-7mTdiDwfGmCNwDY4jgkX-SbaJSindjLL8gPW-3ZiJpsWyntWeNnaQdCZRYoCjJYE_cvfRfGnfaQ0LaRYUMv7PTs5DUup1clSzMiLDOPy66v4PsrHD4SnNlEl_Aa3RR7nL8uQnE66LUgLYPZVZkLAwt8BkwoSxpohqtG9SLkQLkYXxD80dFV5YgjFJYnJFljPl7gaqV0T7KcYKCi7Cytzp4HBXYBMJG6o9vxdE6BHAAiXiBlKuLCx-RDuNP5DjtP=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/i7BtU9pkF38q7dzr0Sx_KL6UzGDDOpbK8DG36pt1-efJk9KsCav73TDT_HnUwIEtgUp1iaYVkpifZZwLZiLig9VQMs4x-q40lhmszD5eQwGOzVin3tN-mqRzFvzNlTLGgD9Nm7aBRK4F0EQ2lYrk2PGRMnf42YU6ylraY29Yes33oUew4IapqUxhzWBtuYpn5gcr7fIzaM2GmmScw2MOx400bAmAyQknM6PUIak9bvOJ2HV2D2CpnrgB1rRxoUCFxIp-0OqzxEHKX76DZdsRSAL84GoOgUnnm4dRJlO6vYEmiBVXyI_Q1xa6KMcvV49afOG1HZDEWyVjCCycSFlGxY6uwbAjs-sIKYkMlW0AoGd5Jf2iOoVdgiiuHCizCQJoas-Ne-E1JaEJyB8sW9TcaHkSybXvKmR9l2iGT3DcxKMnBDUprMj8Iz2o2Ngut_lUPKsE0F1LGdJNs97s72yVr90GB4V_PKxfQbIKjBPyYd_54s5qc0FiggnqeESLJ5ivbUZQ_eIYoxNW2nSXJgfisNOHU200h_ItNwt_deKhEBkgDFh9WQyMlS-82xvGXv_ENzCsWfw5rOI_K5mGEkz6zz98gJAAlxjZzUTriHAUzkaqqTVtO8ROQ7t0PvYndag9ep_C8GgSII6dPgyoEa2ou_65A0yXo_Ryqb4_SC32DYZRF0NFHG9FfQJlWAJKXQzRPloIbo4yLC65cpHUz7k_of9j=w1006-h566-no?authuser=0"></li>

            </ul>
            <div class="s-control">
                <label class="s-c-1" for="s-1"></label>
                <label class="s-c-2" for="s-2"></label>


            </div>
            <div class="s-nav">
                <label class="s-nav-1 right" for="s-2"></label>
                <label class="s-nav-2 left" for="s-1"></label>
                <label class="s-nav-2 right" for="s-1"></label>
                <label class="s-nav-3 left" for="s-2"></label>
            </div>
        </div>

    </div>
    <form action="quiz-while">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>