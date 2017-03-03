package com.model;

import java.util.ArrayList;
import java.util.List;

public class OrderDto {
		private List<Order> list = new ArrayList<Order>();
		@SuppressWarnings({ "rawtypes", "unchecked" })
		public void setList(List list2){
			list = list2;
		}
		
		public Order getOrder(int i){
			return  list.get(i);
		}
		
		public int size(){
			return list.size();
		}
	
}
