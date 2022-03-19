package goodies;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class product {
	private int productId;
	private String productName;
	private int nos;
	
	public product(int id,String name,int pri) {
		productId=id;
		productName=name;
		nos=pri;
	}
	static connection obj=new connection();
	static Connection con=obj.getConnection();
	
	public static ArrayList<String> getProductNames(){
		ArrayList<String> ls=new ArrayList<>();		
		try {			
			String query="SELECT product FROM products WHERE 1";
			PreparedStatement ps=con.prepareStatement(query);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				ls.add(rs.getString(1));
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		return ls;
	}
	public static HashMap<String, Integer> getProductId() {
		HashMap<String,Integer> map=new HashMap<>();
		try {			
			String query="SELECT * FROM products";
			PreparedStatement ps=con.prepareStatement(query); 
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				int id=rs.getInt(1);
				String name=rs.getString(2);
				map.put(name,id);
			}
			return map;
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return map;
	}

}
