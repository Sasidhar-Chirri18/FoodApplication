package com.foodapps.dao;

import java.util.List;

import com.foodapps.model.User;

public interface UserDao {
	List<User> getUsers();
	String getPwdByEmail(String email);
	int insertUser(User user);
	int updateUserById(int userId,String address);
	int deleteUserByID(int id);
	boolean isEmailExist(String email);
	boolean isMobileExist(String mobile);
	String getUsernameByEmail(String email);
	int getUserIdByEmail(String email);
	User fetchAllByEmail(String email);
}




