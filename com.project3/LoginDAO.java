package com.project3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class LoginDAO {

	private Connection conn=null;

	public LoginDAO(Connection conn) {
		this.conn=conn;
	}

	//회원가입
	public int insertData(LoginDTO dto) {
		int result=0;

		PreparedStatement pstmt=null;
		String sql;

		try {
			sql="insert into userinfo(name,id,pwd,email,birth,tel) values(?,?,?,?,?,?)";

			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getId());
			pstmt.setString(3, dto.getPwd());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getBirth());
			pstmt.setString(6, dto.getTel());

			result=pstmt.executeUpdate();

			pstmt.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}
	
	//로그인시 데이터
	public LoginDTO getReadData(String id,String pwd){
		LoginDTO dto=null;
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql;
		
		try {
			sql="select name,id,pwd,email,birth,tel from userinfo where id=? and pwd=?";
			
			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1, id);
			pstmt.setString(2, pwd);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dto=new LoginDTO();
				
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setEmail(rs.getString("email"));
				dto.setBirth(rs.getString("birth"));
				dto.setTel(rs.getString("tel"));
			}

			rs.close();
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
	}
	
	public InfoDTO getInfo(String id){
		InfoDTO dto=null;
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql;
		
		try {
			sql="select name,id,pwd,email,to_char(birth,'yyyy-mm-dd') birth,tel,gender,addr1,addr2,addr3,bank,account from userinfo where id=?";
			
			pstmt=conn.prepareStatement(sql);

			pstmt.setString(1, id);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				dto=new InfoDTO();
				
				dto.setName(rs.getString("name"));
				dto.setId(rs.getString("id"));
				dto.setPwd(rs.getString("pwd"));
				dto.setEmail(rs.getString("email"));
				dto.setBirth(rs.getString("birth"));
				dto.setTel(rs.getString("tel"));
				dto.setGender(rs.getString("gender"));
				dto.setAddr1(rs.getString("addr1"));
				dto.setAddr2(rs.getString("addr2"));
				dto.setAddr3(rs.getString("addr3"));
				dto.setBank(rs.getString("bank"));
				dto.setAccount(rs.getString("account"));
			}

			rs.close();
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
	}
	
	public int updateData(InfoDTO dto,String id) {
		int result=0;
		
		PreparedStatement pstmt=null;
		String sql;
		
		try {
			sql="update userinfo set name=?, pwd=?, birth=?, tel=?,gender=?,addr1=?,addr2=?,addr3=?,bank=?,account=? where id=?";
					
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getName());
			pstmt.setString(2, dto.getPwd());
			pstmt.setString(3, dto.getBirth());
			pstmt.setString(4, dto.getTel());
			pstmt.setString(5, dto.getGender());
			pstmt.setString(6, dto.getAddr1());
			pstmt.setString(7, dto.getAddr2());
			pstmt.setString(8, dto.getAddr3());
			pstmt.setString(9, dto.getBank());
			pstmt.setString(10, dto.getAccount());
			pstmt.setString(11, id);
			
			result=pstmt.executeUpdate();
			
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	public int deleteData(String id) {
		int result=0;
		
		PreparedStatement pstmt=null;
		String sql;
		
		try {
			sql="delete userinfo where id=?";
					
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, id);
			
			result=pstmt.executeUpdate();
			
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	public String findData(String name,String email) {
		String id=null;
		
		PreparedStatement pstmt=null;
		ResultSet rs=null;
		String sql;
		
		try {
			sql="select id from userinfo where name=? and email=?";
					
			pstmt=conn.prepareStatement(sql);
			
			pstmt.setString(1, name);
			pstmt.setString(2, email);
			
			rs=pstmt.executeQuery();
			
			if(rs.next()) {
				id=rs.getString(1);
			}
			
			pstmt.close();
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return id;
	}
	
	
}
