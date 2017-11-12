package com.etc.jingjing.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCUtil {
	//声明要加载的驱动类路径
	public final static String DRIVER="com.mysql.jdbc.Driver";
	//声明连接语句
	public final static String PATH="jdbc:mysql://127.0.0.1:3306/qq";
	//用户名
	public final static String UNAME="root";
	//密码
	public final static String UPWD="root";
	//连接对象
	private Connection con;
	//语句对象
	private PreparedStatement ps;
	//结果集
	private ResultSet rs;
	
	/**
	 * 获取连接对象的方法
	 * @return  连接对象
	 */
	public Connection getCon(){
		try {
			Class.forName(DRIVER);
			con=DriverManager.getConnection(PATH, UNAME, UPWD);
		} catch (Exception e) {
			System.out.println("连接数据库发生异常，异常原因"+e.getMessage());
		}
		return con;
	}
	
	/**
	 * 关闭数据连接的方法
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
			System.out.println("关闭数据连接发生异常，异常原因："+e.getMessage());
		}
	}
	
	/**
	 * 增删改通用方法
	 * @param sql  sql语句
	 * @param obj  动态参数，可以不写，也可以多个
	 * @return   受影响行数
	 */
	public int update(String sql,Object...obj){
		 int result=0;
		try {
			//获取连接对象
			con=getCon();
			//实例化预编译语句对象
			ps=con.prepareStatement(sql);
			
			//将要传入的参数动态注入到SQL语句中
			if(obj!=null){
				for(int i=0;i<obj.length;i++){
					ps.setObject(i+1, obj[i]);
				}	
			}
			
			//执行sql语句
			result=ps.executeUpdate();
			
		} catch (Exception e) {
			System.out.println("增删改发生异常，异常原因："+e.getMessage());
		}finally{
			closeAll();
		}
		return result;
	}
	
	
	/**
	 * 查询的通用方法
	 * @param sql 查询的语句
	 * @param obj 注入sql的值
	 * @return    结果集
	 */
	public ResultSet query(String sql,Object...obj){
		try {
			//获取连接对象
			con=getCon();
			//实例化预编译语句对象
			ps=con.prepareStatement(sql);
			
			//将要传入的参数动态注入到SQL语句中
			if(obj!=null){
				for(int i=0;i<obj.length;i++){
					ps.setObject(i+1, obj[i]);
				}	
			}		
			//执行sql语句
			rs=ps.executeQuery();		
		} catch (Exception e) {
			System.out.println("查询发生异常，异常原因："+e.getMessage());
		}//此时先不要关闭数据	
		return rs;
	}
}
