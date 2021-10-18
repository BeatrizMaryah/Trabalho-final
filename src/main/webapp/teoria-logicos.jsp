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
    <form action="quiz-logicos">
        <button id="submit">Jogar</button>
    </form>
    <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/WU4kO_tgjkJGBzX0r3A95JLiAYP8orX2eMOP6dVX7HeuJB-zaotGfncjlxv2xFjN5RcoR05tCa8R0Oskk-xXr8vHwSxjhXvWzQYG9XOeJOccEdECHQuo9Vyqt7a9pWJvXaUDNclo5fifrW1eGQXXjWIrUJIDtvzd_jWX0t0HWVtVVFYIpV_Q9q5oNkpPI46X37gJTVS2rzdubtNMQXUQpVH64y5DTAL-8m-gV2HUFMEXySWd7kPujtf_eJ6YEF7jz35N2LTLhAjkRJ1879ufzeC-UbpcRAvDi-7OJj6jQQSb05PmiaAOpIaqPV6dfywi1PGwnU8fckSwxHiH7qmQ1eYl1oE8TpdTGgP9OolNjGk6rcvB1hQHSjYwFwkJEsnD7oHHMG0ir8s52xiCJwXpYFJbIETlH9ixXGMO0t9xISGL4nNyAcheEt0YiqpnfWCZKYOHXMpe6S30__u5z12x2OVmFdkWC9ywLvTCli20ZnNlNDoiSEMikzL46KBZa-LxKsls_i1DQY-0RxJwem3MaCV9M7xvWFscY5WPEV75bqV9IPR4iGMUlZI3YYg9gB2FwPzEFW7hWuk7fyGLrS38zdx0wK1zUbAFleyDfgAR_gEypKJt9nXuliCa0N0Ixm5bg5ZrxG_m6SuASP66bLNtvt3PmLAfrb9Xoj9tSg_iNN7YqCpTaBKLnRCFS7v-QqF5i1Ri2JhS3_V8ZUmmq-exwA=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/yTeNjxryQy0brUttbEMiDbay7V_-TVD1JYCXNjG3X4AiATA-1dAl-6eDkgumPUtuBqc74fysu9TCWwoPSV457q_-2xOcdTIWUFsZVg7BHIpBwu0CyGaAL5ZdmUP7SNPsAz8LLADKLnvcHF3O72gf81ga_AvmAjexH-HICW6dYZKSOIN2yM1uWH7SqVWblPJEkQpWZYKkaAsP5tnx5JWXqzj4IWvq6k2ALgld8bfNcwcktpYGXrr-pKD2dMFNQXfTkJ6o6yR_R7l7CINovBtuf2RiAqYx1gsoCKHhjY4o324tTvpfAtkTGNnMUySdU29FWGON9MZ0oWNMr7wPzNqGc8vSxr_YnhMABso8kMGi9fM43UQqbPI5povddWLhgbnNPGCRJQwmc4jp2--XgRI144Inxom6nRhtyINcXnnSim-Sg5LJjaKbr5PYA_1Ucv3heUrsZjYDng0hchc0dEezaI34kuWQTNloNBBkTR5z0iVxUcqJ_tT3aBA74Y2GX0eutnLTjp_ZweXcEx-4iZQ1tX8UoAHGCtc4W0zrXeRFocWvn1i2-OWYOMM7N7hjgUlZAqM-3LZeyGNJNVUViKOUjejTvm3pnjkLWo9fY65PcfPnZWnZx7QmO82DOK02nOs0loh0uN_76aWTt2bVv1m-6M7AsUowpSstid_CdO-l9jUIGH_74CC_kdVPwAiWpR1F54-ci73CTwItxGCkjN54rA=w1006-h566-no?authuser=0"></li>

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
</body>
</html>