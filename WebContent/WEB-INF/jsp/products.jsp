<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<base href="/">
	<meta charset="utf-8" />
	<meta name="description" content="TopShoe Admin">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<!--begin::Fonts -->
	<link rel="stylesheet"
		href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700|Roboto:300,400,500,600,700">

	<!--end::Fonts -->

	<!--begin::Global Theme Styles(used by all pages) -->
	<link href="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.css" rel="stylesheet" type="text/css" />
	<link href="${pageContext.request.contextPath}/assets/css/style.bundle.css" rel="stylesheet" type="text/css" />

	<!--end::Global Theme Styles -->
	
	<!--Table start  -->
	<link href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css" rel="stylesheet" />
  	<link href="${pageContext.request.contextPath}/table/css/styles.css" rel="stylesheet" />
	<script src="${pageContext.request.contextPath}/table/js/JQuery3.3.1.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	        crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/table/js/scripts.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest" crossorigin="anonymous"></script>
	<script src="${pageContext.request.contextPath}/table/js/datatables-simple-demo.js"></script>
	<!--Table end  -->
	
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/media/logos/favicon.ico" />
</head>
<body class="kt-quick-panel--right kt-demo-panel--right kt-offcanvas-panel--right kt-header--fixed kt-header-mobile--fixed kt-subheader--enabled kt-subheader--fixed kt-subheader--solid kt-aside--enabled kt-aside--fixed kt-page--loading">
	
<div class="kt-grid kt-grid--hor kt-grid--root">
	<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--ver kt-page">	
	

	<button class="kt-aside-close " id="kt_aside_close_btn"><i class="la la-close"></i></button>
	<div th:fragment="sidebar"
	class="kt-aside  kt-aside--fixed  kt-grid__item kt-grid kt-grid--desktop kt-grid--hor-desktop" id="kt_aside">

	<!-- begin:: Aside -->
	<div class="kt-aside__brand kt-grid__item " id="kt_aside_brand">
		<div class="kt-aside__brand-logo">
			<img alt="Logo" src="assets/media/logos/logo_topshoe.png" style="width: 50%; margin-top: -10px; cursor: pointer;" />
		</div>
		<div class="kt-aside__brand-tools">
			<button class="kt-aside__brand-aside-toggler" id="kt_aside_toggler">
				<span><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
						height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
						<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
							<polygon points="0 0 24 0 24 24 0 24" />
							<path
								d="M5.29288961,6.70710318 C4.90236532,6.31657888 4.90236532,5.68341391 5.29288961,5.29288961 C5.68341391,4.90236532 6.31657888,4.90236532 6.70710318,5.29288961 L12.7071032,11.2928896 C13.0856821,11.6714686 13.0989277,12.281055 12.7371505,12.675721 L7.23715054,18.675721 C6.86395813,19.08284 6.23139076,19.1103429 5.82427177,18.7371505 C5.41715278,18.3639581 5.38964985,17.7313908 5.76284226,17.3242718 L10.6158586,12.0300721 L5.29288961,6.70710318 Z"
								fill="#000000" fill-rule="nonzero"
								transform="translate(8.999997, 11.999999) scale(-1, 1) translate(-8.999997, -11.999999) " />
							<path
								d="M10.7071009,15.7071068 C10.3165766,16.0976311 9.68341162,16.0976311 9.29288733,15.7071068 C8.90236304,15.3165825 8.90236304,14.6834175 9.29288733,14.2928932 L15.2928873,8.29289322 C15.6714663,7.91431428 16.2810527,7.90106866 16.6757187,8.26284586 L22.6757187,13.7628459 C23.0828377,14.1360383 23.1103407,14.7686056 22.7371482,15.1757246 C22.3639558,15.5828436 21.7313885,15.6103465 21.3242695,15.2371541 L16.0300699,10.3841378 L10.7071009,15.7071068 Z"
								fill="#000000" fill-rule="nonzero" opacity="0.3"
								transform="translate(15.999997, 11.999999) scale(-1, 1) rotate(-270.000000) translate(-15.999997, -11.999999) " />
						</g>
					</svg></span>
				<span><svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
						height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
						<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
							<polygon points="0 0 24 0 24 24 0 24" />
							<path
								d="M12.2928955,6.70710318 C11.9023712,6.31657888 11.9023712,5.68341391 12.2928955,5.29288961 C12.6834198,4.90236532 13.3165848,4.90236532 13.7071091,5.29288961 L19.7071091,11.2928896 C20.085688,11.6714686 20.0989336,12.281055 19.7371564,12.675721 L14.2371564,18.675721 C13.863964,19.08284 13.2313966,19.1103429 12.8242777,18.7371505 C12.4171587,18.3639581 12.3896557,17.7313908 12.7628481,17.3242718 L17.6158645,12.0300721 L12.2928955,6.70710318 Z"
								fill="#000000" fill-rule="nonzero" />
							<path
								d="M3.70710678,15.7071068 C3.31658249,16.0976311 2.68341751,16.0976311 2.29289322,15.7071068 C1.90236893,15.3165825 1.90236893,14.6834175 2.29289322,14.2928932 L8.29289322,8.29289322 C8.67147216,7.91431428 9.28105859,7.90106866 9.67572463,8.26284586 L15.6757246,13.7628459 C16.0828436,14.1360383 16.1103465,14.7686056 15.7371541,15.1757246 C15.3639617,15.5828436 14.7313944,15.6103465 14.3242754,15.2371541 L9.03007575,10.3841378 L3.70710678,15.7071068 Z"
								fill="#000000" fill-rule="nonzero" opacity="0.3"
								transform="translate(9.000003, 11.999999) rotate(-270.000000) translate(-9.000003, -11.999999) " />
						</g>
					</svg></span>
			</button>

			<!--
			<button class="kt-aside__brand-aside-toggler kt-aside__brand-aside-toggler--left" id="kt_aside_toggler"><span></span></button>
			-->
		</div>
	</div>

	<!-- end:: Aside -->

	<!-- begin:: Aside Menu -->
	<div class="kt-aside-menu-wrapper kt-grid__item kt-grid__item--fluid" id="kt_aside_menu_wrapper">
		<div id="kt_aside_menu" class="kt-aside-menu " data-ktmenu-vertical="1" data-ktmenu-scroll="1"
			data-ktmenu-dropdown-timeout="500">
			<ul class="kt-menu__nav ">
				<li class="kt-menu__item d-none" aria-haspopup="true">
					<a routerLink="dashboard" class="kt-menu__link ">
						<span class="kt-menu__link-icon">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"
								width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
								<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
									<polygon points="0 0 24 0 24 24 0 24" />
									<path
										d="M12.9336061,16.072447 L19.36,10.9564761 L19.5181585,10.8312381 C20.1676248,10.3169571 20.2772143,9.3735535 19.7629333,8.72408713 C19.6917232,8.63415859 19.6104327,8.55269514 19.5206557,8.48129411 L12.9336854,3.24257445 C12.3871201,2.80788259 11.6128799,2.80788259 11.0663146,3.24257445 L4.47482784,8.48488609 C3.82645598,9.00054628 3.71887192,9.94418071 4.23453211,10.5925526 C4.30500305,10.6811601 4.38527899,10.7615046 4.47382636,10.8320511 L4.63,10.9564761 L11.0659024,16.0730648 C11.6126744,16.5077525 12.3871218,16.5074963 12.9336061,16.072447 Z"
										fill="#000000" fill-rule="nonzero" />
									<path
										d="M11.0563554,18.6706981 L5.33593024,14.122919 C4.94553994,13.8125559 4.37746707,13.8774308 4.06710397,14.2678211 C4.06471678,14.2708238 4.06234874,14.2738418 4.06,14.2768747 L4.06,14.2768747 C3.75257288,14.6738539 3.82516916,15.244888 4.22214834,15.5523151 C4.22358765,15.5534297 4.2250303,15.55454 4.22647627,15.555646 L11.0872776,20.8031356 C11.6250734,21.2144692 12.371757,21.2145375 12.909628,20.8033023 L19.7677785,15.559828 C20.1693192,15.2528257 20.2459576,14.6784381 19.9389553,14.2768974 C19.9376429,14.2751809 19.9363245,14.2734691 19.935,14.2717619 L19.935,14.2717619 C19.6266937,13.8743807 19.0546209,13.8021712 18.6572397,14.1104775 C18.654352,14.112718 18.6514778,14.1149757 18.6486172,14.1172508 L12.9235044,18.6705218 C12.377022,19.1051477 11.6029199,19.1052208 11.0563554,18.6706981 Z"
										fill="#000000" opacity="0.3" />
								</g>
							</svg>
						</span>
						<span class="kt-menu__link-text">BẢNG ĐIỀU KHIỂN</span>
					</a>
				</li>
				<li class="kt-menu__section ">
					<h4 class="kt-menu__section-text">QUẢN LÝ CỬA HÀNG</h4>
					<i class="kt-menu__section-icon flaticon-more-v2"></i>
				</li>
				<li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true"
					data-ktmenu-submenu-toggle="hover">
					<a href="/products" class="kt-menu__link kt-menu__toggle">
						<span class="kt-menu__link-icon">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
								<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
									<polygon points="0 0 24 0 24 24 0 24"/>
									<rect fill="#000000" opacity="0.3" x="2" y="3" width="7" height="14" rx="1"/>
									<path d="M16.6236387,13.0538007 C18.8273383,13.8579339 20.1826034,13.7956508 21,14 C21.5844894,14.1461224 22.1049236,14.4525789 22.5613025,14.9193695 C22.8220479,15.1860635 23.0030223,15.5203564 23.0837834,15.8844876 C23.3229559,16.9628548 22.6426541,18.0309317 21.5642858,18.2700997 C20.2740329,18.5562665 18.7433451,18.7531138 16.9722222,18.8606416 C13.9910551,19.0416332 8.86226533,19.0463278 1.5858528,18.8747253 C1.26005876,18.867042 0.999953435,18.6007302 0.999953435,18.2748455 L1,18.2748455 C1,15.4124758 1,13.3451074 1,12.0727406 C5.24980707,11.6622656 8.09783699,10.5071287 9.54408978,8.60732991 C9.56481367,8.58010699 9.58782802,8.55470651 9.6128812,8.53140618 C9.85553488,8.30572983 10.2351914,8.31949268 10.4608598,8.56215378 C10.8762386,9.00878105 11.2674202,9.41538104 11.6344046,9.78195376 C11.6101853,9.81416566 11.5876475,9.84819014 11.5669873,9.8839746 L10.0669873,12.4820508 C9.79084492,12.9603434 9.95472008,13.5719338 10.4330127,13.8480762 C10.9113053,14.1242186 11.5228957,13.9603434 11.7990381,13.4820508 L13.1335582,11.1705941 C13.630492,11.5858319 14.0581948,11.8865474 14.4166667,12.0727406 C14.5381042,12.1358162 14.6576898,12.1965218 14.7754507,12.2549561 L14.0669873,13.4820508 C13.7908449,13.9603434 13.9547201,14.5719338 14.4330127,14.8480762 C14.9113053,15.1242186 15.5228957,14.9603434 15.7990381,14.4820508 L16.6236387,13.0538007 Z" fill="#000000"/>
								</g>
							</svg>
						</span>
						<span class="kt-menu__link-text">Sản Phẩm</span>
					</a>
				</li>
				<li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true"
					data-ktmenu-submenu-toggle="hover">
					<a href="/orders" class="kt-menu__link kt-menu__toggle">
						<span class="kt-menu__link-icon">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
								<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
									<rect x="0" y="0" width="24" height="24"/>
									<path d="M12,4.56204994 L7.76822128,9.6401844 C7.4146572,10.0644613 6.7840925,10.1217854 6.3598156,9.76822128 C5.9355387,9.4146572 5.87821464,8.7840925 6.23177872,8.3598156 L11.2317787,2.3598156 C11.6315738,1.88006147 12.3684262,1.88006147 12.7682213,2.3598156 L17.7682213,8.3598156 C18.1217854,8.7840925 18.0644613,9.4146572 17.6401844,9.76822128 C17.2159075,10.1217854 16.5853428,10.0644613 16.2317787,9.6401844 L12,4.56204994 Z" fill="#000000" fill-rule="nonzero" opacity="0.3"/>
									<path d="M3.28077641,9 L20.7192236,9 C21.2715083,9 21.7192236,9.44771525 21.7192236,10 C21.7192236,10.0817618 21.7091962,10.163215 21.6893661,10.2425356 L19.5680983,18.7276069 C19.234223,20.0631079 18.0342737,21 16.6576708,21 L7.34232922,21 C5.96572629,21 4.76577697,20.0631079 4.43190172,18.7276069 L2.31063391,10.2425356 C2.17668518,9.70674072 2.50244587,9.16380623 3.03824078,9.0298575 C3.11756139,9.01002735 3.1990146,9 3.28077641,9 Z M12,12 C11.4477153,12 11,12.4477153 11,13 L11,17 C11,17.5522847 11.4477153,18 12,18 C12.5522847,18 13,17.5522847 13,17 L13,13 C13,12.4477153 12.5522847,12 12,12 Z M6.96472382,12.1362967 C6.43125772,12.2792385 6.11467523,12.8275755 6.25761704,13.3610416 L7.29289322,17.2247449 C7.43583503,17.758211 7.98417199,18.0747935 8.51763809,17.9318517 C9.05110419,17.7889098 9.36768668,17.2405729 9.22474487,16.7071068 L8.18946869,12.8434035 C8.04652688,12.3099374 7.49818992,11.9933549 6.96472382,12.1362967 Z M17.0352762,12.1362967 C16.5018101,11.9933549 15.9534731,12.3099374 15.8105313,12.8434035 L14.7752551,16.7071068 C14.6323133,17.2405729 14.9488958,17.7889098 15.4823619,17.9318517 C16.015828,18.0747935 16.564165,17.758211 16.7071068,17.2247449 L17.742383,13.3610416 C17.8853248,12.8275755 17.5687423,12.2792385 17.0352762,12.1362967 Z" fill="#000000"/>
								</g>
							</svg>
						</span>
						<span class="kt-menu__link-text">Đơn Hàng</span>
					</a>
				</li>
				
				
				<li class="kt-menu__section ">
					<h4 class="kt-menu__section-text">HỆ THỐNG CỦA HÀNG</h4>
					<i class="kt-menu__section-icon flaticon-more-v2"></i>
				</li>
				

				<li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true"
					data-ktmenu-submenu-toggle="hover">
					<a href="/index" target="_blank" class="kt-menu__link kt-menu__toggle">
						<span class="kt-menu__link-icon">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
								<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
									<rect x="0" y="0" width="24" height="24"/>
									<path d="M18.1446364,11.84388 L17.4471627,16.0287218 C17.4463569,16.0335568 17.4455155,16.0383857 17.4446387,16.0432083 C17.345843,16.5865846 16.8252597,16.9469884 16.2818833,16.8481927 L4.91303792,14.7811299 C4.53842737,14.7130189 4.23500006,14.4380834 4.13039941,14.0719812 L2.30560137,7.68518803 C2.28007524,7.59584656 2.26712532,7.50338343 2.26712532,7.4104669 C2.26712532,6.85818215 2.71484057,6.4104669 3.26712532,6.4104669 L16.9929851,6.4104669 L17.606173,3.78251876 C17.7307772,3.24850086 18.2068633,2.87071314 18.7552257,2.87071314 L20.8200821,2.87071314 C21.4717328,2.87071314 22,3.39898039 22,4.05063106 C22,4.70228173 21.4717328,5.23054898 20.8200821,5.23054898 L19.6915238,5.23054898 L18.1446364,11.84388 Z" fill="#000000"/>
									<path d="M6.5,21 C5.67157288,21 5,20.3284271 5,19.5 C5,18.6715729 5.67157288,18 6.5,18 C7.32842712,18 8,18.6715729 8,19.5 C8,20.3284271 7.32842712,21 6.5,21 Z M15.5,21 C14.6715729,21 14,20.3284271 14,19.5 C14,18.6715729 14.6715729,18 15.5,18 C16.3284271,18 17,18.6715729 17,19.5 C17,20.3284271 16.3284271,21 15.5,21 Z" fill="#000000" opacity="0.9"/>
								</g>
							</svg>
						</span>
						<span class="kt-menu__link-text">Web Cửa Hàng <i class="fa fa-share" style="margin: -2px 0px 0px 6px; font-size: 11px; opacity: 0.8;"></i></span>
					</a>
				</li>

				<li class="kt-menu__item  kt-menu__item--submenu" aria-haspopup="true"
					data-ktmenu-submenu-toggle="hover">
					<a href="javascript:;" class="kt-menu__link kt-menu__toggle">
						<span class="kt-menu__link-icon">
							<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
								<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
									<rect x="0" y="0" width="24" height="24"/>
									<path d="M12.6572352,10 L12.6572352,5.67013288 C12.6572352,5.25591932 12.3214488,4.92013288 11.9072352,4.92013288 C11.7235496,4.92013288 11.5462507,4.98754181 11.4089624,5.10957589 L4.25173515,11.4715556 C3.94214808,11.7467441 3.91426253,12.2207984 4.18945104,12.5303855 C4.19921056,12.541365 4.20929054,12.5520553 4.21967795,12.5624427 L11.3769052,19.7196699 C11.6697984,20.0125631 12.1446721,20.0125631 12.4375653,19.7196699 C12.5782176,19.5790176 12.6572352,19.3882522 12.6572352,19.1893398 L12.6572352,15 C14.0044226,14.9188289 16.8348635,14.9157978 21.1485581,14.9909069 L21.1485586,14.9908794 C21.424644,14.9956866 21.6523523,14.7757721 21.6571595,14.4996868 C21.65721,14.4967857 21.6572352,14.4938842 21.6572352,14.4909827 L21.6572888,10.5050185 C21.6572888,10.2288465 21.4334072,10.0049649 21.1572352,10.0049649 C21.1556184,10.0049649 21.1540016,10.0049728 21.1523849,10.0049884 C16.0216074,10.0547574 13.1898909,10.0530946 12.6572352,10 Z" fill="#000000" fill-rule="nonzero"/>
								</g>
							</svg>
						</span>
						<span class="kt-menu__link-text">Đăng Xuất</span>
					</a>
				</li>
			</ul>
		</div>
	</div>

	<!-- end:: Aside Menu -->
</div>

<div class="kt-grid__item kt-grid__item--fluid kt-grid kt-grid--hor kt-wrapper" id="kt_wrapper">
<div th:fragment="header" id="kt_header" class="kt-header kt-grid__item  kt-header--fixed ">

	<!-- begin:: Header Menu -->

	<!-- Uncomment this to display the close button of the panel
<button class="kt-header-menu-wrapper-close" id="kt_header_menu_mobile_close_btn"><i class="la la-close"></i></button>
-->
	<div class="kt-header-menu-wrapper" id="kt_header_menu_wrapper">
		<div id="kt_header_menu" class="kt-header-menu kt-header-menu-mobile  kt-header-menu--layout-default ">
			<ul class="kt-menu__nav ">



			</ul>
		</div>
	</div>

	<!-- end:: Header Menu -->

	<!-- begin:: Header Topbar -->
	<div class="kt-header__topbar">

		<!--begin: Search -->

		<!--begin: Search -->
		<div class="kt-header__topbar-item kt-header__topbar-item--search dropdown" id="kt_quick_search_toggle">
			<div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="10px,0px">
				<span class="kt-header__topbar-icon">
					<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px"
						height="24px" viewBox="0 0 24 24" version="1.1" class="kt-svg-icon">
						<g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
							<rect x="0" y="0" width="24" height="24" />
							<path
								d="M14.2928932,16.7071068 C13.9023689,16.3165825 13.9023689,15.6834175 14.2928932,15.2928932 C14.6834175,14.9023689 15.3165825,14.9023689 15.7071068,15.2928932 L19.7071068,19.2928932 C20.0976311,19.6834175 20.0976311,20.3165825 19.7071068,20.7071068 C19.3165825,21.0976311 18.6834175,21.0976311 18.2928932,20.7071068 L14.2928932,16.7071068 Z"
								fill="#000000" fill-rule="nonzero" opacity="0.3" />
							<path
								d="M11,16 C13.7614237,16 16,13.7614237 16,11 C16,8.23857625 13.7614237,6 11,6 C8.23857625,6 6,8.23857625 6,11 C6,13.7614237 8.23857625,16 11,16 Z M11,18 C7.13400675,18 4,14.8659932 4,11 C4,7.13400675 7.13400675,4 11,4 C14.8659932,4 18,7.13400675 18,11 C18,14.8659932 14.8659932,18 11,18 Z"
								fill="#000000" fill-rule="nonzero" />
						</g>
					</svg> </span>
			</div>
			<div class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-lg">
				<div class="kt-quick-search kt-quick-search--dropdown kt-quick-search--result-compact"
					id="kt_quick_search_dropdown">
					<form method="get" class="kt-quick-search__form">
						<div class="input-group">
							<div class="input-group-prepend"><span class="input-group-text"><i
										class="flaticon2-search-1"></i></span></div>
							<input type="text" class="form-control kt-quick-search__input" placeholder="Tìm kiếm">
							<div class="input-group-append"><span class="input-group-text"><i
										class="la la-close kt-quick-search__close"></i></span></div>
						</div>
					</form>
					<div class="kt-quick-search__wrapper kt-scroll" data-scroll="true" data-height="325"
						data-mobile-height="200">
					</div>
				</div>
			</div>
		</div>




		<!--begin: Language bar -->
		<div class="kt-header__topbar-item kt-header__topbar-item--langs">
			<div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="10px,0px">
				<span class="kt-header__topbar-icon">
					<img class="" src="assets/media/flags/220-vietnam.svg" alt="" />
				</span>
			</div>
		</div>

		<!--end: Language bar -->

		<!--begin: User Bar -->
		<div class="kt-header__topbar-item kt-header__topbar-item--user">
			<div class="kt-header__topbar-wrapper" data-toggle="dropdown" data-offset="0px,0px">
				<div class="kt-header__topbar-user">

					
				</div>
			</div>
			<div
				class="dropdown-menu dropdown-menu-fit dropdown-menu-right dropdown-menu-anim dropdown-menu-top-unround dropdown-menu-xl">



				<!--begin: Navigation -->
				<div class="kt-notification">
					<a href="custom/apps/user/profile-1/personal-information.html" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-calendar-3 kt-font-success"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title kt-font-bold">
								Thông tin tài khoản
							</div>
						</div>
					</a>
					<a href="custom/apps/user/profile-2.html" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-rocket-1 kt-font-danger"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title kt-font-bold">
								Quản lý sản phẩm
							</div>
						</div>
					</a>
					<a href="custom/apps/user/profile-3.html" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-hourglass kt-font-brand"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title kt-font-bold">
								Quản lý đơn hàng
							</div>
						</div>
					</a>
					<a href="custom/apps/user/profile-1/overview.html" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-cardiogram kt-font-warning"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title kt-font-bold">
								Quản lý thương hiệu
							</div>

						</div>
					</a>
					<div class="kt-notification__custom kt-space-between">
						<a href="custom/user/login-v2.html" target="_blank"
							class="btn btn-label btn-label-brand btn-sm btn-bold">Đăng Xuất</a>
					</div>
				</div>

				<!--end: Navigation -->
			</div>
		</div>

		<!--end: User Bar -->
	</div>

	<!-- end:: Header Topbar -->
</div>

<!-- Sub Header -->
<div th:fragment="sub_header" class="kt-subheader  kt-grid__item" id="kt_subheader">
	<div class="kt-container  kt-container--fluid ">
		<div class="kt-subheader__main">
			<h3 class="kt-subheader__title">Bảng Điều Khiển</h3>
			<span class="kt-subheader__separator kt-subheader__separator--v"></span>
			<span class="kt-subheader__desc"></span> <!-- Sub title -->
		</div>
		<div class="kt-subheader__toolbar">
			<div class="kt-subheader__wrapper">
				<a href="#" class="btn kt-subheader__btn-daterange" id="kt_dashboard_daterangepicker"
					data-toggle="kt-tooltip" title="Select dashboard daterange" data-placement="left">
					<span class="kt-subheader__btn-daterange-title"
						id="kt_dashboard_daterangepicker_title">Hôm nay</span>&nbsp;
					<span class="kt-subheader__btn-daterange-date" id="kt_dashboard_daterangepicker_date">Aug 16</span>
					<i class="flaticon2-calendar-1"></i>
				</a>

			</div>
		</div>
	</div>
</div>

<!-- begin :: Content -->
<th:block th:fragment="content">
	<div class="kt-portlet kt-portlet--mobile">
		<div class="kt-portlet__head kt-portlet__head--lg">
			<div class="kt-portlet__head-label">
				<span class="kt-portlet__head-icon">
					<i class="kt-font-brand flaticon2-line-chart"></i>
				</span>
				<h3 class="kt-portlet__head-title">
					Danh Sách Sản Phẩm
				</h3>
			</div>
			<div class="kt-portlet__head-toolbar">
				<div class="kt-portlet__head-wrapper">
					<a href="#" class="btn btn-clean btn-icon-sm">
						<i class="la la-long-arrow-left"></i>
						Quay Lại
					</a>
					&nbsp;
					<div class="dropdown dropdown-inline">
						<button type="button" style="width: 80px" class="btn btn-success" data-bs-toggle="modal"
                            data-bs-target="#exampleModalAdd">
                      Add product
                    </button>
					</div>
				</div>
			</div>
		</div>
		<!-- Modal Add-->
            <div class="modal fade" id="exampleModalAdd" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabelll">Add</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <form method="post" action="${pageContext.request.contextPath}/admin/addProduct"  enctype="multipart/form-data">
                      <div class="row">
                        <div class="col-6">
                          <label for="addname"
                                 class="col-form-label">Name:</label>
                          <input type="text" class="form-control"
                                 id="addname" name="name" required>
                        </div>
                        <div class="col-6">
                          <label for="addcost"
                                 class="col-form-label">Image: </label>
                          <input type="file" class="form-control"
                                 id="addcost" name="img" required>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6">
                          <label for="addname"
                                 class="col-form-label">Description: </label>
                          <input type="text" class="form-control"
                                 id="addname" name="description" required>
                        </div>
                        <div class="col-6">
                          <label for="addcost"
                                 class="col-form-label">Price: </label>
                          <input type="number" class="form-control"
                                 id="addcost" name="price" required>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6">
                          <label for="addname"
                                 class="col-form-label">Brand: </label>
                          <select class="form-control" name="brand" aria-label="Default select example" required>
			                    <c:forEach var="brand" items="${listBrand}">   
			                         <option value="${brand.id}">${brand.name}</option>
			                    </c:forEach>
			              </select>
                        </div>
                        <div class="col-6">
                          <label for="ct_id" class="col-form-label">Status:</label>
                          <select class="form-control" id="ct_id" name="status" required>
                            <option value="Đang bán" selected>Đang bán</option>
                            <option value="Ngưng bán" >Ngưng bán</option>
                          </select>
                        </div>
                      </div>
                      <div class="row">
                      	<div class="col-6">
                          <label for="addname"
                                 class="col-form-label">Category: </label>
                          <select class="form-control" name="category" aria-label="Default select example" required>
			                    <c:forEach var="category" items="${listCategory}">   
			                         <option value="${category.id}">${category.name}</option>
			                    </c:forEach>
			              </select>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Add </button>
                      </div>
                    </form>
                  </div>

                </div>
              </div>
            </div>
            <!-- Modal Add-->
		<div class="kt-portlet__body">
					<form method="post" action="${pageContext.request.contextPath}/admin/searchProduct">
					<div class="row">
						<div class="col-6">
                          <label for="addname"
                                 class="col-form-label">Name:</label>
                          <input type="text" class="form-control"
                                 id="addname" name="value" required>
                        </div>
						<div class="col-6">
                          <label for="addname"
                                 class="col-form-label">Search column: </label>
                          <select class="form-control" name="name" aria-label="Default select example" required>
			                         	<option value="name">Name</option>
				                    	<option value="versionName">Version Name</option>
				                    	<option value="price">Price</option>
				                    	<option value="status">Status</option>
			              </select>
                        </div>
                        <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">Search </button>
                      </div>
                      </div>
                      </form>
		
		</div>
		<div class="kt-portlet__body kt-portlet__body--fit">

			<!--begin: Datatable -->
			
					<div class="table-responsive">
			<table id="datatablesSimple" >
				<thead>
					<tr >
						<th>Số thứ tự</th>
						<th>Tên sản phẩm</th>
						<th >Phiên bản</th>
						<th >Giá bán</th>
						<th >Trạng thái</th>
						<th>Hành động</th>
					</tr>
				</thead>
				<tbody>
				<c:set var="num" value="0"/>
				<c:forEach var="product" items="${list}">
				<c:set var="num" value="${num+1}"/>
					<tr>
						<td>${num}</td>
						<td>${product.name}</td>
						<td>${product.versionName}</td>
						<td>${product.price} VND</td>
						<td>${product.status}</td>
						<td style="width : 330px">
							<button type="button" style="width: 80px" class="btn btn-primary" data-bs-toggle="modal"
	                            data-bs-target="#updateModal${product.id}">
		                      Update
		                    </button>
		                    <button type="button" style="width: 80px" class="btn btn-primary" data-bs-toggle="modal"
	                            data-bs-target="#deleteModal${product.id}">
		                      Delete
		                    </button>
		                    <button type="button" style="width: 80px" class="btn btn-primary" data-bs-toggle="modal"
	                            data-bs-target="#statusModal${product.id}">
		                      Change status
		                    </button>
		                    <div class="modal fade" id="deleteModal${product.id}" tabindex="-1"
		                         aria-labelledby="exampleModalLabel" aria-hidden="true">
		                      <div class="modal-dialog">
		                        <div class="modal-content">
		                          <div class="modal-header">
		                            <h5 class="modal-title" id="exampleModalLabel">Confirm to delete ?</h5>
		                            <button type="button" class="btn-close" data-bs-dismiss="modal"
		                                    aria-label="Close"></button>
		                          </div>
		                          <div class="modal-body">
		                            Product : <span>${product.name}</span>
		                            <form action="${pageContext.request.contextPath}/admin/deleteProduct" method="post">
		                              <input type="hidden" class="form-control" id="id" name="id" value="${product.id}">
		                              <div class="modal-footer" style="margin-top: 20px">
		                                <button type="button" class="btn btn-secondary"
		                                        data-bs-dismiss="modal">
		                                  Close
		                                </button>
		                                <button type="submit" class="btn btn-danger">Delete</button>
		
		                              </div>
		                            </form>
		                          </div>
		
		                        </div>
		                      </div>
		                    </div>
		                    
		                    <div class="modal fade" id="statusModal${product.id}" tabindex="-1"
		                         aria-labelledby="exampleModalLabel" aria-hidden="true">
		                      <div class="modal-dialog">
		                        <div class="modal-content">
		                          <div class="modal-header">
		                            <h5 class="modal-title" id="exampleModalLabel">Confirm to status change ?</h5>
		                            <button type="button" class="btn-close" data-bs-dismiss="modal"
		                                    aria-label="Close"></button>
		                          </div>
		                          <div class="modal-body">
		                            Product : <span>${product.name}</span>
		                            <form action="${pageContext.request.contextPath}/admin/statusProduct" method="post">
		                              <input type="hidden" class="form-control" id="id" name="id" value="${product.id}">
		                              <div class="modal-footer" style="margin-top: 20px">
		                                <button type="button" class="btn btn-secondary"
		                                        data-bs-dismiss="modal">
		                                  Close
		                                </button>
		                                <button type="submit" class="btn btn-danger">Change Status</button>
		
		                              </div>
		                            </form>
		                          </div>
		
		                        </div>
		                      </div>
		                    </div>
		                    
		                    <!-- Modal Update-->
            <div class="modal fade" id="updateModal${product.id}" tabindex="-1" aria-labelledby="exampleModalLabel"
                 aria-hidden="true">
              <div class="modal-dialog modal-lg">
                <div class="modal-content">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabelll">Add</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                            aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    <form method="post" action="${pageContext.request.contextPath}/admin/updateProduct"  enctype="multipart/form-data">
                    	<input type="hidden" class="form-control" id="id" name="id" value="${product.id}">
                      <div class="row">
                        <div class="col-6">
                          <label for="addname"
                                 class="col-form-label">Name:</label>
                          <input type="text" class="form-control"
                                 id="addname" name="name" value="${product.name}" required>
                        </div>
                        <div class="col-6">
                          <label for="addcost"
                                 class="col-form-label">Image: </label>
                          <input type="file" class="form-control"
                                 id="addcost" name="img" value="${product.image}" required>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6">
                          <label for="addname"
                                 class="col-form-label">Description: </label>
                          <input type="text" class="form-control"
                                 id="addname" name="description" value="${product.description}" required>
                        </div>
                        <div class="col-6">
                          <label for="addcost"
                                 class="col-form-label">Price: </label>
                          <input type="number" class="form-control"
                                 id="addcost" name="price" value="${product.price}" required>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-6">
                          <label for="addname"
                                 class="col-form-label">Brand: </label>
                          <select class="form-control" name="brand" aria-label="Default select example" required>
                          		<option value="${product.brand.id}">${product.brand.name}</option>
			                    <c:forEach var="brand" items="${listBrand}">
			                    <c:if test="${brand.id != product.brand.id}">  
			                         <option value="${brand.id}">${brand.name}</option>
			                    </c:if> 
			                    </c:forEach>
			              </select>
                        </div>
                        <div class="col-6">
                        	<c:set var="a" value="Đang bán"/>
							<c:set var="b" value="Ngưng bán"/>
                          <label for="ct_id" class="col-form-label">Status:</label>
                          <select class="form-control" id="ct_id" name="status" required>
                          	<option value="${product.status }" selected>${product.status }</option>
                          	<c:if test="${!(product.status eq a)}">       
			                	<option value="Đang bán">Đang bán</option>
			                </c:if>
			                <c:if test="${!(product.status eq b)}">       
			                	<option value="Ngưng bán">Ngưng bán</option>
			                </c:if>
                          </select>
                        </div>
                      </div>
                      <div class="row">
                      	<div class="col-6">
                          <label for="addname"
                                 class="col-form-label">Category: </label>
                          <select class="form-control" name="category" aria-label="Default select example" required>
			                    <option value="${product.category.id}">${product.category.name}</option>
			                    <c:forEach var="category" items="${listCategory}">
			                    <c:if test="${category.id != product.category.id}">   
			                         <option value="${category.id}">${category.name}</option>
			                    </c:if> 
			                    </c:forEach>
			              </select>
                        </div>
                      </div>
                      <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        <button type="submit" class="btn btn-primary">Add </button>
                      </div>
                    </form>
                  </div>

                </div>
              </div>
            </div>
            <!-- Modal Update-->
                    	</td>
					
                    </tr>
				</c:forEach>
				</tbody>
			</table>
		</div>
		
			<!--end: Datatable -->
			
			<div class="modal fade" id="idModelMail" tabindex="-1"
                         aria-labelledby="exampleModalLabel" aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Send to: <span th:text="${user.email}"></span></h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal"
                                    aria-label="Close"></button>
                          </div>
                          <div class="modal-body">
                            <form th:action="@{/ql-user/send-mail}" method="post">
                              <input type="hidden" class="form-control" id="id" name="idUser" th:value="${user.id}">
                              <label for="addname"
                                     class="col-form-label">Content: </label>
                              <textarea rows="10"  class="form-control"
                                        id="addname" name="note" ></textarea>
                              <div class="modal-footer" style="margin-top: 20px">
                                <button type="button" class="btn btn-secondary"
                                        data-bs-dismiss="modal">
                                  Close
                                </button>
                                <button type="submit" class="btn btn-success">Send</button>

                              </div>
                            </form>

                          </div>

                        </div>
                      </div>
                    </div>
                    
		</div>
	</div>
</th:block>
<!-- end :: Content -->

<!--begin :: Page Script (used by this page) -->

	<script src="${pageContext.request.contextPath}/assets/js/template/products.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/js/pages/crud/metronic-datatable/base/data-ajax.js" type="text/javascript"></script>

<!--end :: Page Script -->


</div>
</div>
</div>

<!-- begin::Quick Panel -->
<div th:fragment="quick_panel" id="kt_quick_panel" class="kt-quick-panel">
	<a href="#" class="kt-quick-panel__close" id="kt_quick_panel_close_btn"><i class="flaticon2-delete"></i></a>
	<div class="kt-quick-panel__nav">
		<ul class="nav nav-tabs nav-tabs-line nav-tabs-bold nav-tabs-line-3x nav-tabs-line-brand  kt-notification-item-padding-x"
			role="tablist">
			<li class="nav-item active">
				<a class="nav-link active" data-toggle="tab" href="#kt_quick_panel_tab_notifications"
					role="tab">Notifications</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#kt_quick_panel_tab_logs" role="tab">Audit Logs</a>
			</li>
			<li class="nav-item">
				<a class="nav-link" data-toggle="tab" href="#kt_quick_panel_tab_settings" role="tab">Settings</a>
			</li>
		</ul>
	</div>
	<div class="kt-quick-panel__content">
		<div class="tab-content">
			<div class="tab-pane fade show kt-scroll active" id="kt_quick_panel_tab_notifications" role="tabpanel">
				<div class="kt-notification">
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-line-chart kt-font-success"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								New order has been received
							</div>
							<div class="kt-notification__item-time">
								2 hrs ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-box-1 kt-font-brand"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								New customer is registered
							</div>
							<div class="kt-notification__item-time">
								3 hrs ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-chart2 kt-font-danger"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								Application has been approved
							</div>
							<div class="kt-notification__item-time">
								3 hrs ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-image-file kt-font-warning"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								New file has been uploaded
							</div>
							<div class="kt-notification__item-time">
								5 hrs ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-drop kt-font-info"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								New user feedback received
							</div>
							<div class="kt-notification__item-time">
								8 hrs ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-pie-chart-2 kt-font-success"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								System reboot has been successfully completed
							</div>
							<div class="kt-notification__item-time">
								12 hrs ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-favourite kt-font-danger"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								New order has been placed
							</div>
							<div class="kt-notification__item-time">
								15 hrs ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item kt-notification__item--read">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-safe kt-font-primary"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								Company meeting canceled
							</div>
							<div class="kt-notification__item-time">
								19 hrs ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-psd kt-font-success"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								New report has been received
							</div>
							<div class="kt-notification__item-time">
								23 hrs ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon-download-1 kt-font-danger"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								Finance report has been generated
							</div>
							<div class="kt-notification__item-time">
								25 hrs ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon-security kt-font-warning"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								New customer comment recieved
							</div>
							<div class="kt-notification__item-time">
								2 days ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification__item">
						<div class="kt-notification__item-icon">
							<i class="flaticon2-pie-chart kt-font-warning"></i>
						</div>
						<div class="kt-notification__item-details">
							<div class="kt-notification__item-title">
								New customer is registered
							</div>
							<div class="kt-notification__item-time">
								3 days ago
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="tab-pane fade kt-scroll" id="kt_quick_panel_tab_logs" role="tabpanel">
				<div class="kt-notification-v2">
					<a href="#" class="kt-notification-v2__item">
						<div class="kt-notification-v2__item-icon">
							<i class="flaticon-bell kt-font-brand"></i>
						</div>
						<div class="kt-notification-v2__itek-wrapper">
							<div class="kt-notification-v2__item-title">
								5 new user generated report
							</div>
							<div class="kt-notification-v2__item-desc">
								Reports based on sales
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification-v2__item">
						<div class="kt-notification-v2__item-icon">
							<i class="flaticon2-box kt-font-danger"></i>
						</div>
						<div class="kt-notification-v2__itek-wrapper">
							<div class="kt-notification-v2__item-title">
								2 new items submited
							</div>
							<div class="kt-notification-v2__item-desc">
								by Grog John
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification-v2__item">
						<div class="kt-notification-v2__item-icon">
							<i class="flaticon-psd kt-font-brand"></i>
						</div>
						<div class="kt-notification-v2__itek-wrapper">
							<div class="kt-notification-v2__item-title">
								79 PSD files generated
							</div>
							<div class="kt-notification-v2__item-desc">
								Reports based on sales
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification-v2__item">
						<div class="kt-notification-v2__item-icon">
							<i class="flaticon2-supermarket kt-font-warning"></i>
						</div>
						<div class="kt-notification-v2__itek-wrapper">
							<div class="kt-notification-v2__item-title">
								$2900 worth producucts sold
							</div>
							<div class="kt-notification-v2__item-desc">
								Total 234 items
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification-v2__item">
						<div class="kt-notification-v2__item-icon">
							<i class="flaticon-paper-plane-1 kt-font-success"></i>
						</div>
						<div class="kt-notification-v2__itek-wrapper">
							<div class="kt-notification-v2__item-title">
								4.5h-avarage response time
							</div>
							<div class="kt-notification-v2__item-desc">
								Fostest is Barry
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification-v2__item">
						<div class="kt-notification-v2__item-icon">
							<i class="flaticon2-information kt-font-danger"></i>
						</div>
						<div class="kt-notification-v2__itek-wrapper">
							<div class="kt-notification-v2__item-title">
								Database server is down
							</div>
							<div class="kt-notification-v2__item-desc">
								10 mins ago
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification-v2__item">
						<div class="kt-notification-v2__item-icon">
							<i class="flaticon2-mail-1 kt-font-brand"></i>
						</div>
						<div class="kt-notification-v2__itek-wrapper">
							<div class="kt-notification-v2__item-title">
								System report has been generated
							</div>
							<div class="kt-notification-v2__item-desc">
								Fostest is Barry
							</div>
						</div>
					</a>
					<a href="#" class="kt-notification-v2__item">
						<div class="kt-notification-v2__item-icon">
							<i class="flaticon2-hangouts-logo kt-font-warning"></i>
						</div>
						<div class="kt-notification-v2__itek-wrapper">
							<div class="kt-notification-v2__item-title">
								4.5h-avarage response time
							</div>
							<div class="kt-notification-v2__item-desc">
								Fostest is Barry
							</div>
						</div>
					</a>
				</div>
			</div>
			<div class="tab-pane kt-quick-panel__content-padding-x fade kt-scroll" id="kt_quick_panel_tab_settings"
				role="tabpanel">
				<form class="kt-form">
					<div class="kt-heading kt-heading--sm kt-heading--space-sm">Customer Care</div>
					<div class="form-group form-group-xs row">
						<label class="col-8 col-form-label">Enable Notifications:</label>
						<div class="col-4 kt-align-right">
							<span class="kt-switch kt-switch--success kt-switch--sm">
								<label>
									<input type="checkbox" checked="checked" name="quick_panel_notifications_1">
									<span></span>
								</label>
							</span>
						</div>
					</div>
					<div class="form-group form-group-xs row">
						<label class="col-8 col-form-label">Enable Case Tracking:</label>
						<div class="col-4 kt-align-right">
							<span class="kt-switch kt-switch--success kt-switch--sm">
								<label>
									<input type="checkbox" name="quick_panel_notifications_2">
									<span></span>
								</label>
							</span>
						</div>
					</div>
					<div class="form-group form-group-last form-group-xs row">
						<label class="col-8 col-form-label">Support Portal:</label>
						<div class="col-4 kt-align-right">
							<span class="kt-switch kt-switch--success kt-switch--sm">
								<label>
									<input type="checkbox" checked="checked" name="quick_panel_notifications_2">
									<span></span>
								</label>
							</span>
						</div>
					</div>
					<div class="kt-separator kt-separator--space-md kt-separator--border-dashed"></div>
					<div class="kt-heading kt-heading--sm kt-heading--space-sm">Reports</div>
					<div class="form-group form-group-xs row">
						<label class="col-8 col-form-label">Generate Reports:</label>
						<div class="col-4 kt-align-right">
							<span class="kt-switch kt-switch--sm kt-switch--danger">
								<label>
									<input type="checkbox" checked="checked" name="quick_panel_notifications_3">
									<span></span>
								</label>
							</span>
						</div>
					</div>
					<div class="form-group form-group-xs row">
						<label class="col-8 col-form-label">Enable Report Export:</label>
						<div class="col-4 kt-align-right">
							<span class="kt-switch kt-switch--sm kt-switch--danger">
								<label>
									<input type="checkbox" name="quick_panel_notifications_3">
									<span></span>
								</label>
							</span>
						</div>
					</div>
					<div class="form-group form-group-last form-group-xs row">
						<label class="col-8 col-form-label">Allow Data Collection:</label>
						<div class="col-4 kt-align-right">
							<span class="kt-switch kt-switch--sm kt-switch--danger">
								<label>
									<input type="checkbox" checked="checked" name="quick_panel_notifications_4">
									<span></span>
								</label>
							</span>
						</div>
					</div>
					<div class="kt-separator kt-separator--space-md kt-separator--border-dashed"></div>
					<div class="kt-heading kt-heading--sm kt-heading--space-sm">Memebers</div>
					<div class="form-group form-group-xs row">
						<label class="col-8 col-form-label">Enable Member singup:</label>
						<div class="col-4 kt-align-right">
							<span class="kt-switch kt-switch--sm kt-switch--brand">
								<label>
									<input type="checkbox" checked="checked" name="quick_panel_notifications_5">
									<span></span>
								</label>
							</span>
						</div>
					</div>
					<div class="form-group form-group-xs row">
						<label class="col-8 col-form-label">Allow User Feedbacks:</label>
						<div class="col-4 kt-align-right">
							<span class="kt-switch kt-switch--sm kt-switch--brand">
								<label>
									<input type="checkbox" name="quick_panel_notifications_5">
									<span></span>
								</label>
							</span>
						</div>
					</div>
					<div class="form-group form-group-last form-group-xs row">
						<label class="col-8 col-form-label">Enable Customer Portal:</label>
						<div class="col-4 kt-align-right">
							<span class="kt-switch kt-switch--sm kt-switch--brand">
								<label>
									<input type="checkbox" checked="checked" name="quick_panel_notifications_6">
									<span></span>
								</label>
							</span>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<!-- end::Quick Panel -->

		<!-- begin::Scrolltop -->
		<div id="kt_scrolltop" class="kt-scrolltop">
			<i class="fa fa-arrow-up"></i>
		</div>

		<!-- end::Scrolltop -->
		
		
		<!-- begin :: Glogbal Script -->
<th:block th:fragment="global_script">

	<!-- begin::Global Config(global config for global JS sciprts) -->
	<script type="text/javascript">
		var KTAppOptions = {
			"colors": {
				"state": {
					"brand": "#5d78ff",
					"dark": "#282a3c",
					"light": "#ffffff",
					"primary": "#5867dd",
					"success": "#34bfa3",
					"info": "#36a3f7",
					"warning": "#ffb822",
					"danger": "#fd3995"
				},
				"base": {
					"label": [
						"#c5cbe3",
						"#a1a8c3",
						"#3d4465",
						"#3e4466"
					],
					"shape": [
						"#f0f3ff",
						"#d9dffa",
						"#afb4d4",
						"#646c9a"
					]
				}
			}
		};
	</script>
	<!-- end::Global Config -->

	<script src="${pageContext.request.contextPath}/assets/js/template/base.js" type="text/javascript"></script>

	<!--begin::Global Theme Bundle(used by all pages) -->
	<script src="${pageContext.request.contextPath}/assets/plugins/global/plugins.bundle.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/assets/js/scripts.bundle.js" type="text/javascript"></script>

	<!--end::Global Theme Bundle -->

	<!--begin::Page Scripts(used by this page) -->
	<script src="${pageContext.request.contextPath}/assets/js/pages/dashboard.js" type="text/javascript"></script>

	<!--end::Page Scripts -->
</th:block>
<!-- end :: Glogbal Script -->
	<script>
		const queryString = window.location.search;
		const urlParams = new URLSearchParams(queryString);
		const success = urlParams.get("success");
		if (success) {
			alert("Đăng nhập thành công!");
		}
		
		const success1 = urlParams.get("success1");
		if (success1) {
			alert("Thêm sản phẩm thành công!");
		}
	</script>

</body>
</html>