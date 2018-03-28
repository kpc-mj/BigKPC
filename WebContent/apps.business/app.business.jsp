<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <title>한경 컨센서스</title>
    <meta http-equiv="Content-Type" content="text/html; charset=euc-kr">
    <link rel="stylesheet" href="/css/common.css" type="text/css">
    <link rel="stylesheet" href="/js/datePicker/css/ui-lightness/jquery-ui-1.10.2.custom.css" type="text/css">
    <link rel="stylesheet" href="/js/datePicker/css/ui.daterangepicker.css" type="text/css">
    <script type="text/javascript" src="http://script.hankyung.com/jquery/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" charset="EUC-KR" src="/js/common.js"></script>
    <script type="text/javascript" charset="EUC-KR" src="/js/datePicker/jquery-calendar.js"></script>
    <script type="text/javascript" src="/js/datePicker/daterangepicker.jQuery.js"></script>
</head>
<body><script>
    function single_text(text){
        document.getElementById("s_search_text").value = "";
        document.getElementById("market_type").value = "";
        document.getElementById("single_text").value = text;
        _search('apps.business/business.search');
    }

    function _text_change(value, name){
        $("#_market_type").text(name);
        document.getElementById("market_type").value = value;
        if(document.getElementById("market_type").value!=""){
            $(".fie03 dd").slideToggle();
        }
    }

    function search_text(code, text){
        opener.document.getElementById("business_code").value = code;
        opener.document.getElementById("search_text").value = text;
        self.close();
    }
</script>

    <!-- pop_style01 -->
    <div class="pop_style01"><!-- 팝업크기 382 * 600 -->
        <!-- pop_list -->
        <div class="pop_list">
            <h1>검색기준</h1>
            <h2>종목별 검색</h2>
            <!-- list_box -->
            <div class="list_box">
                <form id="f_search" name="f_search" method="GET">
                <div class="fie03">
                    <dl>
                        <dt>
                            <a href="javascript:_text_change('','상장(거래소/코스닥/코넥스)')" id="_market_type">
상장(거래소/코스닥/코넥스)                            </a>
                        </dt>
                        <dd class="disNone" id="search_value_select">
                            <a href="javascript:_text_change('1','유가증권')">유가증권</a>
                            <a href="javascript:_text_change('2','코스닥')">코스닥</a>
                        </dd>
                    </dl>
                </div>
                <script>
                    $(".fie03 dt a").click(function(){
                        $(".fie03 dd").slideToggle();
                    });
                </script>
                <ul class="lang_lst">
                    <li class="first"><a href="javascript:single_text('01')">가</a></li>
                    <li><a href="javascript:single_text('02')">나</a></li>
                    <li><a href="javascript:single_text('03')">다</a></li>
                    <li><a href="javascript:single_text('04')">라</a></li>
                    <li><a href="javascript:single_text('05')">마</a></li>
                    <li><a href="javascript:single_text('06')">바</a></li>
                    <li><a href="javascript:single_text('07')">사</a></li>
                    <li><a href="javascript:single_text('08')">아</a></li>
                    <li><a href="javascript:single_text('09')">자</a></li>
                    <li><a href="javascript:single_text('10')">차</a></li>
                    <li><a href="javascript:single_text('11')">카</a></li>
                    <li><a href="javascript:single_text('12')">타</a></li>
                    <li><a href="javascript:single_text('13')">파</a></li>
                    <li><a href="javascript:single_text('14')">하</a></li>
                    <li><a href="javascript:single_text('15')">A-Z</a></li>
                    <li class="last"><a href="javascript:single_text('all')">전체</a></li>
                </ul>
                <div class="pop_search">
                    <strong>종목명/코드</strong>
                    <input type="hidden" id="now_page" name="now_page" value="1">
                    <input type="hidden" id="frame" name="frame" value="analysis/layer">
                    <input type="hidden" id="single_text" name="single_text">
                    <input type="hidden" id="market_type" name="market_type" value="">
                    <input type="text" id="s_search_text" name="s_search_text" value="" class="txt_input">
                    <a href="javascript:_search('apps.business/business.search')" class="btn_search01"><img src="../images/btn_search01.png" alt="검색" /></a>
                </div>
                </form>
            </div>
            <!-- //list_box -->
            <!-- table_style01 -->
            <div class="table_Pop01">
                <table>
                    <colgroup>
                        <col width="75px"/>
                        <col width="129px"/>
                        <col width="*"/>
                    </colgroup>
                    <thead>
                        <tr>
                            <th class="first">종목코드</th>
                            <th>종목명</th>
                            <th class="last">시장구분</th>
                        </tr>
                    </thead>
                </table>
                <div class="table_list01">
                    <table>
                        <colgroup>
                            <col width="75px"/>
                            <col width="129px"/>
                            <col width="*"/>
                        </colgroup>
                        <tbody>
                        </tbody>
                    </table>
                </div>
            </div>
            <!-- //table_style01 -->
            <div class="text_c"><a href="javascript:self.close()"><img src="../images/btn_close01.gif" alt="닫기" /></a></div>
         </div>
         <!-- //pop_list -->
    </div>
    <!-- //pop_style01 -->
</body>
</html>