package com.niit.ShoppingCart.dao.impl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Harsha.Flamingo.DAO.CategoryDao;
import com.Harsha.Flamingo.model.Category;
import com.niit.ShoppingCart.dao.CategoryDAO;
@Repository("categoryDao")
public class CategoryDAOImpl implements CategoryDAO {

	@Autowired
	SessionFactory sessionFactory;
	
	public CategoryDAOImpl(SessionFactory sessionFactory )
	{
		this.sessionFactory=sessionFactory;
	}
	@Transactional
	public boolean save(CategoryDAO category) {
	
		try {
			sessionFactory.getCurrentSession().save(category);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
	}
	@Transactional 
	public boolean update(CategoryDAO category) {
		
		try {
			sessionFactory.getCurrentSession().update(category);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}
	@Transactional
	public boolean delete(CategoryDAO category) {
		
		try {
			sessionFactory.getCurrentSession().delete(category);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	@Transactional
	public CategoryDAO get(String id) {
		
	 return (CategoryDAO)  sessionFactory.getCurrentSession().get(Category.class, id);
		
	}
	@Transactional
	public List<CategoryDAO> list() {
	
		String hql = "from Category";
		
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		
		return query.list();
		
	}
}

