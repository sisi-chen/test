package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="orders")
public class Order {
		@Id
		@Column(name="orderid")
		private String orderid;
		
		@Column(name="userid")
		private String userid;
		
		@Column(name="menuid")
		private String menuid;
		
		@Column(name="time")
		private String time;
		
		@Column(name="num")
		private String num;
		
		public String getOrderid() {
			return orderid;
		}

		public void setOrderid(String orderid) {
			this.orderid = orderid;
		}


		public String getUserid() {
			return userid;
		}

		public void setUserid(String userid) {
			this.userid = userid;
		}

		public String getMenuid() {
			return menuid;
		}

		public void setMenuid(String menuid) {
			this.menuid = menuid;
		}

		public String getTime() {
			return time;
		}

		public void setTime(String time) {
			this.time = time;
		}

		public String getNum() {
			return num;
		}

		public void setNum(String num) {
			this.num = num;
		}

		
		

}
