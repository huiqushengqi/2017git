package com.etc.coder.util;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class JNDIUtil {

	//连接对象
	private Connection conn;
	//语句对象
	private PreparedStatement ps;
	//结果集
	private ResultSet rs;
	//存储过程语句对象
	private CallableStatement cal;

	public  Connection getConnection() {
		try {
			Context initContext = new InitialContext();
			DataSource ds=(DataSource)initContext.lookup("java:/comp/env/jdbc/myorcle");
			conn = ds.getConnection();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println("连接资源池异常");
		}
		
		return conn;
	}

	public void closeAll(){
		try {
			if(rs!=null){
				rs.close();
			}
			if(cal!=null){
				cal.close();
			}
			if(ps!=null){
				ps.close();
			}
			if(conn!=null){
				conn.close();
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
			conn=getConnection();
			//实例化预编译语句对象
			ps=conn.prepareStatement(sql);

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
			conn=getConnection();
			//实例化预编译语句对象
			ps=conn.prepareStatement(sql);

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
	
	/**
	 * 调用没有返回值的存储过程（通常都是增删改操作）的方法
	 * @param callname  存储过程的名称
	 * @param obj       要设置到存储过程的参数数组
	 * @return          是否有数据行收到影响
	 */
	public boolean call_notreturn_proc(String callname,Object...obj){
		 int result=0;
			try {
				//获取连接对象
				conn=getConnection();
				//实例化预编译语句对象
			     cal=conn.prepareCall("{call "+callname+"}");	
				//将要传入的参数动态注入到SQL语句中
				if(obj!=null){
					for(int i=0;i<obj.length;i++){
						cal.setObject(i+1, obj[i]);
					}	
				}		
				//执行存储过程
				result=cal.executeUpdate();
				if(result>0){
					return true;
				}
			} catch (Exception e) {
				System.out.println("增删改发生异常，异常原因："+e.getMessage());			
			}finally{
				closeAll();
			}		
			return false;
	}
	
	/**
	 * 调用有返回值和有入参的存储过程 （该存储过程所有输出的参数应该写在输入参数之前）
	 * @param callname  存储过程名称
	 * @param rstypes   注册类型的集合
	 * @param obj       传入的参数
	 * @return          对应输出数据
	 */
	public Object[] call_HasReturn_proc(String callname,List<Integer> rstypes,Object...obj){
		Object[] objs=new Object[rstypes.size()];
		try {
			conn=getConnection();
			//实例化预编译语句对象
		     cal=conn.prepareCall("{call "+callname+"}");
		    int len=1;
		     for(Integer type :rstypes){
		    	 cal.registerOutParameter(len, type);
		    	 len=len+1;
		     }
		     //判断是否有入参
		     if(obj!=null){
		    	 for(int i=0;i<obj.length;i++){
		    		cal.setObject(len+i, obj[i]); 
		    	 } 
		     }
		     //执行sql语句
		     cal.execute();
			
		     //接受返回值，存入object数组中
		     for(int i=0;i<objs.length;i++){
		    	 objs[i]=cal.getObject(i+1);
		     }     
		} catch (Exception e) {
			System.out.println("异常原因："+e.getMessage());
		}
		return objs;
	}
	
}
