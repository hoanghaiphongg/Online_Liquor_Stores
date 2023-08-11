package cn.techtutorial.connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
public class DbCon {
		private static Connection connection = null;
		public static Connection getConnection() throws SQLException, ClassNotFoundException {
			if(connection==null) {
				Class.forName("org.postgresql.Driver");
				connection = DriverManager.getConnection("jdbc:postgresql://localhost:5432/postgres", "postgres","abcdxyz1234");
				System.out.print("Connected to Group 3's database");
			}
			return connection;
		}
		
}
