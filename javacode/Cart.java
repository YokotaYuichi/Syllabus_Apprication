package javacode;

import java.util.Iterator;

public class Cart extends SubjectCollection {

	public int getTotalCredit() {

		int total = 0;
	        Iterator<Subject> localIter = subjects.iterator();
	        while (localIter.hasNext()) {
	            Subject s = localIter.next();
		    total = total + s.getCredit();
	        }
		return total;
	    }

	private String userName;
	private String userId;
	private String userMailAddress;

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public void setUserMailAddress(String userMailAddress) {
		this.userMailAddress = userMailAddress;
	}


	public String getUserName() {
		return userName;
	}

	public String getUserId() {
		return userId;
	}

	public String getUserMailAddress() {
		return userMailAddress;
	}

	public void submit() {

	}

	public boolean isUserRegistered() {
	    if (userName != null && userId != null && userMailAddress != null)//userName, userId, userMailAddress いずれも null ではない
	        return true;
	    else
	        return false;
	}
}
