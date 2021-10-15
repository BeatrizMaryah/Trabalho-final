<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria Scanner</title>
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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/vDnVKNwhuUB5YNtAkoZQETzFBUJZPrd7jVV8SvjjRCcmVGMxdliQDp5tTkdzOVx_G3GbO_2OK8-T_J63pybexyI9DjRq51B6mWGIJnGboZrHWszf7HziWT5t_kJrbwWrOBf0XPn5Ideg5no7bFvEWHDKNUZmJYzxzOOPDAod658q1Jl_n6bnxtZzlgq9xG_GgimSeQIoqczI98PmcYPP2cdS48PqPzoK8Qi47SiDO8MVwi0iwkEbHlnf2BaWs63pD3HJNbtossx6xOPm6leUNqHol8fPvYny2gpBdwqHtFLsvCOv7H6tZ7kx0CbYWehrvkufcMyhFccCoft1R4rTLTBx796XlqhMpdlFi7UDbxfnNkjMsHpD9A4zCzaYgxibIiiA6YFH8eUyIiaZhlK4ED-YylQa48y6qfuyIc36TA4pi5M5NzzfxcTd-akngjm7cuXhMn6kzIFMMrRGBfbgtgHByxlFP07QHYgNZHSJbsnCWms7zynvonkL7_oEOz9H6Bkt6CSDUloTKNtZtHEFYPJCbFO3Ms1pD18yuw6BvBFwq4U0_Yn_3_Z_KuDYX8hn0GVS1x3wZ_r2k83ayV41uXm4KIr5228B6nMhJSu-8Bc_htbwebLV4f_-xLYjo4ivw8n-9qu3iY80xZhIBXMx8XNhyQkJjc0OC4-ivlGUtJXH4mKqJlipxeEqGHTdVv-6o_lOLIywkvQwdiMa=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/jS0Nu1usPLD6WydsT0LTTSB6ysvBoRc5OC4sh5P8L0JSStpVivsb4JvjgDyqjDsLHaCctzXdjn4-v1UbFOdQaoIsJhIsSR4Rj-77-7gSFAVtJcMP4tcNJUo22OcY6BSfWNLNdXDdlul2Qh56WQ5Mb42NdB2hBhJ1tgAhzl-xmOQb9wZc4R-2mYmnwK7_iGeRH8tIZoQSF1kY66qwzx7zkbQKqBnt1FZDXb48szdwKOs8mv7qIVXsveK5USfC-0ysoCvqbsTX75BYHu6cHKEkt8cljOTKByLWttqUVqOOCMUSPlzDHLY2Xn2Y7_ycB2jPoJNR8mPYbGAI8-YhumEZFAr6oAuPNvNaovs_Q5SvB_MeMIqwAjb_zrrXTCZiE-1mH0rpIqO8Jxr1jDISGulUu4V1Ezg4-qpr1mZiaSEdD2xzDCZEJ2vzqVzAkICcU_-NvofhB2N4Q13GjWjmtNt_obI0i8foTVvve2ZWWNp-Vm8R1O9zubNz1ugD9aA8qhggDUl1p5HwNZS-nPEvIfoTk56r5qphQ7E4TdXo9RhjQlEvT6cj6ead8jc0eAu-pvVSrL5yfGqk59AGSbbDYtphLb8kRHWPM-xIaU1lNV6rBvTYG748QIsiuaYta9qUY_ZHGNMMlQA9sGYBgdY3S001ElyBPOxwqU1An1HhDq1Id4eD-yduTwkTgQX2YGhwi2qPa-ebs33xheRFrD2W=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/NMZGyK9kfcioT1DRJkfNllT8IWdlLBBQomV3RivojpvNIOLLug3nVMw7E4sRzuGBMxJDE4hHs_n6WvaqUwMzKDKFw04C5LCJO9nz2bf9NG8WTUSsiRBn3aFvsEyQX9-HX-3lWPJ72J5T2zQgpl5b2qIgoly_50c1iukDv6JzBYc6B4OKDbj8gP5zklgV1EkfRTIrzCv757YdfPXmtJB0kZyAFoVyEOPXzDPL5ruy2nBabtKLVjw_5KnIWQgZXuBKxtFthdVB4gUegQfkpaWflRdhE6Si-gR-00IIcM1CcBEZ1x2sueqvP78_Go5VKgGT0o96N28h_SNLy3K5RMgsgwJS4CztrRq9F5psqe59ElToYadDjfQ-aZ23FLHzOT_r5KfxpHHOZ0jxrUPs5afFvuEx-yNQ_fpBKmCsR__VH7GRfEnlAevlVizL2UssSqLy3GJqO179GL6JKvO2nEgmOdKuRxEpEiY67XdbXPzo1yFyJ_1y6CY6qNvnJW7VWYBdE2Ediai_TTcL1d9fAhCq8NApz4nlMRPgS6WrG-aMJJXpwRAiHAqVacTK9BrfeCZaRkweH-BkcpaMB40XxyWS4FTnaQMBm7T3unCkeS6V-GsxSREutBskp6M-5wov-ESfYWNOts9e93L7wWE0KbYlNOMIeTOOxVXllaKS9aSTTvFm0NA8Z76bYUJHyOJ6PKkcAJlVwPqbc7hERg-E=w1560-h878-no?authuser=0"></li>

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
    <form action="quiz-scanner">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>