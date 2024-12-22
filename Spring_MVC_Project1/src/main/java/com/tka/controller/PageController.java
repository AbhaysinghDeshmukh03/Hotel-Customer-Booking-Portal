package com.tka.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.tka.entity.Customer;
import com.tka.service.CusService;

@Controller
public class PageController {

	@Autowired
	CusService cs;
	
	@GetMapping("/home")
	public String homepage() {
		return "index";
	}
	
	@GetMapping("/add-page")
	public String addPage() {
		return "add";
	}
	
	@PostMapping("/add-customer")
	public String addCustomer(@ModelAttribute Customer cus) {
		cs.addCustomer(cus);
		return "add";
	}
	
	//public String displayCustomer() 
	@GetMapping("/get-customer")
	public String getCustomer(Model model) {
		List<Customer> lc = cs.getCustomer();
		model.addAttribute("customer", lc);
		return "display";
	}
	
	@GetMapping("/delete-customer")
	public String deleteCustomer(@RequestParam int cid) {
		cs.deleteCustomer(cid);
		return "redirect:/get-customer";
	}
	
	@GetMapping("/get-to-update-customer")
	public String getToUpdateCustomer(@RequestParam int cid,Model model) {
		Customer customer = cs.getToUpdateCustomer(cid);
		model.addAttribute("c",customer);
		return "updatepage";
	}
	
	@PostMapping("/update-customer")
	public String updateCustomer(@ModelAttribute Customer cus) {
		cs.getToUpdateCustomer(cus);
		return "redirect:/get-customer";
	}
	
}
