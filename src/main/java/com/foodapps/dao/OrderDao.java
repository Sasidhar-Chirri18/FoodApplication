package com.foodapps.dao;

import com.foodapps.model.Order;

public interface OrderDao {
	int insert(Order order);
	Order fecthById(int order_id);
	int updateById(int ord_id, String status);

}
