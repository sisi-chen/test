package com.model;

import java.util.ArrayList;
import java.util.List;

public class lyDto {
	private List<ly> list = new ArrayList<ly>();
	@SuppressWarnings({ "rawtypes", "unchecked" })
	public void setList(List list2){
		list = list2;
	}
	
	public ly getly(int i){
		return  list.get(i);
	}
	
	public int size(){
		return list.size();
	}
}
