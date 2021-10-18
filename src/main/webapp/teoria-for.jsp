<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria For</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/teoria.css" />
<style><%@include file="/resources/css/teoria.css"%></style>
</head>
<body>
   <form action="quiz-for">
        <button id="submit">Jogar</button>
    </form>
	<div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/j0PJxZ-upCBkaqZRCaMyI1Dpe1TS9O1R5SD8AbigYC9pRgSiRYhxygIerzMOXz5wH9J_8DDz8r4Mp6N8zeqZqzdevOj1OlB4kcZhE9UGGIDhsX-slW1dZOP4c_c_1hvSFdyF5Z8lA75XGm5ylbeUyh6fG3EIO4uuq-ddLtOVLh9dAGY1acJ3YF9ABvv-Aqmrrtnw1edoPxtm4qdZ0Y0N3FOZSDUb2AvkThWqCpnv1uBbnDkNhjyWdExinT_a4P3pURdHuAZpcHibbVOa72meL997neJ7hHPBZQpMS9dtj140kvR0ja_-Vkj65nF8zOFQJ1BnVchliB3h8hk5ijutQG821wrPWd0z5NQF9wVmbAJWN8wU2lsKdUWF7y-NYxgTSmehV7tvd0M1HOV-AcacCQS3FQawcdTgfldNbxPGU0PvBsGZqZaRAMRsD2r26FLeidMPw8EoDYCJQbyNwn2XhjqWkEs7TEqgFIG9zVg8Jn2AF6s9eenGigU60hPNK6gUkj3UeZbMHPCjB6iKsm-rPEJZl_VuCQAryXvaHeYy_h-Vg9BPd60h_1oGWIIuK6V-8cIxG4ziPefx5UDNVxoeyGRwZCsVyZvVDdUJLhqqVM02GYMipkrtYF_PP1cnhz9fLDrTTcvevgbKtAxtZThzKJAr4z10vUDToogjNIlfPMYzoaP13IIcMazfqgu0ls4LiMK49Shp5GzxKLHcBOIFnQ=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/2Xw6VztMv03Ba0RuMOn9VZsQizjniXZr6GH7rPNECex_cJu9hi5aawjASSazEz36QePSzh66OODVc44u3TrKjk1_f0CmFeGWBB7UdLOVinoy1obfW3DtVwMdFjzYOTPhsShC0-pJjfE5t-WNTvppvAI8J6xQOqr8wo_a1n30LEuXVmbpiJYdZTQkyD_77D3tIlAprC8ak60HYz9LIrX52i0Go6DVRDJhSWVZsFEp-CeI3Hp36Ak-N0BUFAz-lGYCuQVu8bUhJv67P5gdib3_np02vUzuJXTJVziZBIfhMEEtuEByqlSB0dHFXMWq8Yea0mzCUMAc0WlMgCMbNOkbH9eSLa5XxcCEI_RJB4kL_63mPYXTSBEv8VIlu07nkDIkCdB-TiWloNWbFndgrAdWkFBKgAedtm7DBc6VP3dOOOfLoWW9CfEg83iAW0MKjrk3pfVCBW4xvFywhDmmqdP9ATxs3aOolYHnUg22Agwiu1Nu8REYv2_BSsm95YG67YRRlzEOJm5bgHqbwCM2IYEqEo7jpIafMlEl_uaUkTDv7cSW5kLqWaOKao1ohiRheEAyw612DEpMF5-aK5-Un7m2Bp1I1kpkz_O55ko7cdDAIOqtqeUx98Tctifwu75PrwZEL09KlQ0J6QjXTMUG7a360EXKviuYfoy7vp-fkq2S8Tjq9rTIHdDKJOTkC1wzinbZyuQFRXyPRcBitB_iLmhBbw=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/ib9eMPtHn9ni1eL41dQH1vt0dSppRVh11pPCCbe4DloJCsVcMr4LrnrJoZ2L4w6Ya3gXnTEQYC6MFC2LHgDpH_AlejRoSiqTCGhVruoLaXJbaOXY76hcZOQiWQ87IcJVEvcaTHyAK_TgvuK-4SahH3E9Mhxo6PfmUETb-y2LCfu2FNIQiKEeOueJOoyu-kZHnIXvoctCeG9jV4WAhYd8E4Use73le_WX-_zAsqqSXnwAgPFHtFkIYpGKoqCtOJ8p2wLS5AggRmdHYciE11WW9PDDfWoB0WMSE8SS8bHL6EiOtTLj7j_Fy_4abrhpzc8t7lXhSgLek5TmRB36R6gMxBDfaBo3GF36hl6ocwOIdQ88VX_kpG4rAxde1DgMWX7QhGJsiNL4A2w3-bf4rCfGcdhJa6YwDGTqII_qid4ZlM8snZJaGC_Mx-b2XLxkozV6W2ZRGwUJ89U8Gw8IEj7N6euSJEQm7qn-1_z9fU-Pa8ManrnotKUklS0ZYvDX5F82t4DnIiUiHECA2ZnXhuhXlhkJMqPGLtVNHws5EPlPxzpP9NG4efaKvcFlO4Pz6LJo61NfbJG4BBtq4qQb5pv5qAKEusFrieW2W8ABpw4oKL_5xMVfurj4taJW-smMOKBc022QrNEyPfTmvdITElHUrotA0EPKVi_taYNXuUlja8sbuoT29MG6QVIBPGDOpadrHDZF9Zq7AqCu3ULfLFnqqA=w1006-h566-no?authuser=0"></li>

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