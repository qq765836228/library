package com.xc.domain;

public class Admin {
		//管理员id
		private Integer admin_id;
		//管理员账号
		private String admin_card;
		//管理员密码
		private String admin_password;
		//管理员名字
		private String admin_name;
		
		public Integer getAdmin_id() {
			return admin_id;
		}
		public void setAdmin_id(Integer admin_id) {
			this.admin_id = admin_id;
		}
		public String getAdmin_card() {
			return admin_card;
		}
		public void setAdmin_card(String admin_card) {
			this.admin_card = admin_card;
		}
		public String getAdmin_password() {
			return admin_password;
		}
		public void setAdmin_password(String admin_password) {
			this.admin_password = admin_password;
		}
		public String getAdmin_name() {
			return admin_name;
		}
		public void setAdmin_name(String admin_name) {
			this.admin_name = admin_name;
		}		
}
