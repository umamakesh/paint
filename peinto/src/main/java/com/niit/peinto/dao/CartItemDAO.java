package com.niit.peinto.dao;

import java.util.List;

import com.niit.peinto.model.Cart;
import com.niit.peinto.model.CartItem;


public interface CartItemDAO {
	void addCartItem(CartItem cartItem);

    void removeCartItem(CartItem cartItem);

    void removeAllCartItems(Cart cart);

    CartItem getCartItemByItemId (int itemId);

    public List<CartItem> list();
}
