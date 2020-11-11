package com.session;

import java.util.ArrayList;
import java.util.List;

import com.sun.org.apache.xpath.internal.operations.Equals;

public class UserRepository {
	
	//DB로 가정
	private static List<User> userList = new ArrayList<>();

	public static List<User> getUserList() {
		return userList;
	}

	public static void setUserList(User user) {
		userList.add(user);
	}
	
//	public static User getUser(String id) { 
//		User user = new User();
//		for (int i = 0; i <= userList.size(); i++) {
//			if (userList.get(i).getId().equals(id)) {
//				return userList.get(i);
//			}
//			
//		}
//		return null;
//		
//	}

	public static User getUser(String id) { 
		for (User user : userList) {
			if (user.getId().equals(id)) {
				return user;
			}
		}
		return null;
	}
	
	
	//회원 탈퇴
	public static void delUser(String id) {
		userList.remove(getUser(id));
	}
		
	
	
	
	
}

