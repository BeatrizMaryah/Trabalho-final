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
      <div class="outer-wrapper">
        <div class="s-wrap s-type-1" role="slider">
            <input type="radio" id="s-1" name="slider-control" checked="checked">
            <input type="radio" id="s-2" name="slider-control">

            <ul class="s-content">
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/ikoKdqq2NfWW-G_9Uy0P5AI4NcYV_FMsLdc3M1hAXrQet19jjwlk5ocnS-C6XBzU0yCmh_8hsapSLnUMY92USeeKwA74qjVeTKX2cxvvJ4tPKqxxorC1KFzJRj_kXwkkW8hUeX37Wbnjw1vRjgf25e9LuZUwIUitdid-X3akFI2jaykfLIfxZAy9VZDP7AFQMnJsMi6u4Iz-JY60T0kqjFQ6ZGgVUQhdtCgw5LMNY_H-DwuNqMo2hW3uxb4vH7i9lemD_HNozQdXkYF5MMozbbqX1PU6ucbYtd0JBSkP2LBq3ljqML694Wn5VvoHwRC7zoiMvly8Ag_GDPv-yniBSMUxJoIxR-GksntCt5FeARU9W3jwO_994udzNw4igpF66JBANvo3ByIuGfJvbyvlplDcuPnG0Wo796RBkon5E1CliKBbIvZZ4um1KZpcf6-ZRLz9Ki8kKrNRb8FBp9IjYB-1YuINijPFwq1GYxK39Ebl5PFdz-esmW31Fmv9BO9EyKSaLHeeGf3SbJFxQPoIKHFGw0JSHpag-8La_9ApdMSChcbk8cGczIK5wbKpSvzFk7LAgG00FzbIHZi8lvtOleiUgMqtcgkRn54V4VDIsLtDsFBxEQQ3faJ-YtlZ2cf5hckQutuw3hS3v2DxGmwxa0ONdj5MczdRN666ipKhTdvGrVqk9SwF2sn7T6gfPVad1ybZst1TZmywOnH_0yBk25P6=w1006-h566-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/-e4x0oAAdS5A1gClSKuFhXCZGUIJXZvclVUSnUWBgEyvwTsfqi0rZrgA1u_uHthHQ28AGtbcIv9JcEjjFVc8qCS3HkxChpVxIEHnCOHZyjfqS8iwEpM9Xbgm2uUbRhv7dzTK-jSEdXqp9eaGbQfs9lm_uKIPuqdiHRAlKmtjXrguudohDiFQRoyhxKPHbC9bw7HfRl9jDg1Ehn6C9wJ0Bs73_zA2cyAEtSdR5J4T1cC4k6n4LzeztkaMXMWWWI912hvNu01buIVW-iy5KUev66uJDCZsmJTUjwKgZpuJY_iedsXqn-iVfv_BY1NqN8jEpWZyut7kJTP2lStFVVGEwZ4ihQpS9666kQ8cA15OODfvBJqk1pfztvC_hOitzaHaGiFhbDDyUlkkE5SfiQYyBlCbfudemR3qPjYwQjjytxZscHW9GcBNK5HxmDZvJX07zo5_wdLJKq4Phb1kpTXF8jzloTkzGWhKzX0aGCswbaPV9HcYCNUzwStvKtUUinkvDsX9Vxv1d5O_S8nJFDQse6gFCqLV1G169tGTDtZR67vl5JJGj9TXKrsoTXTkK41h6dBqgxp7XkSMlv0wPqKes0iXQ4LUT7wIBW1mji_KwBU9MR5jIu3czdk5npfD-Gw0CSopj3yKIZR0gLfIB5OzsPfl67o7DlVgBfLl1fvS-b2OIxcE8x_lTFEIFQRR6ahZO-JkxtzOM3iB-4guZPgwU4xi=w1006-h566-no?authuser=0"></li>

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
    <form action="quiz-switch-case">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>