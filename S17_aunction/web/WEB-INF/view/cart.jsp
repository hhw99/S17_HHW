<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>  
<!DOCTYPE html>
<html lang="en">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/cart.css">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/reset.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/header.css">
    <link rel="stylesheet" href="<%=request.getContextPath() %>/css/footer.css">
</head>
<body>


    <div id="header_wrap">
        <div id="core_lnb">
            <div class="lnb_container">
                <h1 class="logo">
                    <a href="${pageContext.request.contextPath }/main">
                        <img alt="옥션" src="//image.auction.co.kr/hanbando/202110/d337d318-1aeb-4902-abf7-e407d7f0d1a1.png">
                    </a>
                </h1>
                <div class="layout_left">
                    
                </div>
                <div class="layout_right">
                    <div class="usermsg"></div>
                    <div class="usermenu">
                        <ul>
                          <c:choose>
					<c:when test="${empty loginSsInfo}"><li id="headerloginveiw"><a href="${pageContext.request.contextPath }/login">로그인</a></li>
								<li id="headermemberenter" style=""><a onclick="log(this)" href="${pageContext.request.contextPath }/join">회원가입</a></li></c:when>
					<c:otherwise>														
					<li><a>${loginSsInfo.memberName }</a><li>					
					<li><a href="${pageContext.request.contextPath }/logout">로그아웃</a></li></c:otherwise>
							</c:choose>		
								
								<li><a href="${pageContext.request.contextPath }/cart">장바구니</a></li>
								<li><a href="${pageContext.request.contextPath }/mypage">마이옥션</a></li>
								<li><a href="http://member.auction.co.kr/help/home.aspx">고객센터</a></li>
								<li><a href="https://sell3.auction.co.kr/sellbasic/sellbasicbridge.aspx" target="_blank">판매하기</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="core_header">
            <div class="header_container">
                <div class="core_search">
                    <form accept-charset="utf-8" name="search_top" method="get" onsubmit="return TopSearchBox.OnSubmit(this);" class="search-wrap">
                        <input type="hidden" name="keyword">
                        <input type="hidden" name="itemno">
                        <input type="hidden" name="nickname">
                        <input type="hidden" name="frm">
                        <input type="hidden" name="dom" value="auction">
                        <input type="hidden" name="isSuggestion" value="No">
                        <input type="hidden" name="retry">
                        <div class="search_inner">
                            <input type="text" class="search_input_keyword" id="txtKeyword" onmousedown="return TopSearchBox.SetSearchBoxAdClear(1, this, event);" onkeydown="return TopSearchBox.SetSearchBoxAdClear(1, this, event);" onclick="return TopSearchBox.SetSearchBoxAdClear(1, this, event);" onfocus="return TopSearchBox.SetSearchBoxAdClear(0, this, event);" title="검색어 입력" autocomplete="off">
                            <input type="submit" value="검색" class="search_btn_ok">
                        </div>
                        <div class="search-word" id="suggestionLayer_ass" style="z-index:10000; display:none;">
                            <iframe id="suggestIframe_ass" width="371" frameborder="0" scrolling="no" allowtransparency="yes" real-src="//suggest.auction.co.kr/suggest/Suggest201209.html" title="추천 검색어">
                            </iframe>
                        </div>
                    </form>
                </div>


                
            </div>
        </div>
        <div id="core_gnb" style="z-index: 11;">
            <div class="gnb_container">
                <div class="layout_left">
                    <div class="corenavi navi_allmenu">
                        <a href="javascript:;" class="navi_opener"><span>전체 카테고리</span> <em class="ico_arrow type_up"></em></a>
                        <div class="navi_dropdown" style="display: block;"> 
                            <div class="allmenu" id="allmenu">
                            <ul class="inner"><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate10" id="8">브랜드 패션</a><div class="allmenu_depth2_group" style="display:none;"></div></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate01" id="1">의류</a><div class="allmenu_depth2_group" style="display:none;"></div></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate02" id="2">뷰티/잡화</a><div class="allmenu_depth2_group" style="display:none;"></div></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate03" id="3">식품/마트/유아</a><div class="allmenu_depth2_group" style="display:none;"></div></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate04" id="4">가구/생활/건강/렌탈</a><div class="allmenu_depth2_group" style="display:none;"></div></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate05" id="5">가전/디지털/컴퓨터</a><div class="allmenu_depth2_group" style="display:none;"></div></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate06" id="6">스포츠/자동차/공구</a><div class="allmenu_depth2_group" style="display:none;"></div></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate07" id="7">도서/티켓/여행/e쿠폰</a><div class="allmenu_depth2_group" style="display:none;"></div></li></ul></div>
                        </div>
                    </div> 
                    <ul class="corenavi primary">  
                        <li><a href="https://eventv2.auction.co.kr/event3/Monthly/CouponZone/w_event.aspx" class="primary_1">쿠폰포인트</a></li>  
                        <li><a href="https://corners.auction.co.kr/corner/categorybest.aspx" class="primary_2">옥션베스트</a></li>  
                        <li><a href="https://www.auction.co.kr/n/smiledelivery" class="primary_3">스마일배송</a></li>   
                        <li><a href="https://club.auction.co.kr" class="primary_4">스마일클럽</a></li>   
                        <li><a href="https://www.auction.co.kr/n/smileclubbiz" class="primary_5">스마일클럽 비즈</a></li>   
                    </ul>  
                </div>


                <div class="layout_right">
                    <div class="corenavi navi_latest">
                        <a href="javascript:;" class="navi_opener">
                            <span>최근 본 상품/코너</span>
                         <em class="ico_arrow type_down"></em></a>
                        <div class="navi_dropdown" style="display: none;">
                            <div class="column1">
                                <div class="column_latest_key">
                                    <div class="column_tit">최근 검색어</div>
                                <p class="noresult">최근 검색어를 보여드립니다<br>최근 입력한 검색어가 없으시네요</p></div>
                                <div class="column_hot_key">
                                    <div class="column_tit">인기 검색어</div>
                                <ul><li><em class="ico_number">1</em><span><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?fcc=1093&amp;cc=1093&amp;next=//browse.auction.co.kr/search?keyword=%25EB%25AA%25A8%25EB%25A1%259C%25EC%258B%25A4%2520%25EB%258B%25A4%25EC%259D%25B4%25EC%2596%25B4%25ED%258A%25B8">모로실 다이어트</a></span></li><li><em class="ico_number">2</em><span><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?fcc=1093&amp;cc=1093&amp;next=//browse.auction.co.kr/search?keyword=%25EB%25AC%25B8%25ED%2599%2594%25EC%2583%2581%25ED%2592%2588%25EA%25B6%258C%25205%25EB%25A7%258C%25EC%259B%2590">문화상품권 5만원</a></span></li><li><em class="ico_number">3</em><span><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?fcc=1093&amp;cc=1093&amp;next=//browse.auction.co.kr/search?keyword=k2%2520%25ED%258C%25A8%25EB%2594%25A9">k2 패딩</a></span></li><li><em class="ico_number">4</em><span><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?fcc=1093&amp;cc=1093&amp;next=//browse.auction.co.kr/search?keyword=%25EA%25B5%25B0%25EC%259A%25A9%25ED%2595%25AB%25ED%258C%25A9">군용핫팩</a></span></li><li><em class="ico_number">5</em><span><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?fcc=1093&amp;cc=1093&amp;next=//browse.auction.co.kr/search?keyword=%25EA%25B7%25A4%252010kg">귤 10kg</a></span></li></ul></div>
                            </div>
                            <div class="column3">
                                <div class="column_latest_item module_slot">
                                    <div class="column_tit">최근 본 상품</div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="box__title">
        <div class="box__inner-content">
            <h3 class="text__title image__location">장바구니</h3>
        </div>
    </div>
    <div class="box__tab">
        <div class="box__inner-content">
            <ul class="list-item__cart-type-group">
                <li class="list__tab list--active"><a class="link__tab" data-montelena-acode="100001723"
                        ><strong class="text__tab">전체</strong><span class="for-a11y">장바구니 갯수</span><span>
                        </span>
                  
                </li>
               
                
            </ul>
        </div>
    </div>
    <div id="cart__body" class="section__cart-body">
        <div class="box__inner-content box__inner-content--empty">
       <table>
	    <tr>
		    <td>사진</td>
		    <td>상품명</td>
		    <td>개수</td>
		    <td>가격</td>
	    </tr>
    <c:forEach items="${cartlist }" var="vo">
<%-- <a href="<%=request.getContextPath()%>/product?pid=${vo.pID }"> --%> 
       	<tr onclick="location.href='<%=request.getContextPath()%>/product?pid=${vo.pID }'">
		    <td><img src="${vo.pimage }" width="200" height="200"></td>
		    <td>${vo.pName }</td>
		    <td>${vo.amount }</td>
		     <td>${vo.price }</td>
       	</tr>
		
  
    </c:forEach>
    </table>
            <div class="box__cart-empty"><a
                    data-montelena-acode="100001744" class="link__historyback" href="${pageContext.request.contextPath }/main"><span
                        class="text__back">홈으로 가기</span></a></div>
        </div>
    </div>
   
    <div class="box__toast-popup " aria-live="polite" style="visibility: hidden; opacity: 0;">
        <p class="text">아차! 새벽배송이 마감되었어요.<span class="text__imoji">😓</span><br>걱정마세요! <span class="text__emphasis">지금
                주문하면 내일 받을 수 있어요!</span></p>
    </div>
    <div class="footer" role="contentinfo">
        <div class="footer-block footer-block-cs">
            <div class="footer-container">
                <h2>고객센터 및 분쟁처리</h2>
                <div class="footer-section footer-section-first">
                    <div class="footer-section-inner">
                        <h3><a href="//member.auction.co.kr/help/home.aspx" target="_blank">고객센터</a></h3>
                  
                            <ul>
                                <li>경기도 부천시 부일로 223, 9층 (상동)</li>
                                <li>Tel : <strong>1588-0184</strong> (평일 09:00 ~ 18:00)</li>
                                <li>스마일클럽 전용 Tel : <strong>1522-8900</strong> (365일 09:00 ~ 18:00)</li>
                                <li>Fax : 02-589-8829<span class="bar"></span>Mail : <a href="https://memberssl.auction.co.kr/help/Mail.aspx?topCode=M&amp;cCode=M0711" target="_blank">information@corp.auction.co.kr</a></li>
                            </ul>
                  
                    </div>
                </div>
                <div class="footer-section">
                    <div class="footer-section-inner">
                        <h3>주식회사 지마켓</h3>
                        <ul>
                            <li>서울특별시 강남구 테헤란로 <span class="alpha-num">152</span> (역삼동, GFC)</li>
                            <li>사업자등록번호 : <span class="alpha-num">220-81-83676 </span> <a href="//www.ftc.go.kr/bizCommPop.do?wrkr_no=2208183676" class="footer-button" target="_blank"><img src="//pics.iacstatic.co.kr/common/footer/button_check_biz_info.png" alt="사업자정보 확인" style="display: inline;"></a></li>
                            <li>통신판매업신고 : 강남 <span class="alpha-num">10630</span>호</li>
                            <li>대표이사 : 전항일</li>
                        </ul>
                    </div>
                </div>
                <div class="footer-section">
                    <div class="footer-section-inner">
                        <h3><a href="http://member.auction.co.kr/help/InLineHelp.aspx?newhelpcode=1&amp;code=I02042" onclick="newHelpPop('I02042'); return false;">전자금융 분쟁처리</a></h3>
                        <ul>
                            <li class="alpha-num">Tel : 1588-0184</li>
                            <li class="alpha-num">Fax : 02-589-8833</li>
                            <li class="alpha-num">Mail : <a href="mailto:mediation@corp.auction.co.kr">mediation@corp.auction.co.kr</a></li>
                            <li class="footer-links">							<a class="footer-link" href="#" onclick="openLayer('layer-complainprocess__wrap');return false">전자상거래법상의 소비자분쟁해결기준 &gt;</a>							<!-- .layer-contentspromotion__wrap -->							<div id="layer-complainprocess__wrap" class="layer-footerdimmed__wrap" style="display:none">								<div class="layer-footerdimmed layer-complainprocess">									<div class="layer-footerdimmed__inner">										<h4 class="layer-footerdimmed__title">통신판매 및 통신판매중개에서의 소비자분쟁해결기준</h4>										<div class="box__layer-inner">											<div class="box__layer-content">												<div class="box__legal-content">													<h4 class="text__legal-title">제1장 총칙</h4>													<div class="box__legal-notice">														<h6 class="text__notice-title">제1조(목적)</h6>														<p class="text__notice">통신판매 및 통신판매중개에서의 소비자분쟁해결기준(이하 “분쟁해결기준”)은 「전자상거래 등에서의 소비자보호에 관한 법률」 제20조 제3항에 따라 주식회사 지마켓(이하 “회사”라 한다)의 통신판매중개 또는 이를 통해 체결된 통신판매로 인해 발생한 소비자분쟁의 원활한 해결을 위한 기준을 정함을 목적으로 한다.</p>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제2조(정의)</h6>														<p class="text__notice">분쟁해결기준에서 사용하는 용어의 뜻은 다음과 같다.</p>														<ol class="list__legal-notice">															<li class="list-item">“통신판매”란 「전자상거래 등에서의 소비자보호에 관한 법률」제2조 제2호에서 정한 통신판매를 말한다.</li>															<li class="list-item">“통신판매중개”란 「전자상거래 등에서의 소비자보호에 관한 법률」 제2조 제4호에서 정한 통신판매중개를 말한다.</li>															<li class="list-item">“입점업체”란 회사의 통신판매중개를 통해 소비자와 재화 또는 용역(이하 “재화등”이라 한다)을 거래한 사업자를 말한다.</li>															<li class="list-item">“소비자”란 「전자상거래 등에서의 소비자보호에 관한 법률」 제2조 제5호에서 정한 소비자를 말한다.</li>															<li class="list-item">“상대방”이란 회사의 통신판매중개를 통해 입점업체와 재화등을 거래한자 중 소비자가 아닌 자를 말한다.</li>														</ol>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제3조(적용대상)</h6>														<p class="text__notice">➀ 분쟁해결기준은 회사와 소비자간 분쟁 및 입점업체와 소비자간 분쟁에 대해 적용된다.<br>➁ 분쟁해결기준에서 다르게 정한 경우를 제외하고, 분쟁해결기준은 회사와 상대방간 분쟁 및 입점업체와 상대방간 분쟁에 대해 적용된다.</p>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제4조(관련 법령 등의 개정에 따른 적용 등)</h6>														<p class="text__notice">➀ 「전자상거래 등에서의 소비자보호에 관한 법률」 , 「소비자기본법」 제16조제2항에 따른 소비자분쟁해결기준 등 관련 법령 등(이하 “관련 법령등”이라 한다)이 개정되어 관련 법령등의 내용이 분쟁해결기준의 내용과 상이할 경우에 소비자분쟁 또는 상대방분쟁에 대해 관련 법령등이 우선 적용된다. ➁ 소비자분쟁 또는 상대방분쟁에 대해 분쟁해결기준에서 규정하지 않은 사항은 다음 각 호에서 정한 기준에 따라 분쟁을 해결한다.</p>														<ol class="list__legal-notice">															<li class="list-item">관련 법령등에서 규정하고 있는 경우 : 관련 법령 등에서 정한 기준</li>															<li class="list-item">관련 법령등에서 규정하고 있지 않는 경우 : 소비자와 회사가 합의한 기준</li>														</ol>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제5조(분쟁해결기준과 다른 약정)</h6>														<p class="text__notice">회사와 소비자간 또는 입점업체와 소비자 간분쟁의 해결기준에 관한 약정이 있는 경우에 그 약정은 ‘일반적 분쟁해결기준’ 및 ‘재화·시설 및 용역별 분쟁해결기준’등보다 우선하여 적용된다. 다만, 해당 약정이 관련 법령등의 강행규정을 위반한 경우에는 관련 법령등을 적용하고, 관련 법령등에서 해결기준을 정하지 않은 경우에 ‘일반적 분쟁해결기준’ 및 ‘재화·시설 및 용역별 분쟁해결기준’등이 적용된다.</p>													</div>													<h4 class="text__legal-title">제2장 회사와 소비자 또는 상대방간 분쟁 및 해결기준</h4>													<div class="box__legal-notice">														<h6 class="text__notice-title">제6조(청약철회등에 따른 대금의 환급등)</h6>														<p class="text__notice">➀ 다음 각 호의 어느 하나에 해당하는 경우, 소비자가 「전자상거래 등에서의 소비자보호에 관한 법률」 제17조에 따라 청약의 철회 및 계약의 해제(이하 “청약철회등”이라 한다)를 하였을 때에 회사는 소비자에게 대금을 환급한다.<br>															<span class="text__sub-listing">1. 회사가 입점업체를 대신하여 소비자와 계약을 체결한 경우</span>															<span class="text__sub-listing">2. 회사가 소비자로부터 대금을 지급받은 경우</span>															➁ 회사는 제1항에 따른 대금환급의무를 다음 각 호에서 정한 기한까지 이행한다.															<span class="text__sub-listing">1. 소비자가 재화를 공급받은 경우 : 그 재화를 입점업체에 반환한 날로부터 3영업일 이내</span>															<span class="text__sub-listing">2. 소비자가 용역 또는 디지털콘텐츠를 공급받은 경우 : 소비자가 청약철회등을 한 날로부터 3영업일 이내</span>														<span class="text__sub-listing">3. 소비자가 재화등을 공급받지 않은 경우 : 소비자가 청약철회등을 한 날로부터 3영업일 이내</span>														➂ 소비자가 공급받은 재화등을 일부 사용하거나 소비한 경우, 회사는 제2항에 따라 대금을 환급함에 있어 「전자상거래 등에서의 소비자보호에 관한 법률」 제18조제8항에서 정한 금액을 제외한 나머지 금액을 지급한다.<br>														➃ 회사가 제2항 및 제3항에 따른 대금환급을 지연한 경우에 그 지연기간에 대해 「전자상거래 등에서의 소비자보호에 관한 법률」 제18조제2항에서 정한 지연배상금(이하 “지연배상금”이라 한다)을 더하여 지급한다.<br>														➄ 회사는 제2항 및 제3항에 따라 대금을 환급할 때 소비자가 「여신전문금융업법」 제2조제3호에 따른 신용카드 또는 재화등을 구입한 소비자가 직접 지급하는 현금(계좌이체에 의한 지급을 포함한다) 외의 결제수단으로서 해당 결제 수단을 제공한 사업자(이하 “결제업자”라 한다)에게 청구를 정지 또는 취소하거나 환급하는 경우, 해당 소비자에게 환급한 것과 같은 효과가 발생하는 결제수단으로 재화등의 대금을 지급한 경우에는 지체 없이 해당 결제업자에게 재화등의 대금 청구를 정지하거나 취소하도록 요청하여야 한다. 다만, 회사가 결 제업자로부터 해당 재화등의 대금을 이미 받은 때에는 지체 없이 그 대금을 결제업자에게 환급하고, 그 사실을 소비자에게 알린다.<br>														➅ 제5항 단서에 따라 회사로부터 재화등의 대금을 환급받은 결제업자는 그 환급받은 금액을 지체 없이 소비자에게 환급하거나 환급에 필요한 조치를 취한다.<br>														➆ 제5항 단서에 해당하는 회사가 환급을 지연하여 소비자가 대금을 결제하게 한 경우, 회사는 그 지연기간에 대한 지연배상금을 소비자에게 지급한다.<br>														➇ 회사가 정당한 사유 없이 제5항 단서에 따라 결제업자에게 대금을 환급하지 아니한 경우에 소비자가 결제업자에게 그 회사에 대한 다른 채무와 회사로부터 환급받을 금액을 상계(相計)할 것을 요청할 수 있다. 이 경우, 결제업자는 「전자상거래 등에서의 소비자보호에 관한 법률 시행령」으로 정하는 바에 따라 그 회사에 대한 다른 채무와 상계할 수 있다.<br>														➈ 소비자는 결제업자가 제8항에 따른 상계를 정당한 사유 없이 게을리한 경우에는 결제업자에 대하여 대금의 결제를 거부할 수 있다. 이 경우, 회사와 결제업자는 그 결제 거부를 이유로 그 소비자를 약정한 기일까지 채무를 변제하지 아니한 자로 처리하는 등 소비자에게 불이익을 주는 행위를 하지 않는다.<br>														➉ 「전자상거래 등에서의 소비자보호에 관한 법률」제17조제1항에 따른 청약 철회등의 경우, 공급받은 재화등의 반환에 필요한 비용은 소비자가 부담하며, 입점업체는 소비자에게 청약철회등을 이유로 위약금이나 손해배상을 청구할 수 없다.<br>														⑪ 「전자상거래 등에서의 소비자보호에 관한 법률」제17조제3항에 따른 청약 철회등의 경우, 재화등의 반환에 필요한 비용은 입점업체가 부담한다.														</p>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제7조(고지의무 또는 신원정보 미제공에 따른 회사의 책임)</h6>														<p class="text__notice">➀ 회사가 통신 판매중개를 하면서 소비자에게 통신판매의 당사자가 아니라는 사실을 고지하지 않은 경우에 회사는 입점업체의 고의 또는 과실로 소비자에게 발생한 재산상 손해에 대해 입점업체와 연대하여 배상한다.														➁ 회사가 통신판매중개를 하면서 「전자상거래 등에서의 소비자보호에 관한 법률」 제20조제2항에 따른 입점업체의 정보를 제공하지 않거나 제공한 정보가 사실과 달라 소비자에게 발생한 재산상 손해에 대해 입점업체와 연대하여 배상한다. 다만, 회사가 소비자에게 피해가 발생하지 않도록 상당한 주의를 기울인 경우에는 그러하지 아니하다.</p>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제8조(통신판매업자인 회사의 책임)</h6>														<p class="text__notice">통신판매업자인 회사는 입점업체와 소비자간의 거래에 대해 「전자상거래 등에서의 소비자보호에 관한 법률」 제13 조부터 제15조까지, 제17조 및 제18조까지의 책임을 소비자에게 부담한다. 다만, 입점업체가 그 책임을 지기로 회사와 약정하고, 회사가 소비자에게 고지한 부분에 대해서는 입점업체가 책임을 부담한다.</p>													</div>													<h4 class="text__legal-title">제3장 입점업체와 소비자간 분쟁 및 해결기준</h4>													<h5 class="text__legal-sub-title">제1절 일반적 분쟁해결기준</h5>													<div class="box__legal-notice">														<h6 class="text__notice-title">제9조(재화등의 하자·채무불이행 등)</h6>														<p class="text__notice">입점업체는 재화등의 하자·채무불이행 등으로 인한 소비자의 피해에 대하여 다음 각 호의 기준에 따라 수리·교환· 환급 또는 배상을 하거나, 계약의 해제·해지 및 이행 등을 하여야 한다.</p>														<ol class="list__legal-notice">															<li class="list-item">품질보증기간 동안의 수리·교환·환급에 드는 비용은 입점업체가 부담한다. 다만, 소비자의 취급 잘못이나 천재지변으로 고장이나 손상이 발생한 경우와 제조자 및 제조자가 지정한 수리점·설치점이 아닌 자가 수리·설치하여 재화등이 변경되거나 손상된 경우에는 입점업체가 비용을 부담하지 아니한다.</li>															<li class="list-item">수리는 지체 없이 하되, 수리가 지체되는 불가피한 사유가 있을 때는 소비자에게 알려야 한다. 소비자가 수리를 의뢰한 날부터 1개월이 지난 후에도 입점업체가 수리된 재화등을 소비자에게 인도하지 못할 경우에 품질보증기간이내일 때는 같은 종류의 재화등으로 교환하거나 환급하고, 품질보증기간이 지났을 때에는 구입가를 기준으로 정액 감가상각하고 남은 금액에 재화·시설 및 용역별 분쟁해결기준에서 정하는 일정금액을 더하여 환급한다.</li>															<li class="list-item">재화등을 유상으로 수리한 경우에 그 유상으로 수리한 날부터 2개월 이내에 소비자가 정상적으로 재화등을 사용하는 과정에서 그 수리한 부분에 종전과 동일한 고장이 재발한 경우에는 무상으로 수리하되, 수리가 불가능한 때에는 종전에 받은 수리비를 환급하여야 한다.</li>															<li class="list-item">교환은 같은 종류의 재화등으로 하되, 같은 종류의 재화등으로 교환하는 것이 불가능한 경우에는 같은 종류의 유사재화등으로 교환한다. 다만, 같은 종류의 재화등으로 교환하는 것이 불가능하고 소비자가 같은 종류의 유사재화등으로 교환하는 것을 원하지 아니하는 경우에는 환급한다.</li>															<li class="list-item">할인판매된 재화등을 교환하는 경우에는 그 정상가격과 할인가격의 차액에 관계없이 교환은 같은 종류의 재화등으로 하되, 같은 종류의 재화등으로 교환하는 것이 불가능한 경우에는 같은 종류의 유사재화등으로 교환한다. 다만, 같은 종류의 재화등으로 교환하는 것이 불가능하고 소비자가 같은 종류의 유사재화등으로 교환하는 것을 원하지 아니하는 경우에는 환급한다.</li>															<li class="list-item">환급금액은 거래 시 교부된 영수증 등에 적힌 재화등의 가격을 기준으로 한다. 다만, 영수증 등에 적힌 가격에 대하여 다툼이 있는 경우에는 영수증 등에 적힌 금액과 다른 금액을 기준으로 하려는 자가 그 다른 금액이 실제 거래가격임을 입증하여야 하며, 영수증이 없는 등의 사유로 실제 거래가격을 입증할 수 없는 경우에는 그 지역에서 거래되는 통상적인 가격을 기준으로 한다.</li>														</ol>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제10조(경품류의 하자·채무불이행 등)</h6>														<p class="text__notice">입점업체가 재화등의 거래에 부수(附隨)하여 소비자에게 제공하는 경제적 이익인 경품류의 하자·채무불이행 등으로 인한 소비자가 피해에 대한 분쟁해결기준은 제9조를 준용한다. 다만, 소비자가 책임있는 사유로 계약이 해제되거나 해지되는 경우에 입점업체는 소비자로부터 그 경품류를 반환받거나 반환이 불가능한 경우에는 해당 지역에서 거래되는 같은 종류의 유사재화등을 반환받거나 같은 종류의 유사재화등의 통상적인 가격을 기준으로 가액반환을 받는다.</p>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제11조(품질보증서의 교부 등)</h6>														<p class="text__notice">입점업체는 재화등의 판매 시 품질보증기간, 부품보유기간, 수리·교환·환급 등 보상방법, 그 밖의 품질보증에 관한 사항을 표시한 증서(이하 "품질보증서"라 한다)를 교부하거나 그 내용을 재화등에 표시하여야 한다. 다만, 별도의 품질보증서를 교부하기가 적합하지 아니하거나 보상방법의 표시가 어려운 경우에는 「소비자기본법」에 따른 소비자분쟁해결기준에 따라 피해를 보상한다는 내용만을 표시할 수 있다.</p>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제12조(품질보증기간과 부품보유기간)</h6>														<p class="text__notice">품질보증기간과 부품보유기간은 다음 각 호에서 정한 바에 따른다.</p>														<ol class="list__legal-notice">															<li class="list-item">품질보증기간과 부품보유기간은 해당 입점업체가 품질보증서에 표시한 기간으로 한다. 다만, 입점업체가 정한 품질보증기간과 부품보유기간이 제15조에서 정한 기간보다 짧을 경우에는 제15조에서 정한 기간으로 한다.</li>															<li class="list-item">입점업체가 품질보증기간과 부품보유기간을 표시하지 아니한 경우에는 제15조에서 정한 기간으로 한다.</li>															<li class="list-item">중고재화등에 대한 품질보증기간은 제15조에서 정한 기간으로 한다.</li>															<li class="list-item">품질보증기간은 소비자가 재화등을 구입하거나 제공받은 날부터 기산한다. 다만, 계약일과 인도일(용역의 경우에는 제공일을 말한다. 이하 이 호에서 같다)이 다른 경우에는 인도일을 기준으로 하고, 교환받은 재화등의 품질보증기간은 교환받은 날부터 기산한다.</li>															<li class="list-item">품질보증서에 판매일자가 적혀 있지 아니한 경우, 품질보증서 또는 영수증을 받지 아니하거나 분실한 경우 또는 그 밖의 사유로 판매일자를 확인하기 곤란한 경우에는 해당 재화등의 제조일이나 수입통관일부터 3월이 지난 날부터 품질보증기간을 기산하여야 한다. 다만, 재화등 또는 재화등의 포장에 제조일이나 수입통관일이 표시되어 있지 아니한 재화등은 입점업체가 그 판매일자를 입증하여야 한다.</li>														</ol>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제13조(피해배상 또는 보상의 장소 등)</h6>														<p class="text__notice">➀ 재화등에 대한 피해의 배상 또는 보상은 재화등의 소재지나 제공지에서 시행한다. 다만, 사회통념상 휴대가 간편하고 운반이 쉬우면서 소비자가 주소 또는 근무지와 입점업체의 소재지가 근접한 경우에 입점업체의 소재지에서 배상 또는 보상할 수 있다. ➁ 입점업체는 배상 또는 보상을 위해 소비자에게 재화의 반환을 요구할 수 있다. 다만, 입점업체가 수거하기로 약정한 경우, 재화의 반환에 전문기술 등이 요구되는 경우 또는 소비자가 반환하기 곤란한 경우에는 입점업체가 수거한다.</p>													</div>													<div class="box__legal-notice">														<h6 class="text__notice-title">제14조(경비의 부담)</h6>														<p class="text__notice">입점업체의 책임있는 사유로 인해 소비자의 피해처리과정에서 발생되는 운반비용, 시험·검사비용 등의 경비는 입점업체가 부담한다.</p>													</div>													<h5 class="text__legal-sub-title">제2절 재화·시설 및 용역별 분쟁해결기준 등</h5>													<div class="box__legal-notice">														<h6 class="text__notice-title">제15조(재화별 품질보증기간 및 부품보유기간)</h6>														<p class="text__notice">재화별 품질보증기간 및 부품 보유기간은【별표 1】과 같다.</p>														<h6 class="text__notice-title">제16조(재화·시설 및 용역별 분쟁해결기준)</h6>														<p class="text__notice">재화·시설 및 용역별 분쟁해결 기준은【별표 2】와 같다.</p>														<h6 class="text__notice-title">제17조(재화별 내용연수표)</h6>														<p class="text__notice">재화별 내용연수표는【별표 3】과 같다.</p>													</div>													<h5 class="text__legal-sub-title">부칙</h5>													<div class="box__legal-notice">														<h6 class="text__notice-title">제1조(시행일)</h6>														<p class="text__notice">분쟁해결기준은 2022년 6월 10일부터 시행된다.</p>													</div>														<div class="box__legal-pdf">															<p class="text__notice">【별표 1】<a href="//pics.auction.co.kr/pc/single/common/legal/[별표 1] 재화별 품질보증기간 및 부품보유기간.pdf" target="_blank" class="link__legal-pdf">재화별 품질보증기간 및 부품보유기간</a></p>															<p class="text__notice">【별표 2】<a href="//pics.auction.co.kr/pc/single/common/legal/[별표 2] 재화ㆍ시설 및 용역별 분쟁해결기준.pdf" target="_blank" class="link__legal-pdf">재화·시설 및 용역별 분쟁해결기준</a></p>															<p class="text__notice">【별표 3】<a href="//pics.auction.co.kr/pc/single/common/legal/[별표 3] 재화별 내용연수표.pdf" target="_blank" class="link__legal-pdf">재화별 내용연수표</a></p>														</div>													</div>													<button class="button-layerclose sprite-footer" onclick="closeLayer('layer-complainprocess__wrap');return false">닫기</button>												</div>											</div>										</div>									</div>									<div class="dimmed"></div>								</div>							<!-- // .layer-contentspromotion__wrap -->						</li>					</ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-block footer-block-compressed">
            <div class="footer-container">
                <ul class="footer-horiz-list">
                
                </ul>
            </div>
        </div>
        <div class="footer-block footer-block-copyright">
            <div class="footer-container">
                <p>옥션은 통신판매중개자이며 통신판매의 당사자가 아닙니다. 따라서 옥션은 상품·거래 정보 및 가격에 대하여 책임을 지지 않습니다.<br>본 사이트의 모든 정보, 콘텐츠, UI 등에 대한 무단 복제, 전송, 배포, 스크래핑 등의 행위는 관련 법령에 의하여 엄격히 금지됩니다. <a href="#" class="link--emphasis" onclick="openLayer('layer-contentspromotion__wrap');return false">콘텐츠산업 진흥법에 따른 표시</a></p>			<!-- .layer-contentspromotion__wrap -->			<div id="layer-contentspromotion__wrap" class="layer-footerdimmed__wrap" style="display:none">				<div class="layer-footerdimmed layer-contentspromotion">					<div class="layer-footerdimmed__inner">						<h4 class="layer-footerdimmed__title">콘텐츠산업 진흥법에 따른 표시</h4>						<div class="layer-footerdimmed__content">							<strong class="layer-contentspromotion__content-title"><span class="layer-contentspromotion__icon sprite-footer"></span>콘텐츠산업 진흥법에 따른 표시</strong>							<ol class="layer-contentspromotion__list">								<li>1. 콘텐츠의 명칭 : 상품/판매자/쇼핑정보</li>								<li>2. 제작연월일 : 개별콘텐츠의 개시일 또는 갱신일</li>								<li>3. 제작자 : 주식회사 지마켓 및 개별판매자</li>							</ol>							<p class="layer-contentspromotion__discription">본 사이트의 콘텐츠는 콘텐츠산업 진흥법에 따라 개시일 또는 갱신일로부터 5년간 보호됩니다.</p>							<p class="layer-footerdimmed__bts">								<button class="layer-footerdimmed__button-close" onclick="closeLayer('layer-contentspromotion__wrap');return false;">닫기</button>							</p>						</div>						<button class="button-layerclose sprite-footer" onclick="closeLayer('layer-contentspromotion__wrap');return false;">닫기</button>					</div>				</div>				<div class="dimmed"></div>			</div>			<!-- // .layer-contentspromotion__wrap -->			<p class="footer-copyright">Copyright Gmarket Inc. All rights reserved.</p>
            </div>
        </div>
    </div>
</body>

</html>