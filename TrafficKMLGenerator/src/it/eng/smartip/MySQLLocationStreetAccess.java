package it.eng.smartip;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.Properties;



public class MySQLLocationStreetAccess {
	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
	Properties props = new Properties();

//	public void writeDataBase(String id,String nome) throws Exception {
//		try {
//			// This will load the MySQL driver, each DB has its own driver
//			Class.forName("com.mysql.jdbc.Driver");
//			// Setup the connection with the DB
//			//connect = DriverManager.getConnection("jdbc:mysql://localhost/smartip?user=root&password=root");
//			connect=DriverManager.getConnection("jdbc:mysql://localhost/smartip","root", "root");
//
//			
//			// PreparedStatements can use variables and are more efficient
//			preparedStatement = connect
//					.prepareStatement("insert into  smartip.location_street values (default,?, ?)");
//			// "MYUSER, webpage, datum, summery, COMMENTS from FEEDBACK.COMMENTS");
//			// Parameters start with 1
//			preparedStatement.setString(1, id);
//			preparedStatement.setString(2, nome);
//			
//			preparedStatement.executeUpdate();
//
//				
//		} catch (Exception e) {
//			throw e;
//		} finally {
//			close();
//		}
//
//	}

	public String readDataBase(String id) throws Exception {
	
		try {
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			props.load(TrafficAnalyzer.class.getResourceAsStream("/config.properties"));
			//connect = DriverManager.getConnection("jdbc:mysql://localhost/smartip?user=root&password=root");
			connect=DriverManager.getConnection(props.getProperty("stringDB"),props.getProperty("userDB"),props.getProperty("passwordDB"));
			// Statements allow to issue SQL queries to the database
			statement = connect.createStatement();
			// Result set get the result of the SQL query
			resultSet = statement.executeQuery("select strada_arco  from smartip.location_street where id='" + id + "'");
			//preparedStatement.setString(1, id);
			String strada_arco=writeResultSet(resultSet);
				
			return strada_arco;
			
		}catch (Exception e) {
			throw e;
		} finally {
			close();
		}
	
	}
	private String writeResultSet(ResultSet resultSet) throws SQLException {
		// ResultSet is initially before the first data set
		String strada_arco="";
		
		while (resultSet.next()) {
			// It is possible to get the columns via name
			// also possible to get the columns via the column number
			// which starts at 1
			// e.g. resultSet.getSTring(2);
			
			 strada_arco= resultSet.getString(1);
			
		}
		return strada_arco;
	}
	// You need to close the resultSet
		private void close() {
			try {
				if (resultSet != null) {
					resultSet.close();
				}

				if (statement != null) {
					statement.close();
				}

				if (connect != null) {
					connect.close();
				}
			} catch (Exception e) {

			}
		}

}