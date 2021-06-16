package com.project3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


public class ShopBrandDAO {
	
	private Connection conn = null;
	
	public ShopBrandDAO(Connection conn) {
		
		this.conn=conn;
	}
	
	

	public int getMaxNum() {

		int result = 0;

		PreparedStatement pstmt = null;
		ResultSet rs =null;
		String sql;

		try {

			sql = "select nvl(max(pID),0) from product";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if(rs.next()) {

				result = rs.getInt(1);

			}

			rs.close();
			pstmt.close();


		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return result;
	}
	
	public int insertData(ShopBrandDTO dtob) {

		int result = 0;

		PreparedStatement pstmt = null;
		String sql;

		try {

			sql = "insert into product (pID,pKIND,pCONTENT,pFOOTNOTE,";
			sql+="pINFO,pOFFICIAL,pNPAY,pIMAGE,pDESC,pPRICE,pNAME) ";
			sql+= "values (?,?,?,?,?,?,?,?,?,?)";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, dtob.getpID());
			pstmt.setString(2, dtob.getpKIND());
			pstmt.setString(3, dtob.getpCONTENT());
			pstmt.setString(4, dtob.getpFOOTNOTE());
			pstmt.setString(5, dtob.getpINFO());
			pstmt.setString(6, dtob.getpOFFICIAL());
			pstmt.setString(7, dtob.getpNPAY());
			pstmt.setString(8, dtob.getpIMAGE());
			pstmt.setString(9, dtob.getpDESC());
			pstmt.setInt(10, dtob.getpPRICE());
			pstmt.setString(11, dtob.getpNAME());
			
		
			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;

	}
	
	public int getDataCount(String searchKey, String searchValue) {
		
		int totalDataCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";//검색
			
			sql = "select nvl(count(*),0) from product ";
			sql+="where " + searchKey + " like ?";//검색
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue);//검색
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				totalDataCount = rs.getInt(1);
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			// TODO: handle exception
			System.out.println(e.toString());
		}
		
		return totalDataCount;
		
	}

	public List<ShopBrandDTO> getlists(int start,int end, String searchKey,String searchValue){

		List<ShopBrandDTO> lists = new ArrayList<ShopBrandDTO>();

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			
			searchValue = "%" + searchValue + "%";

			sql =  "select * from(";
			sql+= "select rownum rnum,data.* from (";
			sql+= "select pID,pKIND,pCONTENT,pFOOTNOTE, pINFO,pOFFICIAL,pNPAY,pIMAGE,pDESC,pPRICE,pNAME ";
			sql+= "from product where " + searchKey + " like ? order by pID desc)data) ";
			sql+= "where rnum>=? and rnum<=?";

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue); //검색

			pstmt.setInt(2, start);
			pstmt.setInt(3, end);

			rs = pstmt.executeQuery();

			while(rs.next()) {

				ShopBrandDTO dtob = new ShopBrandDTO();

				dtob.setpID(rs.getInt("pID"));
				dtob.setpKIND(rs.getString("pKIND"));
				dtob.setpCONTENT(rs.getString("pCONTENT"));
				dtob.setpFOOTNOTE(rs.getString("pFOOTNOTE"));
				dtob.setpINFO(rs.getString("pINFO"));
				dtob.setpOFFICIAL(rs.getString("pOFFICIAL"));
				dtob.setpNPAY(rs.getString("pNPAY"));
				dtob.setpIMAGE(rs.getString("pIMAGE"));
				dtob.setpDESC(rs.getString("pDESC"));
				dtob.setpPRICE(rs.getInt("pPRICE"));
				dtob.setpNAME(rs.getString("pNAME"));

				lists.add(dtob);

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return lists;
	}
	
	
	
	public ShopBrandDTO getReadData(int pID,int pPRICE){

		ShopBrandDTO dtob = null;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			
			sql = "select pID,pKIND,pCONTENT,pFOOTNOTE ";
			sql+="pINFO,pOFFICIAL,pNPAY,pIMAGE,pDESC,pPRICE,pNAME from product ";
			sql+= "where pID=? and pPRICE=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, pID);
			pstmt.setInt(2, pPRICE);
			

			rs = pstmt.executeQuery();

			if(rs.next()) {

				dtob = new ShopBrandDTO();

				dtob.setpID(rs.getInt("pID"));
				dtob.setpKIND(rs.getString("pKIND"));
				dtob.setpCONTENT(rs.getString("pCONTENT"));
				dtob.setpFOOTNOTE(rs.getString("pFOOTNOTE"));
				dtob.setpINFO(rs.getString("pINFO"));
				dtob.setpOFFICIAL(rs.getString("pOFFICIAL"));
				dtob.setpNPAY(rs.getString("pNPAY"));
				dtob.setpIMAGE(rs.getString("pIMAGE"));
				dtob.setpDESC(rs.getString("pDESC"));
				dtob.setpPRICE(rs.getInt("pPRICE"));
				dtob.setpNAME(rs.getString("pNAME"));

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return dtob;
	}
	
	//--QNA
	public ShopBrandDTO getReadDataqna(String pCONTENT){

		ShopBrandDTO dtob = null;

		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {

			
			sql = "select pNAME,pPRICE ";
			sql+="from product ";
			sql+= "where pCONTENT=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, pCONTENT);
			

			rs = pstmt.executeQuery();

			if(rs.next()) {

				dtob = new ShopBrandDTO();

				dtob.setpPRICE(rs.getInt("pPRICE"));
				dtob.setpNAME(rs.getString("pNAME"));

			}

			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}

		return dtob;
	}
	//--

	public int deleteData(int pID) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql;

		try {

			sql = "delete product where pID=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setInt(1, pID);

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());

		}

		return result;
	}
		
	}


	

