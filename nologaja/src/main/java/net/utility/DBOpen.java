package net.utility;

import java.sql.Connection;
import java.sql.DriverManager;

import org.springframework.stereotype.Component;

@Component //스프링 컨테이너(웹서버)가 자동으로 객체 생성함
public class DBOpen {
	
	public DBOpen() {
		System.out.println("==DBOpen()==");
	}		
	//오라클 데이터베이스 연결 메소드
	public Connection getConnection() {
		
		//오라클 DB 연결 정보
//		String url = "jdbc:oracle:thin:@localhost:1521:xe";
//		String user = "system";
//		String password = "oracle";
//		String driver = "oracle.jdbc.driver.OracleDriver";
		
		//mysql DB 연결 정보
		
		String url="jdbc:mysql://localhost:3306/nologaja";
	    String user="root";
	    String password="1234";
	    String driver="org.gjt.mm.mysql.Driver";
		
	    
		Connection con = null;
		
		try {
			Class.forName(driver);
			
			con = DriverManager.getConnection(url,user,password);
			
		}catch(Exception e){
			System.out.println("오류 : "+e);
		}
		return con;
	}
}
