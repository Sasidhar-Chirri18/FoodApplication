package com.foodapps.daoimpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.foodapps.DataBase.ConnectionFactory;
import com.foodapps.dao.UserDao;
import com.foodapps.model.User;


public class UserDaoImpl implements UserDao{
	
	@Override
	public int insertUser(User user) {

	    
	  try {
		
		  PreparedStatement pstmt=ConnectionFactory.requestConnection()
		  .prepareStatement("insert into users (username,password,email,mobile)"
				 	+ " values (?,?,?,?)");
		  
		  pstmt.setString(1, user.getUserName());
		  pstmt.setString(2, user.getPassword());
		  pstmt.setString(3, user.getEmail()); 
		  pstmt.setString(4, user.getMobile());
		  
		 return pstmt.executeUpdate();
	} 
	  
	catch (Exception e) {
		e.printStackTrace();
	}
	  
	  
		
		return 0;
	}
	
	@Override
	public String getPwdByEmail(String email) {
		
	    try {
			
	    	PreparedStatement pstmt=ConnectionFactory.
	    			requestConnection().prepareStatement("select * from users where email=?");
	    
	      pstmt.setString(1, email);
	      
	      ResultSet res=pstmt.executeQuery();
	      
	      if(res.next()) {
	          
	    	  return  res.getString(5);
	      }
	    	
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return "";
	}
	
	@Override
	public List<User> getUsers() {
		List<User> users=new ArrayList<>();
		
		try {
			Statement stmt=ConnectionFactory.requestConnection()
			        .createStatement();
			
		ResultSet res=	stmt.executeQuery("select * from users");
	    
		while(res.next()) {
		  
			User user=new User(res.getInt(1),
					res.getString(2),
					res.getString(3),
					res.getString(4),
					res.getString(5),
					res.getString(6),
					res.getString(7));
			
			users.add(user);
			
			
		}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		return users;
	}
	
	@Override
	public int updateUserById(int userId,String address) {
		
	try {
		PreparedStatement pstmt=ConnectionFactory.requestConnection()
				.prepareStatement("update users "
						+ "set address=? where user_id=?");
		
		pstmt.setString(1, address);
		pstmt.setInt(2, userId);
		
	 return pstmt.executeUpdate();
		
	} catch (Exception e) {
		
		e.printStackTrace();
	}
		
		
	return 0;	
		
		
	}
	
	@Override
	public int deleteUserByID(int id) {
		
		try {
			PreparedStatement pstmt=ConnectionFactory.requestConnection()
					.prepareStatement("delete from users "
							+ "where user_id=?");
			
			pstmt.setInt(1, id);
			
			
		 return pstmt.executeUpdate();
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}

		
		
		
		return 0;
	}

	@Override
	public boolean isEmailExist(String email) {
		try {
			PreparedStatement pstmt=ConnectionFactory.requestConnection()
					.prepareStatement("select count(email) from users where email=? ");
			
			pstmt.setString(1, email);
			
			   ResultSet res=pstmt.executeQuery();
			    res.next();
			    if(res.getInt(1)>=1) {
			    	 return true;
			    }
			    
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}

		
		
		
		return false;
	}

	@Override
	public boolean isMobileExist(String mobile) {
		try {
			PreparedStatement pstmt=ConnectionFactory.requestConnection()
					.prepareStatement("select count(mobile) from users where mobile=? ");
			
			pstmt.setString(1, mobile);
			
			   ResultSet res=pstmt.executeQuery();
			    res.next();
			    if(res.getInt(1)>=1) {
			    	 return true;
			    }
			    
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}

		
		
		
		return false;

	}

	@Override
	public String getUsernameByEmail(String email) {
	    try {
			
	    	PreparedStatement pstmt=ConnectionFactory.
	    			requestConnection().prepareStatement("select * from users where email=?");
	    
	      pstmt.setString(1, email);
	      
	      ResultSet res=pstmt.executeQuery();
	      
	      if(res.next()) {
	          
	    	  return  res.getString(2);
	      }
	    	
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return "";
	}

	@Override
	public int getUserIdByEmail(String email) {
    try {
			
	    	PreparedStatement pstmt=ConnectionFactory.
	    			requestConnection().prepareStatement("select * from users where email=?");
	    
	      pstmt.setString(1, email);
	      
	      ResultSet res=pstmt.executeQuery();
	      
	      if(res.next()) {
	          
	    	  return  res.getInt(1);
	      }
	    	
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		
		return 0;
	}
	public User fetchAllByEmail(String email) {
        User user = null;
        try (Connection con = ConnectionFactory.requestConnection()) {
            String query = "SELECT * FROM users WHERE email = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setUserId(rs.getInt("userId")); // Adjust column names if different in DB
                user.setUserName(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setEmail(rs.getString("email"));
                user.setMobile(rs.getString("mobile")); // Add other attributes if necessary
            }
            rs.close();
            ps.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return user;
    }
}
	






