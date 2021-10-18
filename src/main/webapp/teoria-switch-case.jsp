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
    <form action="quiz-switch-case">
        <button id="submit">Jogar</button>
    </form>
      <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/AwcBpJVn5b6eJQbRqj0sAc24QJvDT5GQTaGOTufjrkDqaa7xwYXdu7dGKyJVWxyM7Pe-_IRtibeEHT5xWepLmdIBpQQg43ryhAwmA7qayvlFUy_esQE98j75XZvxS3HXBXCica8So6wfDoY86KelCCWXenAOkrRITdaoY8ABQf43CrrCgnXhUs3gpV7nhLJHuwXq_ITX5Zcl-qlq2mxLeTVeSv2G-t-kt3q7-DZpzPQ52qZbN0yyqy_VL5Crc5N6wEB5JXjCIZipq7D4OutyECHmsHW0fKZj7JJkeUHSUfFaTdH-6cV0hbtKVhK6CPaofYOLziME7rXZnUkcguM3uFhw-si70xTI-7coTcT5n3tVJKuN1nVu4_2hHy-XyAR2Lu9EK4eNaKPsMysaKDUmY4eZjp9gv6zCEN1FS4vfYHIVx5Vfd0fwlJRwYHblzsPc_GcaM5tt9bCEUiwMh9RahTc7YWYvvpXcbZwiUiK6wm6JE9H-JWn-iIkCDTarrsya7ThlzMbKHgubL-9GVmuVsm6pqWSuJN6EejPnXi6EfbajikdZ7xpMjIQNroaVPHnuAXLclujOuFX2zxsdhhwHcn4RT7Lp3kduoHaPOl4-gsRgmv5JJwpltA2nGfDZv6Jt9gfYxo4F0_LuRMCbNRuXqHzs-FUnNHsb4SKVpyQtH_LGidTa7OsIk81z9oAkcLGi5f6201GDM-vO7DoIc_Y9Uw=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/L9F6172-cdxoTD095DTCaKTyjbRdu8gFH9GC1XkTbFyLh9j-WQHV6Cn92gLKzmn4Vdv8_jb_PmhUOZ3WY53b2Z9yxLBWOSUEuqYtxBNhC-B-fgjP4ZtSmyKgM8Hig-tbWxfBwYe0lh_djc8xnjB4e7M6jr6NKIQGoEG3PIwJCtGsQ6_NDahqBFWzlQmc_Q01xZqIyR_YScLUV8IGvpwUrXXLbHJEgX1-ZHmbRgjeT3StZny1gBs3VN0aiLDisROHQZDiM-QC5XxuLMIt1sZy-b68Jd2V0MFn69wLO3Dm5bD_fK1VaM3Uztn5d4Yaa_fxWWN0q2A2dz5X5B47wnSOBUxGNiUkX3CR6i_gkfe1w4J3gHQbcFNbS54o9Xsv2ZXUUcwVt86Fv3v5-tbD_UFSBKtrmugKEZJnr_5q2O3w-3Qhy6YmCfksw0ym92QjR-A7wpkKVFnD9xzjloEbFG4cQFj52gMbbWEO4dpFPNu2Fez3Ez_TEGtmfl9__ls8yL2RCjpzDRrj_RQCkLlRpPqQt3ZJwRr1pHM7fuKMzVP53nftBYoR3vW3XtD0VSIDosu3qECvcqkApEZkrGcS3M0axMj7TZbuw1rAOxEhvJ-8D1-HooMuIsZmhSU4jdQf_-DoH_pm6rrqfwOgfjPwb6UpQjvzYKsieq_5MX9-kmBf22aU9cPQmWt1CNgUAzMDBZGGFmfDcx92XKVVu2qekBN9tg=w1006-h566-no?authuser=0"></li>

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
</body>
</html>