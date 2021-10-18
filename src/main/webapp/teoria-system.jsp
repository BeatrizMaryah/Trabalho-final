<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria System</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>resources/css/teoria.css" />
<style><%@include file="/resources/css/teoria.css"%></style>
</head>
<body>
    <form action="quiz-system">
        <button id="submit">Jogar</button>
    </form>
      <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">
            <input type="radio" id="s-3" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/eQ1LwYHePy78BWEI9teD7PaYp9pWNKashPDaYBbRCCWKrBcGmVANIlBlUJMy78La5kj7kbWB3UzUJwHDGMmuheT8Iw4X6dgTmKIWGxJGZzMbcYBky9e6QLTZ2bqE7NlEY_qm2I6nW0aRWDYlkGyaLjj0826XcH0co0wjTANXaoPMJLSQu8ft4O5WLlVKWy3o8si7BanOUQXmtIEmPrUaG07-5ZsMA775T2teVrRfJMOQ-H1blHEVS00o0-jHbQl1nTBbF3kORO3qWx_EnKkglFvBxoP0wCXxY9McQbtH0Q7_y8ZIcunyasNnhzJ8m7C8zmrl3wtNK29KeDqKg7IMxoWGY9qXaysnzU3iMwuTYJb6imUBL9jjfSrJ2kuagwiZZ0QlDprmwve_rV3LahL2oyKqllbxHENOkDGlpl0kGTt7aJkbusha0rG7ebBkzWjB3bYbO0iQDpJBHYnw5tRLN3y2ntcWPMTbFRom88s9X1Qioof9SOolohaWuOcJtgkFSeej8kxmMUPMoppKJ9m6fbC5h4attufGh12gk7axEzh4A0kVB02DJP089aU6Y5KNTMAOd3x-fcpCFi1lz8Gu-jRpiPerZazH5M8IIRQDz5UGckJFNWZwaxAZq4u4ru0oDMT-TjRQLTGEB9gtGLWCghTebHx166aJDWYGwaWv_dr2DUu0R4wtlNy9Kdq337BlsmG92rdSEg3qa2ioQiRTzQ=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/-8aNiwWbnwV5zo3V2Xh55FulYUnrzk8Ii7QeLBY2rjCLYIQG-3rKNP66h-1u8msqsQYVFIcBcDhDlEscDJ2LnYHa5fI_bgsH4QO_5Q6NLZ-HzsMzIpIAdgJMG642D8bQq9cYPiJSXHLYcrHuetBX5HHwSmx0nrjCZBifBkW6JZQhO6uI8Z3UQ0Z-qEUdmmU4EswGwxNncvMBqgiYTzxJptpd-TM1HXtbx8THr6jFvvijBafw09PUaEqLpNxP1Hdj9Rh9LQy_0_BEe0Ul30NWRpz-FYrAomUvLM2z-_4PRoFxlD40tawWRYwhRA1ZwVCB0t6RLuZM5q3VvIdIUipIrbQnwiI1lDG2Or3gWehOErZzRw_BCtLWo8ftHLwz46IyxoaFGxJ849KlEMhC3A5fB_jqvMpckAwL2Yym2cdR3uz3Vl46R5CB3ohzXMNxwGFAuCSXC2CnAOrAdHzMfwpy8M3NqfXNVyyjby8eKSXxAIIgaq1_pyEvTvD9VGucS_vWdiDYF-XDoP_NvNQA4gDTiTTxZKvTaaqbpJScv8HK5QPnwjU2XqDb56oRCnr5C7Gni4b3hXo4junYXPHB-ltLIYZfsYW5I5poYsVFNN6cdfnEpHcWdM0SjNhkuRtrHxYJYw_zjKMEFev_8TAwN6EPpMxjYySOxkzUuIDC1VCPSXuTG4rNtkBxTdrixSTLMwEawg59NYabwa2CFl2fv6j1Rw=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/MItmDCHBAWnuXipUNO68Fhz7X-6Jvf0jMLyqYxb2FeeKxhCCTGBPwKZtfdOIqUYexBCOcaLAjq3D0w-EDwTG4kcZBoayQto8FkDto9rn6VSERrUkDFDnPEnhoW6H16f1EA7QvGqRjvoWpIQTnQdZxNub-OBvZmlPlwntZZKzNlYnuKqxxmDyi8qxlgl7YA45pHP4F_bz-ub8Lov1pVm4WF4vs68ZdkG1Z0PTpTYpN1B6SkwW6P9QBgKvhLOLW_MgluCob_sWnQrLumwLlBU_TTPBLJB0bfdYWhpbqdmXBt5QZwKn5dmAagCjiCHH_vHddZJ8yfkNRH7b_W5ASsAtuaITkvw-BjapwZsbb7Z3IcTY1E0Al6hnvHOboCfys0RSDVlL7Bdkai5JMOftLGZUeftsy6OYt1v8i0VkD5-KRHzbwsEHCZUeatO77SDDnFOKsVekQKZRhRcBUZMgP8DN1geGGEor2UpMuzKJIz4QysrG7cn4IzLFyev5B_aWnNk0fMEvjnrFvHEwqi4y_Q-2jzGQMHF1m3fSTH_InGL80nZTlezE1GbYweO8cTFse15h2vBGqmjCtwEAmP2Bt06k1_8M5NdwVZ5a724IVyMfIl-SIX2zm7Fc2Emu5ZevnXiPOqIV1OUfXinRNVv18Vi_BV8K2WXF7xiXMDluhkSDhC0TB1RvraFyssU4hJ8BwedTmNNtfILCqctNxxP2XjHpdA=w1006-h566-no?authuser=0"></li>

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