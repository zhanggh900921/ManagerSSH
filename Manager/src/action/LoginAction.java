package action;

import java.util.Date;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

public class LoginAction extends ActionSupport implements SessionAware{
	private String username;
	private String password;
	
	
	
	private Map<String,Object> session;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	public String checkUser() {

		if(username==null || !username.equals("admin")) {
			this.addFieldError("error", "�û���������");
			return ERROR;
		}
		else if(password==null || !password.equals("admin")) {
			this.addFieldError("error", "�������");
			return ERROR;
		}
		else {
			Date time = new Date();
			
			session.put("admin", "admin");
			return SUCCESS;
		}
	}
	public void setSession(Map<String, Object> session) {
		this.session = session;
		
	}

}
