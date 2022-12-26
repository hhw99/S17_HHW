package common.jdbc;

import java.io.BufferedReader;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

public class jdbcTemplate {

	public static Connection getConnection(){
		Connection conn = null;
		Properties prop = new Properties();
		try {
			String currentPath = jdbcTemplate.class.getResource("./").getPath();
			System.out.println(currentPath);
			prop.load(new BufferedReader(new FileReader(currentPath+"driver.properties")));
			Class.forName(prop.getProperty("db.driver"));
			conn = DriverManager.getConnection(prop.getProperty("db.url"), prop.getProperty("db.user"), prop.getProperty("db.pwd"));
			if(conn != null) {
				System.out.println("DB접속!!!");
			} else {
				System.out.println("DB접속 실패@@@@@");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	public static void close(Connection conn) {
		try {
			if(conn!=null && !conn.isClosed()) conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(Statement stmt) {
		try {
			if(stmt!=null && !stmt.isClosed()) stmt.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public static void close(ResultSet rs) {
		try {
			if(rs!=null && !rs.isClosed()) rs.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
}

