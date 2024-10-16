package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

// java.lang.ClassNotFoundException: oracle.jdbc.driver.OracleDriver : 오류
// 해결 방법 : 

// 싱글톤(Sington)
public class DBConn {

	private static Connection conn = null;

	private DBConn() {

	}

	public static Connection getConnection() {

		if (conn == null) {
			// conn 생성..
			String className = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe";
			String user = "scott";
			String password = "tiger";
			try {
				Class.forName(className);
				conn = DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return conn;
	}


	public static Connection getConnection(String url, String user, String password) {

		if (conn == null) {
			String className = "oracle.jdbc.driver.OracleDriver";
			try {
				Class.forName(className);
				conn = DriverManager.getConnection(url, user, password);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		}
		return conn;
	} // getConnection

	public static void close() {
		try {
			if (conn != null && conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		conn = null; // 중요
	}

}
