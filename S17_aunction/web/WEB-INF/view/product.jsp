<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./css/reset.css">
    <link rel="stylesheet" href="./css/header.css">
    <link rel="stylesheet" href="./css/login.css">
    <link rel="stylesheet" href="./css/main.css">
    <link rel="stylesheet" href="./css/product.css">
    <title>Document</title>
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
</head>
<body>
        <div id="_FavoriteItemGroupManageLayer" style="display:none; position:absolute; z-index:11000; left: 249px; top: 142px;"></div>
        <div id="_FavoriteItemClosingAlarmRegistLayer" style="display:none; position:absolute; z-index:11000; "></div>
        <input type="hidden" id="hdnData" name="hdnBulkRegistInfo">
        <input type="hidden" id="hdnCaller" name="hdnCaller">
        
            <script>	
                GroupItemList = $.parseJSON('[{"ItemNo":"C466582560","ItemName":"실속포장 2022년 햇 상주곶감 건시 1kg(23-38개)/ 정품 가성비 상주곶감","Price":"17,490","DiscountPrice":"15,900","DiscountRate":"9","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/81/05/2c81050422.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/81/05/2c81050425.jpg","IsFavoriteItem":false,"GroupOrderBy":8,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":0,"StockNo":28265121479,"IsBigSmileDayItem":0,"TransPolicyNo":"168196","Is3PL":false},{"ItemNo":"C258036958","ItemName":"실속형_국내산 햇 상주 반건시 곶감 20입/40g내외(35-45g)","Price":"16,000","DiscountPrice":"15,900","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/57/3b/2c573b3f32.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/57/3b/2c573b3f35.jpg","IsFavoriteItem":false,"GroupOrderBy":1,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":0,"StockNo":32635364940,"IsBigSmileDayItem":0,"TransPolicyNo":"168196","Is3PL":false},{"ItemNo":"C471395749","ItemName":"실속포장 2022년 햇 상주 반건시 곶감 20입 50g내외(45-55g)","Price":"18,500","DiscountPrice":"18,400","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/57/4f/2c574ff3f2.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/57/4f/2c574ff3f5.jpg","IsFavoriteItem":false,"GroupOrderBy":2,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":0,"StockNo":28331717303,"IsBigSmileDayItem":0,"TransPolicyNo":"168196","Is3PL":false},{"ItemNo":"C252430742","ItemName":"쫄깃달콤한 국내산 상주 반건시 곶감 30입 선물세트/ 40g내외/ 보자기","Price":"25,000","DiscountPrice":"24,900","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/8a/ef/2c8aef0ba2.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/8a/ef/2c8aef0ba5.jpg","IsFavoriteItem":false,"GroupOrderBy":3,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":0,"StockNo":25732885750,"IsBigSmileDayItem":0,"TransPolicyNo":"168196","Is3PL":false},{"ItemNo":"C471413250","ItemName":"선물세트 상주 반건시곶감 20입/ 40g내외/ 보자기증정","Price":"17,600","DiscountPrice":"17,500","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/8c/1c/2c8c1c01f2.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/8c/1c/2c8c1c01f5.jpg","IsFavoriteItem":false,"GroupOrderBy":4,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":0,"StockNo":28331860796,"IsBigSmileDayItem":0,"TransPolicyNo":"168196","Is3PL":false},{"ItemNo":"C471412153","ItemName":"선물세트 상주 반건시 곶감 20입/ 50g내외/ 보자기증정","Price":"20,000","DiscountPrice":"19,900","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/80/dd/2c80dd5cf2.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/80/dd/2c80dd5cf5.jpg","IsFavoriteItem":false,"GroupOrderBy":5,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":0,"StockNo":28331851229,"IsBigSmileDayItem":0,"TransPolicyNo":"168196","Is3PL":false},{"ItemNo":"C491117275","ItemName":"1+1 선물세트 상주 반건시 곶감 20입x2박스/40g내외/보자기증정","Price":"33,000","DiscountPrice":"32,900","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/80/96/2c80960c42.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/80/96/2c80960c45.jpg","IsFavoriteItem":false,"GroupOrderBy":6,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":5,"StockNo":33074071427,"IsBigSmileDayItem":0,"TransPolicyNo":"258441","Is3PL":false},{"ItemNo":"C491126592","ItemName":"1+1프리미엄 상주 반건시곶감 20입x2박스/50g내외/보자기증정","Price":"39,000","DiscountPrice":"38,900","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/80/83/2c8083aaa2.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/80/83/2c8083aaa5.jpg","IsFavoriteItem":false,"GroupOrderBy":7,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":0,"StockNo":28586945576,"IsBigSmileDayItem":0,"TransPolicyNo":"168196","Is3PL":false},{"ItemNo":"C862105104","ItemName":"대용량 2022년 햇 상주곶감 건시 반접(50개)/ 정품 가성비 상주곶감","Price":"24,000","DiscountPrice":"23,900","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/2e/18/2c2e185952.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/2e/18/2c2e185955.jpg","IsFavoriteItem":false,"GroupOrderBy":9,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":0,"StockNo":32885649670,"IsBigSmileDayItem":0,"TransPolicyNo":"168196","Is3PL":false},{"ItemNo":"C855730281","ItemName":"대용량 2022년 햇 상주곶감 건시 한접(100개)/ 정품 가성비 상주곶감","Price":"39,000","DiscountPrice":"38,900","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/0a/f9/2c0af93342.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/0a/f9/2c0af93345.jpg","IsFavoriteItem":false,"GroupOrderBy":10,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":5,"StockNo":33074236032,"IsBigSmileDayItem":0,"TransPolicyNo":"258441","Is3PL":false},{"ItemNo":"C826358784","ItemName":"촌아저씨 상주 곶감 30입 선물세트/ 건시곶감/ 보자기증정","Price":"29,000","DiscountPrice":"28,900","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/70/10/2c701089a2.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/70/10/2c701089a5.jpg","IsFavoriteItem":false,"GroupOrderBy":12,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":5,"StockNo":33074158194,"IsBigSmileDayItem":0,"TransPolicyNo":"258441","Is3PL":false},{"ItemNo":"C826363894","ItemName":"촌아저씨 상주 곶감 40입 선물세트/ 건시곶감/ 보자기증정","Price":"36,000","DiscountPrice":"35,900","DiscountRate":"0","ThumbImageUrl":"http://image.auction.co.kr/itemimage/2c/70/b4/2c70b4de42.jpg","GalleryImageUrl":"http://image.auction.co.kr/itemimage/2c/70/b4/2c70b4de45.jpg","IsFavoriteItem":false,"GroupOrderBy":13,"SatisfactionRate":0,"IsSmileCashbackRate":true,"SmileCashbackAmntRate":2.0,"OrderTypeCode":0,"StockNo":32482938909,"IsBigSmileDayItem":0,"TransPolicyNo":"168196","Is3PL":false}]');
            </script>
          
          <script type="application/ld+json">
            
                    {
                        "@context": "https://schema.org/",
                        "@type": "Product",
                        "description": "15,900원",
                        "name": "실속포장 2022년 햇 상주곶감 건시 1kg(23-38개)/ 정품 가성비 상주곶감",
                        "image": "//image.auction.co.kr/itemimage/2c/81/05/2c81050426.jpg",
                        "brand": {
                            "@type": "Thing",
                            "name": ""
                        } ,
                            "aggregateRating": {
                                "@type": "AggregateRating",
                                "ratingValue": "4.4", 
                                "reviewCount": "1169"
                            }
                    }
          </script>
          
        
        
        
            
            <script type="text/javascript">
                var mobileVersionUrl = "//mmya.auction.co.kr" + "/item/vip#/" + "C466582560";
            </script>
            
           
            <div class="bg_dimmed" id="popDimmed" style="display:none;"></div>
            <div class="core_skip_top" style="display: none;"><a href="#" id="btnSkipTop" title="상단으로 이동">상단으로 이동</a></div>
            
        <script type="text/javascript" src="//script.auction.co.kr/common/header_main.js">
            ////IE 7 인 경우는 JSON 오브젝트가 없음
            //if (typeof (JSON) == "undefined") {
            //	document.writeln("<script type='text/javascript' src='//script.auction.co.kr/common/json2.min.js'></" + "script>");
            //}
            //document.writeln("<script type='text/javascript' src='//script.auction.co.kr/common/header_main.js'></" + "script>");
        
        </script>
        
        
        
        <script src="//script.auction.co.kr/common/library/ua-parser.min.js"></script>
        <script src="//script.auction.co.kr/Common/useragent_control.js"></script>
        
        <script type="text/javascript">
            AuctionHeader.Init("A");
            
            
            var uaControl = new UAControl(); // UAControl 에 대한 초기화코드
            if (typeof mobileVersionUrl !== "undefined" && mobileVersionUrl.length > 0) {
                uaControl.setMobileVersionUrl(mobileVersionUrl); // 모바일버전URL 이 있을 경우 세팅
            }
            
        </script>
      
        <script type="text/javascript">
        
            var HEADER_RECENT_KEYWORD_CORNER = 8;
            var HEADER_FAVORITE_KEYWORD_CORNER = 5;
            var HEADER_RECENT_ITEM = 8;
            var HeaderNavigationCategory = ["51410000"];
        
            var THROUGH_URL = 'http://through.auction.co.kr';
        
            function SetChannelCode(channelCode) {
                $.ajax({
                    url: THROUGH_URL + "/common/SafeRedirect.aspx?cc=" + channelCode + "&next=justlog",
                    dataType: 'jsonp'
                });
            }
        
            function MemberInfo() {
                this.MembName = ""; 		//멤버이름
                this.CouponCount = 0; 	//쿠폰 카운트
                this.Point = 0; 				//포인트
                this.CouponCount2 = 0; //다운가능 쿠폰 카운트
                this.Grade = ""; 			//멤버 등급
                this.ProcessingCnt = 0; //진행중 물건갯수
            }
            GetMemberInfo = function () {
                /* 로그인 체크 변수 */
                if (typeof (loginCheck) == "undefined") {
                    var loginCheck = (getCookie("auction") != null);
                }
        
                var memInfo = new MemberInfo();
                if (loginCheck) {
                    var UWbcp = getCookie("bcp");
                    var arrBcp = UWbcp.split("|");
                    memInfo.MembName = arrBcp[0];
                    memInfo.CouponCount = arrBcp[1];
                    memInfo.Point = arrBcp[2];
                    memInfo.ProcessingCnt = arrBcp[4];
                    try {
                        var auctionCommon = getCookie("auctioncommon");
                        var arrAuction = auctionCommon.split("&");
                        if (arrAuction[2].split("=")[0] === "couponqty")
                            memInfo.CouponCount2 = arrAuction[2].split("=")[1];
                        else if (arrAuction[3].split("=")[0] === "couponqty")
                            memInfo.CouponCount2 = arrAuction[3].split("=")[1];
                        else
                            memInfo.CouponCount2 = 0;
                        switch (getCookie("auctionGrade").split("&")[1].split("=")[1]) {
                            case "0":
                                memInfo.Grade = "FRIEND";
                                break;
                            case "3":
                                memInfo.Grade = "VIP";
                                break;
                            case "6":
                                memInfo.Grade = "VVIP";
                                break;
                        }
                    } catch (err) { return new MemberInfo(); }
                }
                return memInfo;
            };
        
            function HeaderNavigation() {};
            HeaderNavigation.MiniMaps = null;
            HeaderNavigation.ExtServiceGroupId= "7";
            HeaderNavigation.GetCategoryTargetUrl = function (item) {
                var ret = "";
                if (item != null) {
                    var targetUrl = "";
                    switch (item.Type) {
                        case "B":
                            targetUrl = "http://corners.auction.co.kr/BrandShop/brandshopcpp.aspx?brandshopcate=" + item.ID;
                            break;
                        case "S":
                            targetUrl = "http://soho.auction.co.kr/SohoShop/list.aspx?sohocategory=" + item.ID;
                            break;
                        case "L":
                            targetUrl = "http://lotte.auction.co.kr/lotte/lottecpp.aspx?lottecate=" + item.ID;
                            break;
                        default:
                            try {
                                var lcode = parseInt(item.ID / 1000000);
                                if ((item.ID % 1000000) == 0) {
                                    if (lcode == 56) {
                                        targetUrl = "http://www.auction.co.kr/motors/";
                                    }
                                    else if (lcode == 81) {
                                        targetUrl = "http://www.auction.co.kr/category/category36.html";
                                    }
                                    else if (lcode == 82) {
                                        targetUrl = "http://contents.auction.co.kr";
                                    }
                                    else {
                                        lcode = (lcode < 10) ? "0" + lcode : lcode;
                                        var pageName = "category" + lcode + ".html";
                                        targetUrl = "http://www.auction.co.kr/category/" + pageName;
                                    }
                                }
                                else {
                                    targetUrl = "http://browse.auction.co.kr/list?category=" + item.ID;
                                }
                            }
                            catch (err) {
                                targetUrl = "http://www.auction.co.kr/";
                            }
                            break;
                    }
                    ret = targetUrl;
                }
                return ret;
            }
            HeaderNavigation.GetCategoryHtml = function (llCodeGroupId) {
                // 중분류가 다수의 칼럼으로 나뉘어져야 하기 때문
                var MCODES_BY_ONE_COLUMN = 17;
                var safeRedirectUrl = THROUGH_URL + "/common/SafeRedirect.aspx";
                var promotionBannerImage = "<a class='btn_coupon' href=\"" + THROUGH_URL + "/common/SafeRedirect.aspx?cc=10F0&next=" + promotionItemlandingUrl + "\"><img src=\"" + promotionItemImage + "\" alt=\"" + promotionImageText + "\" title=\"" + promotionName + "\"></a>";
                var html = '<div class="allmenu_depth2_group">';
        
                if (typeof cateLcodeGroupByGroupIdHash === 'undefined' || !cateLcodeGroupByGroupIdHash || cateLcodeGroupByGroupIdHash.length === 0)
                    return;
        
                var forCount1 = cateGroupList.length;
                if (llCodeGroupId != HeaderNavigation.ExtServiceGroupId) {
                    // 인기 섹션
                    var specialSections = categoriesGroupsBottomHash[llCodeGroupId];
                    if (typeof specialSections != 'undefined' && specialSections && specialSections.length > 0) {
                        html += '<div class="column1 column_bg">';
                        var indexCount = 1;
                        var oldRowIndex = 0;
                        var rowIndexCount = 0;
                        html += '<div class="column_tit">' + bottomCategoryTypeList[specialSections[0].TYPE].Name + '</div>';
                        html += '<ul class="type_normal">';
                        for (j = 0; j < specialSections.length; j++) {
                            var row = specialSections[j];
                            if (row.INDEX == oldRowIndex) {
                                rowIndexCount++;
                            }
                            else {
                                oldRowIndex++;
                                rowIndexCount = 1;
                            }
                            if (row.INDEX == indexCount) {
                                html += '</ul>';
                                html += '<div class="column_tit">' + bottomCategoryTypeList[row.TYPE].Name + '</div>';
                                html += '<ul class="type_normal">';
                                indexCount++;
                            }
                            if (rowIndexCount < 5) {
                                if( row.URL.toLowerCase().indexOf("/homeplus/default.aspx") >=0)
                                    html += '<li><a href="' + safeRedirectUrl + '?cc=10EE&next=' + row.URL + '" class="allmenu_depth2">' + row.TITLE + '</a><img class="new" alt="new" src="//pics.auction.co.kr/homepage/2011/new/ico_new.gif"/></li>';
                                else
                                    html += '<li><a href="' + safeRedirectUrl + '?cc=10EE&next=' + row.URL + '" class="allmenu_depth2">' + row.TITLE + '</a></li>';
                            }
                        }
                        html += '</ul>';
                        html += '</div>';
                    }
        
                    //대분류 그룹
                    html += '<div class="column2">';
                    var forCount2 = cateLcodeGroupByGroupIdHash[llCodeGroupId].length;
                    for (var j = 0; j < forCount2; ++j) {
                        var lCodeGroup = cateLcodeGroupByGroupIdHash[llCodeGroupId][j];
        
                        html += '<div class="column_tit">' + lCodeGroup.Name + '</div>';
                        html += '<ul class="type_block">';
        
                        if (typeof categoryByLcodeGroupIdHash === 'undefined' || !categoryByLcodeGroupIdHash || categoryByLcodeGroupIdHash.length === 0)
                            return;
        
                        //대분류
                        var forCount3 = categoryByLcodeGroupIdHash[lCodeGroup.ID].length;
                        for (var k = 0; k < forCount3; ++k) {
                            var lCode = categoryByLcodeGroupIdHash[lCodeGroup.ID][k];
                            html += '<li class="allmenu_depth2_li">';
                            html += '<a href="' + safeRedirectUrl + '?cc=122B&next=' + HeaderNavigation.GetCategoryTargetUrl(lCode) + '" class="allmenu_depth2">' + lCode.Name + '</a>' + ((lCode.Type == "A" && IsPromotionEventCategory(lCode.ID)) ? promotionBannerImage : "");
                            html += '<div class="allmenu_depth3_group" style="display: none;">';
        
                            if (childCategoryHash[lCode.ID] && childCategoryHash[lCode.ID].length !== 0) {
                                var forCount4 = childCategoryHash[lCode.ID].length;
                                // 중분류가 다수의 칼럼으로 나뉘어져야 하기 때문
                                var columnIndex = Math.floor((forCount4 - 1) / MCODES_BY_ONE_COLUMN) + 1;
                                var m = 0
                                for (var l = 1; l <= columnIndex; ++l) {
                                    html += '<div class="column_inner">';
                                    html += '<ul class="type_block">';
                                    // 중분류
                                    for (; m < forCount4 && m < MCODES_BY_ONE_COLUMN * l; ++m) {
                                        var mCode = childCategoryHash[lCode.ID][m];
                                        html += '<li>';
                                        html += '<a href="' + safeRedirectUrl + '?cc=10F1&next=' + HeaderNavigation.GetCategoryTargetUrl(mCode) + '" class="allmenu_depth3">' + mCode.Name + '</a>';
                                        html += '</li>';
                                    }
                                    html += '</ul>';
                                    html += '</div>';
                                }
                            }
                            html += '</div>';
                            html += '</li>';
                        }
                        html += '</ul>';
                    }
        
                    html += '</div>';
        
                    // 배너
                    if (typeof specialSections != 'undefined' && specialSections && specialSections.length > 0) {
                        var banners = categoriesTabsBannerHash[llCodeGroupId];
                        if (banners && banners.length > 0) {
                            var rand = Math.floor(Math.random() * banners.length);
                            html += '<div class="column_ad module_slot">';
                            html += '<div id="rolling_banner_' + llCodeGroupId + '" class="rolling_banner_type1">';
                            html += '<ul class="item-list-img">';
                            html += '<li style="display: block;" id="liCateTabBanner' + llCodeGroupId + '">';
                            html += '<span><a href="' + safeRedirectUrl + '?cc=10EF&next=' + banners[rand].URL + '">';
                            html += '<img src="' + banners[rand].BOTTOMIMG + '" alt="' + banners[rand].TITLE + '">';
                            html += '</a></span>';
                            html += '</li>';
                            html += '</ul>';
                            if (banners.length > 1) {
                                html += '<div class="ban-control">';
                                html += '<input id="hdnIndex' + llCodeGroupId + '" type="hidden" value="' + rand + '">';
                                html += '<input class="ban-btn-prev" type="button" value="이전">';
                                html += '<input class="ban-btn-next" type="button" value="다음">';
                                html += '</div>';
                            }
                            html += '</div>';
                            html += '</div>';
                        }
                    }
        
                    html += '<a href="" class="btn_allmenu_close" title="닫기">닫기</a>';
                    html += '</div>';
                }
                else {
                    // 도서 기획전
                    var specialSections = categoriesGroupsBottomHash[llCodeGroupId];
                    if (verticalCategoryList.length > 0) {
                        html += '<div class="column1 column_bg">';
                        var oldRowIndex = 0;
                        var rowIndexCount = 0;
        
                        html += '<div class="column_tit">인기 기획전</div>';
                        for (i = 0; i < verticalCategoryList.length; i++) {
                            //html += '<div class="column_tit">' + verticalCategoryList[i].TITLE + '</div>';
                            html += '<ul class="type_book">';
                            for (j = 0; j < verticalCategoryList[i].Promotions.length; j++) {
                                var row = verticalCategoryList[i].Promotions[j];
                                if (row.INDEX == oldRowIndex) {
                                    rowIndexCount++;
                                }
                                else {
                                    oldRowIndex++;
                                    rowIndexCount = 1;
                                }
                                if (rowIndexCount < 5) {
                                    html += '<li><a href="' + safeRedirectUrl + '?cc=10F4&next=' + row.URL + '" class="allmenu_depth2">' + row.TITLE + '</a></li>';
                                }
                            }
                            html += '</ul>';
                        }
                        html += '</div>';
                    }
        
                    //대분류 그룹
                    html += '<div class="column2">';
                    var forCount2 = verticalCategoryList.length;
                    for (var j = 0; j < forCount2; ++j) {
                        var lCodeGroup = verticalCategoryList[j];
        
                        html += '<div class="column_tit"><a href="' + safeRedirectUrl + '?cc=10F3&next=' + lCodeGroup.URL +'">' + lCodeGroup.TITLE + '</a></div>';
                        html += '<ul class="type_block">';
        
                        //대분류
                        var forCount3 = lCodeGroup.Childs.length;
                        for (var k = 0; k < forCount3; ++k) {
                            var lcode = lCodeGroup.Childs[k];
                            html += '<li class="allmenu_depth2_li">';
                            html += '<a href="' + safeRedirectUrl + '?cc=10F3&next=' + lcode.URL + '" class="allmenu_depth2">' + lcode.TITLE + '</a>';
        
                            if (typeof verticalSmallCategoryList != 'undefined' && typeof verticalSmallCategoryList[lcode.SEQ] != 'undefined') {
                                html += '<div class="allmenu_depth3_group" style="display: none;">';
        
                                if (typeof verticalSmallCategoryList[lcode.SEQ].ChildList[0] != 'undefined') {
                                    html += HeaderNavigation.GetVerticalSmallCategoryHtml(verticalSmallCategoryList[lcode.SEQ].ChildList[0]);
                                }
        
                                if (typeof verticalSmallCategoryList[lcode.SEQ].ChildList[1] != 'undefined') {
                                    html += HeaderNavigation.GetVerticalSmallCategoryHtml(verticalSmallCategoryList[lcode.SEQ].ChildList[1]);
                                }
        
                                if (typeof verticalSmallCategoryList[lcode.SEQ].ChildList[2] != 'undefined') {
                                    html += HeaderNavigation.GetVerticalSmallCategoryHtml(verticalSmallCategoryList[lcode.SEQ].ChildList[2]);
                                }
        
                                html += '</div>';
                            }
                            html += '</li>';
                        }
                        html += '</ul>';
                    }
                    html += '</div>';
        
                    // 배너
                    var banners = categoriesTabsBannerHash[llCodeGroupId];
                    if (banners && banners.length > 0) {
                        var rand = Math.floor(Math.random() * banners.length);
                        html += '<div class="column_ad module_slot">';
                        html += '<div id="rolling_banner_01" class="rolling_banner_type1">';
                        html += '<ul class="item-list-img">';
                        html += '<li style="display: block;" id="liCateTabBanner' + llCodeGroupId + '">';
                        html += '<span><a href="' + safeRedirectUrl + '?cc=10F5&next=' + banners[rand].URL + '">';
                        html += '<img src="' + banners[rand].BOTTOMIMG + '" alt="' + banners[rand].TITLE + '">';
                        html += '</a></span>';
                        html += '</li>';
                        html += '</ul>';
                        if (banners.length > 1) {
                            html += '<div class="ban-control">';
                            html += '<input id="hdnIndex' + llCodeGroupId + '" type="hidden" value="' + rand + '">';
                            html += '<input class="ban-btn-prev" type="button" value="이전">';
                            html += '<input class="ban-btn-next" type="button" value="다음">';
                            html += '</div>';
                        }
                        html += '</div>';
                        html += '</div>';
                    }
        
                    html += '<a href="" class="btn_allmenu_close" title="닫기">닫기</a>';
                    html += '</div>';
                }
                return html;
            }
        
            HeaderNavigation.GetVerticalSmallCategoryHtml = function (categoryList) {
                var safeRedirectUrl = "http://through.auction.co.kr/common/SafeRedirect.aspx";
                var MCODES_BY_ONE_COLUMN = 17;
        
                var html = "";
        
        
                html += '<div class="column_inner">';
                html += '<ul class="type_block">';
        
                for (var i in categoryList.Child) {
                    if (i < MCODES_BY_ONE_COLUMN) {
                        var sCode = categoryList.Child[i];
                        html += '<li>';
                        html += '<a href="' + sCode.URL + '" class="allmenu_depth3">' + sCode.TITLE + '</a>';
                        html += '</li>';
                    }
                }
                html += '</ul>';
                html += '</div>';
        
                return html;
            } 
            HeaderNavigation.GetCategoryAllHtml = function (channelCode) {
                if (!cateGroupList || cateGroupList.length === 0)
                    return;
        
                // 채널코드 통일 0E65
                var safeRedirectUrl = "http://through.auction.co.kr/common/SafeRedirect.aspx?cc=" + (channelCode || '0E65') + "&next=";
                var promotionBannerImage = "<a class='btn_coupon' href=\"" + safeRedirectUrl + promotionToplandingUrl + "\"><img src=\"" + promotionTopImage + "\" alt=\"" + promotionImageText + "\" title=\"" + promotionName + "\"></a>";
        
                var html = '<div class="core_sitemap_header"><img src="//pics.auction.co.kr/renewal/common/header/tit_core_sitemap.png" alt="서비스 전체보기"></div>';
        
                html += '<div class="core_sitemap_container">';
                // 대대분류 그룹
                var forCount1 = cateGroupList.length;
                var clsIndex =1;
                for (var i = 0; i < cateGroupList.length; ++i) {
                    var llCodeGroup = cateGroupList[i];
                    if(llCodeGroup.ID == HeaderNavigation.ExtServiceGroupId) continue;
                    if( i >=2) clsIndex = i;
                    var imgTag = BrandEvent.GetImgTagSaleEvent(llCodeGroup.ID);
                    html += '<div class="column column' + (i ==1 ? "1_1" : clsIndex) + '">';
                    html += '	<div class="col_group_tit">' + llCodeGroup.Name + imgTag + '</div>';
        
                    if (!cateLcodeGroupByGroupIdHash || cateLcodeGroupByGroupIdHash.length === 0)
                        return;
        
                    var forCount2 = cateLcodeGroupByGroupIdHash[llCodeGroup.ID].length;
                    for (var j = 0; j < forCount2; ++j) {
                        var lCodeGroup = cateLcodeGroupByGroupIdHash[llCodeGroup.ID][j];
                        html += '<div class="column_tit">' + lCodeGroup.Name + '</div>';
                        html += '<ul class="type_basic">';
        
                        if (!categoryByLcodeGroupIdHash || categoryByLcodeGroupIdHash.length === 0)
                            return;
        
                        //대분류
                        var forCount3 = categoryByLcodeGroupIdHash[lCodeGroup.ID].length;
                        for (var k = 0; k < forCount3; ++k) {
                            var lCode = categoryByLcodeGroupIdHash[lCodeGroup.ID][k];
                            html += '<li>';
                            html += '<a href="' + safeRedirectUrl + HeaderNavigation.GetCategoryTargetUrl(lCode) + '" class="allmenu_depth2">' + lCode.Name + '</a>' + ((lCode.Type == "A" && IsPromotionEventCategory(lCode.ID)) ? promotionBannerImage : "");
                            html += '<div class="allmenu_depth3_group" style="display: none;">';
                            html += '</div>';
                            html += '</li>';
                        }
        
                        html += '</ul>';
                    }
                    html += '</div>';
                }
        
                // 하단 미니맵
                if (HeaderNavigation.MiniMaps !=null && HeaderNavigation.MiniMaps.length > 0 ) {
                    var tabCount =HeaderNavigation.MiniMaps.length >=5 ? 5 : HeaderNavigation.MiniMaps.length;
                    for (i = 0; i < tabCount; i++) {
                        ++clsIndex;
                        html += '<div class="column column' + clsIndex + '">';
                        html += '<div class="col_group_tit">' + HeaderNavigation.MiniMaps[i].Name + '</div>';
                        html += '<ul class="type_basic">';
                        
                        for (j = 0; j < HeaderNavigation.MiniMaps[i].Minimaps.length; j++) {
                            var url=	"http://through.auction.co.kr/common/SafeRedirect.aspx?cc=0E65&next="+ HeaderNavigation.MiniMaps[i].Minimaps[j].LandingUrl;
                            if(HeaderNavigation.MiniMaps[i].Minimaps[j].NewIconYN)
                                html += '<li><a href="' + url + '">' + HeaderNavigation.MiniMaps[i].Minimaps[j].Name + '</a><img src="//pics.auction.co.kr/homepage/2011/new/ico_new.gif" alt="new" class="new"></li>';
                            else
                                html += '<li><a href="' + url + '">' + HeaderNavigation.MiniMaps[i].Minimaps[j].Name + '</a></li>';
                        }
                        html += '</ul>';
                        html += '</div>';
                    }
                }
                ++clsIndex;
                html += '<div class="column column' + clsIndex + '">';
                html += '<div class="column_tit_link2"><a href="' + safeRedirectUrl + 'http://www.auction.co.kr/category/category36.html">도서</a></div>';
                html += '<div class="column_tit_link2"><a href="' + safeRedirectUrl + 'http://ticket.auction.co.kr/Home/Main.aspx?go=1&from=2009ticket_header">공연/티켓</a></div>';
                html += '<div class="column_tit_link2"><a href="' + safeRedirectUrl + 'http://air.auction.co.kr/au/init/lp/lpMain.do">항공권</a></div>';
                html += '<div class="column_tit_link2"><a href="' + safeRedirectUrl + 'http://tour.auction.co.kr">해외여행/호텔</a></div>';
                html += '<div class="column_tit_link2"><a href="' + safeRedirectUrl + 'http://atour.auction.co.kr/LP/Index?menuType=LDH">국내여행/숙박</a></div>';
                html += '<div class="column_tit_link2"><a href="' + safeRedirectUrl + 'http://www.auction.co.kr/category/category86.html">모바일쿠폰/e쿠폰</a></div>';
                html += '<div class="column_tit_link2"><a href="http://www.auction.co.kr/category/category41.html">백화점/제화상품권</a></div>';
                html += '<div class="column_tit_link2"><a href="' + safeRedirectUrl + 'http://corners.auction.co.kr/corner/globalshopping.aspx">해외직구</a></div>';
                html += '<ul class="type_basic">';
                html += '<li><a href="' + safeRedirectUrl + 'http://ebay.auction.co.kr">이베이 쇼핑</a></li>';
                html += '</ul>';
                html += '</div>';
        
                html += '<div class="btn_close"><a href="javascript:;" id="close_sitemap" title="닫기"><span>닫기</span></a></div>';
                html += '</div>';
        
                return html;
            }
            HeaderNavigation.GetKeywordMd = function () {
                // 최근 검색어
                PdsService.GetKeyword(function (data) {
                    if (data && data.KeywordList && data.KeywordList.length) {
                        var $ul = $('<ul>').appendTo($('div.column_latest_key'));
                        for (var i = 0; i < HEADER_RECENT_KEYWORD_CORNER && i < data.KeywordList.length; i++) {
                            if (data.KeywordList[i]) {
                                var escapeKeyword = encodeURIComponent(data.KeywordList[i]);
                                $('<li><span><a href="https://browse.auction.co.kr/search?keyword=' + escapeKeyword + '">' + getHtmlEncode(data.KeywordList[i]) + '</a></span><a href="javascript:;" class="btn_close">삭제</a></li>').appendTo($ul).find('a.btn_close').bind('click',
                                (function (keyword) {
                                    return function () {
                                        PdsService.RemoveKeyword(keyword);
                                        $(this).parent().remove();
                                    }
                                })(data.KeywordList[i]));
                            }
                        }
                    }
                    else {
                        $('div.column_latest_key').append('<p class="noresult">최근 검색어를 보여드립니다<br/>최근 입력한 검색어가 없으시네요</p>');
                    }
                });
                // 인기 검색어
                PersonalRecommendService.GetFavoriteKeywordListByAge(function (data) {
                    if (data && data.length > 0) {
                        var $ul = $('div.column_hot_key').append('<ul>').find('ul');
                        for (var i = 0; i < HEADER_FAVORITE_KEYWORD_CORNER && i < data.length; i++) {
                            $ul.append('<li><em class="ico_number">' + (i + 1) + '</em><span><a href="https://browse.auction.co.kr/search?keyword=' + encodeURIComponent(data[i].Keyword) + '">' + getHtmlEncode(data[i].Keyword) + '</a></span></li>');
                        }
                    }
                });
                // 최근 코너
                // 인기 코너
                PersonalRecommendService.GetFavoritePromotionList(function (data) {
                    if (data && data.length > 0) {
                        var $ul = $('<ul>').appendTo($('div.column_hot_corner'));
                        for (var i = 0; i < HEADER_FAVORITE_KEYWORD_CORNER && i < data.length; i++) {
                            var Md = data[i];
                            $ul.append('<li><span><a href="' + getSafeRedirectUrlQueryString(Md.MDPublishUrl, '?cc=10E9&next=') + '">' + Md.MDName + '</a></span></li>');
                        }
                    }
                });
            }
            HeaderNavigation.BindBannerButton = function () {
                $('#allmenu').find('div.column_ad').find('input:button').each(function (index, element) {
                    var $hdnInput = $(element).siblings('input:hidden')
                    $(element).bind('click', function (event) {
                        var index = Number($hdnInput.val());
                        var id = Number($hdnInput.attr('id').match(/\d+/)[0]);
                        var items = categoriesTabsBannerHash[id];
                        if ($(this).attr('class') == "ban-btn-prev") {
                            var nextIndex = index <= 0 ? items.length - 1 : index - 1;
                        }
                        else if ($(this).attr('class') == "ban-btn-next") {
                            var nextIndex = index >= items.length - 1 ? 0 : index + 1;
                        }
                        var item = items[nextIndex];
        
                        var $li = $('#liCateTabBanner' + id);
                        var $a = $li.find('a');
                        var cc = $a.prop('href').match(/[?&]cc=.{4}/)[0].substring(4, 8);
                        $a.prop('href', 'http://through.auction.co.kr/common/SafeRedirect.aspx?cc=' + cc + '&next=' + item.URL);
                        var $bottomImage = $li.find('img');
                        $bottomImage.attr('src', item.BOTTOMIMG);
                        $bottomImage.attr('alt', item.TITLE);
                        $hdnInput.val(nextIndex);
                    });
                });
            }
            HeaderNavigation.DefaultMd = function(){
                var $div = $('<div><li><span><a href="'+getSafeRedirectUrl('http://promotion.auction.co.kr/promotion/MD/eventview.aspx?txtMD=04DAC04149', '10E2')+'">울랄라 에브리데이</a></span><em class="ico_hot">인기</em></li></div>');
                $div.append('<li><span><a href="'+getSafeRedirectUrl('http://promotion.auction.co.kr/promotion/MD/eventview.aspx?txtMD=05CF9939C6', '10E2')+'">철없는 캠핑</a></span><em class="ico_hot">인기</em></li>');
                $div.append('<li><span><a href="'+getSafeRedirectUrl('http://promotion.auction.co.kr/promotion/MD/eventview.aspx?txtMD=064033BAAC', '10E2')+'">리빙플래너</a></span><em class="ico_hot">인기</em></li>');
                return $div.filter('div').html();
            }
            HeaderNavigation.DefaultShop = function(){
                var $div = $('<div><li><span><a href='+getSafeRedirectUrl('http://promotion.auction.co.kr/promotion/MD/eventview.aspx?txtMD=0672939B74', '10E1')+'"">카메라스토리</a></span><em class="ico_hot">인기</em></li></div>');
                $div.append('<li><span><a href='+getSafeRedirectUrl('http://promotion.auction.co.kr/promotion/MD/eventview.aspx?txtMD=066B9ED243', '10E1')+'"">BASIC WEAR</a></span><em class="ico_hot">인기</em></li>');
                $div.append('<li><span><a href='+getSafeRedirectUrl('http://promotion.auction.co.kr/promotion/MD/eventview.aspx?txtMD=0401DEE9C1', '10E1')+'"">마트in옥션</a></span><em class="ico_hot">인기</em></li>');
                return $div.filter('div').html();
            }
            HeaderNavigation.InitializeNavigation = function () {
                jQuery.when(
                        $.ajax({url: "//script.auction.co.kr/common/HeaderCategoryInfo.js", scriptCharset : "euc-kr", dataType: "script", cache : true}),
                        $.ajax({url: "//script.auction.co.kr/common/HeaderCategoryOtherInfo.js", scriptCharset : "euc-kr", dataType: "script", cache : true}),
                        $.Deferred(function (deferred) {$(deferred.resolve);})
                ).done(function () {
                    if (cateGroupList && cateGroupList.length > 0) {
                        var $allMenu = $("#allmenu");
                        if ($allMenu.length === 0) {
                            $allMenu = $(txtHeader).find("#allmenu");
                        }
                        var html = "<ul>";
                        var forCount1 = cateGroupList.length;
                        for (var i = 0; i < forCount1; ++i) {
                            var llCodeGroup = cateGroupList[i];
                            var clsName = i ==0 ? "allmenu_cate10" : "allmenu_cate0" + i;
                            var imgTag = BrandEvent.GetImgTagSaleEvent(llCodeGroup.ID);
                            html += '<li>';
                            html += imgTag;
                            html += '<a href="javascript:;" class="allmenu_depth1 ' + clsName + '">' + llCodeGroup.Name + '</a>';
                            html += '</li>';
                        }
                        html += '</ul>';
        
                        $(document).ready( function() { $('body').append('<div class="core_sitemap" id="coreSitemap" style="display:none;"></div>');});
        
                    // 각 마우스 오버, 서비스 전체보기 이벤트 bind
                        html += "</ul>";
                        $allMenu.html(html);
                        $allMenu.find('a').each(function (index, element) {
                            if (index < cateGroupList.length) {
                                $(element).bind('mouseover', function (event) {
                                    var $a = $(this);
                                    if (!$a.data('isSet')) {
                                        $(this).after(HeaderNavigation.GetCategoryHtml(cateGroupList[index].ID));
                                        $(this).data('isSet', true);
                                        HeaderNavigation.BindBannerButton();
                                    }
                                    if (typeof(isTabletDevice) != 'undefined' && isTabletDevice()) {
                                        $('.rolling_banner_type1 .ban-control input.ban-btn-prev').show();
                                        $('.rolling_banner_type1 .ban-control input.ban-btn-next').show();
                                    }
        
                                });
                            }
                        });
                    }
                });
        
                // 관련 기획전
                $('div.navi_featured_related').delegate('a.navi_opener', 'mouseover', function (event) {
                    var $this = $(this);
                    if(!$this.data('isSet')){
                        var $div = $this.next('div');
                        var $mdColumnTemplate = $('<div class="column">').append('<div class="column_tit">기획전</div>').append('<ul>');
                        var $mdUl = $mdColumnTemplate.find('ul');
                        var $shopColumnTemplate = $('<div class="column">').append('<div class="column_tit">전문관</div>').append('<ul>');
                        var $shopUl = $shopColumnTemplate.find('ul');
                        var $membershipColumnTemplate = $('<div class="column">').append('<div class="column_tit">멤버십 서비스</div>').append('<ul>');
                        var $membershipUl = $membershipColumnTemplate.find('ul');
                        if(HeaderNavigationCategory.length > 0 ){
                            $.ajax({
                                type: "GET",
                                dataType: 'JSONP',
                                crossDomain: true,
                                contentType: "application/json;charset=utf-8",
                                url: "http://search.auction.co.kr/Common/HeaderMdShopService.aspx?method=GetMdShopByCategory&categorycode=" + JSON.stringify(HeaderNavigationCategory),
                                success: function (response) {
                                    var ajaxData = response;
                                    if( ajaxData && ajaxData.length > 0 ){
                                        var count = ajaxData.length;
                                        for( var i = 0 ; i < count ; i++){
                                            if( ajaxData[i].Location === 'M' ){
                                                if(ajaxData[i].ServiceName.length > 0){
                                                    $mdUl.append('<li><span><a href="' + getSafeRedirectUrl(ajaxData[i].Url, '10E2')+'"><em class="ico_list_cate">'+ajaxData[i].ServiceName+'</em>'+' '+ajaxData[i].ServiceText+'</a></span></li>');
                                                }
                                                else{
                                                    $mdUl.append('<li><span><a href="' + getSafeRedirectUrl(ajaxData[i].Url, '10E2')+'">'+ajaxData[i].ServiceText+'</a></span></li>');
                                                }
                                            } 
                                            else if( ajaxData[i].Location === 'S' ){
                                                if(ajaxData[i].ServiceName.length > 0){
                                                    $shopUl.append('<li><span><a href="'+ getSafeRedirectUrl(ajaxData[i].Url, '10E1')+'"><em class="ico_list_cate">'+ajaxData[i].ServiceName+'</em>'+' '+ajaxData[i].ServiceText+'</a></span></li>');
                                                }
                                                else{
                                                    $shopUl.append('<li><span><a href="'+ getSafeRedirectUrl(ajaxData[i].Url, '10E1')+ '">'+ajaxData[i].ServiceText+'</a></span></li>');
                                                }
                                            }
                                            else if( ajaxData[i].Location === 'Membership' ){
                                                $membershipUl.append('<li><span><a href="'+ getSafeRedirectUrl(ajaxData[i].Url, '11A2')+ '">'+ajaxData[i].Name+'</a></span></li>');
                                            }
                                        }
                                        !($.trim($mdUl.html())) && $mdUl.append(HeaderNavigation.DefaultMd());
                                        !($.trim($shopUl.html())) && $shopUl.append(HeaderNavigation.DefaultShop());
                                        if( ($.trim($membershipUl.html())) ){
                                            $div.append($membershipColumnTemplate);
                                            $div.removeClass('column_size2').addClass('column_size3');
                                        }
                                    }
                                    else{
                                        if( ajaxData && ajaxData.ex ){
                                            //console.log('ajax error\nurl:'+"http://search.auction.co.kr/Common/HeaderMdShopService.aspx?method=GetMdShopByCategory&categorycode=" + JSON.stringify(HeaderNavigationCategory)+'\n'+'type:'+ajaxData.ex+'\nmessage:'+ajaxData.msg);
                                            ajaxData = null;
                                        }
                                        $mdUl.append(HeaderNavigation.DefaultMd());
                                        $shopUl.append(HeaderNavigation.DefaultShop());
                                    }
                                    $div.prepend($shopColumnTemplate);
                                    $div.prepend($mdColumnTemplate);
                                },
                                error: function (response) {						
                                    $mdUl.append(HeaderNavigation.DefaultMd());
                                    $shopUl.append(HeaderNavigation.DefaultShop());
                                    $div.prepend($shopColumnTemplate);
                                    $div.prepend($mdColumnTemplate);
                                }
                            });
                        }
                        else{
                            $mdUl.append(HeaderNavigation.DefaultMd());
                            $shopUl.append(HeaderNavigation.DefaultShop());
                            $div.prepend($shopColumnTemplate);
                            $div.prepend($mdColumnTemplate);
                        }
                        $this.data('isSet', true);
                    }
                });
        
                $.when(
                        $.ajax({url: "//script.auction.co.kr/common/HeaderJson.js", scriptCharset : "euc-kr", dataType: "script", cache : true})
                    ).done(function () {
                        if(typeof MiniTabs != 'undefined' && MiniTabs != null )
                        {
                            HeaderNavigation.MiniMaps = MiniTabs;
                        }
                        if (typeof MainEvents != 'undefined' && MainEvents && MainEvents.length > 0) {
                            var html = '';
                            for (var i = 0; i < MainEvents.length; i++) {
                                html += '<li><span><a href="' + getSafeRedirectUrlQueryString(MainEvents[i][1], '?cc=10E3&next=') + '">' + MainEvents[i][0] + '</a></span></li>';
                            }
                            $('div.navi_event_related').delegate('a.navi_opener', 'mouseover', html, function (event) {
                                if($('div.navi_event_related').find('ul').children().length == 0 )
                                    $('div.navi_event_related').find('ul').html(html);
                                else
                                    return;
                            });
                        }
                });
        
        
                // 최근 본 상품
                $('div.navi_latest').delegate('a.navi_opener', 'mouseover', function (event) {
                    var $a = $(this);
                    if (!$a.data('isSet')) {
                        HeaderNavigation.GetKeywordMd();
                        Rvi.refreshTemporaryItems(false, 1);
                        $a.data('isSet', true);
                    }
                    if (typeof(isTabletDevice) != 'undefined' && isTabletDevice()) {
                        $('div.item_control .btn_prev, div.item_control .btn_next').css("opacity", 1);
                    }
                });
        
                // RVI 플래쉬 오브젝트가 로딩 다 된 후에 콜백으로 호출
                try {
                    Rvi.InitializeTemporaryItems(true, '10EA');
                }
                catch (e) {}
            }
        
            $(document).ready( function(){ 
                // 웹접근성
                $('body').prepend('<div id="accessibility"><ul><li><a href="#txtKeyword">검색 바로가기</></li><li><a href="#core_gnb">메뉴 바로가기</a></li><li><a href="#content">본문 바로가기</a></li></ul></div><hr/>');
                // 통검창 광고 때문에 비우고 시작
                $('#txtKeyword').val('');
            });
        
            var loginLinkUrl = escape(location.href);
            var loginCheck = (getCookie("auction") != null);
            var isBizPlusMember = (getCookie("bm") != null && getCookie("bm").charAt(0) === "Y");
            var isPetPlusMember  = (getCookie("petplus") != null && getCookie("petplus").charAt(0) === "Y");
            var isSellerMember = getSubCookie('AGP', 'mst') && getSubCookie('AGP', 'mst').slice(0, 1) === 'B';
            staticPicsDomainName = "pics.auction.co.kr";
             AuctionHeader.SetPAGP();
            TopSearchBox.SetSearchBoxAdDisplay();
            try {
                if (Suggest.gApplySuggest == true) {
                    Suggest.AddInputEventHandlerASS();
                };
            } catch (ex) { };
        
            // 바로 옥션 on/off 판별
            var tmpCookies = getCookie("PARTNERSHIP");
            var baroImageClass = 'type_baro_off';
            if (typeof (BaroAuction) != "undefined") {
                if (BaroAuction.InitOK == false) BaroAuction.Init();
        
                if(BaroAuction.Baro){ 
                    baroImageClass = 'type_baro_on';
                }
            }
            $('#openerBaro').find('em').addClass(baroImageClass);
        
            // 로그인+회원명+등급/로그아웃+회원가입
            if (loginCheck) {
                var memInfo = GetMemberInfo();
                $("div.usermsg").html("<strong><a href=\"https://memberssl.auction.co.kr/myauction/\">" + memInfo.MembName + "</a></strong>님");
        
                var strTag;
                strTag = "<a href='http://member.auction.co.kr/authenticate/logout.aspx'>로그아웃</a>";
                $("#headerloginview").html(strTag);
            } 
            else {
                var strTag;
        
                strTag = "<a href='https://memberssl.auction.co.kr/authenticate/'>로그인</a>";
                $("#headerloginview").html(strTag);
        
                strTag = "<a onclick='log(this)' href='https://memberssl.auction.co.kr/membership/signup/choicemembertype.aspx'>회원가입</a>";
                $("#headermemberenter").html(strTag);
                $("#headermemberenter").show();
            }
        
            $("#divBaroAuction").bind("mouseover", function () {
                if (!$("#ifrmnwAuction").attr("src"))
                    $("#ifrmnwAuction").attr("src", "http://eventv2.auction.co.kr/Event3/Stable/BaroAuction/BaroAuction.html");
            });
        
            
        </script>
            
            <!-- VIP 네비게이션 START -->
            <script type="text/javascript">
        <!--
        if(typeof(System) == "undefined") document.writeln("<script type='text/javascript' src='http://script.auction.co.kr/arche.main.js'></" + "script>");
        //-->
        </script>
        <script type="text/javascript">
        <!--
            var gnbChannelCodeCPP = "0E14";
            var gnbChannelCodeLP = "0E14";
            var gnbChannelCodeHome = "0E13";
        //-->
        </script>
        <script type="text/javascript">
        <!--
        //-->
        </script>
        <script type="text/javascript">
        <!--
            function NavigationBar() {}
            NavigationBar.goUrl = function(category){
                var lcode = category/1000000;
                var lmotors = 'http://www.auction.co.kr/motors/';
                var tour = 'http://tour.auction.co.kr';
                var lcotegory36 = 'http://www.auction.co.kr/category/category36.html';
                var lcontents = 'http://contents.auction.co.kr';
                var ticket = 'http://ticket.auction.co.kr/Home/Main.aspx';
                var ldefault = ''
            lcode = (lcode < 10) ? "0" + lcode : "" + lcode;
            var pageName ="category" + lcode + ".html";
          ldefault = 'http://www.auction.co.kr/category/' + pageName ;
                if (lcode == 56) {
                    self.document.location.href = NavigationBar.SafeRedirectUrl(lmotors, '', '0E14', '');
                } else if (lcode == 24) {
                    self.document.location.href = NavigationBar.SafeRedirectUrl(tour, '', '0E14', '');
                } else if (lcode == 81) {
                    self.document.location.href = NavigationBar.SafeRedirectUrl(lcotegory36, '', '0E14', '');
                } else if (lcode == 82) {
                    self.document.location.href = NavigationBar.SafeRedirectUrl(lcontents, '', '0E14', '');
                } else if (lcode == 97) {
                    self.document.location.href = NavigationBar.SafeRedirectUrl(ticket, '', '0E14', '');
                } else {
                    lcode = (lcode < 10) ? "0" + lcode : "" + lcode;
                    var pageName ="category" + lcode + ".html";
                self.location.href = NavigationBar.SafeRedirectUrl(ldefault, '', '0E14', '');
                }
            }
            NavigationBar.goLPUrl = function(category) {
                if ((category % 1000000) == 0) {
                    NavigationBar.goUrl(category);
                } else {
                    var ldefault = ''
                }
            }
            NavigationBar.setUrl = function(category) {
                if ((category % 1000000) == 0) {
                    NavigationBar.goUrl(category);
                } else {
                    var lcode = category/1000000;
                    var ldefault = ''
                    var lhome = 'http://www.auction.co.kr/?redirect=1'
                    if(lcode == 56 || lcode == 81 || lcode == 82) {
                        self.document.location.href = NavigationBar.SafeRedirectUrl(lhome, '', '0E14', '');
                    } else {
            ldefault =	'https://browse.auction.co.kr/list?category=' + category + '';
                        self.location.href = NavigationBar.SafeRedirectUrl(ldefault, '', '0E14', '');
                    }
                }
            }
            NavigationBar.SafeRedirectUrl = function(url, fwc, cc, fwk) {
                pvprofiler.sendEvt('click', cc , 'gnb_category', { 'itemno': 'C466582560'});
                if (!url)  return 'javascript:;'
                return "http://through.auction.co.kr/common/SafeRedirect.aspx?" + ((fwc == null || fwc == "") ? "" : "Fwc=" + fwc) + "&cc=" + ((cc != null) ? cc : "") + ((fwk == null || fwk == "") ? "" : "&Fwk=" + fwk)+ "&next=" + escape(url);
            }
        //-->
        </script>
       
             
        </div>
        
        
            
            <hr>
                <!-- content -->
                <div id="content" class="vip-content  ">
                    <div id="weblogDiv" style="width: 0px; height: 0px"></div>
                    <div class="item-topinfowrap">
                        <div class="item-topgallerywrap">
                            
                            <!-- 좌측 상품상세정보 -->
                            
        
        
        <div class="thumb-gallery uxecarousel">
            <div class="box__viewer-container">
                <ul class="viewer">
                    
                            <li class=" on">
                                <a href="javascript:;">
                                    <img src="//image.auction.co.kr/itemimage/2c/81/05/2c81050426.jpg" data-fallback-urls="//image.auction.co.kr/itemimage/2c/81/05/2c81050425.jpg //image.auction.co.kr/itemimage/2c/81/05/2c81050423.jpg" alt="실속포장 2022년 햇 상주곶감 건시 1kg(23-38개)/ 정품 가성비 상주곶감">
                                    
                                </a>
                            </li>
                        
                </ul>
                
            </div>
            
            <script type="text/javascript">
                (function ($, window, document, undefined) {
                    $('.thumb-gallery .viewer img').each(function () {
                        var img = this,
                            srcset = img.getAttribute('data-fallback-urls');
                        if (!srcset) return;
        
                        srcset = img.getAttribute('data-fallback-urls').split(' ');
                        srcset.push('//pics.auction.co.kr/vip/noimg_600x600.png');
        
                        img.onerror = function () {
                            var nextsrc = null;
                            while (srcset.length > 0 && !nextsrc) {
                                nextsrc = srcset.shift();
                            }
                            if (!nextsrc) {
                                img.onerror = null;
                                return;
                            }
                            img.src = nextsrc;
                        };
                    });
                })(jQuery, window, document);
            </script>
            
        </div>
        
                        </div><!-- //.item-topgallery -->
                            <!-- 우측 상품관련정보 -->
                        <div class="item-topinfo">
                            <form id="frmMain" style="display: inline" onsubmit="javascript:return false">
                                <input name="hddnStockQty" type="hidden" id="hddnStockQty" value="8209">
                                <input name="hddnBuyLimitQty" type="hidden" id="hddnBuyLimitQty" value="8209">
                                <input name="hddnRequestOptionType" type="hidden" id="hddnRequestOptionType">
                                <input name="hddnOrderTypeCode" type="hidden" id="hddnOrderTypeCode" value="0">
                                <input name="hddnRequestOptionTypeForDisplay" type="hidden" id="hddnRequestOptionTypeForDisplay">
                                <input name="hddnStockNo" type="hidden" id="hddnStockNo" value="28265121479">
                                <input type="hidden" id="hddnSumQty" name="hddnSumQty" value="0">
                                <input name="hddnSellingPrice" type="hidden" id="hddnSellingPrice">
                                <input name="hddnDiscountSellingPrice" type="hidden" id="hddnDiscountSellingPrice">
                                <input type="hidden" id="hddnVIPVersion" name="hddnVIPVersion" value="V3">
                                <input type="hidden" id="hddnPreCalculatorParam" name="hddnPreCalculatorParam">
                                <input name="hddnBuyLimitTypeCode" type="hidden" id="hddnBuyLimitTypeCode" value="0">
                                <input name="hddnBuyMinQty" type="hidden" id="hddnBuyMinQty" value="0">
                                <input name="hddnIsSplitOptionText" type="hidden" id="hddnIsSplitOptionText">
                                <input type="hidden" id="additionalShippingTypeCode" name="additionalShippingTypeCode" value="">
                                <input type="hidden" id="hddTotalPrice" value="0">
                                <input name="hddPCInstallItemNo" type="hidden" id="hddPCInstallItemNo" value="A549559309">
                                <div id="hdivItemInfo"></div>
                                
        <script type="text/javascript">
          function CatalogAndItemName() { };
            CatalogAndItemName.PDPIframeOpen = function () {
                pvprofiler.sendEvt('click', '0ACD', 'catalog', { 'itemno': '' });
                var popUpUrl = "http://through.auction.co.kr/common/SafeRedirect.aspx?cc=0ACD&next=http://search.auction.co.kr/product/productDetailLayer.aspx?catalog=0&category=&cc=0ACD";
                document.getElementById('PDPIframe').src = popUpUrl;
                fullscreenOpen('PDPLayer');
            }
        
            CatalogAndItemName.PDPIframeClose = function () {
                document.getElementById('PDPIframe').src = '';
                fullscreenClose('PDPLayer');
            }
        </script>
                                
        
        <div class="box__official-store">
            
            
            
        </div>
        <h1 class="itemtit">실속포장 2022년 햇 상주곶감 건시 1kg(23-38개)/ 정품 가성비 상주곶감</h1>
                                
            <div class="box__item-made">원산지 : 경북 </div>
        
                                
                                    <div class="prod_info">
                                        
        <p class="seller-awards">
            <a href="#vip_tab_comment" class="anchor__review">
            <span class="sp star-rating"><span id="spStarRating" class="sp" style="width:88.0%"></span></span>
            <span class="for-a11y">별점 총 5점중 4.4점</span> 
            <span id="strgDeliveryFbPct" class="text__review-count">(1,169)</span></a>
        </p>  
                                        
                                            <span class="division">|</span>
                                        
        <p class="buy_num">구매 3,080<span class="remainder">(남은수량 8,209개)</span></p> 
                                            
                                    </div> 
                                
                            <!-- 금액영역 -->
                                <div class="price_wrap">		
                                    
        <div class="price">
            <strong id="ucItemPrice_hdivDiscountRate" class="sale">9<span class="unit">%</span></strong>
            <div class="price_innerwrap">
                <span id="ucItemPrice_hdivPrice" class="price_original">17,490<span class="unit">원</span></span>
                <strong class="price_real">15,900<span class="unit">원</span></strong>
                
            </div>
        </div>
                                    
                                    <div class="action-btns">
                                            <!-- 관심상품 -->
                                            
        <div class="interest_area">
            <!-- layerpop -->
            <div id="ly_interest" class="lypop ly_interest">
            </div>
            <!-- //layerpop -->
        </div>
        
        
        <script type="text/javascript" language="javascript">
        
            this.GetCookie = function (name) {
                var prefix = name + "=";
                var cookieStartIndex = document.cookie.indexOf(prefix);
                if (cookieStartIndex == -1) { return (null); };
                var cookieEndIndex = document.cookie.indexOf(";", cookieStartIndex + prefix.length);
                if (cookieEndIndex == -1) { cookieEndIndex = document.cookie.length; };
                return (unescape(document.cookie.substring(cookieStartIndex + prefix.length, cookieEndIndex)));
            };
            var loginCheck = (GetCookie("auction") != null) ? true : false;
        
        
            var Favorite={};
            
            Favorite.AddFavoriteItem = function (e, itemNo) {
                if (!loginCheck) {
                    FavoriteItem.Login('http://www.auction.co.kr/login/?SELLER=AUCTION_HELP&url=http%3a%2f%2ffavorite.auction.co.kr%2fBuyerTools%2fFavorites%2fPopups%2fAfterLogin.html%3fWeblogYN%3dN');
                    return;
                }
                else {
                    if ($(e).hasClass("on")) {
                        $.ajax({
                            type: "GET",
                            dataType: "json",
                            cache: false,
                            url: "Itempage3Service.svc/RemoveFavoriteItem",
                            data: "itemNo=" + itemNo,
                            success: function (data) { 
                                    alert("관심상품이 삭제되었습니다.");
                                    $(e).removeClass("on");
                            }
                        });
                    }
                    else {
                        $.ajax({
                            type: "GET",
                            dataType: "json",
                            cache: false,
                            url: "Itempage3Service.svc/AddFavoriteItem",
                            data: "itemNo=" + itemNo,
                            success: function (data) {
                                alert("관심상품으로 등록되었습니다.");
                                $(e).addClass("on");
                            }
                        });
                    }
                }		
            }
        
            Favorite.IsFavoriteItem = function (itemNo) {
        
                if (loginCheck) {
                    $.ajax({
                        type: "GET",
                        dataType: "json",
                        cache: false,
                        url: "Itempage3Service.svc/IsFavoriteItem",
                        data: "itemNo=" + itemNo,
                        success: function (data) {
                            Favorite.SelectedFavoriteItem(data);
                        },
                        error: function (xhr, textStatus) {
        
                        }
                    });
                }
            }
        
            Favorite.SelectedFavoriteItem = function (data) {
                if (data)
                    $('[name="btnFavoriteItem"]').addClass("on")
                else
                    $('[name="btnFavoriteItem"]').removeClass("on")
            }
        
            $(document).ready(function () {
                Favorite.IsFavoriteItem("C466582560");
        
            });
        
        </script>
                                            <!-- //관심상품 -->
                                            <!-- 공유 -->
     
            <!-- //layerpop -->
        </div>
        <script type="text/javascript">
            (function ($, window, document, undefined) {
                var width = 700;
                var height = 447;
                var itemno = 'C466582560';
                var profileArgs = {
                    'facebook': { code: '100000440', type: 'facebook' },
                    'twitter': { code: '100000440', type: 'twitter' },
                    'kakaostory': { code: '100000440', type: 'kakaostory' }
                };
                var $snsUrlBox = $('.sns_url_box');
        
                $('.sare-sns').data('isRequesting', false).click(function (evt) {
                    var $this = $(this);
        
                    if ($this.data('isRequesting')) return;
        
                    var original_url = 'http://itempage3.auction.co.kr/detailview.aspx?itemno=' + itemno;
                    var options = { Type: "", Source: original_url };
                    getShorteners(this, options, function (sender, url) {
                        $this.data('isRequesting', false);
                        console.log("SNSUrl: " + url);
                        $snsUrlBox.text(url);
                        $this.data('isRequesting', true);
                    }, function (err) {
                        $this.data('isRequesting', false);
                        alert(err);
                    });
        
                });
        
                $('.btn_url').click(function () {
                    
                    var $modal = $(this).parents('.ly_sns');
                    var $textArea = $("<textarea>")
                        .css({
                            'position': 'fixed',
                            'opacity': 0,
                            'z-index': -1,
                            'filter': 'alpha(opacity=0)'
                        })
                        .val($snsUrlBox.text())
                        .attr('id', 'url_text')
                        .appendTo($modal);
        
                    $textArea[0].select();
                    try {
                        document.execCommand('copy');
                    } catch (err) { }
        
                    $textArea.remove();
                    $modal.hide();
                    pvprofiler.sendEvt('click', '100000440', 'Utility');
                });
        
                //Use a namespaced event and unbind first to prevent multiple binding
                $('.sns_area a').unbind('click.sns.sharer').bind('click.sns.sharer', function (e) {
        
                    //Profiles user's sharing action
                    var profileName = $(this).data('sharer-profile');
                    if (undefined !== pvprofiler && pvprofiler && pvprofiler.sendEvt && profileName && profileArgs[profileName]) {
                        var profile = profileArgs[profileName];
                        pvprofiler.sendEvt('click', profile.code, profile.type, { 'itemno': itemno });
                    } else {
                        //console.log('pvprofiler has errors, profiling is avoided');
                    }
        
                    //Opens a popup-style window near a mouse cursor
                    var left = (screen.width / e.screenX <= 2) ? (e.screenX - width) : e.screenX;
                    var top = (screen.height / e.screenY <= 2) ? (e.screenY - height) : e.screenY;
                    var href = $(this).attr('href');
                    window.open(
                        href,
                        $(this).attr('target'),
                        'width=' + width + ',height=' + height + ',top=' + top + ',left=' + left + ',status=no,resizable=no,scrollbars=no'
                    ).focus();
        
                    return false;
                });
            })(jQuery, window, document);
        </script>
        
                                            <!-- //공유 -->
                                    </div>
                                    
                                </div>
                                
                                <!-- //금액영역 -->
                                <!--빅스마일데이 쿠폰받기 영역-->
                                
                                <!-- 옥션 펀딩배너 삭제 쿠폰받기로 대체 -->
                                <!---->
                                <!-- 쿠폰받기 배너 -->
                                
        
                            <!-- 배송예고제 표시영역 -->
                            
        
    
         
        </div>
                            <!-- 더빠른배송 으로 대체-->
                            <!--//배송예고제 표시영역 -->
                            <!--홈플러스 배송지점 정보-->
                            
                            <!--//홈플러스 배송지점 정보-->
                            <ul class="item-topinfo_sub uxeslide">
                                <!-- 더빠른 배송정보-->
                                
                                <!--//더빠른 배송정보-->
                                
                                <!--배송비 정보-->
                                
      
                                <!-- 주문옵션 -->
                                
        <script type="text/javascript">
            System.loadFile("//script.auction.co.kr/itempage3/1.0/ItemRequest.js?t=20180115110000");
            System.loadFile("//script.auction.co.kr/itempage3/1.0/ItemOrderInfo.js?_cb=20210715010101");
        </script><script type="text/javascript" src="//script.auction.co.kr/itempage3/1.0/itemrequest.js?t=20180115110000"></script><script type="text/javascript" src="//script.auction.co.kr/itempage3/1.0/itemorderinfo.js?_cb=20210715010101"></script>
        <fieldset>
            <legend>옵션선택 폼</legend>
            <!-- 선택옵션전체 -->
            <div class="select-item">
                
        
        <div class="optiontype type_group">
            <div class="item_options opt_group uxeselectbox">
             
                    
                </ul>
            </div>
        </div>
              <!-- 선택옵션 -->
                <div class="select_option_form">
                    
        
        <!-- 주문옵션 상품-->
        <div class="select_option_wrap">
        
        <ul class="item_result" style="display:none;">
            <li class="type__add-item">
                <p class="prod_area">
                    <span class="prod_name">수량</span>
                </p>
                <span class="num-ctrl uxequnatity-ctrl num-ctrl-option">
                    <button class="bt_increase" onclick="pvprofiler.sendEvt('click', '100000451', 'Utility');" data-montelena-acode="100000451" type="button"><span class="blind">수량증가</span></button>
                    <button class="bt_decrease" onclick="pvprofiler.sendEvt('click', '100000451', 'Utility');" data-montelena-acode="100000451" type="button"><span class="blind">수량감소</span></button>
                    <input name="orderQtyNoOption" id="orderQtyNoOption" class="num" type="text" maxlength="5" title="수량" value="1" onblur="javascript:OrderValidate.IsVaildQty(this); UpdateBuyQtyElement(this, event);" onkeydown="javascript:if(event.keyCode == 13) return false;">
                </span>
                
                <div class="box__choose-result">
                    <button class="close sp_vipgroup" onclick="javascript:Request.removeRequest(this); pvprofiler.sendEvt('click', '100000454', 'Utility');" data-montelena-acode="100000454" type="button"><span class="blind">닫기</span></button>
                    <strong class="result_price">0<span>원</span></strong>
                </div>
                
            </li>								
        </ul>
        
        
        <div class="select_option_wrap">
            <div id="ucItemOrderInfo_ucOptionTemplate_ucItemRequest_ucNoRequestTemplate_hdivRelatedItem" class="optiontype type_selection noline">
                <h2 class="tit_options">수량</h2>
                <div class="item_quantitywrap">
                    <span class="num-ctrl uxequnatity-ctrl num-ctrl-base">
                        <button class="bt_increase" type="button"><span class="blind">수량증가</span></button>
                        <button class="bt_decrease" type="button"><span class="blind">수량감소</span></button>
                        <input name="qtyBaseItemOption_1" id="qtyBaseItemOption_1" class="num" type="text" maxlength="3" title="수량" value="1" onblur="javascript:OrderValidate.IsVaildQty(this); UpdateBaseQtyElement(this, event);">
                    </span>
                    <button class="item_btn-confirm" onclick="javascript:ItemOrder.AddBaseOrderItem('28265121479', this); pvprofiler.sendEvt('click', '100000452', 'Utility');" data-montelena-acode="100000452" type="button">선택</button>
                </div>
            </div>
        </div>
        
        
        
            <!-- 조합형 /독립-->
            
                <!-- 조합형 -->
                <!-- 계산형옵션 -->
            
            <!-- //계산형옵션 -->
            <!-- 텍스트형 Template -->
            
            
            
            <!-- 텍스트형 Template -->
        <script type="text/javascript">
            var IsRelateItem = true;
            Request.ItemCalculation= null;
            Request.OrderRequestType =0;
            Request.ItemPrice=  {"SellingPrice":15900.0000,"LotteSalePrice":0.0,"Discount":{"SellerDiscoutPrice":0.0,"AuctionDiscountPrice":0.0}};
            Request.RequestImageLevel=0;
            
            Request.ItemRequests=  [];
            Request.BuyerWritingRequests =[];
            Request.ThirdRequestControlID = "ucItemOrderInfo_ucOptionTemplate_CombinationRequest2";
            Request.SecondRequestControlID = "ucItemOrderInfo_ucOptionTemplate_CombinationRequest1";
            Request.FisrtRequestControlID = "ucItemOrderInfo_ucOptionTemplate_CombinationRequest0";
            Request.RequestDummyKeys =[];
            Request.RequestElementIDs =[];
            Request.RequestElementNames =[];
            Request.OptionImage =	"//image.auction.co.kr/j";
            Request.BuyLimit= {"FormattedBuyQty":"","MaxBuyQty":8209,"MinBuyQty":0,"IsSplitOption":false};
            Request.Item= {'itemNo':'C466582560' ,'itemName' : '상품 01. 실속포장 2022년 햇 상주곶감 건시 1kg(23-38개)/ 정품 가성비 상주곶감', 'itemCategoryCode' : '51410600', 'itemPrice': {"SellingPrice":15900.0000,"LotteSalePrice":0.0,"Discount":{"SellerDiscoutPrice":0.0,"AuctionDiscountPrice":0.0}},
                'orderRequestType' : 0, 'buyLimit':{"FormattedBuyQty":"","MaxBuyQty":8209,"MinBuyQty":0,"IsSplitOption":false} }
            
            if(window.RBase && window.RBase.Item && window.RBase.Item.itemNo === Request.Item.itemNo){
                var ItemOrder = new ItemOrderInfo(RBase.Item, RBase.ItemPrice, RBase.ItemRequests, RBase.BuyerWritingRequests, null, RBase.ItemCalculation);
            }else{
                var ItemOrder = new ItemOrderInfo(Request.Item, Request.ItemPrice, Request.ItemRequests, Request.BuyerWritingRequests, null, Request.ItemCalculation);
            }
            
            
        </script>
        </div>
        <!-- 주문옵션 상품-->
        
        <!-- 주문옵션선택완료 -->
        <div class="optiontype type_result" id="divOrderList">
            <ul class="item_result">
                
                </ul>
        </div>
        <!-- //주문옵션선택완료 -->
        <!-- 배송방법선택 -->
        
        <!-- //배송방법선택 -->
        
        
                </div>
            <!-- //선택옵션 -->
                <!-- 총상품금액 -->
                <div class="total_price">
                    <span class="total_num" id="total_num"></span>
                    <span class="total_txt" id="total_txt"></span>
                </div>
                <!-- //총금액 -->
            </div>
          <!-- //선택옵션전체 -->
            <div id="ucItemOrderInfo_ucItemOrderButtons_hdivBuy" class="item-bottombtns">
            
            
            <button class="btn_cart" onclick="javascript:ItemOrderButtons.addCart('C466582560','False','Top'); pvprofiler.sendEvt('click', '100000461', 'Utility');" data-montelena-acode="100000461" type="button">장바구니</button>
            
            
            
            <button class="btn_buy" onclick="javascript:ItemOrderButtons.addBuy('C466582560','False','Top'); pvprofiler.sendEvt('click', '100000462', 'Utility', {'serviceName' : 'buy'});" data-montelena-acode="100000462" type="button">구매하기</button>
            </div>
        
        <!-- //.모바일 전용 상품 -->
        
        <!-- //.PetPlus 전용 상품 -->
        <!-- //.구매불가 상품 -->
        </fieldset>
        
        <script type="text/javascript">
            //OrderInfoScript에 있는 fuction들 가져옴
            /*
            function OptionBuy() { }
            if (ItemOption != null && ItemOption.Options != null & ItemOption.Options.length > 0) {
                OptionBuy.OptionBuyArray = new Array();
                OptionBuy.OptionBuyArray.push(ItemOption.Options[0]);
            }
            */
        
            // 본품 상품이 아닌 경우
            // '총 상품금액 0원' 텍스트가 보이지 않도록 empty() 처리 
            var price = 0;
        
            if (price == 0) {
                $("#total_num").empty();
                $("#total_txt").empty();
            }
        </script>
        
                                <!-- 주문옵션 -->
                            </div>
                                        
                            </div>
                            <!-- 혜택 정보 -->
                            <input name="hhlblText" type="hidden" id="hhlblText">
                            <!-- //혜택 정보 -->
        
                            
                        </form>
                        </div><!-- //.item-topinfo -->
                    </div><!-- //.item-topinfowrap -->     
                 
                                     
</body>

</html>