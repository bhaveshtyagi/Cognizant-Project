package status;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/graph1")
public class graph extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public graph() {
        super();
        // TODO Auto-generated constructor stub
    }

    
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {   
	 PrintWriter out=response.getWriter();
	 try{  
Class.forName("oracle.jdbc.driver.OracleDriver");  
Connection con=DriverManager.getConnection(  
"jdbc:oracle:thin:@localhost:1521:xe","system","root");  
      
String name="Ishita";
PreparedStatement ps=con.prepareStatement(  
"select * from demo where name=?");
ps.setString(1,name);
ResultSet rs=ps.executeQuery();  
while(rs.next()) 
{
	if(rs.getString(2).equals("approved"))
	{
		out.print("Approved");
		request.getRequestDispatcher("/NewFile1.jsp").forward(request,response);
		
	}
	else if(rs.getString(2).equals("in process"))
	{
		request.getRequestDispatcher("/NewFile.jsp").forward(request,response);
	}

	else if(rs.getString(2).equals("dispatched"))
	{
		out.print("dispatched");
	}

	else if(rs.getString(2).equals("delivered"))
	{
		out.print("delivered");
	}
}	
	
}catch(Exception e){System.out.println(e);}  

}  
  	}


