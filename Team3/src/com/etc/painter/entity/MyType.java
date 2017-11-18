package com.etc.painter.entity;

import java.util.List;

//装锟睫帮拷锟斤拷锟斤拷实锟斤拷锟斤拷
public class MyType {
private int etype_id;
private String etype_name;
private List<Example> mylist;
public List<Example> getList() {
	return mylist;
}
public void setList(List<Example> list) {
	this.mylist = list;
}
public int getEtype_id() {
	return etype_id;
}
public void setEtype_id(int etypeId) {
	etype_id = etypeId;
}
public String getEtype_name() {
	return etype_name;
}
public void setEtype_name(String etypeName) {
	etype_name = etypeName;
}
public MyType(int etypeId, String etypeName) {
	super();
	etype_id = etypeId;
	etype_name = etypeName;
}
public MyType() {
	super();
}


}
