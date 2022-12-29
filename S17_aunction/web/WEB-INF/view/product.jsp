<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="./css/reset.css">
<link rel="stylesheet" href="./css/header.css">
<link rel="stylesheet" href="./css/login.css">
<link rel="stylesheet" href="./css/main.css">
<link rel="stylesheet" href="./css/product.css">
<script src="/js/jquery-3.6.1.js"></script>
<title>Document</title>
</head>
<body>
	<%@include file="/WEB-INF/view/header.jsp"%>
	<div id="_FavoriteItemGroupManageLayer"
		style="display: none; position: absolute; z-index: 11000; left: 249px; top: 142px;"></div>
	<div id="_FavoriteItemClosingAlarmRegistLayer"
		style="display: none; position: absolute; z-index: 11000;"></div>
	<input type="hidden" id="hdnData" name="hdnBulkRegistInfo">
	<input type="hidden" id="hdnCaller" name="hdnCaller">
	<div class="bg_dimmed" id="popDimmed" style="display: none;"></div>
	<div class="core_skip_top" style="display: none;">
		<a href="#" id="btnSkipTop" title="상단으로 이동">상단으로 이동</a>
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

							<li class=" on"><a href="javascript:;"> <img
									src="${product.pimage }"
									data-fallback-urls="${product.pimage }"
									alt="${product.pName }">

							</a></li>

						</ul>

					</div>

				</div>

			</div>
			<!-- //.item-topgallery -->
			<!-- 우측 상품관련정보 -->
			<div class="item-topinfo">
				<!-- <form id="frmMain" > -->
					<input name="hddnStockQty" type="hidden" id="hddnStockQty"
						value="8209"> <input name="hddnBuyLimitQty" type="hidden"
						id="hddnBuyLimitQty" value="8209"> <input
						name="hddnRequestOptionType" type="hidden"
						id="hddnRequestOptionType"> <input
						name="hddnOrderTypeCode" type="hidden" id="hddnOrderTypeCode"
						value="0"> <input name="hddnRequestOptionTypeForDisplay"
						type="hidden" id="hddnRequestOptionTypeForDisplay"> <input
						name="hddnStockNo" type="hidden" id="hddnStockNo"
						value="28265121479"> <input type="hidden" id="hddnSumQty"
						name="hddnSumQty" value="0"> <input
						name="hddnSellingPrice" type="hidden" id="hddnSellingPrice">
					<input name="hddnDiscountSellingPrice" type="hidden"
						id="hddnDiscountSellingPrice"> <input type="hidden"
						id="hddnVIPVersion" name="hddnVIPVersion" value="V3"> <input
						type="hidden" id="hddnPreCalculatorParam"
						name="hddnPreCalculatorParam"> <input
						name="hddnBuyLimitTypeCode" type="hidden"
						id="hddnBuyLimitTypeCode" value="0"> <input
						name="hddnBuyMinQty" type="hidden" id="hddnBuyMinQty" value="0">
					<input name="hddnIsSplitOptionText" type="hidden"
						id="hddnIsSplitOptionText"> <input type="hidden"
						id="additionalShippingTypeCode" name="additionalShippingTypeCode"
						value=""> <input type="hidden" id="hddTotalPrice"
						value="0"> <input name="hddPCInstallItemNo" type="hidden"
						id="hddPCInstallItemNo" value="A549559309">
					<div id="hdivItemInfo"></div>

					<div class="box__official-store"></div>
					<h1 class="itemtit">${product.pName }</h1>

					<div class="box__item-made">원산지 : 경북</div>


					<div class="prod_info">

						<p class="seller-awards">
							<a href="#vip_tab_comment" class="anchor__review"> <span
								class="sp star-rating"><span id="spStarRating" class="sp"
									style="width: 88.0%"></span></span> <span class="for-a11y">별점 총
									5점중 4.4점</span> <span id="strgDeliveryFbPct"
								class="text__review-count">(1,169)</span></a>
						</p>

						<span class="division">|</span>

						<p class="buy_num">
							구매 3,080<span class="remainder">(남은수량 8,209개)</span>
						</p>

					</div>

					<!-- 금액영역 -->
					<div class="price_wrap">

						<div class="price">
							<strong id="ucItemPrice_hdivDiscountRate" class="sale">9<span
								class="unit">%</span></strong>
							<div class="price_innerwrap">
								<span id="ucItemPrice_hdivPrice" class="price_original">${product.pPrice*1.09 }<span
									class="unit">원</span></span> <strong class="price_real">${product.pPrice }<span
									class="unit">원</span></strong>

							</div>
						</div>

						<div class="action-btns">
							<!-- 관심상품 -->

							<div class="interest_area">
								<!-- layerpop -->
								<div id="ly_interest" class="lypop ly_interest"></div>
								<!-- //layerpop -->
							</div>


						</div>

						<!-- //공유 -->
					</div>
			</div>

		




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

			<fieldset>

				<!-- 선택옵션 -->
				<div class="select_option_form">


					<!-- 주문옵션 상품-->
					<div class="select_option_wrap">

						<ul class="item_result" style="display: none;">
							<li class="type__add-item">
								<p class="prod_area">
									<span class="prod_name">수량</span>
								</p> <span class="num-ctrl uxequnatity-ctrl num-ctrl-option">
									<button class="bt_increase"
										onclick="pvprofiler.sendEvt('click', '100000451', 'Utility');"
										data-montelena-acode="100000451" type="button" name="add">
										<span class="blind">수량증가</span>
									</button>
									<button class="bt_decrease"
										onclick="pvprofiler.sendEvt('click', '100000451', 'Utility');"
										data-montelena-acode="100000451" type="button" name="minus">
										<span class="blind">수량감소</span>
									</button> <input name="orderQtyNoOption" id="orderQtyNoOption"
									class="num" type="text" maxlength="5" title="수량" value="1"
									onblur="javascript:OrderValidate.IsVaildQty(this); UpdateBuyQtyElement(this, event);"
									onkeydown="javascript:if(event.keyCode == 13) return false;">
							</span>

								<div class="box__choose-result">
									<button class="close sp_vipgroup"
										onclick="javascript:Request.removeRequest(this); pvprofiler.sendEvt('click', '100000454', 'Utility');"
										data-montelena-acode="100000454" type="button">
										<span class="blind">닫기</span>
									</button>
									<strong class="result_price">0<span>원</span></strong>
								</div>

							</li>
						</ul>


						<div class="select_option_wrap">
							<div
								id="ucItemOrderInfo_ucOptionTemplate_ucItemRequest_ucNoRequestTemplate_hdivRelatedItem"
								class="optiontype type_selection noline">
								<h2 class="tit_options">수량</h2>
								<div class="item_quantitywrap">
									<span class="num-ctrl uxequnatity-ctrl num-ctrl-base">
										<button class="bt_increase" type="button">
											<span class="blind">수량증가</span>
										</button>
										<button class="bt_decrease" type="button">
											<span class="blind">수량감소</span>
										</button> <input name="qtyBaseItemOption_1" id="qtyBaseItemOption_1"
										class="num" type="text" maxlength="3" title="수량" value="1"
										onblur="javascript:OrderValidate.IsVaildQty(this); UpdateBaseQtyElement(this, event);">
									</span>
									<button class="item_btn-confirm"
										onclick="javascript:ItemOrder.AddBaseOrderItem('28265121479', this); pvprofiler.sendEvt('click', '100000452', 'Utility');"
										data-montelena-acode="100000452" type="button">선택</button>
								</div>
							</div>
						</div>



						<!-- 조합형 /독립-->

						<!-- 조합형 -->
						<!-- 계산형옵션 -->

						<!-- //계산형옵션 -->
						<!-- 텍스트형 Template -->



						<!-- 텍스트형 Template -->
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
					<span class="total_num" id="total_num"></span> <span
						class="total_txt" id="total_txt"></span>
				</div>
				<!-- //총금액 -->
	</div>
	<!-- //선택옵션전체 -->
	<div id="ucItemOrderInfo_ucItemOrderButtons_hdivBuy"
		class="item-bottombtns">
		<form action="<%=request.getContextPath()%>/cart.do" method="post">
			<input type="hidden" name="pid" value="${product.pID }">
			<button class="btn_cart" type="submit">
				장바구니
			</button>
		</form>


		<button class="btn_buy"
			onclick="javascript:ItemOrderButtons.addBuy('C466582560','False','Top'); pvprofiler.sendEvt('click', '100000462', 'Utility', {'serviceName' : 'buy'});"
			data-montelena-acode="100000462" type="button">구매하기</button>
	</div>

	<!-- //.모바일 전용 상품 -->

	<!-- //.PetPlus 전용 상품 -->
	<!-- //.구매불가 상품 -->
	</fieldset>


	<!-- 주문옵션 -->
	</div>

	</div>
	<!-- 혜택 정보 -->
	<input name="hhlblText" type="hidden" id="hhlblText">
	<!-- //혜택 정보 -->


	<!-- </form> -->
	</div>
	<!-- //.item-topinfo -->

	<!-- //.item-topinfowrap -->


</body>

</html>