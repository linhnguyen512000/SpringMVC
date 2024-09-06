<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="utf-8">
	<title>Product Detail</title>
	<meta name="keywords" content="Product Detail">
	<meta name="description" content="Product Detail">
	<meta name="author" content="TopShoe">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base th:replace="shopper/fragments/common :: base">

	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/toastr.min.css">
</head>
<body class="tt-page-product-single">

<!-- header -->
<!-- header -->
<header>
	<!-- tt-mobile menu -->
	<nav class="panel-menu mobile-main-menu">
		<ul>
			<li><a href="/index">TRANG CHỦ</a></li>
			<li><a th:href="@{/product-listing}">SẢN PHẨM</a></li>
			<li>
				<a href="about.html">HỖ TRỢ KHÁCH HÀNG</a>
				<ul>
					<li><a href="about.html">CHÚNG TÔI</a></li>
					<li><a href="contact.html">Contacts</a></li>
					<li><a href="services.html">Services</a></li>
					<li><a href="faq.html">FAQ</a></li>
					<li><a href="coming-soon.html">Coming Soon</a></li>
					<li><a href="page404.html">Page 404</a></li>
					<li><a href="compare.html">Compare</a></li>
					<li><a href="wishlist.html">Wishlist</a></li>
					<li>
						<a href="empty-search.html">Empty</a>
						<ul>
							<li><a href="empty-cart.html">Empty Cart</a></li>
							<li><a href="empty-search.html">Empty Search</a></li>
							<li><a href="empty-wishlist.html">Empty Wishlist</a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li>
				<a href="product-listing.html">COMING SOON</a>
				<ul>
					<li>
						<a href="product-listing.html">TOPS</a>
						<ul>
							<li><a href="product-listing.html">Blouses &amp; Shirts</a></li>
							<li><a href="product-listing.html">Dresses <span class="tt-badge tt-new">New</span></a></li>
							<li>
								<a href="product-listing.html">Tops &amp; T-shirts</a>
								<ul><li><a href="product-listing.html">Link Level 1</a></li></ul>
							</li>
							<li><a href="product-listing.html">Sleeveless Tops</a></li>
							<li><a href="product-listing.html">Sweaters</a></li>
							<li><a href="product-listing.html">Jackets</a></li>
							<li><a href="product-listing.html">Outerwear</a></li>
						</ul>
					</li>
					<li>
						<a href="product-listing.html">BOTTOMS</a>
						<ul>
							<li><a href="product-listing.html">Trousers <span class="tt-badge tt-fatured">Fatured</span></a></li>
							<li><a href="product-listing.html">Jeans</a></li>
							<li><a href="product-listing.html">Leggings</a></li>
							<li><a href="product-listing.html">Jumpsuit &amp; Shorts</a></li>
							<li><a href="product-listing.html">Skirts</a></li>
							<li><a href="product-listing.html">Tights</a></li>
						</ul>
					</li>
					<li>
						<a href="product-listing.html">ACCESSORIES</a>
						<ul>
							<li><a href="product-listing.html">Jewellery</a></li>
							<li><a href="product-listing.html">Hats</a></li>
							<li><a href="product-listing.html">Scarves &amp; Snoods</a></li>
							<li><a href="product-listing.html">Belts</a></li>
							<li><a href="product-listing.html">Bags</a></li>
							<li><a href="product-listing.html">Shoes</a></li>
							<li><a href="product-listing.html">Sunglasses <span class="tt-badge tt-sale">Sale 15%</span></a></li>
						</ul>
					</li>
					<li>
						<a href="product-listing.html">SPECIALS</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="listing-right-column.html">ABOUT</a>
				<ul>
					<li>
						<a href="listing-right-column.html">TOPS</a>
						<ul>
							<li><a href="listing-right-column.html">Blouses &amp; Shirts</a></li>
							<li><a href="listing-right-column.html">Dresses <span class="tt-badge tt-new">New</span></a></li>
							<li>
								<a href="listing-right-column.html">Tops &amp; T-shirts</a>
								<ul>
									<li><a href="listing-right-column.html">Link Level 1</a></li>
									<li>
										<a href="listing-right-column.html">Link Level 1</a>
										<ul>
											<li><a href="listing-right-column.html">Link Level 2</a></li>
											<li>
												<a href="listing-right-column.html">Link Level 2</a>
												<ul>
													<li><a href="listing-right-column.html">Link Level 3</a></li>
													<li><a href="listing-right-column.html">Link Level 3</a></li>
													<li><a href="listing-right-column.html">Link Level 3</a></li>
													<li>
														<a href="listing-right-column.html">Link Level 3</a>
														<ul>
															<li>
																<a href="listing-right-column.html">Link Level 4</a>
																<ul>
																	<li><a href="listing-right-column.html">Link Level 5</a></li>
																	<li><a href="listing-right-column.html">Link Level 5</a></li>
																	<li><a href="listing-right-column.html">Link Level 5</a></li>
																	<li><a href="listing-right-column.html">Link Level 5</a></li>
																	<li><a href="listing-right-column.html">Link Level 5</a></li>
																</ul>
															</li>
															<li><a href="listing-right-column.html">Link Level 4</a></li>
															<li><a href="listing-right-column.html">Link Level 4</a></li>
															<li><a href="listing-right-column.html">Link Level 4</a></li>
															<li><a href="listing-right-column.html">Link Level 4</a></li>
														</ul>
													</li>
													<li><a href="listing-right-column.html">Link Level 3</a></li>
												</ul>
											</li>
											<li><a href="listing-right-column.html">Link Level 2</a></li>
											<li><a href="listing-right-column.html">Link Level 2</a></li>
											<li><a href="listing-right-column.html">Link Level 2</a></li>
										</ul>
									</li>
									<li><a href="listing-right-column.html">Link Level 1</a></li>
									<li><a href="listing-right-column.html">Link Level 1</a></li>
									<li><a href="listing-right-column.html">Link Level 1</a></li>
								</ul>
							</li>
							<li><a href="listing-right-column.html">Sleeveless Tops</a></li>
							<li><a href="listing-right-column.html">Sweaters</a></li>
							<li><a href="listing-right-column.html">Jackets</a></li>
							<li><a href="listing-right-column.html">Outerwear</a></li>
						</ul>
					</li>
					<li>
						<a href="listing-right-column.html">BOTTOMS</a>
						<ul>
							<li><a href="listing-right-column.html">Trousers <span class="tt-badge tt-fatured">Fatured</span></a></li>
							<li><a href="listing-right-column.html">Jeans</a></li>
							<li><a href="listing-right-column.html">Leggings</a></li>
							<li><a href="listing-right-column.html">Jumpsuit &amp; shorts</a></li>
							<li><a href="listing-right-column.html">Skirts</a></li>
							<li><a href="listing-right-column.html">Tights</a></li>
						</ul>
					</li>
					<li>
						<a href="listing-right-column.html">ACCESSORIES</a>
						<ul>
							<li><a href="listing-right-column.html">Jewellery</a></li>
							<li><a href="listing-right-column.html">Hats</a></li>
							<li><a href="listing-right-column.html">Scarves &amp; Snoods</a></li>
							<li><a href="listing-right-column.html">Belts</a></li>
							<li><a href="listing-right-column.html">Bags</a></li>
							<li><a href="listing-right-column.html">Shoes</a></li>
							<li><a href="listing-right-column.html">Sunglasses <span class="tt-badge tt-sale">Sale 15%</span></a></li>
						</ul>
					</li>
				</ul>
			</li>
		</ul>
		<div class="mm-navbtn-names">
			<div class="mm-closebtn">Close</div>
			<div class="mm-backbtn">Back</div>
		</div>
	</nav>
	<nav class="panel-menu mobile-caterorie-menu">
		<ul>
			<li>
				<a href="product-listing.html">
					<i class="icon-women"></i>
					<span>WOMEN</span>
				</a>
				<ul>
					<li>
						<a href="product-listing.html">TOPS</a>
						<ul>
							<li><a href="product-listing.html">Blouses &amp; Shirts</a></li>
							<li><a href="product-listing.html">Dresses <span class="tt-badge tt-new">New</span></a></li>
							<li>
								<a href="product-listing.html">Tops &amp; T-shirts</a>
								<ul>
									<li><a href="product-listing.html">Link Level 1</a></li>
									<li>
										<a href="product-listing.html">Link Level 1</a>
										<ul>
											<li><a href="product-listing.html">Link Level 2</a></li>
											<li>
												<a href="product-listing.html">Link Level 2</a>
												<ul>
													<li><a href="product-listing.html">Link Level 3</a></li>
													<li><a href="product-listing.html">Link Level 3</a></li>
													<li><a href="product-listing.html">Link Level 3</a></li>
													<li>
														<a href="product-listing.html">Link Level 3</a>
														<ul>
															<li>
																<a href="product-listing.html">Link Level 4</a>
																<ul>
																	<li><a href="product-listing.html">Link Level 5</a></li>
																	<li><a href="product-listing.html">Link Level 5</a></li>
																	<li><a href="product-listing.html">Link Level 5</a></li>
																	<li><a href="product-listing.html">Link Level 5</a></li>
																	<li><a href="product-listing.html">Link Level 5</a></li>
																</ul>
															</li>
															<li><a href="product-listing.html">Link Level 4</a></li>
															<li><a href="product-listing.html">Link Level 4</a></li>
															<li><a href="product-listing.html">Link Level 4</a></li>
															<li><a href="product-listing.html">Link Level 4</a></li>
														</ul>
													</li>
													<li><a href="product-listing.html">Link Level 3</a></li>
												</ul>
											</li>
											<li><a href="product-listing.html">Link Level 2</a></li>
											<li><a href="product-listing.html">Link Level 2</a></li>
											<li><a href="product-listing.html">Link Level 2</a></li>
										</ul>
									</li>
									<li><a href="product-listing.html">Link Level 1</a></li>
									<li><a href="product-listing.html">Link Level 1</a></li>
									<li><a href="product-listing.html">Link Level 1</a></li>
								</ul>
							</li>
							<li><a href="product-listing.html">Sleeveless Tops</a></li>
							<li><a href="product-listing.html">Sweaters</a></li>
							<li><a href="product-listing.html">Jackets</a></li>
							<li><a href="product-listing.html">Outerwear</a></li>
						</ul>
					</li>
					<li>
						<a href="product-listing.html">BOTTOMS</a>
						<ul>
							<li><a href="product-listing.html">Trousers <span class="tt-badge tt-fatured">Fatured</span></a></li>
							<li><a href="product-listing.html">Jeans</a></li>
							<li><a href="product-listing.html">Leggings</a></li>
							<li><a href="product-listing.html">Jumpsuit &amp; Shorts</a></li>
							<li><a href="product-listing.html">Skirts</a></li>
							<li><a href="product-listing.html">Tights</a></li>
						</ul>
					</li>
					<li>
						<a href="product-listing.html">ACCESSORIES</a>
						<ul>
							<li><a href="product-listing.html">Jewellery</a></li>
							<li><a href="product-listing.html">Hats</a></li>
							<li><a href="product-listing.html">Scarves &amp; Snoods</a></li>
							<li><a href="product-listing.html">Belts</a></li>
							<li><a href="product-listing.html">Bags</a></li>
							<li><a href="product-listing.html">Shoes</a></li>
							<li><a href="product-listing.html">Sunglasses <span class="tt-badge tt-sale">Sale 15%</span></a></li>
						</ul>
					</li>
					<li>
						<a href="product-listing.html">SPECIALS</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="listing-right-column.html">
					<i class="icon-men"></i>
					<span>MEN</span>
				</a>
				<ul>
					<li>
						<a href="listing-right-column.html">TOPS</a>
						<ul>
							<li><a href="listing-right-column.html">Blouses &amp; Shirts</a></li>
							<li><a href="listing-right-column.html">Dresses <span class="tt-badge tt-new">New</span></a></li>
							<li>
								<a href="listing-right-column.html">Tops &amp; T-shirts</a>
								<ul>
									<li><a href="listing-right-column.html">Link Level 1</a></li>
									<li>
										<a href="listing-right-column.html">Link Level 1</a>
										<ul>
											<li><a href="listing-right-column.html">Link Level 2</a></li>
											<li>
												<a href="listing-right-column.html">Link Level 2</a>
												<ul>
													<li><a href="listing-right-column.html">Link Level 3</a></li>
													<li><a href="listing-right-column.html">Link Level 3</a></li>
													<li><a href="listing-right-column.html">Link Level 3</a></li>
													<li>
														<a href="listing-right-column.html">Link Level 3</a>
														<ul>
															<li>
																<a href="listing-right-column.html">Link Level 4</a>
																<ul>
																	<li><a href="listing-right-column.html">Link Level 5</a></li>
																	<li><a href="listing-right-column.html">Link Level 5</a></li>
																	<li><a href="listing-right-column.html">Link Level 5</a></li>
																	<li><a href="listing-right-column.html">Link Level 5</a></li>
																	<li><a href="listing-right-column.html">Link Level 5</a></li>
																</ul>
															</li>
															<li><a href="listing-right-column.html">Link Level 4</a></li>
															<li><a href="listing-right-column.html">Link Level 4</a></li>
															<li><a href="listing-right-column.html">Link Level 4</a></li>
															<li><a href="listing-right-column.html">Link Level 4</a></li>
														</ul>
													</li>
													<li><a href="listing-right-column.html">Link Level 3</a></li>
												</ul>
											</li>
											<li><a href="listing-right-column.html">Link Level 2</a></li>
											<li><a href="listing-right-column.html">Link Level 2</a></li>
											<li><a href="listing-right-column.html">Link Level 2</a></li>
										</ul>
									</li>
									<li><a href="listing-right-column.html">Link Level 1</a></li>
									<li><a href="listing-right-column.html">Link Level 1</a></li>
									<li><a href="listing-right-column.html">Link Level 1</a></li>
								</ul>
							</li>
							<li><a href="listing-right-column.html">Sleeveless Tops</a></li>
							<li><a href="listing-right-column.html">Sweaters</a></li>
							<li><a href="listing-right-column.html">Jackets</a></li>
							<li><a href="listing-right-column.html">Outerwear</a></li>
						</ul>
					</li>
					<li>
						<a href="listing-right-column.html">BOTTOMS</a>
						<ul>
							<li><a href="listing-right-column.html">Trousers <span class="tt-badge tt-fatured">Fatured</span></a></li>
							<li><a href="listing-right-column.html">Jeans</a></li>
							<li><a href="listing-right-column.html">Leggings</a></li>
							<li><a href="listing-right-column.html">Jumpsuit &amp; shorts</a></li>
							<li><a href="listing-right-column.html">Skirts</a></li>
							<li><a href="listing-right-column.html">Tights</a></li>
						</ul>
					</li>
					<li>
						<a href="listing-right-column.html">ACCESSORIES</a>
						<ul>
							<li><a href="listing-right-column.html">Jewellery</a></li>
							<li><a href="listing-right-column.html">Hats</a></li>
							<li><a href="listing-right-column.html">Scarves &amp; Snoods</a></li>
							<li><a href="listing-right-column.html">Belts</a></li>
							<li><a href="listing-right-column.html">Bags</a></li>
							<li><a href="listing-right-column.html">Shoes</a></li>
							<li><a href="listing-right-column.html">Sunglasses <span class="tt-badge tt-sale">Sale 15%</span></a></li>
						</ul>
					</li>
				</ul>
			</li>
			<li>
				<a href="product-listing.html">
					<i class="icon-new"></i>
					<span>NEW ARRIVALS</span>
				</a>
			</li>
			<li>
				<a href="product-listing.html">
					<i class="icon-sale"></i>
					<span>CLEARENCE</span>
				</a>
			</li>
			<li>
				<a href="https://themeforest.net/item/wokiee-ecommerce-html-template/22564267?s_rank=2">
					<i class="icon-theme"></i>
					<span>BUY THEME!</span>
				</a>
			</li>
		</ul>
		<div class="mm-navbtn-names">
			<div class="mm-closebtn">Close</div>
			<div class="mm-backbtn">Back</div>
		</div>
	</nav>
	<!-- tt-mobile-header -->
	<div class="tt-mobile-header">
		<div class="container-fluid tt-top-line">
			<div class="tt-header-row">
				<div class="tt-mobile-parent-menu">
					<div class="tt-menu-toggle">
						<i class="icon-03"></i>
					</div>
				</div>
				<div class="tt-mobile-parent-menu-categories tt-parent-box">
					<button class="tt-categories-toggle">
						<i class="icon-categories"></i>
					</button>
				</div>
				<!-- search -->
				<div class="tt-mobile-parent-search tt-parent-box"></div>
				<!-- /search -->
				<!-- cart -->
				<div class="tt-mobile-parent-cart tt-parent-box"></div>
				<!-- /cart -->
				<!-- account -->
				<div class="tt-mobile-parent-account tt-parent-box"></div>
				<!-- /account -->
			</div>
		</div>
		<div class="container-fluid tt-top-line">
			<div class="row">
				<div class="tt-logo-container">
					<!-- mobile logo -->
					<a class="tt-logo tt-logo-alignment" href="/index"><img src="images/lg/logo_5.png" alt=""></a>
					<!-- /mobile logo -->
				</div>
			</div>
		</div>
	</div>
	<!-- tt-desktop-header -->
	<div class="tt-desktop-header headerunderline">
		<div class="container">
			<div class="tt-header-holder">
				<div class="tt-col-obj tt-obj-logo">
					<!-- logo -->
					<a class="tt-logo tt-logo-alignment" href="/index"><img src="images/lg/logo_5.png" alt=""></a>
					<!-- /logo -->
				</div>
				<div class="tt-col-obj tt-obj-search-type2">
					<div class="tt-search-type2">
			 			<!-- tt-search -->
						<form action="${pageContext.request.contextPath}/search" method="post">
							<i class="icon-f-85"></i>
							<input class="tt-search-input" type="search" name="value" placeholder="Tìm kiếm sản phẩm..." aria-label="SEARCH PRODUCTS..." autocomplete="off" required>
							<button type="submit" class="tt-btn-search">TÌM KIẾM</button>
							<div class="search-results" style="display: none;"></div>
						</form>
						<!-- /tt-search -->
					</div>
				</div>
				<div class="tt-col-obj obj-move-right">
					<div class="header-tel-info">
						<i class="icon-f-93"></i> 0964856293; 0964567999
					</div>
				</div>
			</div>
		</div>
		<div class="container small-header">
			<div class="tt-header-holder">
				<div class="tt-col-obj tt-obj-menu-categories tt-desctop-parent-menu-categories">
					<div class="tt-menu-categories">
						<button class="tt-dropdown-toggle">
							GIÀY
						</button>
						<div class="tt-dropdown-menu">
							<!-- desktop category -->
							<nav>
								<ul id="header-dropdown">
<!-- 									<li><a href="#">Giày Sneaker</a></li> -->
								</ul>
							</nav>
						</div>
					</div>
				</div>
				<div class="tt-col-obj tt-obj-menu">
					<!-- tt-menu -->
					<div class="tt-desctop-parent-menu tt-parent-box">
						<div class="tt-desctop-menu">
							<nav>
								<ul>
									<li class="dropdown tt-megamenu-col-02 selected">
										<a href="/index">TRANG CHỦ</a>
									</li>
									<li class="dropdown megamenu"><a th:href="@{/product-listing}">SẢN PHẨM</a></li>
									<li class="dropdown tt-megamenu-col-01">
										<a href="about.html">HỖ TRỢ</a>
										<div class="dropdown-menu">
											<div class="row tt-col-list">
												<div class="col">
													<h6 class="tt-title-submenu"><a href="about.html">HỖ TRỢ KHÁCH HÀNG</a></h6>
													<ul class="tt-megamenu-submenu">
														<li><a href="about.html">Hướng dẫn mua hàng</a></li>
														<li><a href="contact.html">Chính sách đổi trả, Bảo hành</a></li>
														<li><a href="services.html">Hướng dẫn đổi trả hàng</a></li>
														<li><a href="faq.html">Điều khoản Website</a></li>
														<li><a href="coming-soon.html">Chính sách bảo mật</a></li>
													</ul>
												</div>
											</div>
										</div>
									</li>
									<li class="dropdown megamenu d-none">
										<a href="product-listing.html">KHUYẾN MÃI</a>  <!-- nav desktop -->
										<div class="dropdown-menu">
											<div class="row">
												<div class="col-sm-8">
													<div class="row tt-col-list">
														<div class="col-sm-3">
															<a class="tt-title-submenu" href="product-listing.html">
																BÁN CHẠY
															</a>
															<ul class="tt-megamenu-submenu">
																<li><a href="product-listing.html">Blouses &amp; Shirts</a></li>
																<li><a href="product-listing.html">Dresses <span class="tt-badge tt-new">New</span></a></li>
																<li>
																	<a href="product-listing.html">Tops &amp; T-shirts</a>
																	<ul>
																		<li><a href="product-listing.html">Link Level 1</a></li>
																		<li>
																			<a href="product-listing.html">Link Level 1</a>
																			<ul>
																				<li><a href="product-listing.html">Link Level 2</a></li>
																				<li>
																					<a href="product-listing.html">Link Level 2</a>
																					<ul>
																						<li><a href="product-listing.html">Link Level 3</a></li>
																						<li><a href="product-listing.html">Link Level 3</a></li>
																						<li><a href="product-listing.html">Link Level 3</a></li>
																						<li>
																							<a href="product-listing.html">Link Level 3</a>
																							<ul>
																								<li>
																									<a href="product-listing.html">Link Level 4</a>
																									<ul>
																										<li><a href="product-listing.html">Link Level 5</a></li>
																										<li><a href="product-listing.html">Link Level 5</a></li>
																										<li><a href="product-listing.html">Link Level 5</a></li>
																										<li><a href="product-listing.html">Link Level 5</a></li>
																										<li><a href="product-listing.html">Link Level 5</a></li>
																									</ul>
																								</li>
																								<li><a href="product-listing.html">Link Level 4</a></li>
																							</ul>
																						</li>
																						<li><a href="product-listing.html">Link Level 3</a></li>
																					</ul>
																				</li>
																				<li><a href="product-listing.html">Link Level 2</a></li>
																				<li><a href="product-listing.html">Link Level 2</a></li>
																			</ul>
																		</li>
																		<li><a href="product-listing.html">Link Level 1</a></li>
																		<li><a href="product-listing.html">Link Level 1</a></li>
																		<li><a href="product-listing.html">Link Level 1</a></li>
																	</ul>
																</li>
																<li><a href="product-listing.html">Sleeveless Tops</a></li>
																<li><a href="product-listing.html">Sweaters</a></li>
																<li><a href="product-listing.html">Jackets</a></li>
																<li><a href="product-listing.html">Outerwear</a></li>
															</ul>
														</div>
														<div class="col-sm-3">
															<a class="tt-title-submenu" href="product-listing.html">
																YÊU THÍCH
															</a>
															<ul class="tt-megamenu-submenu">
																<li><a href="product-listing.html">Trousers <span class="tt-badge tt-fatured">Fatured</span></a></li>
																<li>
																	<a href="product-listing.html">Jeans</a>
																</li>
																<li><a href="product-listing.html">Leggings</a></li>
																<li><a href="product-listing.html">Jumpsuit &amp; Shorts</a></li>
																<li><a href="product-listing.html">Skirts</a></li>
																<li><a href="product-listing.html">Tights</a></li>
															</ul>
														</div>
														<div class="col-sm-3">
															<a class="tt-title-submenu" href="product-listing.html">
																GIẢM GIÁ
															</a>
															<ul class="tt-megamenu-submenu">
																<li><a href="product-listing.html">Jewellery</a></li>
																<li><a href="product-listing.html">Hats</a></li>
																<li><a href="product-listing.html">Scarves &amp; Snoods</a></li>
																<li><a href="product-listing.html">Belts</a></li>
																<li><a href="product-listing.html">Bags</a></li>
																<li><a href="product-listing.html">Shoes <span class="tt-badge tt-sale">Sale 15%</span></a></li>
																<li><a href="product-listing.html">Sunglasses</a></li>
															</ul>
														</div>
														<div class="col-sm-3">
															<a class="tt-title-submenu" href="product-listing.html">
																THƯƠNG HIỆU
															</a>
															<ul class="tt-listing-01">
																<li><a href="#" target="_blank"><img src="images/logoshoe/nike_logo.png" alt=""></a></li>
																<li><a href="#" target="_blank"><img src="images/logoshoe/Converse-Logo.jpg" alt=""></a></li>
																<li><a href="#" target="_blank"><img src="images/logoshoe/logo_adidas.jpg" alt=""></a></li>
																<li><a href="#" target="_blank"><img src="images/logoshoe/alacoste-Logo.jpg" alt=""></a></li>
																<li><a href="#" target="_blank"><img src="images/logoshoe/logo_newbalan.jpg" alt=""></a></li>
																<li><a href="#" target="_blank"><img src="images/logoshoe/logo_lv.jpg" alt=""></a></li>
															</ul>
														</div>
													</div>
												</div>
												<div class="col-sm-4">
													<a href="product-listing.html" class="tt-title-submenu">KHUYẾN MÃI</a>
													<div class="tt-menu-slider header-menu-product arrow-location-03 row">
														<div class="col-2">
															<div class="tt-product thumbprod-center">
																<a href="product.html">
																	<div class="tt-image-box">
																		<span class="tt-img"><img src="images/product/product-01.jpg" alt=""></span>
																		<span class="tt-img-roll-over"><img src="images/product/product-01-02.jpg" alt=""></span>
																	</div>
																	<div class="tt-description">
																		<h2 class="tt-title">Flared Shift Dress</h2>
																		<div class="tt-price">
																			<span class="new-price">$14</span>
																			<span class="old-price">$24</span>
																		</div>
																		<div class="tt-product-inside-hover">
																			<div class="tt-btn-addtocart" data-toggle="modal" data-target="#modalAddToCartProduct">ADD TO CART</div>
																			<div class="tt-btn-quickview" data-toggle="modal" data-target="#ModalquickView"></div>
																		</div>
																	</div>
																</a>
															</div>
														</div>
														<div class="col-2">
															<div class="tt-product thumbprod-center">
																<a href="product.html">
																	<div class="tt-image-box">
																		<span class="tt-img"><img src="images/product/product-02.jpg" alt=""></span>
																		<span class="tt-img-roll-over"><img src="images/product/product-02-02.jpg" alt=""></span>
																	</div>
																	<div class="tt-description">
																		<h2 class="tt-title">Flared Shift Dress</h2>
																		<div class="tt-price">
																			$17
																		</div>
																		<div class="tt-product-inside-hover">
																			<div class="tt-btn-addtocart" data-toggle="modal" data-target="#modalAddToCartProduct">ADD TO CART</div>
																			<div class="tt-btn-quickview" data-toggle="modal" data-target="#ModalquickView"></div>
																		</div>
																	</div>
																</a>
															</div>
														</div>
														<div class="col-2">
															<div class="tt-product thumbprod-center">
																<a href="product.html">
																	<div class="tt-image-box">
																		<span class="tt-img"><img src="images/product/product-04.jpg" alt=""></span>
																		<span class="tt-img-roll-over"><img src="images/product/product-04-01.jpg" alt=""></span>
																	</div>
																	<div class="tt-description">
																		<h2 class="tt-title">Flared Shift Dress</h2>
																		<div class="tt-price">
																			$14
																		</div>
																		<div class="tt-product-inside-hover">
																			<div class="tt-btn-addtocart" data-toggle="modal" data-target="#modalAddToCartProduct">ADD TO CART</div>
																			<div class="tt-btn-quickview" data-toggle="modal" data-target="#ModalquickView"></div>
																		</div>
																	</div>
																</a>
															</div>
														</div>
														<div class="col-2">
															<div class="tt-product thumbprod-center">
																<a href="product.html">
																	<div class="tt-image-box">
																		<span class="tt-img"><img src="images/product/product-05.jpg" alt=""></span>
																		<span class="tt-img-roll-over"><img src="images/product/product-05-02.jpg" alt=""></span>
																	</div>
																	<div class="tt-description">
																		<h2 class="tt-title">Flared Shift Dress</h2>
																		<div class="tt-price">
																			<span class="new-price">$14</span>
																			<span class="old-price">$24</span>
																		</div>
																		<div class="tt-product-inside-hover">
																			<div class="tt-btn-addtocart" data-toggle="modal" data-target="#modalAddToCartProduct">ADD TO CART</div>
																			<div class="tt-btn-quickview" data-toggle="modal" data-target="#ModalquickView"></div>
																		</div>
																	</div>
																</a>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="col-sm-6">
													<a href="product-listing.html" class="tt-promo-02">
														<img src="images/custom/header-promo-01.jpg" alt="">
														<div class="tt-description tt-point-h-l">
															<div class="tt-description-wrapper">
																<div class="tt-title-small">CHÀO ĐÓN HÈ <span class="tt-base-color">2020</span></div>
																<div class="tt-title-large">SẢN PHẨM MỚI</div>
															</div>
														</div>
													</a>
												</div>
												<div class="col-sm-6">
													<a href="product-listing.html" class="tt-promo-02">
														<img src="images/custom/header-promo-02.jpg" alt="">
														<div class="tt-description tt-point-h-l">
															<div class="tt-description-wrapper">
																<div class="tt-title-small"><span class="tt-white-color">KHUYẾN MÃI LỚN</span></div>
																<div class="tt-title-large"><span class="tt-white-color">GIẢM GIÁ TỚI 20%</span></div>
															</div>
														</div>
													</a>
												</div>
											</div>
										</div>
									</li>
									<li class="dropdown megamenu">
										<a href="/about">CHÚNG TÔI</a> <!-- nav desktop -->
									</li>
									<li class="dropdown megamenu">
										<a href="/contact">LIÊN HỆ</a> <!-- nav desktop -->
									</li>
								</ul>
							</nav>
						</div>
					</div>
					<!-- /tt-menu -->
				</div>
				<div class="tt-col-obj tt-obj-options obj-move-right">
					<!-- tt-search -->
					<div class="tt-desctop-parent-search tt-parent-box tt-obj-desktop-hidden">
						<div class="tt-search tt-dropdown-obj">
							<button class="tt-dropdown-toggle" data-tooltip="Search" data-tposition="bottom">
								<i class="icon-f-85"></i>
							</button>
							<div class="tt-dropdown-menu">
								<div class="container">
									<form>
										<div class="tt-col">
											<input type="text" class="tt-search-input" placeholder="TÌM KIẾM SẢN PHẨM...">
											<button class="tt-btn-search" type="submit"></button>
										</div>
										<div class="tt-col">
											<button class="tt-btn-close icon-g-80"></button>
										</div>
										<div class="tt-info-text">
											Bạn muốn tìm gì?
										</div>
										<div class="search-results">
											<ul>
												<li>
										            <a href="product.html">
										            	<div class="thumbnail"><img src="images/loader.svg" data-src="images/product/product-03.jpg" alt=""></div>
										            	<div class="tt-description">
										            		<div class="tt-title">Flared Shift Bag</div>
										            		<div class="tt-price">
																<span class="new-price">$14</span>
																<span class="old-price">$24</span>
															</div>
										            	</div>
										            </a>
										        </li>
										        <li>
										           <a href="product.html">
										            	<div class="thumbnail"><img src="images/loader.svg" data-src="images/product/product-02.jpg" alt=""></div>
										            	<div class="tt-description">
										            		<div class="tt-title">Flared Shift Bag</div>
										            		<div class="tt-price">
																$24
															</div>
										            	</div>
										            </a>
										        </li>
										        <li>
										           <a href="product.html">
										            	<div class="thumbnail"><img src="images/loader.svg" data-src="images/product/product-01.jpg" alt=""></div>
										            	<div class="tt-description">
										            		<div class="tt-title">Flared Shift Bag</div>
										            		<div class="tt-price">
																$14
															</div>
										            	</div>
										            </a>
										        </li>
										        <li>
										           <a href="product.html">
										            	<div class="thumbnail"><img src="images/loader.svg" data-src="images/product/product-04.jpg" alt=""></div>
										            	<div class="tt-description">
										            		<div class="tt-title">Flared Shift Bag</div>
										            		<div class="tt-price">
																$24
															</div>
										            	</div>
										            </a>
										        </li>
										        <li>
										           <a href="product.html">
										            	<div class="thumbnail"><img src="images/loader.svg" data-src="images/product/product-05.jpg" alt=""></div>
										            	<div class="tt-description">
										            		<div class="tt-title">Flared Shift Bag</div>
										            		<div class="tt-price">
																$17
															</div>
										            	</div>
										            </a>
										        </li>
										        <li>
										           <a href="product.html">
										            	<div class="thumbnail"><img src="images/loader.svg" data-src="images/product/product-06.jpg" alt=""></div>
										            	<div class="tt-description">
										            		<div class="tt-title">Flared Shift Bag</div>
										            		<div class="tt-price">
																$20
															</div>
										            	</div>
										            </a>
										        </li>
											</ul>
											<button type="button" class="tt-view-all">Xem tất cả sản phẩm</button>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
					<!-- /tt-search -->
					<!-- tt-cart -->
					<div class="tt-desctop-parent-cart tt-parent-box">
						<div class="tt-cart tt-dropdown-obj" data-tooltip="Giỏ hàng" data-tposition="bottom">
							<button class="tt-dropdown-toggle">
								<i class="icon-f-39"></i>
								<span id="cartTotalQuantity" class="tt-badge-cart">0</span>
							</button>
							<div id="cart-header-layout" class="tt-dropdown-menu">
								<div class="tt-mobile-add">
									<h6 class="tt-title">GIỎ HÀNG</h6>
									<button class="tt-close">Close</button>
								</div>
								<div class="tt-dropdown-inner">
									<div class="tt-cart-layout">

										<div class="tt-cart-content">
											<a class="tt-cart-empty" href="/cart" title="Xem giỏ hàng">
								              	<i class="icon-f-39"></i>
								              	<p class="roboto">Chưa có sản phẩm</p>
								            </a>
											<div class="tt-cart-list d-none">

												<div class="tt-item">
													<a href="product.html">
														<div class="tt-item-img">
															<img src="images/loader.svg" data-src="images/product/product-02.jpg" alt="">
														</div>
														<div class="tt-item-descriptions">
															<h2 class="tt-title">Flared Shift Dress2</h2>
															<ul class="tt-add-info">
																<li>Yellow, Material 2, Size 58,</li>
																<li>Vendor: Addidas</li>
															</ul>
															<div class="tt-quantity">1 X</div> <div class="tt-price">$18</div>
														</div>
													</a>
													<div class="tt-item-close">
														<a href="#" class="tt-btn-close"></a>
													</div>
												</div>

											</div>
											<div class="tt-cart-total-row d-none">
												<div class="tt-cart-total-title">TỔNG CỘNG:</div>
												<div class="tt-cart-total-price">$324</div>
											</div>
											<div class="tt-cart-btn d-none">
												<div class="tt-item">
													<a th:href="@{/cart}" class="btn">XEM GIỎ HÀNG</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- /tt-cart -->
					<!-- tt-account -->
					<div class="tt-desctop-parent-account tt-parent-box">
						<div class="tt-account tt-dropdown-obj">
							<button class="tt-dropdown-toggle"  data-tooltip="Thông tin của tôi" data-tposition="bottom"><i class="icon-f-94"></i></button>
							<div class="tt-dropdown-menu">
								<div class="tt-mobile-add">
									<button class="tt-close">Close</button>
								</div>
								<div class="tt-dropdown-inner">
									<ul>
										<li id="menu_user">Xin chào, <b id="menu_username"></b></li>
									    <li id="menu_myaccount"><a href="/my-account"><i class="icon-f-94"></i>Tài Khoản</a></li>
									    <li id="menu_favor"><a href="/my-account/wishlist"><i class="icon-n-072"></i>Danh Sách Yêu Thích</a></li>
									    <li id="menu_login"><a href="/customer/login"><i class="icon-f-76"></i>Đăng Nhập</a></li>
									    <li id="menu_logout"><a href="/customer/logout"><i class="icon-f-77"></i>Đăng Xuất</a></li>
									    <li id="menu_reg"><a href="/signup"><i class="icon-f-94"></i>Đăng Ký</a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
					<!-- /tt-account -->
				</div>
			</div>
		</div>
	</div>
	<!-- /tt-desktop-header -->
	<!-- stuck nav -->
	<div class="tt-stuck-nav">
		<div class="container">
			<div class="tt-header-row ">
				<div class="tt-stuck-desctop-menu-categories"></div>
				<div class="tt-stuck-parent-menu"></div>
				<div class="tt-stuck-mobile-menu-categories"></div>
				<div class="tt-stuck-parent-search tt-parent-box"></div>
				<div class="tt-stuck-parent-cart tt-parent-box"></div>
				<div class="tt-stuck-parent-account tt-parent-box"></div>
				<div class="tt-stuck-parent-multi tt-parent-box"></div>
			</div>
		</div>
	</div>
</header>

<div class="tt-breadcrumb">
	<div class="container">
		<ul>
			<li><a href="/index">Trang Chủ</a></li>
			<li><a href="product-listing.html">Sản Phẩm</a></li>
			<li ></li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<!-- mobile product slider  -->
		<div class="tt-mobile-product-layout visible-xs">
			<div class="tt-mobile-product-slider arrow-location-center slick-animated-show-js">
				<div><img src="" alt=""></div>
				

			</div>
		</div>
		<!-- /mobile product slider  -->
		<div class="container container-fluid-mobile">
			<div class="row airSticky_stop-block">
				<div class="col-6 hidden-xs">
					<div class="product-images-static hidden-xs">
						<ul  data-scrollzoom="false">
							<li><img class="zoom-product" src="${pageContext.request.contextPath}/${product.image}"  alt=""></li>
							
							<!-- <li>
								<div class="embed-responsive embed-responsive-16by9">
									<iframe class="embed-responsive-item" src="http://www.youtube.com/embed/GhyKqj_P2E4" allowfullscreen></iframe>
								</div>
							</li> -->
							<!-- <li>
								<div class="tt-video-block">
									<a href="#" class="link-video"></a>
									<video class="movie" src="video/video.mp4" poster="video/video_img.jpg"></video>
								</div>
							</li> -->
						</ul>
					</div>
				</div>
				<div class="col-6">
					<div class="airSticky">
						<div class="tt-product-single-info">
							<div class="tt-add-info">
								<ul>
									<li><span>ID: </span> <span>${product.id}</span></li>
									<input id="productId" type="hidden" th:value="${product.id}">
								</ul>
							</div>
							<h1 class="tt-title" >${product.name }</h1>
							<div class="tt-price">
								<span class="new-price" >${product.price } VND</span>
								<!-- <span class="old-price"></span> -->
							</div>
							<div class="tt-review d-none">
								<div class="tt-rating">
									<i class="icon-star"></i>
									<i class="icon-star"></i>
									<i class="icon-star"></i>
									<i class="icon-star-half"></i>
									<i class="icon-star-empty"></i>
								</div>
								<a href="product-page-gotocomments-js">(3 Customer Review)</a>
							</div>
							<div class="tt-wrapper">
								${product.description}
							</div>
							<div class="tt-wrapper">
								<div class="tt-title-options">SIZE:</div>
								<form method="post" action="${pageContext.request.contextPath}/cart">
								<select class="form-control" name="size" aria-label="Default select example" required>
			                    <c:forEach var="size" items="${sizes}"> 
			                         <option value="${size.name}">${size.name}</option>
			                    </c:forEach>
			              </select>
			              <input id="productId" type="hidden" name="id" value="${product.id}">
			              <button type="submit" class="btn btn-primary"><i class="icon-f-39"></i>Submit </button>
			              </form>
							</div>
							
							<div class="tt-wrapper">
								<div class="tt-row-custom-01">
<!-- 									<div class="col-item d-none"> -->
<!-- 										<div class="tt-input-counter style-01" style="user-select: none;"> -->
<!-- 											<span class="minus-btn"></span> -->
<!-- 											<input type="text" value="1" size="5"> -->
<!-- 											<span class="plus-btn"></span> -->
<!-- 										</div> -->
<!-- 									</div> -->
									
								</div>
							</div>
							<div class="tt-wrapper">
								<ul class="tt-list-btn">
									<li ><a class="btn-link" id="toogle-wishlist" href="#"><i ></i><span></span></a></li>
									<li><a class="btn-link d-none" href="#"><i class="icon-n-08"></i>ADD TO COMPARE</a></li>
								</ul>
							</div>
<!-- 							<div class="tt-wrapper"> -->
<!-- 								<div class="tt-add-info"> -->
<!-- 									<ul> -->
<!-- 										<li><span>Vendor:</span> Polo</li> -->
<!-- 										<li><span>Product Type:</span> T-Shirt</li> -->
<!-- 										<li><span>Tag:</span> <a href="#">T-Shirt</a>, <a href="#">Women</a>, <a href="#">Top</a></li> -->
<!-- 									</ul> -->
<!-- 								</div> -->
<!-- 							</div> -->
							<div class="tt-collapse-block">
								
								<div class="tt-item active">
									<div class="tt-collapse-title">Thông tin</div>
									<div class="tt-collapse-content">
										<table class="tt-table-03">
											<tbody>
												<tr>
													<td>Màu: 
													<c:forEach var="color" items="${colors}"> 
														${color.name}
													</c:forEach>
													 </td>
													<td>
														<%-- <span th:each="color : ${product.colors}">
															<span th:text="${color.color.name}"></span>
														</span> --%>
													</td>
												</tr>
												<tr>
													<td>Size:
														<c:forEach var="size" items="${sizes}"> 
														${size.name}
													</c:forEach>
													</td>
													<td>
														<%-- <span th:each="size : ${product.sizes}">
															<span th:text="${size.size}"></span>
														</span> --%>
													</td>
												</tr>
												<tr>
													<td>Category: ${product.category.name }</td>
													<%-- <td th:text="${product.category.name}"></td> --%>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="tt-item">
									<div class="tt-collapse-title tt-poin-comments d-none">REVIEWS (3)</div>
									<div class="tt-collapse-content">
										<div class="tt-review-block">
											<div class="tt-row-custom-02">
												<div class="col-item">
													<h2 class="tt-title">
														1 REVIEW FOR VARIABLE PRODUCT
													</h2>
												</div>
												<div class="col-item">
													<a href="#">Write a review</a>
												</div>
											</div>
											<div class="tt-review-comments">
												<div class="tt-item">
													<div class="tt-avatar">
														<a href="#"><img src="images/product/single/review-comments-img-01.jpg" alt=""></a>
													</div>
													<div class="tt-content">
														<div class="tt-rating">
															<i class="icon-star"></i>
															<i class="icon-star"></i>
															<i class="icon-star"></i>
															<i class="icon-star-half"></i>
															<i class="icon-star-empty"></i>
														</div>
														<div class="tt-comments-info">
															<span class="username">by <span>ADRIAN</span></span>
															<span class="time">on January 14, 2017</span>
														</div>
														<div class="tt-comments-title">Very Good!</div>
														<p>
															Ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim.
														</p>
													</div>
												</div>
												<div class="tt-item">
													<div class="tt-avatar">
														<a href="#"><img src="images/product/single/review-comments-img-02.jpg" alt=""></a>
													</div>
													<div class="tt-content">
														<div class="tt-rating">
															<i class="icon-star"></i>
															<i class="icon-star"></i>
															<i class="icon-star"></i>
															<i class="icon-star-half"></i>
															<i class="icon-star-empty"></i>
														</div>
														<div class="tt-comments-info">
															<span class="username">by <span>JESICA</span></span>
															<span class="time">on January 14, 2017</span>
														</div>
														<div class="tt-comments-title">Bad!</div>
														<p>
															Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
														</p>
													</div>
												</div>
												<div class="tt-item">
													<div class="tt-avatar">
														<a href="#"></a>
													</div>
													<div class="tt-content">
														<div class="tt-rating">
															<i class="icon-star"></i>
															<i class="icon-star"></i>
															<i class="icon-star"></i>
															<i class="icon-star-half"></i>
															<i class="icon-star-empty"></i>
														</div>
														<div class="tt-comments-info">
															<span class="username">by <span>ADAM</span></span>
															<span class="time">on January 14, 2017</span>
														</div>
														<div class="tt-comments-title">Very Good!</div>
														<p>
															Diusmod tempor incididunt ut labore et dolore magna aliqua.
														</p>
													</div>
												</div>
											</div>
											<div class="tt-review-form">
												<div class="tt-message-info">
													BE THE FIRST TO REVIEW <span>“<span ></span>”</span>
												</div>
												<!-- <p>Your email address will not be published. Required fields are marked *</p> -->
												<div class="tt-rating-indicator">
													<div class="tt-title">
														YOUR RATING 
													</div>
													<div class="tt-rating">
														<i class="icon-star"></i>
														<i class="icon-star"></i>
														<i class="icon-star"></i>
														<i class="icon-star-half"></i>
														<i class="icon-star-empty"></i>
													</div>
												</div>
												<form class="form-default">
													<div class="form-group">
														<label for="inputName" class="control-label">YOUR TITLE</label>
														<input type="text" class="form-control" id="inputName" placeholder="Enter your name">
													</div>
													<div class="form-group">
														<label for="textarea" class="control-label">YOUR REVIEW</label>
														<textarea class="form-control"  id="textarea" placeholder="Enter your review" rows="8"></textarea>
													</div>
													<div class="form-group">
														<button type="submit" class="btn">SUBMIT</button>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
				</div>
			</div>
		</div>
	</div>
	<div class="container-indent wrapper-social-icon">
		<div class="container">
			<ul class="tt-social-icon justify-content-center">
				<li><a class="icon-g-64" href="http://www.facebook.com/"></a></li>
				<li><a class="icon-h-58" href="http://www.facebook.com/"></a></li>
				<li><a class="icon-g-66" href="http://www.twitter.com/"></a></li>
				<li><a class="icon-g-67" href="http://www.google.com/"></a></li>
				<li><a class="icon-g-70" href="https://instagram.com/"></a></li>
			</ul>
		</div>
	</div>
	<div class="container-indent">
		<div class="container container-fluid-custom-mobile-padding">
			<div class="tt-block-title text-left">
				<h3 class="tt-title-small">Thương hiệu <span th:text="${product.brand.name}"></span></h3>
			</div>
			<div class="tt-carousel-products row arrow-location-right-top tt-alignment-img tt-layout-product-item slick-animated-show-js">
				<div class="col-2 col-md-4 col-lg-3" th:each="product : ${relatedProducts}">
					<div class="tt-product thumbprod-center">
						<div class="tt-image-box">
							<a href="#" class="tt-btn-quickview" data-toggle="modal" data-target="#ModalquickView"	data-tooltip="Xem trước" data-tposition="left"></a>
							<a href="#" class="tt-btn-wishlist"  data-tooltip="Yêu thích" ></a>
							<a href="#" class="tt-btn-compare d-none" data-tooltip="So sánh" data-tposition="left"></a>
							<input class="productBoxId" type="hidden" th:value="${product.id}">
							<a href="product.html">
								<span class="tt-img"><img src="" alt=""></span>
								<span class="tt-img-roll-over"><img src="" alt=""></span>
							</a>
						</div>
						<div class="tt-description">
							<div class="tt-row">
								<ul class="tt-add-info">
									<li><a ></a></li>
								</ul>
							</div>
							<h2 class="tt-title"><a >name</a></h2>
							<div class="tt-price">
								price
							</div>
							<div class="tt-product-inside-hover">
<!-- 								<div class="tt-row-btn"> -->
<!-- 									<a href="#" class="tt-btn-addtocart thumbprod-button-bg" data-toggle="modal" data-target="#modalAddToCartProduct">ADD TO CART</a> -->
<!-- 								</div> -->
								<div class="tt-row-btn">
									<a href="#" class="tt-btn-quickview" data-toggle="modal" data-target="#ModalquickView"></a>
									<a href="#" class="tt-btn-wishlist"></a>
									<a href="#" class="tt-btn-compare"></a>
								</div>
							</div>
						</div>
					</div>
				</div>
				
			</div>
		</div>
	</div>
</div>

<!-- footer -->
<footer th:replace="shopper/fragments/footer"></footer>

<!-- Modal -->
<div th:replace="shopper/fragments/modal :: size_guide"></div>
<div th:replace="shopper/fragments/modal :: shipping"></div>

<script src="${pageContext.request.contextPath}/external/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/external/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/external/elevatezoom/jquery.elevatezoom.js"></script>
<script src="${pageContext.request.contextPath}/external/slick/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/external/panelmenu/panelmenu.js"></script>
<script src="${pageContext.request.contextPath}/external/air-sticky/air-sticky-block.min.js"></script>
<script src="${pageContext.request.contextPath}/external/countdown/jquery.plugin.min.js"></script>
<script src="${pageContext.request.contextPath}/external/countdown/jquery.countdown.min.js"></script>
<script src="${pageContext.request.contextPath}/external/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/external/lazyLoad/lazyload.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<!-- form validation and sending to mail -->
<script src="${pageContext.request.contextPath}/external/form/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/external/form/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/external/form/jquery.form-init.js"></script>
<!-- custom -->
<script src="${pageContext.request.contextPath}/js/toastr.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/header.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/product-box.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/product.js" type="text/javascript"></script>
</body>
</html>