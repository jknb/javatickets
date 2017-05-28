package dao;

import java.sql.*;


import connection.DB;
import domain.User;

public class UserDAO {

	public UserDAO() {
		// TODO Auto-generated constructor stub
	}
	
	public User authenticateUser (String username, String password) throws Exception {
		User aUser = null;
		Connection con = null;
		DB db = new DB();
		db.open();
		con = db.getConnection();
		PreparedStatement stmt = null;
		ResultSet rs = null;
		String sql = "SELECT * FROM user_table WHERE username=? AND password=? ";
		try{
			stmt = con.prepareStatement(sql);
			stmt.setString(1, username);
			stmt.setString(2, password);
			rs = stmt.executeQuery();
			if (rs.next()){
			 aUser = new User(rs.getString("username"), rs.getString("password"), rs.getString("email"));
			} 
			rs.close();
			stmt.close();
			con.close();
			
			if (aUser ==null){
				throw new Exception("User dont exist");
			} else
				return aUser;

		} catch (SQLException e){
			System.out.println(e.toString());
		}
		return aUser;
			
	} 
	
	public void saveUser(User user) throws Exception {

		Connection con = null;
		String sql = "INSERT INTO  user_table (username, password, email) VALUES (?, ?, ?);";
		DB db = new DB();
		
		try {

			db.open();
			con = db.getConnection();

			PreparedStatement stmt = con.prepareStatement(sql);

			stmt.setString(1, user.getUsername());
			stmt.setString(2, user.getPassword());
			stmt.setString(3, user.getEmail());

			stmt.executeUpdate();

			stmt.close();

		} catch (SQLException e) {

			throw new Exception("User with name: " + user.getUsername() + " already exists");

		} catch (Exception e) {

			throw new Exception("An error occured while inserting user to database: " + e.getMessage());
			
		} finally {
			
			try {				
				db.close();				
			} catch (Exception e) {
											
			}
			
		}

	}
	
} 
