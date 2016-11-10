package com.niit.ShoppingCart.dao.impl;


import java.beans.Transient;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.ShoppingCart.model.Supplier;
import com.niit.ShoppingCart.model.Supplier;
@Repository("SupplierDAO")
public class SupplierDAOImpl implements SuppliersDao {

	@Autowired // connecting my objects
	SessionFactory sessionFactory;
	
	public SupplierDAOImpl(SessionFactory sessionFactory )
	{
		this.sessionFactory=sessionFactory;
	}
	@Transactional
	public boolean save(Supplier suppliers) {
	
		try {
			sessionFactory.getCurrentSession().save(suppliers);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	@Transactional
	public boolean update(Supplier suppliers) {
		
		try {
			sessionFactory.getCurrentSession().update(suppliers);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}
	@Transactional
	public boolean delete(Supplier suppliers) {
		
		try {
			sessionFactory.getCurrentSession().delete(suppliers);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	@Transactional
	public Supplier get(String id) {
		
	 return (Supplier)  sessionFactory.getCurrentSession().get(Suppliers.class, id);
		
	}
	@Transactional
	public List<Supplier> list() {
	
		String hql = "from Supplier";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		return query.list();
		
	}
}