package com.javatpoint.dao2;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean2.user2;
public class UserDao2 {
	public static Connection getConnection(){
		Connection con=null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/register","root","");
		}catch(Exception e){System.out.println(e);}
		return con;
	}
		public static int delete(user2 u){
			int status=0;
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("delete from feedback where id=?");
				ps.setInt(1,u.getId());
				status=ps.executeUpdate();
			}catch(Exception e){System.out.println(e);}

			return status;
		}
		public static List<user2> getAllRecords(){
			List<user2> list=new ArrayList<user2>();
			
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("select * from feedback");
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					user2 u=new user2();
					u.setId(rs.getInt("id"));
					u.setName(rs.getString("name"));
					u.setEmail(rs.getString("Email"));
					u.setcomments(rs.getString("comments"));
					u.setregdate(rs.getString("regdate"));
					list.add(u);
				}
			}catch(Exception e){System.out.println(e);}
			return list;
		}
		public static user2 getRecordById(int id){
			user2 u=null;
			try{
				Connection con=getConnection();
				PreparedStatement ps=con.prepareStatement("select * from feedback where id=?");
				ps.setInt(1,id);
				ResultSet rs=ps.executeQuery();
				while(rs.next()){
					u=new user2();
					u.setId(rs.getInt("id"));
					u.setName(rs.getString("name"));
					u.setEmail(rs.getString("Email"));
					u.setcomments(rs.getString("comments"));
					u.setregdate(rs.getString("regdate"));
				}
			}catch(Exception e){System.out.println(e);}
			return u;
		}
		}

