//jdbc:mysql://localhost:3306/training
package mypack;
import java.sql.*;

public class conClass {
    
    public static Connection getcon()
    {
        
        Connection con = null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:82/training","root","");
        }
        catch(Exception e)
        {
            System.out.println(e);
        }
        return con;
    }
    
}
