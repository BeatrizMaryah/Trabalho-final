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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/NNCPeafNsY-4bnobQ9UJlXiOyo6_ez4TDFavQkoh-zO7dB5l43hI9SxTyTAsgXckbDB-qBDn_rW-QrvNsNOT85LAWOerb_i0beNGZbqtL3p0r_YUXpDBJIRxHt2d-iooa3KfVret6c9j4JcNCxt4bQ81_lgYegofscEbkKF18_XglHLGRU4CC-Zfziio3YfoFZhSVvlJBjNgqMFBE6XSRn3a7j1zeB2UhePCb-Re8ipXtDyctN5BXbGeeQegf50dyeA2UW5J34IsuNQligIPEY8NPh_IDOQmCv2X9MX_Iq2ty-tmfFijlr9gIDpjWsKRuDOXNBTarVzhxFLQ5s_YH2NDNBR7o2dlHj7mAaIIp-VhTOl3jEXQ3Z5gEJIBJWBitbd7b8j8qio4uJAelaC5aCMMO0kQ3bkFKOJoelkccftvJQK5gEQN61KEdKRNpWGR696Qj0vHef3SPwjV0TCCt7LvAOesRG2FGpk765sLeRdOKkkaU-vdG_Jsg9EqxfECFfUjOmyhNWOTc6Lt2umga-iEU2WmPcXEjQjkkskW_5WS6HNSyFgT89p9jJWWmTAv9ikoJ-SPnSqFq4y94Fw9rmTJjFHSX_kNXM3acu99rCB6bvOVridHwWo0WZAn62mFJMERB6ieGm81e_aXeXiDUaTqJs2wjvR0z_0AB3k10MeHo4eq6wmtD6f_RZ33RJV2j2egMm-O7yQIVml-u-GMYJas=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/hYcZdGa9IVfMdjGnnc9IpkaZPetVGxxLAqXTU2kuRyVwC1gcrZazxSx9XuFpENIsaAhPfc3xjs8D5SUWTDn7lUDUf-iXhlXj7Zri_jiVD8s9TU2CtCFWN5lD7rp1HgMuBHGjMnpFEdyGDJKgZElf5ZJKDJNRDgAtzBPCNmsDfdSGlLiMWfZrUVp1eKwBiPaOD_DODR_ZLEtIDIYBDqDNyQEWBr-ee6yQ0KxisnOMEx3QhNOXxaDb9vmTJNki4lvZ9sVUTELJdj2l1WMselI-jpxiLvjtCNChKOU1fUQO428fTEa0dkAPOF-ap3s2tYhP-OICOaMSJF-CgpJUcqHrUEbvOefb7BV5YOp_M7MJTdctB9L0hE2aFPudglHFFTBgIc-apYSWkVVZ5M8_yzc_R0qBhkYe7Xl-UL7Fqb6mYtxTFGQQGhAJPWK0Kn5E0N_fHi512iaLY7ecn9Tue_AQqaSbAa1zDOk-BxVKb72X9DpXIheaxWtBYZjL6SVpq91JFXQpIlyCZ2pTCIcmeYcawZPSzNSXhPgyrlc5jqA62WbRVdqv3Vs5SzUoPchPE24u85_tOZJM342rZsMVn_OMNxSzomTL6ag3FZbv0KZKFsn3N1-820FmRYe2kUJtK7O7zfbVawkXtOo5Br8TAAqnSHTX2-Pb32nOG8E6LJJow3D1IWl5m_T0Z_QITTJ02XLSOdUeo9U17o3-84YluOpWOUtv=w1006-h566-no?authuser=0"></li>

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