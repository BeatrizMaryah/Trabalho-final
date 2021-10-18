<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria Variaveis</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/teoria.css" />
<style><%@include file="/resources/css/teoria.css"%></style>
</head>
<body>
    <form action="quiz-variaveis">
        <button id="submit">Jogar</button>
    </form>
	 <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/zbBgKpEhrWvzmzCkYKLaaPpNNhgepNZbRpFzCWIVSciYE7SYCWIDwZrf8qwvdhXOX9XHEDluD5AWFJoTTOYKOPuJydNDXNpQ2FdludBoAfgJbLAFlcEpiPQWn-nu0xVX4pC3YfsiVptjR1gVW69tTOZeTTJwtJbBwCpQb74BzAwhi-HRAJj4W2j86_djlWrF4nTb8OrP0ZUbwCFjU6pDnlkergErza2M5OwYLZFs3ukYNyeoKLJ7trY17Bv8sAATW2vw6fNQ2ubwzsEzFBGaYMwLxiRbmT7XRGKvLaVv-hDbszqZeH8cppZoH_EnXCM3Ipgw_3P-8HsbspBiAOC-XYSnD-zE_NXtbOXT1C9Obj3oGvPuNTjczQ0w9J05s7RQGVw4ERgvAoytYuW0PNu40WXGc9sOGIz1GTufU6KghgjXEX2RgEqgCGEvxtQDEYyfW_gpKsUfquETyfaSsyTk2Gx8oAKwwbR9f16PUK2tAPZFr3F-VCLFn09t9X5VG2018w1R6RP55pQb5t1eYKq4NN2Q-_HLir2bI9zZSitSCPDdtaMN_Xp4dAhprKVUlhkz7WoIfld1letMkTY0JbCF1X3FyyxAxE5M4llsMRfo4a6YO5Oy5gx669pPOa__-4Xqge0XuT3hQNIe1h5fT1Zv_FgzHmj4fkiTXA1TOZWuODocmVlxJ6DgPofQ646jevovjY7Sz4UlgsOOZa9HEgKVDw=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/wkUahDDTHqxfVpMj2z1wST0UPtdqmSoV0QxR1XyRUZXxoxYNDW6BqyZdR8rDMGM4lrbooXV-6Q8Zvtr5BVU5Hse5BB8bysBNkBe8DK3xGBqyivrM4OUijZ_rkfLDAH7LxFxEhBFJ1vElcojUOKy7ng3nQ0s2MaxUv2RgB8M7Ko7dm3TKeEhHystejCQN08UXTVpjAbibLxDGMgHjlFFy8X6MhGlUxzbxItaMZRAfeVBGdjkZTzNMUVaaq-JxppeztaLgrLIiuB33NFCI-O8ZAoWGTUjAazRu5Q1NDz8wavylIm4o4RbeQ3L9vLqJT1Ls3rRaO1cMchyIjO3Vo5yV-AuggvhSVqbsRRglnngCkWMsmonv1jyCwRM-Od1zS-NGgHQgROYefq0aZms4KC42MThogWt5teC09xNq4Nw4D2m-EcFwNdOPPP1PYX3dH6r2ziKhJ7YXeal0rxO6UXAxdFu4vuSEsGWVynyvUqLxvPjFHmDWZ3MTOQpv6ohWZIltpd0ysWGoAXe74__rVBekgH9zxdfu3PRYWLlVPMVSDQcTFZlLuIxkyzewguhEbNp9V1jilQVYVQ6M3YIIRIKqkzYRYDXVi4L9yTRVM6LcrBCkTz8MjtUHi3qfzz2NLc9sl4vgJZu6W3YPcpP-5OHi3KdbWtNoubxhx42mxWMlCcZYlz5WAGU3IdcpYrMAvyDffi_gLb3t6XLKrEJUJ6QhlA=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/Kd1KCHmGkkpQPefRHMZjCuNRsrrGM7wtdH4k_ZcqUG-agfNaBMDZWrAL9UeIA12e-2aHyoQvXbkq6Xr4bJpk4qIqitSOzBGU8qVZ8lVZa-WeyacBy-J8h8JvzwhslDJhclOSqEbAJru_DJ38tLyJ18dFKo3oSaZ62EqlCgqqFgFV9O96vVmLf9eNi7a_nzIyY_IE8wsHB8m0LUPRo164rx1oZpURiU8bS0_4Td20gY7P7-w1hq7tlGy7n0E3-_uUjH_PXEFcICwZ6favI-UyRLfHfZ-YIzaWYjH_VsthkZJk1-CuOb0j8BH3PCL9OUVW6f8fQ5Kpri1VGufgpLaAhAPK-qzKrZRt_fVRI4pyIIx8klNlMJ4yWwN5ZTNo2MVVUvpKS8cZ78LbMY6AuzsXyjX3wg9ialfWVVQ2Gxw18_KpnCxi-MIyUsp8L6l4rm8ijFhjgrZ_MFtfU_v3JaJjZjhMQlrh2sYvuq-_RAwS_bXuCSy4AZAHJSjIsBLcxKE1Oq-ELBsuZWt8a41jJR4sFWKCfWYEHGFgriT-_AKJK3PISJXG6ZIcpZeBlLiYRFXGml9P9u8FIMBN8jHOLUs0KhURB247FIF8Ffe0ldVal_f6wmRcZAO4hQF4IGKbRWcwwu4JfLBvvcoxVoLkyBNksWYtt2opLq9WSX3JoAqj97wFtYi0IvnlXkKl8_xA_w2NEiP9HWUabljT0d5I-xo69A=w1006-h566-no?authuser=0"></li>

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