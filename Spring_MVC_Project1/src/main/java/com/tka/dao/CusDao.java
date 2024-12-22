package com.tka.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.tka.entity.Customer;
@Repository
public class CusDao {
	
	@Autowired
	SessionFactory sf;

	public String addCustomer(Customer cus) {
		try {
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		session.save(cus);
		tx.commit();
		session.close();
		return "Customer Added Successfully";
		}catch (Exception e) {
			e.printStackTrace();
			return "Something Went Wrong";
		}
	}

	public List<Customer> getCustomer() {
		Session session = sf.openSession();
		
		Criteria criteria = session.createCriteria(Customer.class);
		List list = criteria.list();
		return list;
	}

	public String deleteCustomer(int id) {
		Session session = sf.openSession();
		Transaction tx = session.beginTransaction();
		
		Customer customer = session.get(Customer.class, id);
		if(customer!=null) {
			session.delete(customer);
			tx.commit();
			session.close();
			return "Customer Deleted Successfully";
		}else {
			return "Something Went Wrong";
		}
	}

	public Customer getToUpdateCustomer(int cid) {
		Session session = sf.openSession();
		Customer customer = session.get(Customer.class, cid);
		return customer;
	}

	public String getToUpdateCustomer(Customer cus) {
		try {
			Session session = sf.openSession();
			Transaction tx = session.beginTransaction();
			
			session.saveOrUpdate(cus);
			tx.commit();
			session.close();
			return "Customer Updated Successfully";
			}catch (Exception e) {
				e.printStackTrace();
				return "Something Went Wrong";
			}
	}

}
