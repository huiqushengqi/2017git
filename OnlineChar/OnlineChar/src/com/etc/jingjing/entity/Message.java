package com.etc.jingjing.entity;

import java.io.Serializable;

public class Message implements Serializable {
	
	private String flag;
	private Object contain=null;
	private String ip=null;
	private String port=null;
	
	
	
	
	public Object getContain() {
		return contain;
	}
	public void setContain(Object contain) {
		this.contain = contain;
	}
	public String getIp() {
		return ip;
	}
	public void setIp(String ip) {
		this.ip = ip;
	}
	public String getPort() {
		return port;
	}
	public void setPort(String port) {
		this.port = port;
	}
	public String getFlag() {
		return flag;
	}
	public void setFlag(String flag) {
		this.flag = flag;
	}

	
}
