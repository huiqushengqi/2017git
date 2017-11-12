package com.etc.pili8la.util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;




public class JDBCUtil {
	//声明驱动类的路径
   public final static String DRIVER="oracle.jdbc.driver.OracleDriver";
   //声明连接语句
   public final static String PATH="jdbc:oracle:thin:@127.0.0.1:1521:orcl";
	//声明数据库用户名
   public final static String USER="lxx";
	//声明数据库密码
   public final static String UPWD="123";
   //声明连接对象
   private Connection con;
	//声明语句对象
   private PreparedStatement ps;
   //声明结果集
   private ResultSet rs;
   //存储过程对象
   private CallableStatement cas;
	/**
	 * 建立连接的方法
	 * @return 连接对象
	 */
	public Connection getCon(){
		
		try {
			Class.forName(DRIVER);
			con=DriverManager.getConnection(PATH, USER, UPWD);
		} catch (Exception e) {
			System.out.println("建立连接发生异常，异常原因是："+e.getMessage());
		}
		
		return con;
	}
	/**
	 * 关闭连接的方法
	 */
	public void closeAll(){
		
		try {
			if(rs!=null){
				rs.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(cas!=null){
				cas.close();
			}
			if(con!=null){
				con.close();
			}
		} catch (Exception e) {
			System.out.println("关闭连接发生异常，异常原因为："+e.getMessage());
		}	
	}
	/**
	 * 执行增删改的方法
	 * @param sql sql语句
	 * @param obj 动态参数，可以不写，可以多写
	 * @return  返回受影响行数
	 */
	public int update(String sql,Object...obj){
		
		int result=0;
		try {
			//建立连接
			con=getCon();
			//实例化预编译语句
			ps=con.prepareStatement(sql);
			//将参数动态传入Sql语句
			if(obj!=null){
				for(int i=0;i<obj.length;i++){
				ps.setObject(i+1,obj[i]);
				}
			}
			//执行sql语句
			result=ps.executeUpdate();
			
			
		} catch (Exception e) {
			System.out.println("增删改操作发生异常，异常原因为："+e.getMessage());
		    
		}finally{
			closeAll();
		}
		return result;	
	}
	/**
	 * 查询的方法
	 * @param sql sql语句
	 * @param obj 可以不写，也可以多写
	 * @return 结果集
	 */
	
	public ResultSet query(String sql,Object...obj){
		
		try {
			//建立连接
			con=getCon();
			//实例化预编译语句
			ps=con.prepareStatement(sql);
			//将参数动态传入sql语句
			if(obj!=null){
			for (int i = 0; i < obj.length; i++) {
				ps.setObject(i+1,obj[i]);
			}	
		}
			//执行sql语句
			rs=ps.executeQuery();
		} catch (Exception e) {
			System.out.println("查询操作发生异常，异常原因为："+e.getMessage());
		}//先暂时不要关闭数据库
		return rs;
	}
	
	
	public boolean cas_notreturn_porc(String casname,Object...obj){
		int result=0;
		try {
			//建立连接
			con=getCon();
			//实例化预编译语句
			cas=con.prepareCall("{call"+casname+"}");
			//将参数动态传入Sql语句
			if(obj!=null){
				for(int i=0;i<obj.length;i++){
					cas.setObject(i+1,obj[i]);
				}
			}
			//执行sql语句
			result=cas.executeUpdate();
			//判断操作是否成功
			if(result>0){
				return true;
			}
			
		} catch (Exception e) {
			System.out.println("增删改操作发生异常，异常原因为："+e.getMessage());
		    
		}finally{
			closeAll();
		}
		return false;
	}
	
	public Object[] cas_hasreturn_porc(String casname,List<Integer> list,Object...obj){
		Object[] objs=new  Object[list.size()];
		try {
			//建立连接
			con=getCon();
			//实例化预编译语句
			cas=con.prepareCall("{call"+casname+"}");
			int length=1;
			for (Integer list1 : list) {
				cas.registerOutParameter(length++, list1);
			}
			//将参数动态传入sql语句
			if(obj!=null){
			for (int i = 0; i < obj.length; i++) {
				cas.setObject(length+i,obj[i]);
			}	
		}
			//执行sql语句
			cas.execute();
			//接收返回值，存入object数组
			for (int  i = 0; i < objs.length; i++) {
				objs[i]=cas.getObject(i+1);
			}
		} catch (Exception e) {
			System.out.println("查询操作发生异常，异常原因为："+e.getMessage());
		}
		return objs;
	}
	
	
	
	
	
}
