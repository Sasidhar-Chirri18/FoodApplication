package com.foodapps.dao;

import com.foodapps.model.OrderItems;

public interface OrderItemsDao {
	
	int insert(OrderItems orderItems);
	OrderItems fecthById(int order_id);

}
