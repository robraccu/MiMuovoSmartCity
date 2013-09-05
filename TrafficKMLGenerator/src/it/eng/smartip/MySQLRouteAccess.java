package it.eng.smartip;

import it.eng.smartip.Punto;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;


public class MySQLRouteAccess {

	
	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
	Properties props = new Properties();
	
	public Connection ConnectToDB() throws Exception{
		
		try {
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			props.load(TrafficAnalyzer.class.getResourceAsStream("/config.properties"));
			//connect = DriverManager.getConnection("jdbc:mysql://localhost/smartip?user=root&password=root");
			connect=DriverManager.getConnection(props.getProperty("stringDB"),props.getProperty("userDB"),props.getProperty("passwordDB"));
		} catch (Exception e) {
			throw e;
		} 
		return connect;
	}
	
public ArrayList<Punto> readRouteMin(String tabella,String id_route, Connection connessione) throws Exception {
		
		try {/*
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			connect = DriverManager
					.getConnection("jdbc:mysql://localhost/predefinedLocation?"
							+ "user=root");*/
			// Statements allow to issue SQL queries to the database
			statement = connessione.createStatement();
			// Result set get the result of the SQL query
			resultSet = statement
					.executeQuery("select  coordinate  from "+tabella+" where id="+id_route+" ");
			//preparedStatement.setString(1, id);
			ArrayList<Punto> route_record= writeResultSetRouteMin(resultSet);
			
				
			return  route_record;
					
		}catch (Exception e) {
			throw e;
		} finally {
			//close();
		}
	
	}
	
private ArrayList<Punto> writeResultSetRouteMin(ResultSet resultSet) throws SQLException {
	// ResultSet is initially before the first data set
	//ArrayList<String>  record=new ArrayList<String>();
	ArrayList<Punto> record=new ArrayList<Punto>();
	
	while (resultSet.next()) {
		
		String[] coordinate=resultSet.getString(1).split("-");
		
		for(int i=1;i<coordinate.length;i++){
		Punto coord= new Punto();
		String latitude=coordinate[i].split(",")[0];
		String longitude=coordinate[i].split(",")[1];
		
		coord.setLatitude(latitude);
		coord.setLongitude(longitude);
		record.add(coord);
		}
	}
	return record;
}
public String readName(String tabella,String id,Connection connessione) throws Exception {
	
	try {
		
		// Statements allow to issue SQL queries to the database
		statement = connessione.createStatement();
		// Result set get the result of the SQL query
		resultSet = statement
				.executeQuery("select strada_arco,arco  from "+tabella+" where id="+id+"");
		//preparedStatement.setString(1, id);
		String name=writeNameIdResultSet(resultSet);
		
			
		return name;
		
		
	}catch (Exception e) {
		throw e;
	} finally {
		//close();
	}

}


private String writeNameIdResultSet(ResultSet resultSet) throws SQLException {
	// ResultSet is initially before the first data set
	
	String strada_arco="";
	String arco="";
	
	int i=0;
	while (resultSet.next()) {
		// It is possible to get the columns via name
		// also possible to get the columns via the column number
		// which starts at 1
		// e.g. resultSet.getSTring(2);
		
		
		strada_arco=resultSet.getString(1);
		arco=resultSet.getString(2);
		 //nome_arco= resultSet.getString(3);
		
		
	}
	
	return strada_arco+"-"+arco;
}
	// You need to close the resultSet
	public void close() {
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


