package king.database.pk;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
    private static Connection con;
    public static Connection getConnection() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/pk";
        String username = "root";
        String password = "Ridoy781@#$";
        con = DriverManager.getConnection(url, username, password);
        return con;
    }
}
