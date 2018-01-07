package util;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import com.mchange.v2.c3p0.ComboPooledDataSource;

/**
 * JDBC封装起来的工具类
 * @author Administrator
 *
 */
public class JdbcUtils {
	
	private static DataSource datasource=null;
	static{
		datasource=new ComboPooledDataSource("mvcapp");
	}
	/**
	 * 释放Connection连接
	 * @param conn
	 */
	public static void releaseConnection(Connection conn){
		try{
			if(conn!= null){
				conn.close();
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public static Connection getConnection() throws SQLException{
		return datasource.getConnection();
		
	}
	
}
