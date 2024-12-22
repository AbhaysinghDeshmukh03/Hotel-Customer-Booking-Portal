package com.tka.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tka.dao.CusDao;
import com.tka.entity.Customer;

@Service
public class CusService {

	@Autowired
	CusDao cd;
	
	public String addCustomer(Customer cus) {
		String s = cd.addCustomer(cus);
		return "s";
	}

	public List<Customer> getCustomer() {
		
		return cd.getCustomer();
	}

	public String deleteCustomer(int id) {
		return cd.deleteCustomer(id);
	}

	public Customer getToUpdateCustomer(int cid) {
		return cd.getToUpdateCustomer(cid);
	}

	public String getToUpdateCustomer(Customer cus) {
		return cd.getToUpdateCustomer(cus);
	}

}
