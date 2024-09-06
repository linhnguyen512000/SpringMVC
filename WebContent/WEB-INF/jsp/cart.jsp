<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
	<meta charset="utf-8">
	<title>Giỏ hàng của tôi</title>
	<meta name="keywords" content="TopShoe">
	<meta name="description" content="TopShoe - Cart">
	<meta name="author" content="TopShoe">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<link rel="shortcut icon" href="favicon.ico">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/theme.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/custom.css">
	<link href='http://fonts.googleapis.com/css?family=Roboto:400,100,100italic,300,300italic,400italic,500,500italic,700,700italic,900italic,900' rel='stylesheet' type='text/css'>
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
			<li>Giỏ Hàng</li>
		</ul>
	</div>
</div>
<div id="tt-pageContent">
	<div class="container-indent">
		<div class="container" >
			<h1 class="tt-title-subpages noborder">GIỎ HÀNG</h1>
			<div class="tt-shopcart-table-02">
			
				<table>
					<tbody>
						
							<c:forEach var="detail" items="${list}"> 
							<tr>
							<td>
								<div class="tt-product-img">
									<img src="${pageContext.request.contextPath}/${detail.product.image}" >
								</div>
							</td>
							<td>
								<h2 class="tt-title">
									${detail.product.name}
								</h2>
								<ul class="tt-list-description">
									<li>Size: <span>${detail.size}</span></li>
									<li>Version: <span>${detail.product.versionName}</span></li>
								</ul>
								
							</td>
							
							<td>
								<div class="tt-price">
									${detail.product.price} VND
								</div>
							</td>
							<td>
								<div class="detach-quantity-desctope">
									<div class="tt-input-counter style-01" style="user-select: none;">
										
										<a href="${pageContext.request.contextPath}/minusShoe/${detail.id}"><span class="minus-btn"></span></a>
										<input type="text" value="${detail.quantity}" size="5" style="cursor: default;" readonly>
										<a href="${pageContext.request.contextPath}/plusShoe/${detail.id}"><span class="plus-btn"></span></a>
										
									</div>
								</div>
							</td>
							<td>
								<div class="tt-price subtotal"  >
									${detail.product.price*detail.quantity} VND
								</div>
							</td>
							<td>
								<a href="${pageContext.request.contextPath}/deleteShoe/${detail.id}" class="tt-btn-close"></a>
							</td>
							</tr>
							</c:forEach>
						
					</tbody>
				</table>
				<div class="tt-shopcart-btn">
					<div class="col-left">
						<a class="btn-link" href="/index"><i class="icon-e-19"></i>Tiếp tục mua sắm</a>
					</div>
					<div class="col-right">
						<a class="btn-link" href="#"><i class="icon-h-02"></i>Xóa hết</a>
<!-- 						<a class="btn-link" href="#"><i class="icon-h-48"></i>UPDATE CART</a> -->
					</div>
				</div>
			</div>
			<div class="tt-shopcart-col">

				<div class="row">
					<div class="col-md-6 col-lg-4">
						<div class="tt-shopcart-box">
							<h4 class="tt-title">
								Thông tin giao hàng
							</h4>
<!-- 							<p>Enter your destination to get a shipping estimate.</p> -->
							<form  method="post" action="/asm3/checkout" name ="checkoutForm" >
								<div class="form-group">
									<label for="name">Người nhận hàng <sup>*</sup></label>
									<input type="text" value="${order.user.name}" id="name" name="name" placeholder="Nhập họ tên" class="form-control" required>
									<div class="help-block"></div>
								</div>
								<div class="form-group">
									<label for="phone">Điện thoại <sup>*</sup></label>
									<input  pattern="[0-9]*" value="${order.user.phone}"   type="tel" 
									name="phone" class="form-control" id="phone" placeholder="Nhập điện thoại" required>
									<div class="help-block"></div>
								</div>
								<div class="form-group">
									<label  for="address">Địa chỉ <sup>*</sup></label>
									<textarea class="form-control"  id="address" name="address" 
									rows="3" placeholder="Nhập địa chỉ giao hàng" required>${order.user.address}</textarea>
									<div class="help-block"></div>
								</div>
								<input type="hidden" value="${total }" name="total"/>
							<button type="submit" class="btn btn-success">ĐẶT MUA</button>
								</form>
								

<!-- 								<a href="#" class="btn btn-border">CALCULATE SHIPPING</a> -->
<!-- 								<p> -->
<!-- 									There is one shipping rate available for Alabama, Tanzania, United Republic Of. -->
<!-- 								</p> -->
								<ul class="tt-list-dot list-dot-large">
									<li><span class="check_info">Kiểm tra lại thông tin của bạn trước khi đặt mua</span></li>
								</ul>
							
						</div>
					</div>
					<div class="col-md-6 col-lg-4">
						<div class="tt-shopcart-box">
							<h4 class="tt-title">
								Phương thức thanh toán
							</h4>
							<br>
<!-- 							<p>Add special instructions for your order...</p> -->
							
							<br>
							<div class="radio checkbox-group">
								<input type="checkbox" id="checkCOD" name="checkbox">
								<label for="checkCOD">
									<span class="check"></span>
									<span class="box"></span>
									Thanh toán tiền mặt khi nhận hàng
								</label>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-lg-4">
						<div class="tt-shopcart-box tt-boredr-large">
							<table class="tt-shopcart-table01">
								<tbody>
<!-- 									<tr> -->
<!-- 										<th>SUBTOTAL</th> -->
<!-- 										<td>$324</td> -->
<!-- 									</tr> -->
								</tbody>
								<tfoot>
									<tr>
										<th>THÀNH TIỀN</th>
										<td id="totalAmount" >${total} VND</td>
									</tr>
								</tfoot>
							</table>
							
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
<div th:replace="shopper/fragments/modal :: quickView"></div>
<div th:replace="shopper/fragments/modal :: subsribeGood"></div>

<script src="${pageContext.request.contextPath}/external/jquery/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/external/bootstrap/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/external/slick/slick.min.js"></script>
<script src="${pageContext.request.contextPath}/external/panelmenu/panelmenu.js"></script>
<script src="${pageContext.request.contextPath}/external/lazyLoad/lazyload.min.js"></script>
<script src="${pageContext.request.contextPath}/js/main.js"></script>
<%-- <script src="${pageContext.request.contextPath}/js/cart.js"></script> --%>
<!-- form validation and sending to mail -->
<%-- <script src="${pageContext.request.contextPath}/external/form/jquery.form.js"></script>
<script src="${pageContext.request.contextPath}/external/form/jquery.validate.min.js"></script>
<script src="${pageContext.request.contextPath}/external/form/jquery.form-init.js"></script> --%>
<!-- custom -->
<script src="${pageContext.request.contextPath}/js/toastr.min.js" type="text/javascript"></script>
<script src="${pageContext.request.contextPath}/js/header.js" type="text/javascript"></script>
</body>
</html>