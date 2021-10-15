<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria Lógicos</title>
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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/-1A26djyjzWs7xJW0nw1NW7WQj1bRdpLnumxoF_IPNxh5fhD7PG83PVTmsRkvRQbu-1UmNhELP0Tlo8PcgmutpisUm5PY4VUYCa64kQVIR3HQUI83ZRvfFK8xb1FE6AveNN37_NmqDP7R9rM5qrbPCUtmN6Q45nvmymOrUaJ75q4rrcLeG9oQf25CokZR7WCKkWgAsy99qSfyYXc7PfcVXBjA2nmFD_Y7_2GqRfFXlfpLZqg8b4Sl1bQnmciRlhplNjnBKSWIfE-uBZZpNB5qWjeZ0SWiOP_sNh7JzzQsI6CmzzLNHxL9k1c6CDohuRsEcdGxZgzmsZ-BSTm07p32uf2JLX1bUf8yahvHr44gjhxOd78NcXZSdqlTyn_IujKVdyrvZVTscYtVm5kBosa2n03uhcyqy86lpG2fgE4b7KzmlVL0KiZe2aHeL9P35v0On0H5lg5dU1hr9Xsks8DoLsZnvJbsOkzET0WgHOEnfzkJn2qmijAgPkZOIKknHa6aVux1XFrtWjHO--GAQ_s4uywY6qA4UV_MHnBZfvxVawd3jZJBrgNTmVgdpcgEgrCQJNf7lma35lFzF97auotQLQpBRgbKQHk1ADA-a26nEtjVVFc9I2_zeir6g-pjM33sMihL1lx7g7TCoogVhz2YXPY9Ms1XrvtMa50nQ0LeFrKrPd8vuJSEcHSrshBY6FoxBSVnGXAlYpG4hc0=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/u5zswzK57PT_vRJ5N5AIdJxjfEw0g69Fefsy4zZfjvRSc07FJmFeFG4YVkDq4uMA34VaPr8PmZeN3K4Id7YjMto0zRzY7gQ5mkrch3RdaDDdnVfNPI9vfG9Zs_dUiiEkZbqCv_mtNvzejHKw4BLpyBJICjalfZyA0vouXSp7tdhrJ6Ac0QMt2t9TSX_28Je0omBMnSqpKU0o35BeE6QssUHAPA0q83POCYodmNSyvT-u3cCDMDfV68moevVa37Zq1E1z4buJfkx1BmXFOD_IOxa-QD4EjedhzyDaNBxSLKvxBwxkBems535l8dhKjZX_ecT5Xc48NLNzaEAw_miv5p8e_d2Sr2xnkghTQJQW56ChviwVPBzSIahhq6DN9Ukhywzb_etug8-hY8P-FSHO1Kb2iHWFzi4zPfzpW1RE8oLs1tj2zVfMwWkJIww3bOAF1jfoqZCtObNINaByUihtVNHUhlZXV56bxiRvqIdyQFNw0OyZ6cbawijrApfLiVeqyu39nvUDe9pQfypYzol5jU72O0_B_4U_BM2DIBQzxEPYeSb5dxqSG9wEYqguquxiEnBlmRdHmb1exaC3bP48J530uOKeOmal9sO7Hxg_NFUgg6exGGTWxhTp54VNVehmiBSkZO8npzV4WHpwMrhG1V03eg9lSqdhieFSTQif8Fi-O-JmHyhtLDgrXcA0M3d_BKw4mPiY5SrkleVL=w1560-h878-no?authuser=0"></li>

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
    <form action="quiz-logicos">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>