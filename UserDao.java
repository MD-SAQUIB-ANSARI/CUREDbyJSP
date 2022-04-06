package com.mypack.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.mypack.model.Employe;
import com.mypack.model.User;

public class UserDao {

	private Connection conn;
	private PreparedStatement pst;
	private String sql;
	private ResultSet rs;
	public UserDao() throws ClassNotFoundException, SQLException {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sagar", "root", "root");
		System.out.println("Load driver");
	}
	public Boolean validatin(User user) throws SQLException
	{
		sql="select * from user where userName=? and userPassword=?";
		pst= conn.prepareStatement(sql);
		pst.setString(1, user.getUserName());
		pst.setString(2, user.getUserPassword());
		
		rs= pst.executeQuery();
		if(rs.next()==true)
			return true;
		else
			return false;
	
	}
	
	public int addRecord(Employe emp) throws SQLException
	{
		sql="insert into employe values(?,?,?,?)";
		pst=conn.prepareStatement(sql);
		pst.setInt(1, emp.getEmpNo());
		pst.setString(2, emp.getEmpName());
		pst.setFloat(3, emp.getEmpSal());
		pst.setString(4, emp.getContact());
		System.out.println("Query is OK");
		return pst.executeUpdate();
	}
	public Employe findRecord(Employe emp) throws SQLException
	{
		sql="select * from employe where empNo=?";
		pst=conn.prepareStatement(sql);
		pst.setInt(1, emp.getEmpNo());
		rs=pst.executeQuery();
		Employe em=new Employe();
		if(rs.next()==true)
		{
			em.setEmpNo(rs.getInt(1));
			em.setEmpName(rs.getString(2));
			em.setEmpSal(rs.getFloat(3));
			em.setContact(rs.getString(4));
		}
		return em;
	}
	public int updateRecord(Employe emp) throws SQLException
	{
		sql="update employe set empName=?, empSal=?,contact=? where empNo=? ";
		System.out.println("Query sucessfuly");
		pst= conn.prepareStatement(sql);
		pst.setInt(4, emp.getEmpNo());
		pst.setString(1, emp.getEmpName());
		pst.setFloat(2,emp.getEmpSal());	
		pst.setString(3, emp.getContact());
		
		return pst.executeUpdate();
	}
	public int deleteRecord(Employe emp) throws SQLException
	{
		sql=" delete from employe where empNo=?";
		pst=conn.prepareStatement(sql);
		pst.setInt(1, emp.getEmpNo());
		
		return pst.executeUpdate();
	}
	public List<Employe> findAllRecord() throws SQLException
	{
		sql="select * from employe ";
		pst= conn.prepareStatement(sql);
		rs=pst.executeQuery();
		List<Employe> store = new ArrayList<>();
		
		while(rs.next()==true)
		{
			Employe emp=new Employe();
			emp.setEmpNo(rs.getInt(1));
			emp.setEmpName(rs.getString(2));
			emp.setEmpSal(rs.getFloat(3));
			emp.setContact(rs.getString(4));
			store.add(emp);
		}
		return store;
	}
}
