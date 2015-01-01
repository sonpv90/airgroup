<%@ page import="org.apache.commons.lang.StringUtils"%>
<%@ page import="com.airgroup.domain.Location"%>
<html>
<head>
<meta name="layout" content="responsivemasterpage" />

<title><g:message code="title.homepage" args="[entityName]" /></title>
</head>
<body>
	<div class="row">
		<div class="space-10 hidden-xs"></div>

		<div class="row">
			<div class="col-lg-5 col-md-6 col-sm-7 col-xs-12">
				<article id="tim-chuyen-bay">
					<div class="tour-box">
						<g:form controller="flight" action="switchSearchPage"
							method="POST">
							<div class="title">
								<img src="images/img/icon-tim-chuyen-bay.png" alt="" /> <span
									class="title title-upper title-b">Tìm chuyến bay</span>

								<div class="line line-horizontal"></div>
							</div>
							<div class="control-collection">
								<div class="space-5"></div>
								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-6">
										<label id="diem-di-label" for="diem-di-input"
											class="control-label">Điểm đi</label> <input id="gog"
											onclick="select()" class="control-input" type="text"
											value="Hanoi (HAN)" name="departureCode" />
									</div>

									<div class="col-md-6 col-sm-6 col-xs-6">
										<label id="diem-den-label" for="diem-den-input"
											class="control-label">Điểm đến</label> <input id="tog"
											onclick="select()" class="control-input" type="text"
											value="Ho Chi Minh (SGN)" name="arrivalCode" />
									</div>
								</div>
								<div class="space-5"></div>

								<div class="row">
									<div class="col-md-6 col-sm-6 col-xs-6">
										<label id="ngay-di-label" for="ngay-di-input"
											class="control-label">Ngày đi</label> <br /> <select
											name="oday" id="oday" class="control-input"
											style="width: 45px; height: 25px;"></select> <select
											name="omonth" id="omonth" class="control-input"
											style="width: 120px; margin-left: 0px; height: 25px; margin-top: 5px"></select>
									</div>

									<div class="col-md-6 col-sm-6 col-xs-6">
										<label id="ngay-ve-label" for="ngay-ve-input"
											class="control-label">Ngày về</label> <br /> <select
											name="iday" id="iday" class="control-input"
											style="width: 45px; height: 25px;"><option value="0"></option></select>
										<select id="imonth" name="imonth" class="control-input"
											style="width: 120px; margin-left: 0px; height: 25px; margin-top: 5px">
											<option value="00" selected="selected"></option>
										</select>
									</div>
								</div>
								<div class="space-10"></div>

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">
										<span class="title title-upper title-b">Số lượng</span>
										<div class="line line-horizontal"></div>
									</div>
								</div>
								<div class="space-5"></div>

								<div class="row">
									<div class="col-md-3 col-sm-3 col-xs-3">
										<label for="so-luong-nguoi-lon" class="control-label">Người
											lớn</label><br /> <select name="adults" id="adults"
											class="control-input" style="height: 25px;"></select>
										<div class="description title-while">(&gt; 12 tuổi)</div>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-3">
										<label for="so-luong-tre-em" class="control-label">Trẻ
											em</label> <br /> <select name="kids" id="kids"
											class="control-input" style="height: 25px;"></select>
										<div class="description title-while">(2 - 12 tuổi)</div>
									</div>
									<div class="col-md-3 col-sm-3 col-xs-3">
										<label for="so-luong-em-be" class="control-label">Em
											bé</label><br /> <select name="infants" id="infants"
											class="control-input" style="height: 25px;"></select>
										<div class="description title-while">(&lt; 2 tuổi)</div>
									</div>
								</div>

								<div class="space-10"></div>

								<div class="row">
									<div class="col-md-12 col-sm-12 col-xs-12">
										<div class="center-block">
											<button id="tim-lich-bay" class="tour-button" type="submit">
												<img src="images/img/icon-search.png" alt="search"
													width="16px" height="16px" /> <span>TÌM KIẾM</span>
											</button>
										</div>
									</div>
								</div>
								<g:include view="flight/includes/_searchflight.gsp" />
							</div>

						</g:form>
					</div>
				</article>
			</div>

			<div id="myCarousel"
				class="carousel slide col-lg-7 col-md-6 col-sm-5 col-xs-12"
				data-ride="carousel">
				<div class="carousel-inner">
					<g:each var="advertInstance" in="${advert}" status="st">
						<g:if test="${st==0}">
							<div class="item active">
								<g:link controller="home" action="showAdvertPage"
									params="[advertId: advertInstance?.id]">
									<img
										src="${createLink(controller:'home', action:'slideImage', id:advertInstance.id)}" />
								</g:link>
							</div>
						</g:if>
						<g:else>
							<div class="item">
								<g:link controller="home" action="showAdvertPage"
									params="[advertId: advertInstance?.id]">
									<img
										src="${createLink(controller:'home', action:'slideImage', id:advertInstance.id)}" />
								</g:link>
							</div>
						</g:else>
					</g:each>

				</div>

			</div>
		</div>

		<div class="space-10 hidden-xs"></div>

		<section class="row hidden-xs">
			<article id="ve-may-bay-gia-re" class="col-md-4 col-sm-4 col-xs-4">
				<div class="bg-type-2 region-type-2">
					<div class="title title-upper title-b">
						<g:link controller="flight" action="search">
	                        	Vé máy bay giá rẻ
	                        </g:link>
					</div>
					<div class="line line-horizontal"></div>
					<ul class="tour-tree-img tree-img-60 separate-line">
						<li id="ve-may-bay-gia-re-noi-dia"><span
							class="cheap-flight-header">Nội địa</span>
							<div class="clearfix"></div></li>
						<li id="ve-may-bay-gia-re-quoc-te"><span
							class="cheap-flight-header">Quốc tế</span>
							<div class="clearfix"></div></li>
					</ul>
				</div>
			</article>
			<article id="ve-may-bay-da-dat" class="col-md-4 col-sm-4 col-xs-4">
				<div class="bg-type-2 region-type-2">
					<div class="title title-upper title-b">
						<g:link controller="flight" action="search">
                        		Vé máy bay đã được đặt
                        	</g:link>
					</div>
					<div class="line line-horizontal"></div>
					<ul class="tour-tree-img tree-img-60 separate-box">
						<g:each var="orderInstance" status="i" in="${lastTwoOrders}">
							<li>
								<div class="img-news">
									<img
										src="/images/sm${orderInstance?.orderDetails.toArray()[0].airline}.gif"
										width="60" height="35" alt="" />
								</div>
								<div class="detail-news">
									<g:if test="${orderInstance?.orderDetails.size() > 1}">
										<span>Khách đặt ${orderInstance?.adultNumber + orderInstance?.kidNumber}
											vé máy bay Khứ hồi
										</span>
									</g:if>
									<g:else>
										<span>Khách đặt ${orderInstance?.adultNumber + orderInstance?.kidNumber}
											vé máy bay Một chiều
										</span>
									</g:else>
									<a class="location"> ${orderInstance?.departureLocation} - ${orderInstance?.arrivalLocation}
									</a> <br /> <span>Ngày <strong><g:formatDate
												formatName="date.time.format.short"
												date="${orderInstance?.orderDetails.toArray()[0]?.outboundDate}" /></strong></span>
									<br /> <span>Giá <strong><g:formatNumber
												number="${orderInstance?.price / (orderInstance?.adultNumber + orderInstance?.kidNumber)}"
												formatName="price.number.format" /></strong></span> <a href="${links[i]}"
										class="more">Xem chi tiết</a>
								</div>
								<div class="clearfix"></div>
							</li>
						</g:each>
						<li>
							<div class="img-news">
								<img
									src="/images/sm${confirmOrder?.orderDetails.toArray()[0].airline}.gif"
									width="60" height="35" alt="" />
							</div>
							<div class="detail-news">
								<g:if test="${confirmOrder?.orderDetails.size() > 1}">
									<span>Khách đã mua ${confirmOrder?.adultNumber + confirmOrder?.kidNumber}
										vé máy bay Khứ hồi
									</span>
								</g:if>
								<g:else>
									<span>Khách đã mua ${confirmOrder?.adultNumber + confirmOrder?.kidNumber}
										vé máy bay Một chiều
									</span>
								</g:else>
								<a class="location"> ${confirmOrder?.departureLocation} - ${confirmOrder?.arrivalLocation}
								</a> <br /> <span>Ngày <strong><g:formatDate
											formatName="date.time.format.short"
											date="${confirmOrder?.orderDetails.toArray()[0]?.outboundDate}" /></strong></span>
								<br /> <span>Giá <strong><g:formatNumber
											number="${confirmOrder?.price / (confirmOrder?.adultNumber + confirmOrder?.kidNumber)}"
											formatName="price.number.format" /></strong></span> <a href="${linkConfirm}"
									class="more">Xem chi tiết</a>
							</div>
							<div class="clearfix"></div>
						</li>
					</ul>
				</div>
			</article>
			<article id="tin-tuc-khuyen-mai" class="col-md-4 col-sm-4 col-xs-4">
				<div class="bg-type-2 region-type-3">
					<div class="title title-upper title-b">
						<g:link controller="news" action="index">
	                        	Tin tức khuyến mại
	                        </g:link>
					</div>
					<div class="line line-horizontal"></div>
					<ul>
						<g:each in="${news}" var="news">
							<li><g:if test="${news.category=='Tin tức'}">
									<span><img
										src="${resource(dir:'images/newuiimg',file:'news.png') }"
										width="20" /></span>
								</g:if> <g:else>
									<span><img
										src="${resource(dir:'images/newuiimg',file:'sale.png') }"
										width="20" /></span>
								</g:else> <g:link controller="news" action="detailsInfo"
									params="[infoid:news.id]">
									${news?.title}
								</g:link>
								<div class="description">
									${news?.introduction}
								</div></li>
						</g:each>
					</ul>
				</div>
			</article>
		</section>

		<div class="space-10 hidden-xs"></div>

		<section class="row hidden-xs">
			<article class="col-md-4 col-sm-4 col-xs-4">
				<div class="bg-type-2 region-type-3">
					<div id="myCarousel1" class="carousel slide" data-ride="carousel">
						<div class="carousel-inner">
							<div class="item active">
								<img class="tour_slide" src="images/img/du-lich.jpg" alt="" />

							</div>
							<div class="item">
								<img class="tour_slide" src="images/img/du-lich.jpg" alt="" />

							</div>
							<div class="item">
								<img class="tour_slide" src="images/img/du-lich.jpg" alt="" />

							</div>

						</div>

					</div>

					<div class="title title-upper title-b">Du lịch</div>
					<div class="line line-horizontal box-margin-10"></div>
					<ul class="tour-tree-circle">
						<li><a href="/tour/list?category=Special">Các tour đặc
								biệt</a></li>
						<li><a href="/tour/list?category=North">Các tour trong
								nước</a></li>
						<li><a href="/tour/list?category=Asean">Các tour quốc tế</a>
						</li>
						<li><a>Tổ chức tour theo yêu cầu</a></li>
					</ul>
				</div>
			</article>
			<article id="hinh-thuc-thanh-toan" class="col-md-4 col-sm-4 col-xs-4">
				<div class="bg-type-2 region-type-3">
					<div class="title title-upper title-b">Hình thức thanh toán</div>
					<div class="line line-horizontal box-margin-10"></div>
					<ul>
						<li>
							<div class="title-b">
								<g:link controller="contactUs" action="infor">
									<span><img
										src="${resource(dir:'images/newuiimg',file:'office.png') }"
										height="15" /></span> Thanh toán tại văn phòng airgroup Việt Nam
                                	</g:link>
							</div>
							<div class="description">Nhận hàng và thanh toán tại văn
								phòng airgroup Việt Nam</div>
						</li>
						<li>
							<div class="title-b">
								<g:link controller="contactUs" action="infor">
									<img src="${resource(dir:'images/newuiimg',file:'home.png') }"
										height="15" /> Thanh toán tại nhà
	                                </g:link>
							</div>
							<div class="description">Giao hàng và thanh toán tại nhà</div>
						</li>
						<li>
							<div class="title-b">
								<g:link controller="contactUs" action="infor">
									<img
										src="${resource(dir:'images/newuiimg',file:'nganhang.png') }"
										height="15" /> Thanh toán qua chuyển khoản
                                	</g:link>
							</div>
							<div class="description">Chuyển khoản tại ngân hàng, chuyển
								khoản bằng thẻ ATM</div>
						</li>
						<li>
							<div class="title-b">
								<g:link controller="contactUs" action="infor">
									<img
										src="${resource(dir:'images/newuiimg',file:'online-payment.png') }"
										height="15" width="16" /> Thanh toán qua cổng thanh toán điện tử
                                	</g:link>
							</div>
							<div class="description">Chuyển khoản qua cổng thanh toán
								điện tử Bảo Kim, Ngân Lượng,...</div>
						</li>
					</ul>
				</div>
			</article>
			<article id="giao-dich" class="col-md-4 col-sm-4 col-xs-4">
				<div class="bg-type-2 region-type-3">
					<div class="title title-upper title-b">Giao dịch</div>
					<div class="line line-horizontal box-margin-10"></div>
					<ul id="banks">
						<li>
							<div class="bank-logo">
								<img src="images/img/VietcomBank.png" width="70" height="40"
									alt="MBBank" />
							</div>
							<div class="bank-detail">
								<span class="title title-b">Ngân hàng Vietcombank </span> <br />
								<span>Tên TK: Cty TNHH Thương Mại và Dịch Vụ Du lịch airgroup
									Việt Nam</span> <br /> <span>Số TK: 0021-0002-93700</span><br /> <span>Địa
									chỉ: Hà Nội</span>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="bank-logo">
								<img src="images/img/TechcomBank.png" width="70" height="40"
									alt="TechcomBank" />
							</div>
							<div class="bank-detail">
								<span class="title title-b">Ngân hàng Techcombank </span> <br />
								<span>Tên TK: Cty THNN Thương Mại và Dịch Vụ Du Lịch airgroup
									Việt Nam</span> <br /> <span>Số TK: 19128392003883</span><br /> <span>Địa
									chỉ: Hà Nội</span>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="bank-logo">
								<img src="images/img/AgriBank.jpg" width="70" height="40"
									alt="VietcomBank" />
							</div>
							<div class="bank-detail">
								<span class="title title-b">Ngân Hàng AGRIBANK</span> <br /> <span>Tên
									TK: Cty TNHH Thương Mại và Dịch Vụ Du lịch airgroup Việt Nam</span> <br />
								<span>Số TK: 1400206026412</span><br /> <span>Địa chỉ:
									Hà Nội</span>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="bank-logo">
								<img src="images/img/BIDV.jpg" width="70" height="40" alt="BIDV" />
							</div>
							<div class="bank-detail">
								<span class="title title-b">Ngân hàng BIDV</span> <br /> <span>Tên
									TK: Cty TNHH Thương Mại và Dịch Vụ Du lịch airgroup Việt Nam</span> <br />
								<span>Số TK: 12510000635331</span><br /> <span>Địa chỉ:
									Hà Nội</span>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="bank-logo">
								<img src="images/img/MBBank.png" width="70" height="40"
									alt="MBBank" />
							</div>
							<div class="bank-detail">
								<span class="title title-b">Ngân hàng Quân đội</span> <br /> <span>Tên
									TK: airgroup</span> <br /> <span>Số TK: 0580107012008</span><br />
								<span>Địa chỉ: Hà Nội - Chi nhánh: Đống Đa</span>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="bank-logo">
								<img src="images/img/DongA.jpg" width="70" height="40"
									alt="DongA" />
							</div>
							<div class="bank-detail">
								<span class="title title-b">Ngân hàng Đông Á</span> <br /> <span>Tên
									TK: airgroup</span> <br /> <span>Số TK: 0108817986</span><br />
								<span>Địa chỉ: Hà Nội - Chi Nhánh: Ba Đình</span>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="bank-logo">
								<img src="images/img/ACBBank.jpg" width="70" height="40"
									alt="DongA" />
							</div>
							<div class="bank-detail">
								<span class="title title-b">Ngân Hàng ACB</span> <br /> <span>Tên
									TK: airgroup</span> <br /> <span>Số TK: 183916659</span><br />
								<span>Địa chỉ: Hà Nội</span>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="bank-logo">
								<img src="images/img/sacom.jpg" width="70" height="40"
									alt="DongA" />
							</div>
							<div class="bank-detail">
								<span class="title title-b">Ngân Hàng Sacombank</span> <br /> <span>Tên
									TK: airgroup</span> <br /> <span>Số TK: 020029014176</span><br />
								<span>Địa chỉ: Hà Nội</span>
							</div>
							<div class="clearfix"></div>
						</li>
						<li>
							<div class="bank-logo">
								<img src="images/img/vietin.jpg" width="70" height="40"
									alt="DongA" />
							</div>
							<div class="bank-detail">
								<span class="title title-b">Ngân Hàng Vietinbank</span> <br /> <span>Tên
									TK: airgroup</span> <br /> <span>Số TK: 711AB2309335</span><br />
								<span>Địa chỉ: Chương Dương</span>
							</div>
							<div class="clearfix"></div>
						</li>
					</ul>
					<div class="line line-horizontal box-margin-10"></div>
					<div class="description">
						<strong>Vé máy bay điện tử</strong> <br /> Giao dịch trên tất cả
						các ngân hàng <br /> Chuyển tiền ngay vé trao tay
					</div>
				</div>
			</article>
		</section>

		<div class="space-10 hidden-xs"></div>
	</div>
</body>
</html>