package com.xc.domain;


import java.util.Date;


/**
 * @author XL004
 *
 */
public class User {
	private Integer user_id;//账号id
	private String user_idcard;//登陆id
	private String user_password;//密码
	
	private String user_cardtype;//id类型    1:身份证   2:学生证
	private String user_name;//用户名字
	private String user_sex;//性别
	
	private String user_telphone;//电话	
	private Date user_inDate;//注册日期
	private Integer user_error;//违规次数
	
	private Integer user_state=1;//账号状态    0：未激活   1：已激活

	public Integer getUser_id() {
		return user_id;
	}

	public void setUser_id(Integer user_id) {
		this.user_id = user_id;
	}

	public String getUser_idcard() {
		return user_idcard;
	}

	public void setUser_idcard(String user_idcard) {
		this.user_idcard = user_idcard;
	}

	public String getUser_password() {
		return user_password;
	}

	public void setUser_password(String user_password) {
		this.user_password = user_password;
	}



	public String getUser_cardtype() {
		return user_cardtype;
	}

	public void setUser_cardtype(String user_cardtype) {
		this.user_cardtype = user_cardtype;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_sex() {
		return user_sex;
	}

	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}

	public String getUser_telphone() {
		return user_telphone;
	}

	public void setUser_telphone(String user_telphone) {
		this.user_telphone = user_telphone;
	}

	public Date getUser_inDate() {
		return user_inDate;
	}

	public void setUser_inDate(Date user_inDate) {
		this.user_inDate = user_inDate;
	}

	public Integer getUser_error() {
		return user_error;
	}

	public void setUser_error(Integer user_error) {
		this.user_error = user_error;
	}

	public Integer getUser_state() {
		return user_state;
	}

	public void setUser_state(Integer user_state) {
		this.user_state = user_state;
	}

	@Override
	public String toString() {
		return "User [user_id=" + user_id + ", user_idcard=" + user_idcard + ", user_password=" + user_password
				+ ", user_cardtype=" + user_cardtype + ", user_name=" + user_name + ", user_sex=" + user_sex
				+ ", user_telphone=" + user_telphone + ", user_inDate=" + user_inDate + ", user_error=" + user_error
				+ ", user_state=" + user_state + "]";
	}
	
	
}
