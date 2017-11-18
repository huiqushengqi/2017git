package com.etc.painter.entity;
//װ�޲���ʵ����
public class Material {
private Integer mat_id;
private String mat_name;
private String mat_about;
private double mat_price;
private String mat_cover;
private MType mat_type;

public String getMat_cover() {
	return mat_cover;
}
public void setMat_cover(String mat_cover) {
	this.mat_cover = mat_cover;
}


public MType getMat_type() {
	return mat_type;
}
public void setMat_type(MType mat_type) {
	this.mat_type = mat_type;
}

public Integer getMat_id() {
	return mat_id;
}
public void setMat_id(Integer mat_id) {
	this.mat_id = mat_id;
}
public String getMat_name() {
	return mat_name;
}
public void setMat_name(String mat_name) {
	this.mat_name = mat_name;
}
public String getMat_about() {
	return mat_about;
}
public void setMat_about(String mat_about) {
	this.mat_about = mat_about;
}
public double getMat_price() {
	return mat_price;
}
public void setMat_price(double mat_price) {
	this.mat_price = mat_price;
}
public Material(int mat_id, String mat_name, String mat_about, double mat_price) {
	super();
	this.mat_id = mat_id;
	this.mat_name = mat_name;
	this.mat_about = mat_about;
	this.mat_price = mat_price;
}
public Material() {
	super();
}

}
