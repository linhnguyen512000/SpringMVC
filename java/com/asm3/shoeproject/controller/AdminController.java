package com.asm3.shoeproject.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.time.LocalDateTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.asm3.shoeproject.model.Product;
import com.asm3.shoeproject.model.User;
import com.asm3.shoeproject.service.BrandService;
import com.asm3.shoeproject.service.CategoryService;
import com.asm3.shoeproject.service.OrderDetailService;
import com.asm3.shoeproject.service.OrdersService;
import com.asm3.shoeproject.service.ProductService;
import com.asm3.shoeproject.service.UserService;



@Controller
@RequestMapping("/admin")
public class AdminController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private BrandService brandService;
	
	@Autowired
	private CategoryService categoryService;
	
	@Autowired
	private OrdersService ordersService;
	
	@Autowired
	private OrderDetailService orderDetailService;
	
	@Autowired
	private ProductService productService;
	
//	Hiển thị danh sách sản phẩm
	@RequestMapping("/")
	public String home(HttpServletRequest req, Model model) {
		model.addAttribute("list", productService.list());
		model.addAttribute("listBrand", brandService.list());
		model.addAttribute("listCategory", categoryService.list());
		
		return "products";
	}
	
//	Hiển thị trang login
	@RequestMapping("/login")
	public String login() {
		return "login";
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
					
					return "redirect:/admin/";
				} else {
					model.addAttribute("fail1", true);
					return "login";
				}
			}
		}
		
		model.addAttribute("fail2", true);
		return "login";
	}
	
//	Lưu các thông tin của sản phẩm mới vào DB
	@RequestMapping("/addProduct")
	public String addProduct(HttpServletRequest req,@RequestParam("img") CommonsMultipartFile file, Model model) {
		byte[] bytes = file.getBytes();
		
		String path1 = req.getServletContext().getRealPath("/") + "img" + File.separator + file.getOriginalFilename();
		
		try {
			FileOutputStream fos = new FileOutputStream(path1);
			fos.write(bytes);
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path2 = "img/" + file.getOriginalFilename();
		
		Product product = new Product(LocalDateTime.now(), LocalDateTime.now(), req.getParameter("description"), 0,
				req.getParameter("name"), Integer.parseInt(req.getParameter("price")), req.getParameter("status"), null,
				path2, LocalDateTime.now(), LocalDateTime.now());
		productService.addProduct(product, Integer.parseInt(req.getParameter("brand")), Integer.parseInt(req.getParameter("category")));
		
		model.addAttribute("success1", true);
		
		return "redirect:/admin/";
	}
	
//	Search product theo tiêu chí người dùng lựa chọn
	@RequestMapping("/searchProduct")
	public String searchProduct(HttpServletRequest req, Model model) {
		model.addAttribute("list", productService.listSearch(req.getParameter("name"), req.getParameter("value")));
		model.addAttribute("listBrand", brandService.list());
		model.addAttribute("listCategory", categoryService.list());
		
		return "products";
	}
	
//	Xóa product theo id
	@RequestMapping("/deleteProduct")
	public String deleteProduct(HttpServletRequest req, Model model) {
		Product p = productService.get(Integer.parseInt(req.getParameter("id")));
		productService.delete(p);
		
		return "redirect:/admin/";
	}
	
//	Lưu các thông tin của sản phẩm mới vào DB
	@RequestMapping("/updateProduct")
	public String updateProduct(HttpServletRequest req,@RequestParam("img") CommonsMultipartFile file, Model model) {
		byte[] bytes = file.getBytes();
		
		String path1 = req.getServletContext().getRealPath("/") + "img" + File.separator + file.getOriginalFilename();
		
		try {
			FileOutputStream fos = new FileOutputStream(path1);
			fos.write(bytes);
			fos.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String path2 = "img/" + file.getOriginalFilename();
		
		productService.updateProduct(Integer.parseInt(req.getParameter("id")), LocalDateTime.now(), req.getParameter("description"), req.getParameter("name"), 
				 Integer.parseInt(req.getParameter("price")), req.getParameter("status"), path2, LocalDateTime.now(),
				 Integer.parseInt(req.getParameter("brand")), Integer.parseInt(req.getParameter("category")));
		
		return "redirect:/admin/";
	}
	
//	Thay đổi status của sản phẩm
	@RequestMapping("/statusProduct")
	public String statusProduct(HttpServletRequest req, Model model) {
		productService.changeStatus(Integer.parseInt(req.getParameter("id")));
		
		return "redirect:/admin/";
	}
	
//	Hiển thị trang Order
	@RequestMapping("/orders")
	public String orders(HttpServletRequest req, Model model) {
		model.addAttribute("list", ordersService.list());
		
		return "orders";
	}
	
//	Hiển thị thông tin chi tiết Order
	@RequestMapping("/orderDetail")
	public String orderDetail(HttpServletRequest req, Model model) {
		model.addAttribute("order", ordersService.get(Integer.parseInt(req.getParameter("id"))));
		model.addAttribute("list", orderDetailService.listOrder(Integer.parseInt(req.getParameter("id"))));
		
		return "order-detail";
	}
	
//	Hủy đơn hàng
	@RequestMapping("/cancelOrder")
	public String cancelOrder(HttpServletRequest req, Model model) {
		ordersService.setDeliveryStatus(Integer.parseInt(req.getParameter("id")), 6);
		
		return "redirect:/admin/orders";
	}
	
//	Duyệt đơn hàng
	@RequestMapping("/acceptOrder")
	public String acceptOrder(HttpServletRequest req, Model model) {
		ordersService.setDeliveryStatus(Integer.parseInt(req.getParameter("id")), 2);
		
		return "redirect:/admin/orders";
	}
	
//	Chuyển đơn hàng sang Đang giao hàng
	@RequestMapping("/beginDelivery")
	public String beginDelivery(HttpServletRequest req, Model model) {
		ordersService.setDeliveryStatus(Integer.parseInt(req.getParameter("id")), 3);
		
		return "redirect:/admin/orders";
	}
	
//	Chuyển trạng thái sang Giao hàng thành công
	@RequestMapping("/successDelivery")
	public String successDelivery(HttpServletRequest req, Model model) {
		ordersService.setDeliveryStatus(Integer.parseInt(req.getParameter("id")), 5);
		
		return "redirect:/admin/orders";
	}
	
//	Chuyển trạng thái sang giao hàng lần 2
	@RequestMapping("/failDelivery1")
	public String failDelivery1(HttpServletRequest req, Model model) {
		ordersService.setDeliveryStatus(Integer.parseInt(req.getParameter("id")), 4);
		
		return "redirect:/admin/orders";
	}
	
//	Chuyển trạng thái sang đã hủy sau khi giao thất bại lần 2
	@RequestMapping("/failDelivery2")
	public String failDelivery(HttpServletRequest req, Model model) {
		ordersService.setDeliveryStatus(Integer.parseInt(req.getParameter("id")), 6);
		
		return "redirect:/admin/orders";
	}
	
//	Search product theo tiêu chí người dùng lựa chọn
	@RequestMapping("/searchOrders")
	public String searchOrders(HttpServletRequest req, Model model) {
		model.addAttribute("list", ordersService.listSearch(req.getParameter("name"), req.getParameter("value")));
		
		return "orders";
	}
}
