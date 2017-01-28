package com.niit.peinto.dao;

import com.niit.peinto.model.BillingAddress;

public interface BillingAddressDAO {
	void saveOrUpdate(BillingAddress billingAddress);
 void deleteBillingAddress(String billingAddressId);
BillingAddress getBillingAddress(String billingAddressId);

}


