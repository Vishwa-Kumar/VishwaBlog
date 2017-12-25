package com.vishwa.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;

import com.vishwa.pojo.Visitor;

public class VisitorDao {

	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
	private int resultCreate;

	public void saveVisitorInfo(Visitor v) {
		System.out.println(" VisitorDao saveVisitorInfo");
		try {
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			connect = DriverManager
					.getConnection("jdbc:mysql://localhost/vishwablog?" + "user=root&password=root");

			// Statements allow to issue SQL queries to the database
			statement = connect.createStatement();
			// PreparedStatements can use variables and are more efficient
		//	preparedStatement = connect.prepareStatement("insert into  vishwablog.staging values (default, ?, ?, ?, ? , ?, ?)");
			preparedStatement = connect.prepareStatement("INSERT INTO `vishwablog`.`staging` (`module`, `ip`, `device`, `browser`, `locationLattitude`, `locationLongitude`, `otherDetails`) VALUES (?,?,?,?,?,?,?)");
			preparedStatement.setString(1,v.getVisitorModule());
			preparedStatement.setString(2, v.getVisitorIP());
			preparedStatement.setString(3, v.getVisitorDevice());
			preparedStatement.setString(4, v.getVisitorBrowser());
			preparedStatement.setString(5, v.getVisitorLocationLattitude());
			preparedStatement.setString(6, v.getVisitorLocationLongitude());
			preparedStatement.setString(7, v.getVisitorOtherDetail());
			resultCreate=preparedStatement.executeUpdate();
            System.out.println("resultCreate "+resultCreate);
		//	writeMetaData(resultSet);

		} catch (Exception e) {

			System.out.println("Exception"+e.getMessage());
			System.out.println("Exception"+e);
		} finally {
			close();

		}
	}

	private void writeMetaData(ResultSet resultSet) throws SQLException {
		// Now get some metadata from the database
		// Result set get the result of the SQL query

		System.out.println("The columns in the table are: ");

		System.out.println("Table: " + resultSet.getMetaData().getTableName(1));
		for (int i = 1; i <= resultSet.getMetaData().getColumnCount(); i++) {
			System.out.println("Column " + i + " " + resultSet.getMetaData().getColumnName(i));
		}
	}

	private void writeResultSet(ResultSet resultSet) throws SQLException {
		// ResultSet is initially before the first data set
		while (resultSet.next()) {
			// It is possible to get the columns via name
			// also possible to get the columns via the column number
			// which starts at 1
			// e.g. resultSet.getSTring(2);
			String user = resultSet.getString("myuser");
			String website = resultSet.getString("webpage");
			String summary = resultSet.getString("summary");
			Date date = resultSet.getDate("datum");
			String comment = resultSet.getString("comments");
			System.out.println("User: " + user);
			System.out.println("Website: " + website);
			System.out.println("summary: " + summary);
			System.out.println("Date: " + date);
			System.out.println("Comment: " + comment);
		}
	}

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
