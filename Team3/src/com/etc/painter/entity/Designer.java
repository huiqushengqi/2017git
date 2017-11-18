package com.etc.painter.entity;
//���ʦʵ����
public class Designer {
private int der_id;
private String der_name;//���ʦ����
private String der_title;//���ʦְ��
private String der_about;//���ʦ���
private String der_work;//���ʦ��Ʒ
private String der_img;//���ʦ��Ƭ
private String der_date;
private String der_phone;
public String getDer_phone() {
	return der_phone;
}
public void setDer_phone(String derPhone) {
	der_phone = derPhone;
}
public String getDer_date() {
	return der_date;
}
public void setDer_date(String derDate) {
	der_date = derDate;
}
public int getDer_id() {
	return der_id;
}
public void setDer_id(int der_id) {
	this.der_id = der_id;
}
public String getDer_name() {
	return der_name;
}
public void setDer_name(String der_name) {
	this.der_name = der_name;
}
public String getDer_title() {
	return der_title;
}
public void setDer_title(String der_title) {
	this.der_title = der_title;
}
public String getDer_about() {
	return der_about;
}
public void setDer_about(String der_about) {
	this.der_about = der_about;
}
public String getDer_work() {
	return der_work;
}
public void setDer_work(String der_work) {
	this.der_work = der_work;
}
public String getDer_img() {
	return der_img;
}
public void setDer_img(String der_img) {
	this.der_img = der_img;
}
public Designer(int der_id, String der_name, String der_title,
		String der_about, String der_work, String der_img) {
	super();
	this.der_id = der_id;
	this.der_name = der_name;
	this.der_title = der_title;
	this.der_about = der_about;
	this.der_work = der_work;
	this.der_img = der_img;
}
public Designer() {
	super();
}

}
