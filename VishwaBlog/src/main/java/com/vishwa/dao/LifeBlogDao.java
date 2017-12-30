package com.vishwa.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import com.vishwa.pojo.LifeBlogPojo;


public class LifeBlogDao {
	
	private Connection connect = null;
	private Statement statement = null;
	private PreparedStatement preparedStatement = null;
	private ResultSet resultSet = null;
	private int resultCreate;
	ArrayList<LifeBlogPojo> lifeBlogList=new ArrayList<LifeBlogPojo>();
	
	
	public ArrayList<LifeBlogPojo> fetchLifeBlogList() {
		System.out.println(" LifeBlogDao getLifeBlogList");
		try {
			// This will load the MySQL driver, each DB has its own driver
			Class.forName("com.mysql.jdbc.Driver");
			// Setup the connection with the DB
			connect = DriverManager
					.getConnection("jdbc:mysql://localhost/vishwablog?" + "user=root&password=root");

			statement = connect.createStatement();
			preparedStatement = connect.prepareStatement("select * from `vishwablog`.`lifeblog`");
			resultSet=preparedStatement.executeQuery();
            System.out.println("resultCreate "+resultCreate);
            while(resultSet.next())
            {LifeBlogPojo lbObj=new LifeBlogPojo();
            	lbObj.setAuthor(resultSet.getString("author"));
            	lbObj.setContent(resultSet.getString("content"));
            	lbObj.setTopic(resultSet.getString("topic"));
            	lbObj.setCreatedDate(resultSet.getString("createdDate"));
            	lbObj.setTags(resultSet.getString("tags"));
            	lifeBlogList.add(lbObj);
            	//lbObj.setTopicImage(resultSet.getString(""));
            }

		} catch (Exception e) {

			System.out.println("Exception"+e.getMessage());
			System.out.println("Exception"+e);
		} finally {
			close();

		}
		return lifeBlogList;
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
