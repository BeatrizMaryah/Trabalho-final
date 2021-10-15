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
	   <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/_QF0XIhJX4YfC-1vtSy5kvU2SjLP4z7n-2xS6JK-JXsWxxX5qHtrdE4vXGoKN5XFV4i5CnJXJgq004QzUQiHY9pEslSb60htSFBpNtWdEb1EQYXOm4-WzyxhBpjzq41HwxmhIbp85KJra5cSlkwy0Tg7zZB8hOtK1TNYN5mmtxF3JRlgxb5Uc7EUVuNJt8hTTFPL6UqWQNcsUvr4cb7WvUO5DwEGCyBR-iRrHvihUsJPnUZ7XFyem9hL4599WbW_r7CdopmeqJPE3u6UPT4Dlmsf2ztbbgDnOL_DWC80hUTjT2Knd4SaOt8KWFbN37Qs3Ngfeljdk7FI5VP7rISy_1ylDRx5wd6g9dZOPDyW7INKqTTSdMz0ZybktgN10Zr1WgabjJ76hiyJlUWtfXRdstuZkWUA5PS1g-ZsbTrLx27ffSYBuDNXmK8F193qMyRiFiXiDUuFdZldvgae0lYT9BuysB02Hu4iewQJaQB22Kx5khP9-8y-znWMESsX6OR-d_kUgAL9oAmUOODgkuprFizY0NmqEqs9Jk_rsn7m8s4wlCOYIwHN-wxCBsCgDP6INbNRkBSt_bXb4CDx15o-jHzQeqNLtcM5TGec7Umh3JVIOUDUIfo1GbQ3IobibHIh3DgiZYQIBoCToMyst7Oity_AI_MMVQAr2Jrp0ll47QTfXCbr7_iebJ2jROSyAonfzuXMKFcrrurT6Tjq=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/felp_V3QO57MEWClVcwJ3DvxxV9PaMYAdVm-6w8WcapVZcgZ3gMTcBQN_6jXFjeMAdACSEke944MmYBxSc98_eDjv6jX_untp96mYEpcyKGMoG9dvQ6GyE54d4YDz57XuJGJP1zYlMnlBC3nPTSRaKcMG3V8BSFSBPIVMffvkZXSZAukFCrGlqRtvvISH20foCRhAEA7jbwk_4mKp0-Chrn8tM3rL_eps5ZNnnpJtjKkZ0md6pr-tUGfME6gOzBblhnBV_wXl7AkI5GcMZQdUlO8Jp3DAEwM7R7ZDPfjjQGJ9JQ_ZyAkucCY8JKeRAwqYK9-loeB9FaYyQ5UCpQGo1JpB2yykZjykhoqUKFnsWporXZuDvQF1YHt8loenUOxOJ2JIy8WUYR0BBbwj_6HGlHe-uKs5uZSxdpdUDq5sQf6jXVbenASsgp3qdCF13gKdtqQvGeXIajfwOaS5HlxbQjc1lOSfMTiFCA3Wv8y0NoGGRLiLo3UrrtiKL1OkZ6G8dJLLo6_WA38XLL3XXkCw5iRA_r7xnDyvRvK7TNvfigcPKe8JWutuASGhveHVAKt6PMyEwxcm2UsD_jqbldTWKfGLgJ5DnFTzGuJRdL2_gfeasxZ65zKDqAzRwvDH_633NfrD_-peskO_AoI5ZwIKE_BYuIUhfigiMdGahVo-ayA06mEIbShonOdgN7d7IxLZZewG7INoEMFwdiU=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/Rl6zTarWwuyzmUj6nsGesVDAsmkBXTs5v1XE1UPPnoH5SNhR3TQRcWoJUNtOfp7m_f-0gk9k0PX_PO90LMdi9UN32KlapInbBY3IZkFzkUokISgLifuJFXUnZ1dvGWYsuSPI0L2uJ5OinNrNazoh4qSd3R81BUAUyeFACDobrLfCUBAoO8rZVxvRjNU_23L07HMSO8Aq01GxNOQ8lMKxzOzGeYADLsyiJes--szBfSUFlFsEs-c2z64B9A2MpkRAj5Cp8-IJ8vfKcpYWeLeIGaKrqYaCV3n8EvAnol-_Qi9zLP3-GzFbOLDxp53pkNcH2pyFOpehfXfKdSNZqo1VEMPMbaBmmWdEK56vgRRV9S9PeIoyn3sHvUo4lmbTwzjc_BDLmtNKRFopw8vijlZhgHiHJGOoTw8uQOqsQ0L17bjpvZS1aQr50SBaMlR5VqGIxGxxDhZAz3tZJvBniJeNBT-uu0aZhuJ2DSpalzh_90jtaftKChxlu0Tp7hTepRD9nM5zsPx7V5tyshFmW6RwDJdYTLSnF-x1SI6_KwLWtcDuiylU41G12SKtkLm9xmwZQzyg1slJKFmWXZ5ekskpwFR1D476dgkVrOIKUMoFBKCCuRRSB-fsLNzK_rf2QRqNsHn6J7klqxf8Rh1_3Irs_CxsGTuqqhQM8GsGpX81rSGTUb4njg4Ix-k2m5LBzmrmhEk80GwAOo4tJK9v=w1560-h878-no?authuser=0"></li>

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

    <form action="quiz-if">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>