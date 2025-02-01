package com.foodapps.dao;

import com.foodapps.model.OrderHistory;

public interface OrderHistoryDao {
	
	int insertOrderHistory(OrderHistory oh);
	OrderHistory fecthOrderOnId(int userId);
	int updateOrderHistory(int ohid, String status);

}
