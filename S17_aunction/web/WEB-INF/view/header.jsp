<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<div id="header_wrap">
        <div id="core_lnb"> 
            <div class="lnb_container">
                <h1>
                      <a href="${pageContext.request.contextPath }/main">
                        <img src="//pics.auction.co.kr/pc/renewal/common/header/logo_@2x.png" alt="AUCTION">
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
                    <form accept-charset="utf-8" class="search-wrap" id="where" name="search_top" action="" method="get" onsubmit="document.getElementById('_searchCcLog').src='http://through.auction.co.kr/common/SafeRedirect.aspx?cc=0E00&amp;next=justlog';return TopSearchBox.OnSubmit(this);">
                        <div class="search_inner">
                            <input type="hidden" name="keyword">
                            <input type="hidden" name="itemno">
                            <input type="hidden" name="nickname">
                            <input type="hidden" name="arraycategory">
                            <input type="hidden" name="frm">
                            <input type="hidden" name="dom" value="auction">
                            <input type="hidden" name="isSuggestion" value="No">
                            <input type="hidden" name="retry">
                            <input type="text" class="search_input_keyword" id="txtKeyword" onmousedown="return TopSearchBox.SetSearchBoxAdClear(1, this, event);" onclick="return TopSearchBox.SetSearchBoxAdClear(1, this, event);" onkeydown="return TopSearchBox.SetSearchBoxAdClear(1, this, event);" onfocus="return TopSearchBox.SetSearchBoxAdClear(0, this, event);" autocomplete="off">
                            <input type="submit" class="search_btn_ok" value="검색">
                        </div>
                        <div class="search-word" id="suggestionLayer_ass" style="width:300px;">
                            <iframe id="suggestIframe_ass" width="310" height="0" frameborder="0" scrolling="no" allowtransparency="yes" real-src="http://suggest.auction.co.kr/suggest/suggest201209.html" title="추천 검색어"></iframe>
                        </div>
                    </form>
                    <img id="_searchCcLog" width="0" height="0" alt="" src="//pics.auction.co.kr/common/blank.gif">
                </div>
            </div>
        </div>
        <div id="core_gnb" class="">
            <div class="gnb_container">
                <div class="layout_left">
                    <div class="corenavi navi_allmenu">
                        <a href="javascript:;" class="navi_opener"><span>전체 카테고리</span> <em class="ico_arrow type_down"></em></a>
                        <div class="navi_dropdown" style="display: none;">
                            <div class="allmenu" id="allmenu"><ul><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate10">브랜드 패션</a></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate01">의류</a></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate02">뷰티/잡화</a></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate03">식품/마트/유아</a></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate04">가구/생활/건강/렌탈</a></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate05">가전/디지털/컴퓨터</a></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate06">스포츠/자동차/공구</a></li><li><a href="javascript:;" class="allmenu_depth1 allmenu_cate07">도서/티켓/여행/e쿠폰</a></li></ul></div>
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
                        <a href="javascript:;" class="navi_opener"><span>최근 본 상품</span><em id="rviItemCount" class="ico_tooltip type_circle"></em> <em class="ico_arrow type_down"></em></a>
                        <div class="navi_dropdown" style="display: none;">
                            <div class="column1">
                                <div class="column_latest_key">
                                    <div class="column_tit">최근 검색어</div>
                                <p class="noresult">최근 검색어를 보여드립니다<br>최근 입력한 검색어가 없으시네요</p></div>
                                <div class="column_hot_key">
                                    <div class="column_tit">인기 검색어</div>
                                <ul><li><em class="ico_number">1</em><span><a href="https://browse.auction.co.kr/search?keyword=%EC%B9%B4%EC%9A%B4%ED%85%8C%EC%8A%A4%EB%A7%88%EB%9D%BC%20%EC%9E%90%EB%8F%99%20%EB%B2%A8%ED%8A%B8">카운테스마라 자동 벨트</a></span></li><li><em class="ico_number">2</em><span><a href="https://browse.auction.co.kr/search?keyword=%EC%A0%95%EC%9D%8D%EC%8C%8D%ED%99%94%EC%B0%A8">정읍쌍화차</a></span></li><li><em class="ico_number">3</em><span><a href="https://browse.auction.co.kr/search?keyword=%EA%B5%B0%EC%9A%A9%ED%95%AB%ED%8C%A9">군용핫팩</a></span></li><li><em class="ico_number">4</em><span><a href="https://browse.auction.co.kr/search?keyword=%EB%A7%88%EB%AA%A8%ED%8A%B8%EB%B0%A9%ED%95%9C%ED%99%94">마모트방한화</a></span></li><li><em class="ico_number">5</em><span><a href="https://browse.auction.co.kr/search?keyword=%EB%AC%B8%ED%99%94%EC%83%81%ED%92%88%EA%B6%8C%205%EB%A7%8C%EC%9B%90">문화상품권 5만원</a></span></li></ul></div>
                            </div>
                            <div class="column3">
                                <div class="column_latest_item module_slot">
                                    <div class="column_tit">최근 본 상품</div>
                                <div class="item_count"><span class="current">1</span>/<span class="total">2</span></div><div class="item_list"><ul><li><div class="thumb"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C466582560"><img src="http://image.auction.co.kr/itemimage/2c/81/05/2c81050422.jpg" alt="실속포장 2022년 햇 상주곶감 건시 1kg(23-38개)/ 정품 가성비 상주곶감"></a><a href="javascript:;" class="btn_close type_black">삭제</a></div><div class="desc"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C466582560"><span class="item_tit">실속포장 2022년 햇 상주곶감 건시 1kg(23-38개)/ 정품 가성비 상주곶감</span><span class="item_price">15,900원</span></a></div></li><li><div class="thumb"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C751059976"><img src="http://image.auction.co.kr/itemimage/2a/9b/81/2a9b814292.jpg" alt="1+1 K2 Safety 맥스 기모귀마개 방한귀덮개 귀도리"></a><a href="javascript:;" class="btn_close type_black">삭제</a></div><div class="desc"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C751059976"><span class="item_tit">1+1 K2 Safety 맥스 기모귀마개 방한귀덮개 귀도리</span><span class="item_price">11,420원</span></a></div></li><li><div class="thumb"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=B667067440"><img src="http://image.auction.co.kr/itemimage/26/7a/1f/267a1f0a22.jpg" alt="파인애플 잼 비스킷 10봉세트 태국쇼핑템 개별위생포장"></a><a href="javascript:;" class="btn_close type_black">삭제</a></div><div class="desc"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=B667067440"><span class="item_tit">파인애플 잼 비스킷 10봉세트 태국쇼핑템 개별위생포장</span><span class="item_price">12,900원</span></a></div></li><li><div class="thumb"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C752507772"><img src="http://image.auction.co.kr/itemimage/2a/d6/cb/2ad6cb34c2.jpg" alt="POSTURE 사무용 컴퓨터 게이밍 책상 공부 의자 색상선택 +  기사방문 설치 + 12월 리뷰이벤트"></a><a href="javascript:;" class="btn_close type_black">삭제</a></div><div class="desc"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C752507772"><span class="item_tit">POSTURE 사무용 컴퓨터 게이밍 책상 공부 의자 색상선택 +  기사방문 설치 + 12월 리뷰이벤트</span><span class="item_price">399,000원</span></a></div></li><li><div class="thumb"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C265794994"><img src="http://image.auction.co.kr/itemimage/2c/6e/47/2c6e471b62.jpg" alt="서랍형침대 슈퍼싱글 + 파워본넬 자가드 매트리스포함 LED+와이드서랍 싱글/더블/퀸 선택가능"></a><a href="javascript:;" class="btn_close type_black">삭제</a></div><div class="desc"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C265794994"><span class="item_tit">서랍형침대 슈퍼싱글 + 파워본넬 자가드 매트리스포함 LED+와이드서랍 싱글/더블/퀸 선택가능</span><span class="item_price">244,000원</span></a></div></li><li><div class="thumb"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C852051123"><img src="http://image.auction.co.kr/itemimage/2b/f7/af/2bf7af7962.jpg" alt="스팟 카밍 패치 90매"></a><a href="javascript:;" class="btn_close type_black">삭제</a></div><div class="desc"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C852051123"><span class="item_tit">스팟 카밍 패치 90매</span><span class="item_price">7,900원</span></a></div></li><li><div class="thumb"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C424260788"><img src="http://image.auction.co.kr/itemimage/23/5f/f2/235ff2f922.jpg" alt="소니 블루투스 노이즈캔슬링 헤드폰 WH-1000XM4 블랙"></a><a href="javascript:;" class="btn_close type_black">삭제</a></div><div class="desc"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C424260788"><span class="item_tit">소니 블루투스 노이즈캔슬링 헤드폰 WH-1000XM4 블랙</span><span class="item_price">349,900원</span></a></div></li><li><div class="thumb"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C700460714"><img src="http://image.auction.co.kr/itemimage/28/e2/b8/28e2b8f422.jpg" alt="갤러리아 LG 전자레인지 MW23GD (23L1000W)"></a><a href="javascript:;" class="btn_close type_black">삭제</a></div><div class="desc"><a href="http://through.auction.co.kr/common/SafeRedirect.aspx?cc=10EA&amp;next=http://itempage3.auction.co.kr/detailview.aspx?itemno=C700460714"><span class="item_tit">갤러리아 LG 전자레인지 MW23GD (23L1000W)</span><span class="item_price">139,000원</span></a></div></li></ul></div><div class="item_control"><input class="btn_prev" type="button" value="이전"><input class="btn_next" type="button" value="다음"></div></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    