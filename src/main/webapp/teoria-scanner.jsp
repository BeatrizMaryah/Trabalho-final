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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/luqslUfXToR9hJrBR-XNY66Qly9c-v95FU5VKO79SHRzzpcfr3N8MOnUazCbIlbpcYnia6EoqjHefdKGFaBwJGIUe6kcVVql7JkltEp0sGLojo6PZwYjDQhCjvcs_ivcZRQkYwL_q7Od3XfX8YGYSElGxtWxm2_EgjzcnF_esVVpjaCOyS9Vqu4f_YOdBLbnmGLYa1keOUJIaEPA_cRiKbp7Xqdua7782M9wHSAX5SwtTgiNgMUy5co7akaFEod8rOsq13lkTB3jChqkoYeHptxgZM8YflLQIjPf_Koy-qjQmmYnt1ioCMRSMni3bqLNudIET9fwPlGG7oTYTDY8ugDkzzyee2rvEpmKamonZQpA4fVLlB44J6zf6rQWaJbSwRym1eBcXz4KiYhNbDy6Wr9AbboqFIoIlx7gs8X1gySIrRLCahc38qV9W2VXmav8KqAmVChKgq2wRyQ-smGabsgjyALwlWqkItcPvSq5yelfZ37IkGr8Z4ZTkIbQF0aVQJ3g_W65hTak9IHc8ZqmpPMW3cNQxUNaFv89ikIUx9rFjR8ZdQuKRI-305uYOfRbPSZCt23iFKrySF-oJ-WHThg9Er1VKAIId8on_vCOAElyhOVSeKMPHEMAZXk6a2dfwrbmYJKo96vYOdDTp9-I-Kdby8Nrbx8UitWVOrukzKys_QHSWdV6z1kv4kRo0KQsna06x55NvBYruk6xVnlqBqRB=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/z0Lp6eL067dLeaj3L-YsaZ9f_Dy1qPke5y5NYHCQU2H_cH26idXeVxBAnvE3t5T8VZ6BVp_qDiHFycTo5x50YOyirQDCKsNjHym8NKj0eU8rZkAa6J4_I5Y_1UUr0PEZu6NMl-y6vbbqkM_hRNPwwScKP3nq9wQvaY14R_RnMLaNbEl91V749yqF3qaSPxfbzGGU7ufDO2Ti1sxSFrZVhS6q74dz706Dz5JzRn__OG8u3BTzBVDQDlho3naed-cmndohi75N9jL4fBURUi_lzhG2MfCv-ScuKiSYbb621Xro24-DZgiVyTm1YL-KpF5ALmu58U0YzF0HEevhLf7OLHFlYY0HMAZwo20ZyKqNp6oab0hEAZ3TObLJF5Cz4g_sEHJLjRmH6W_gBcKVCtHKZWavy6_8hHddthU-VQGs-CTw0T-jxeONmQ4tM_ef5astIH4_t4nZLtCvsNZnOpcVsqRDgry_RSxfmBCzkLT_S-bnd3hg6legVTZgkMp0xeHabATuQHaPMVkaZX_zzTtBTukZWBex1bftudnDiN90EqfltavHpIxl3sXDYgy32NvlMXsJbWt2hNpY5_BC9GQRmpH9Q2D6eI24-kID1Qa9CZZV3qNW6-5tTU7k8pfDZPdo1Qbkh0zSlngILtiycT7e1DNDGy9USLzp2PJ0JsshGSqAMW1ayQfgrLeuEab7C3Jk8WRf0c6QwEuhrRnTDhX_fJVC=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/rM96GwrPOda_-ggWSoFJ2Rb9We7km3Ns1lj27Z--eeNaUo7TbFMknuGi12nmO_rktmWuGOUBiWCaJJYCBJZfFvGIg5IZevxU8P3Zbv6zGnT9JQtV6SLGyd6uaBPU0bs3UyfmU7BBZdr3HCueLAxCkVLYD01jex058rceYAYvyph3VSD1dvhYifcIgQGIifG1f5UWg7afFkQJ1bifUPhvWUFYHzSxJoPKbDs1LV1JbfrYxfYJZZkCNb6OUDOYfQjibpCgpxbWXzKGCzpyNs0VUTDzF1WzSUMo01x46Kh345qJUkO24qSRKxU2VHGhQvyuHlpmj0e1_kOhodc2tti5Fn2n1BqhzzD_udfOtSwJxtoWAazxQGx9aRssSnPpyHFysb-eq770dByauWGlocbBcd88VqvuweMDq5HBreumedn2_ekcl3H103VP80ISjuTrkipz1zKBvXAtWDeZnaLhSkXUxpWZULe81LDl04yKuOFZtgVU_sP63ftSEb9c7SPuPblLOBOCYcdDJOib2RkiwpPv5FcWU6OUpFgE4e7JIHi8x56XJXnfpNznmpC6jwjQ-0KBKxafj8Xt2hPhbs7AFLJAGJy6nQk-9KzYVthteZKGznG3utsT4l8-wbABbGQHG91ri-OdD6TIrQJ7wyFTOQWkQx6zKd1CSZX8aVGb7AFMGfAbesyz-KzDvETAAPX6JBa5PhNjqBvhF0YumwnbxAzl=w1006-h566-no?authuser=0"></li>

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