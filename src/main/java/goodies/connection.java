package goodies;

import java.sql.Connection;
import java.sql.DriverManager; 
public class connection {
	Connection con=null;
	 public Connection getConnection(){  
		 try{  
			 Class.forName("com.mysql.jdbc.Driver");  
			 con=DriverManager.getConnection(  
					 "jdbc:mysql://localhost/goodies","root","");   
		 }catch(Exception e){ 
			 System.out.println(e);
		 	}
		 return con;
	}  
}