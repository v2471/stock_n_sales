package servlets;
import goodies.product;
import goodies.connection;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.HashMap;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/add")
public class add extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		String list=request.getParameter("list");
		String prod[]=list.split(", ");
		ArrayList<String> ls=goodies.product.getProductNames();
		ArrayList<product> pList=new ArrayList<>();
		HashMap<String, Integer>map=goodies.product.getProductId();
		if(list.length()==0)
			response.getWriter().write("<h1>Stocks Added</h1><br>"
					+ " <a href=stocks.jsp>click to see today stocks</a> ");
		else {
		for(int i=0;i<prod.length;i++) {
			String temp[]=prod[i].split(":");
			String pName=temp[0];
			int nos=Integer.parseInt(temp[1]);
			int id=map.get(pName);
			java.sql.Date sqlDate = new java.sql.Date(new java.util.Date().getTime());
			try {
				connection obj=new connection();
				Connection con=obj.getConnection();
				String sql="insert into stocks values(?,?,?,?)";
				PreparedStatement stmt=con.prepareStatement(sql);
				stmt.setInt(1, id);
				stmt.setString(2, pName);
				stmt.setInt(3, nos);
				stmt.setDate(4, sqlDate);
				int res=stmt.executeUpdate();  
				System.out.println(res+" records inserted");  
			} catch (Exception e) {
				System.out.println(e);
			}
			response.getWriter().write("<h1>Stocks Added</h1><br>"
					+ " <a href=stocks.jsp>click to see today stocks</a> ");
		}
		}
	}

}
