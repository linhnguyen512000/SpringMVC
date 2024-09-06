<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="utf-8">
	<title>Danh sách sản phẩm</title>
	<meta name="keywords" content="Product Listing">
	<meta name="description" content="Product Listing">
	<meta name="author" content="TopShoe">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<base th:replace="shopper/fragments/common :: base">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/toastr.min.css">
</head>
<body>

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
			<li>Danh Sách Sản Phẩm</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container">
			<div class="row">
				<form method="post" action="${pageContext.request.contextPath}/searchMulResult">
				<label for="addname"
                                 class="col-form-label">Brand: </label>
					<select class="form-control" name="brand" aria-label="Default select example" required>
							<option value="0">Không lựa chọn</option>
			                    <c:forEach var="brand" items="${listBrand}"> 
			                         <option value="${brand.id}">${brand.name}</option>
			                    </c:forEach>
			              </select>
			     <label for="addname"
                                 class="col-form-label">Category: </label>
			              <select class="form-control" name="category" aria-label="Default select example" required>
							<option value="0">Không lựa chọn</option>
			                    <c:forEach var="category" items="${listCategory}"> 
			                         <option value="${category.id}">${category.name}</option>
			                    </c:forEach>
			              </select>
			      <label for="addname"
                                 class="col-form-label">Price range: </label>
			              <select class="form-control" name="price" aria-label="Default select example" required>
							<option value="0">Không lựa chọn</option>
			                         <option value="1">0 - 1.000.000</option>
			                         <option value="2">1.000.000 - 2.000.000</option>
			                         <option value="3">2.000.000 - 3.000.000</option>
			                         <option value="4">>3.000.000</option>
			              </select>
			       <label for="addname"
                                 class="col-form-label">Size: </label>
			              <select class="form-control" name="size" aria-label="Default select example" required>
							<option value="0">Không lựa chọn</option>
			                         <option value="35">35</option>
			                         <option value="36">36</option>
			                         <option value="37">37</option>
			                         <option value="38">38</option>
			                         <option value="39">39</option>
			                         <option value="40">40</option>
			                         <option value="41">41</option>
			                         <option value="44">42</option>
			                         <option value="43">43</option>
			                         <option value="44">44</option>
			                         <option value="45">45</option>
			                         <option value="46">46</option>
			                         <option value="47">47</option>
			              </select>
			              <label for="addname"
                                 class="col-form-label">Color: </label>
			              <select class="form-control" name="color" aria-label="Default select example" required>
							<option value="0">Không lựa chọn</option>
			                         <option value="1">red</option>
			                         <option value="2">blue</option>
			                         <option value="3">yellow</option>
			                         <option value="4">white</option>
			              </select>
			              <button type="submit" class="btn btn-primary">Submit </button>
				</form>
				<div class="col-md-12 col-lg-9 col-xl-9">
					<div class="content-indent container-fluid-custom-mobile-padding-02">
						<div class="tt-filters-options">
							<h1 class="tt-title">
								DANH SÁCH SẢN PHẨM 
<!-- 								<span class="tt-title-total">(12)</span> -->
							</h1>
							<div class="tt-btn-toggle">
								<a href="#">LỌC</a>
							</div>
							<div class="tt-sort">
								<select id="sortSelect">
									<option value="0">Sản phẩm mới</option>
									<option value="1">Giá tăng dần</option>
									<option value="2">Giá giảm dần</option>
								</select>
							</div>
							<div class="tt-quantity">
								<a href="#" class="tt-col-one" data-value="tt-col-one"></a>
								<a href="#" class="tt-col-two" data-value="tt-col-two"></a>
								<a href="#" class="tt-col-three" data-value="tt-col-three"></a>
								<a href="#" class="tt-col-four" data-value="tt-col-four"></a>
								<a href="#" class="tt-col-six" data-value="tt-col-six"></a>
							</div>
						</div>
						<div class="container-indent">
							<div class="container">
								<div class="row">
									<div class="col-sm-6 col-md-4">
										<div class="tt-layout-vertical-listing">
											<div class="tt-item">
											<c:forEach var="product" items="${list}">
												<div >
													<div class="tt-img">
														<a href="${pageContext.request.contextPath}/detail/${product.id}">
															<span class="tt-img-default"><img style="height:200px; width:200px;" src="${pageContext.request.contextPath}/${product.image}"  alt=""></span>
															
														</a>
														<div class="tt-description">
															<h2 class="tt-title"><a href="${pageContext.request.contextPath}/detail/${product.id}">${product.name }</a></h2>
															<div class="tt-price">
																${product.price } VND
															</div>
															<h6 style="color:blue;">${product.status }</h6>
														</div>
													</div>
													
												</div>
												</c:forEach>
											</div>
										</div>
									</div>
									<div class="divider visible-xs"></div>
									
									<div class="divider visible-sm visible-xs"></div>
									
								</div>
							</div>
						</div>
						<div class="text-center" style="margin-top: 30px;">
							
							<div id="last_page" class="tt_item_all d-none">
								<a href="end" class="btn btn-border01">CUỐI TRANG</a>
							</div>
						</div>
				</div>
			</div>
		</div>
	</div>
</div>

<!-- footer -->
<footer th:replace="shopper/fragments/footer"></footer>

<!-- modal -->
<div th:replace="shopper/fragments/modal :: addToCart"></div>
<!-- <div th:replace="shopper/fragments/modal :: quickView"></div> -->
<div th:replace="shopper/fragments/modal :: videoProduct"></div>
<div th:replace="shopper/fragments/modal :: subsribeGood"></div>

<script src="${pageContext.request.contextPath}/external/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/external/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/external/slick/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/external/perfect-scrollbar/perfect-scrollbar.min.js"></script>
<script src="${pageContext.request.contextPath}/external/panelmenu/panelmenu.js"></script>
<script src="${pageContext.request.contextPath}/external/countdown/jquery.plugin.min.js"></script>
<script src="${pageContext.request.contextPath}/external/countdown/jquery.countdown.min.js"></script>
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
<script src="${pageContext.request.contextPath}/js/product-listing.js" type="text/javascript"></script>
</body>
</html>