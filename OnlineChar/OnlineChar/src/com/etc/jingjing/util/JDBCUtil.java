package com.etc.jingjing.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCUtil {
	//����Ҫ���ص�������·��
	public final static String DRIVER="com.mysql.jdbc.Driver";
	//�����������
	public final static String PATH="jdbc:mysql://127.0.0.1:3306/qq";
	//�û���
	public final static String UNAME="root";
	//����
	public final static String UPWD="root";
	//���Ӷ���
	private Connection con;
	//������
	private PreparedStatement ps;
	//�����
	private ResultSet rs;
	
	/**
	 * ��ȡ���Ӷ���ķ���
	 * @return  ���Ӷ���
	 */
	public Connection getCon(){
		try {
			Class.forName(DRIVER);
			con=DriverManager.getConnection(PATH, UNAME, UPWD);
		} catch (Exception e) {
			System.out.println("�������ݿⷢ���쳣���쳣ԭ��"+e.getMessage());
		}
		return con;
	}
	
	/**
	 * �ر��������ӵķ���
	 */
	public void closeAll(){
		try {
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(con!=null){
				con.close();
			}
			
		} catch (Exception e) {
			System.out.println("�ر��������ӷ����쳣���쳣ԭ��"+e.getMessage());
		}
	}
	
	/**
	 * ��ɾ��ͨ�÷���
	 * @param sql  sql���
	 * @param obj  ��̬���������Բ�д��Ҳ���Զ��
	 * @return   ��Ӱ������
	 */
	public int update(String sql,Object...obj){
		 int result=0;
		try {
			//��ȡ���Ӷ���
			con=getCon();
			//ʵ����Ԥ����������
			ps=con.prepareStatement(sql);
			
			//��Ҫ����Ĳ�����̬ע�뵽SQL�����
			if(obj!=null){
				for(int i=0;i<obj.length;i++){
					ps.setObject(i+1, obj[i]);
				}	
			}
			
			//ִ��sql���
			result=ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("��ɾ�ķ����쳣���쳣ԭ��"+e.getMessage());
		}finally{
			closeAll();
		}
		return result;
	}
	
	
	/**
	 * ��ѯ��ͨ�÷���
	 * @param sql ��ѯ�����
	 * @param obj ע��sql��ֵ
	 * @return    �����
	 */
	public ResultSet query(String sql,Object...obj){
		try {
			//��ȡ���Ӷ���
			con=getCon();
			//ʵ����Ԥ����������
			ps=con.prepareStatement(sql);
			
			//��Ҫ����Ĳ�����̬ע�뵽SQL�����
			if(obj!=null){
				for(int i=0;i<obj.length;i++){
					ps.setObject(i+1, obj[i]);
				}	
			}		
			//ִ��sql���
			rs=ps.executeQuery();		
		} catch (Exception e) {
			System.out.println("��ѯ�����쳣���쳣ԭ��"+e.getMessage());
		}//��ʱ�Ȳ�Ҫ�ر�����	
		return rs;
	}
}
