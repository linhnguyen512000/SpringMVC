package com.asm3.shoeproject.controller;

import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.asm3.shoeproject.model.OrderDetail;
import com.asm3.shoeproject.dto.CheckoutDto;
import com.asm3.shoeproject.model.*;
import com.asm3.shoeproject.service.BrandService;
import com.asm3.shoeproject.service.CategoryService;
import com.asm3.shoeproject.service.ColorService;
import com.asm3.shoeproject.service.OrderDetailService;
import com.asm3.shoeproject.service.OrdersService;
import com.asm3.shoeproject.service.ProductService;
import com.asm3.shoeproject.service.SizeService;
import com.asm3.shoeproject.service.UserService;

@Controller
public class UserController {
	@Autowired
	private UserService userService;
	
	@Autowired
	private BrandService brandService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private SizeService sizeService;
	
	@Autowired
	private ColorService colorService;
	
	@Autowired
	private OrderDetailService orderDetailService;
	
	@Autowired
	private ProductService productService;
	
//	Hiện trang chủ
	@RequestMapping("/")
	public String home(HttpServletRequest req, Model model) {
		model.addAttribute("list", productService.list8());
		
		return "index";
	}
	
//	Hiện trang chủ
	@RequestMapping("/all")
	public String all(HttpServletRequest req, Model model) {
		model.addAttribute("list", productService.listAll());
		
		return "index";
	}
	
//	Load view login
	@RequestMapping("/login")
	public String login(HttpServletRequest req, Model model) {
		return "login-user";
	}
	
//	Kiểm tra xem người dùng có nhập đúng email và password không
	@RequestMapping("/loginCheck")
	public String loginCheck(HttpServletRequest req, Model model) {
		List<User> users = userService.list();
		
//		Kiểm tra email có trong hệ thống không
		for (int i=0; i<users.size(); i++) {
			if (req.getParameter("email").equals(users.get(i).getEmail())) {
//				Kiểm tra password, xử lý đăng nhập
				if (req.getParameter("password").equals(users.get(i).getPassword())) {
					req.getSession().setAttribute("email", req.getParameter("email"));
					req.getSession().setAttribute("id", users.get(i).getId());
					req.getSession().setAttribute("role", users.get(i).getRole());
					
					model.addAttribute("success", true);
					
					return "redirect:/";
				} else {
					model.addAttribute("fail1", true);
					return "login-user";
				}
			}
		}
		
		model.addAttribute("fail2", true);
		return "login-user";
	}
	
//	Load view Signup
	@RequestMapping("/register")
	public String register(HttpServletRequest req, Model model) {
		return "register";
	}
	
//	Signup validation
	@RequestMapping("/signupCheck")
	public String signupCheck(HttpServletRequest req, Model model) {
		List<User> users = userService.list();
		
		for (int i=0; i<users.size(); i++) {
			if (req.getParameter("email").equals(users.get(i).getEmail())) {
					model.addAttribute("fail", true);
					return "register";
				}
			}
		
		User user = new User(LocalDateTime.now(), LocalDateTime.now(), null, null, null, req.getParameter("password"),
				req.getParameter("name"), req.getParameter("email"), req.getParameter("phone"), 2);
		
		userService.save(user);
		
		model.addAttribute("success", true);
		return "redirect:/login";
	}
	
//	Thực hiện chức năng search ở thanh search ở Home
	@RequestMapping("/search")
	public String search(HttpServletRequest req, Model model) {
		model.addAttribute("list", productService.listSearch1(req.getParameter("value")));
		model.addAttribute("value", req.getParameter("value"));
		
		return "search";
	}
	
//	Hiển thị view chức năng search nhiều tiêu chí
	@RequestMapping("/searchMultiple")
	public String searchMultiple(HttpServletRequest req, Model model) {
		model.addAttribute("listBrand", brandService.list());
		model.addAttribute("listCategory", categoryService.list());
		
		return "search-multiple";
	}
	
//	Trả về kết quả search nhiều tiêu chí
	@RequestMapping("/searchMulResult")
	public String searchMulResult(HttpServletRequest req, Model model) {
		model.addAttribute("list", productService.listMul(Integer.parseInt(req.getParameter("brand")), 
				Integer.parseInt(req.getParameter("category")), Integer.parseInt(req.getParameter("price")), 
				Integer.parseInt(req.getParameter("size")), Integer.parseInt(req.getParameter("color"))));
		
		model.addAttribute("listBrand", brandService.list());
		model.addAttribute("listCategory", categoryService.list());
		
		return "search-multiple";
	}
	
//	Hiển thị detail của product
	@RequestMapping("/detail/*")
	public String detail(HttpServletRequest req, Model model) {
		String id = req.getRequestURI().substring(13);
		model.addAttribute("product", productService.get(Integer.parseInt(id)));
		model.addAttribute("sizes", sizeService.listProduct(Integer.parseInt(id)));
		model.addAttribute("colors", colorService.listProduct(Integer.parseInt(id)));
		
		return "product-detail";
	}
	
//	Save product vào cart và hiển thị cart
	@RequestMapping("/cart")
	public String cart(HttpServletRequest req, Model model) {
		if (req.getParameter("id") != null) {
			OrderDetail od = new OrderDetail(LocalDateTime.now(), LocalDateTime.now(), 1, Integer.parseInt(req.getParameter("size")));
			
			orderDetailService.setProduct(od, Integer.parseInt(req.getParameter("id")));
		
			if (req.getSession().getAttribute("order") == null) {
				List<Orders> list = ordersService.list();
				if (list.size() == 0) {
					req.getSession().setAttribute("order", 1);
				} else {
					req.getSession().setAttribute("order", list.get(list.size()-1).getId()+1);
				}

				orderDetailService.setOrder1(od, (int)req.getSession().getAttribute("id"));
			} else {
				orderDetailService.setOrder2(od, (int)req.getSession().getAttribute("order"));
			}
			orderDetailService.save(od);
		}
		List<OrderDetail> list = orderDetailService.listOrder((int)req.getSession().getAttribute("order"));
		
		int total = 0;
		for (int i=0; i<list.size(); i++) {
			total = total + list.get(i).getQuantity() * list.get(i).getProduct().getPrice();
		}
		model.addAttribute("list", list);
		model.addAttribute("total", total);
		model.addAttribute("order", ordersService.get((int)req.getSession().getAttribute("order")));
		
		return "cart";
	}
	
//	Cộng thêm sản phẩm ở cart
	@RequestMapping("/plusShoe/*")
	public String plusShoe(HttpServletRequest req, Model model) {
		String id = req.getRequestURI().substring(15);
		OrderDetail od = orderDetailService.get(Integer.parseInt(id));
		od.setQuantity(od.getQuantity()+1);
		orderDetailService.update(od);
		
		return "redirect:/cart";
	}
	
//	Cộng thêm sản phẩm ở cart
	@RequestMapping("/minusShoe/*")
	public String minusShoe(HttpServletRequest req, Model model) {
		String id = req.getRequestURI().substring(16);
		OrderDetail od = orderDetailService.get(Integer.parseInt(id));
		if (od.getQuantity() > 1) {
			od.setQuantity(od.getQuantity()-1);
			orderDetailService.update(od);
		}

		
		return "redirect:/cart";
	}
	
//	Cộng thêm sản phẩm ở cart
	@RequestMapping("/deleteShoe/*")
	public String deleteShoe(HttpServletRequest req, Model model) {
		String id = req.getRequestURI().substring(17);
		orderDetailService.delete(Integer.parseInt(id));
		
		return "redirect:/cart";
	}
	
//	Save thông tin vào Orders và load trang order-result
	@RequestMapping(value = "/checkout", method = RequestMethod.POST)
	public String checkout(@ModelAttribute("checkoutForm") CheckoutDto dto, HttpServletRequest req, Model model) {
		
		ordersService.updateOrder((int)req.getSession().getAttribute("order"), dto.getName(), 
				 dto.getPhone(), dto.getAddress(), dto.getTotal());
		
		model.addAttribute("orderNum", req.getSession().getAttribute("order"));
		req.getSession().removeAttribute("order");

		return "order-result";
	}
	
//	Hiển thị tất cả order trong tài khoản
	@RequestMapping("/myOrders")
	public String myOrders(HttpServletRequest req, Model model) {
		model.addAttribute("orders", ordersService.listAccount((int)req.getSession().getAttribute("id")));
		model.addAttribute("user", userService.get((int)req.getSession().getAttribute("id")));
		
		return "my-orders";
	}
	
//	Hiển thị chi tiết đơn hàng
	@RequestMapping("/order/*")
	public String order(HttpServletRequest req, Model model) {
		String id = req.getRequestURI().substring(12);
		model.addAttribute("list", orderDetailService.listOrder(Integer.parseInt(id)));
		model.addAttribute("order", ordersService.get(Integer.parseInt(id)));
		return "order-detail-user";
	}
}
