package com.niit.peinto.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.peinto.model.Cart;
import com.niit.peinto.model.CartItem;
import com.niit.peinto.model.UserOrder;
@Repository
@Transactional
public class OrderDAOImpl  implements OrderDAO{

    @Autowired
    private SessionFactory sessionFactory;

    @Autowired
    private CartDAO cartDAO;
    public void addOrder(UserOrder userOrder) {
        Session session = sessionFactory.getCurrentSession();
        session.saveOrUpdate(userOrder);
        session.flush();
    }
    public double getOrderGrandTotal(int cartId) {
        double grandTotal=0;
        Cart cart = cartDAO.getCartById(cartId);
        List<CartItem> cartItems = cart.getCartItems();

        for (CartItem item : cartItems) {
            grandTotal+=item.getTotalPrice();
        }

        return grandTotal;
    }
}


