<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="utf-8">
<title>Teoria Boolean</title>
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
                <li class="s-item s-item-1"><img src="https://lh3.googleusercontent.com/2XhCh98hXSUy1T3WzHaLB-fecxtQDbyvBbUg1XWnBJ5iaT0rmC_mnM-qL1c-rmxoosqfys865gqFiewnL8-we-Xax4sa0s5A5MntOU0FG7T-1cAmGKbPuH5D_mWffOLhiiVF_xLv2JYOR-qVmszcGsx0fe7JCMKp0Uh3-sylpocXx9RCPOw_tQ6FTQHzes9imE1j4UPq_2kxEfqgDVs9pmbXrJqcwya1ADLh8Dw32kmiGB4me_kNGh-GGiErEuKf3ez2xu8aAgwL1hTHHCsd9cTVXghzIglhXMwhyW1Q9EVOAm-wbqeqKTyn1gcmDjGgBP0YWJmxrwqDTzD2osLi90s1YTdP29zHmw2rg0htPfUnXWcCkM4BV6EO1teHTAlwxdXXNjwKyzEPmt0-1092jdD-8NGK7ewfePUs3WwBiYUeSCMux-z5qiHER1WrywUCqYnPnYJoh9DAKCGmvORQyOOQXOsNEo91nAQIKZturdHvN8ljupFrc9wt4Ru0KO3wAlYipb4jh1ac63ZxRaH34vj6SrYsjhel7F1itmg93yFjPMLfy5Pla-f0vYW_P-9hIDrtT4H_unCq03r1w8knhV_C3ydhtP92FQXXQZzKmpaqrFHrGDB_znnNMeayOLzK1ZDdMA3S5_WeQXwObTMbQkFya2MDxUivRk9jeqWh3T-p123X_qt5Z-UmTJc5tokawlyinqHmgBC3Kyoe=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-2"><img src="https://lh3.googleusercontent.com/1d4gj54uJ7xSSTz8l_wcvGXrFkXJUU1OKxHu5HiRdO-JqoEM29a_LPop6yYEOiK_IRlO4DMCu0eOrprLsqN5tm3Sz2mHgZRZYo2Hm8sIdeZM4_XAixY0wDOy6lkSu_i_Qe-vx3IIU4wlQDVSrGocT5YUNP2LV2JFFLORMje9vYwIinpOGhZq_Nxro--KkHxB5gXysvTEoHEa7kytoPZL8lKRl6vdHSiLfsqDuRFrUiuTX1vmA_IgDAAdROzvrneCz3G4dr70MDDNXs4K4L8EBXaa342UQn2wbGWGF3Pt-HriAUAiwQ-_iRsVQufNPkK_14q2TdDCZXBRMR6yI3kMa1TIoz441OBBVUht8QWahMrJQ9g2CkorTC9E_zE0S5STtq8rMU3afU3ih23VkYboNKFt4O0x2fabAArY7R4cs9p5dubpqn5eXg1VcdLrk34-qIcyi8PgvlhCPfg5a27d_Ml7ETm6mEn4-j6BGQMcKhx5SOc2cUHM3daqNfrqE7pYpolxAWQ1s8m5GQKIGBY85MEMmWjAsHT3ivdPgJmw4VkAqS8Fqx9WzuifOGAld1aHI9s7WBCyNLBoSFOYGhuANOy0yOh8HLVU82ldjorTymJPQNVWwmtZgtynkzKNHU_djB_JwXbQN7Cxj4jSeudjjj15RqyhUFeWRBCEGYoUXg4ilotD9ogcEfowPXcTEsmX0Vwh1hsIfx_xO3vM=w1560-h878-no?authuser=0"></li>
                <li class="s-item s-item-3"><img src="https://lh3.googleusercontent.com/FrcSHVe-BhMgMydyPVgyDAk3TuVQsrNnHgwwupmpZM_tuU_dTBgkvgg0G2EeqLuoJ5pmszIrHU5_PPsIdEFyin-CxAqfk8fPMxC_QmETyg4ktsRGy7nSWn7JdqZV_w_moDaqYAefqON9c6gLc2adOEaZsj6XDO4K_eZKM9GQQz7hCpC45eT8Bb4EiWDgY7wQ-gsO-x4HjS26HKm14rravHK0ciK_bzPOYDb-pDxhwpwSX4wNk6ksQ3o94d1Wkf-KYCPHFIHeAauAqhu4CymQFGEPw_z3aigZVdEsvk1MVuz86rrGZBwwsnj-qzuBm7BSXeoT5rd5-rep0tB2DrWXsov3hT2k6sgDsf-be3ACd0UAc36ijlG8SIdggTAe1XnhvuZfsAb2uHuyrI79jgJq1mC2EMvuWalbsiXNAuH0SoB8HfzBznbCLMWt-umDrk7YR_N3yEY5W-qnZTQ0DtWhSbgIaQ6yBpP16wPTjBGIy6mA3q57v_tjZ6owIye3G5A7Ixe2DHU3efIQkQ1jU6WUlzqintyWZSXubX3xInHxYrDkDnohT_SYY8JsHxC9xZuEc46wWN7booL6qRAbMtqAk9vOigiDIKG5EE0mb2PbgWLDygh_BZbVGY51Asj8RS2CjtjjVpcMDwYnabUizRdrd3bTTlWZZBsLjAMv2Xj8YwxhVk4eip9k4n1HbmCH52MQBYQz4PRBOEAvnctU=w1560-h878-no?authuser=0"></li>

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

    <form action="quiz-boolean">
        <button id="submit">Próximo</button>
    </form>
</body>
</html>