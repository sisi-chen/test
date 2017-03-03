package com.model;

import java.util.ArrayList;
import java.util.List;

public class MenuDto {
	private List<Menu> list = new ArrayList<Menu>();
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void setList(List list2){
		list = list2;
	}
	
	public Menu getMenu(int i){
		return  list.get(i);
	}
	
	public int size(){
		return list.size();
	}
}
