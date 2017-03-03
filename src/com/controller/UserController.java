package com.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.model.User;
import com.service.MenuService;
import com.service.OrderService;
import com.service.UserService;
import com.service.lyService;

@Controller
public class UserController {
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private MenuService menuService;
	
	@Autowired
	private OrderService orderService;
	
	@Autowired
	private lyService lyService;
	
	@RequestMapping(value={"/home","/"})
	public String home(String userid,String password,String address,String name,String phone,String actiontype,Model model){
		if(actiontype!=null){
			if(actiontype.equals("select")){
				User user=userService.selectUser(userid);
				model.addAttribute("user",user);
			}
			else if(actiontype.equals("insert")){
				userService.insertUser(userid,password,address,name,phone);
			}
			else if(actiontype.equals("delete")){
				userService.deleteUser(userid);
			}
			else if(actiontype.equals("update")){
				userService.updateUser(userid,password,address,name,phone);
			}
		}
		
		return "home";
	}
	
	@RequestMapping(value={"/zhu"})
	public String zhu(String menuid,String name,String price1,String price2,Model model){
		if(menuid!=null){
			model.addAttribute("list",menuService.search(menuid,name, price1,price2));
			model.addAttribute("menuid",menuid);
			model.addAttribute("name",name);	
			model.addAttribute("price1",price1);
			model.addAttribute("price2",price2);
			
		}
		return "index";
	}
	@RequestMapping(value={"/foodAdd"})
	public String add(){
		//menuService.insert("1111", "12345678", foodname,foodprice);
	
		return "foodAdd";
	}
	
	@RequestMapping(value={"/FoodAddServlet"})
	public String add(String foodname,String foodprice,String foodimages,Model model){
		menuService.insert("1111", "12345678", foodname,foodprice);
		model.addAttribute("message", "1111");
	
		return "foodAdd";
	}
	@RequestMapping(value={"/index"})
	public String ss(Model model){
		model.addAttribute("list",menuService.search("", "", "", ""));
		return "index";
	}
	
	@RequestMapping(value={"/orderInfo"})
	public String honey(Model model){
		return "orderInfo";
	}	
	
	@RequestMapping(value={"/orderSubmit"})
	public String orderSubmit(String id,String name,String price,String num,Model model,HttpSession session){
		model.addAttribute("ids", id);
		model.addAttribute("names", name);
		model.addAttribute("prices", price);
		model.addAttribute("nums", num);
		model.addAttribute("user", userService.selectUser(session.getAttribute("user").toString()));
		return "orderInfo";
	}
	
	@RequestMapping(value={"/createOrder"})
	public String createOrder(String menuid,String num,String content,Model model,HttpSession session){
		Date date=new Date();
		DateFormat format=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		String time=format.format(date);
		String temp1[]=menuid.split(",");
		String temp2[]=num.split(",");
		for(int i=0;i<temp1.length;i++){
		orderService.insertOrder("", session.getAttribute("user").toString(), temp1[i], time, temp2[i]);}
		if(!content.equals(""))
		lyService.insertly(session.getAttribute("user").toString(), time, content);
		return showOrder(model);
	}
	
	@RequestMapping(value={"/showOrder"})
	public String showOrder(Model model){
		model.addAttribute("list", orderService.selectOrder(""));
		model.addAttribute("lylist", lyService.selectly("", ""));
		return "showOrder";
	}
	
	@RequestMapping(value={"/shopcar"})
	public String honey2(Model model){
	
		return "shopcar";
	}
	@RequestMapping(value={"/login"})
	public String login(){
		return "login";
	}
	@RequestMapping(value={"/loginServlet"})
	public String loginServlet(String id,String password,Model model,HttpSession session){
		if(userService.login(id, password)==1){
			session.setAttribute("user", id);
			return "index";
		}
		else
			model.addAttribute("message", "1");
		return "login";
	}
}

