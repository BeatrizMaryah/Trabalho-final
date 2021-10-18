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
    <form action="quiz-while">
        <button id="submit">Jogar</button>
    </form>
	 <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/jJVuNmyFfwov2sSf47QuMAQu904Xp4vGMQ2Lg-68k5PSQqh7kCinZPLduuHY0VTM9TibK3ZUCE3489QIt_Fk0kloROEfJI9VRZQHt_h35jpysXwC0RkSosItrkugRZdd_SUGvDbAPwDqWKQ20lUaAxp2nGEpGOBxWfyQsYRvtMMWP2xz3JzNlgEfULPgsHnR2R46vaVjNzd3y22dQmD7wxSc_nIQs_OWuIg0RV6whCVWX5DROidmgG79Kdw1U-boJbX5wK8gjwwcVwjT62kadL6pH3mQVbQMB77Md9bt3r4z5rpcdtvC2vIdj7GCRyXdFU-tQiXl5B1RYoTyPx5MC_1D7hqx3WV--LwnWmRkwgzRA39fn4tixNXAavxSvUoSZT9LLJRMMqyrtC2Ry7tmLo2aezRgAClWfaZhxry818E9lziwXABuxxzzxA8i7BoD_JJQHTH6NODhrfAqPy7ItCLkV4nipc4hdxTocVO_TfK3jTuCsfPNQAY-cyAdjEfxZOj0xocoHp_p2HlyckYyrHLMPjwy3aAobRICKmkLpqqD7GK1tuwubyHryf2kW-Pqxy37PwLX7MgDA7g6XvGkEoscUv7oCizzer4-epl7QCVO75anchk1ypowabRrkx4U3Q-CuV-e8vZiQnwhP0kbvaBFTnpfhq0KXO8vjzbd83Ahuvd_h9P_79BHR6C9NbkmVgSYiGIAQrEPG4l3DnmFxA=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/4uHv2gpGpcpB0nYdbyHX_hYjXLKr0eaoRVtS4nELv9PFYCo8eubUWHLdOKr5cPoBwQZoBI9cxeHq5MM7_UFYdgfS5TwMWL3BTXa-BQY6LFW22SttUPPhuvgKaZUV71tuMtOdrVkU-UmX68rYdbkbmuA0YokXEfDV-0V8KYJ2Zv9l5D_Fz7pkQJMojKUYVZGYI_15LacQ2j5kamo8GthOS8a9b9A7OBjjRWyet6YTrmZuCxv4YZ4kC7-6IX537u4iNeViGtl010kEuCveIQRGkYbJK_EGc1UyoVnfenKOHTi9nQ5QOqdAZmvuvfRdWyln7esMQ2FrW2v1wSgA8gkZmNDRTrHGwLinR5qvSEk-hnUFeVz6-_Sf1W6GZTs1_99STy6vFnubTaXSvkXq2l1rdcwZCaSaB2g0r-2BNtoaBnFsgnOCG0xzhVgDHQwYk8diPwE2Z6YyolstPtayreNkxC3s17Cjc7vjG_Up-YwtmzcufA0MDaJKIzR2nSny-zTCNJ_oWC0FQ3ZpFP60Iqa_ogZM9nn3vYmyWsSyBiezyvF4JjmbuFh5R07mduOvyciq_BTyYApxvgkZ9kmenfiGCKe2l2PBxMm87ETGm1awNedm6FO0OOc9VAoqTwQY6q8ZuieXI4BojRSdQ0lcWXSrG-TyMzjknSGo7ooVCau4jcpiS7e6ocC2e1mKZmC89DMN33MyM0JfvaS68Pus3odgxQ=w1006-h566-no?authuser=0"></li>

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
</body>
</html>