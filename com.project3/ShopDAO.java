package com.project3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ShopDAO {

	
	private Connection conn;
	
	public ShopDAO(Connection conn) {
		this.conn = conn;
	}
	
	public int getDataCount(String searchValue) {
		int totalDataCount=0;
	
		return totalDataCount;
	}
	
	//num �ִ밪
	public int getMaxNum() {
		
		int maxNum = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(fnum),0) from faq";
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				maxNum = rs.getInt(1);
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return maxNum;
	}
	
	//�Է�
	public int insertData(ShopDTO dto) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "insert into faq (fnum,fcategory,fsubject,fcontent) values (?,?,?,?)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getFnum());
			pstmt.setString(2, dto.getFcategory());
			pstmt.setString(3, dto.getFsubject());
			pstmt.setString(4, dto.getFcontent());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;	
	}
	
	//��ü������ ����
	public int getDataCount(String searchKey,String searchValue) {
		
		int totalDataCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";
			
			sql = "select nvl(count(*),0) from faq where " + searchKey + " like ?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				totalDataCount = rs.getInt(1);
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return totalDataCount;
	}
	
	
	//��ü������
	//ǥ���� ������(rownum����) ������
	public List<ShopDTO> getLists(int start, int end, String searchKey, String searchValue) {
		
		List<ShopDTO> lists = new ArrayList<ShopDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";
			
			
			sql = "select * from (";
			sql+= "select rownum rnum, data. * from (";
			sql+= "select fnum,fcategory,fsubject,fcontent from faq where " + searchKey + " like ? order by fnum desc) data) ";
			sql+= "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue); //�˻�
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ShopDTO dto = new ShopDTO();
				
				dto.setFnum(rs.getInt("fnum"));
				dto.setFcategory(rs.getString("fcategory"));
				dto.setFsubject(rs.getString("fsubject"));
				dto.setFcontent(rs.getString("fcontent"));
				
				lists.add(dto);
			}
			
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	}
	
	public List<ShopDTO> getListsOr(int start, int end, String searchKey, String searchValue) {
		
		List<ShopDTO> lists = new ArrayList<ShopDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";
			
			
			sql = "select * from (";
			sql+= "select rownum rnum, data. * from (";
			sql+= "select fnum,fcategory,fsubject,fcontent from faqorder where " + searchKey + " like ? order by fnum desc) data) ";
			sql+= "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue); //�˻�
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ShopDTO dto = new ShopDTO();
				
				dto.setFnum(rs.getInt("fnum"));
				dto.setFcategory(rs.getString("fcategory"));
				dto.setFsubject(rs.getString("fsubject"));
				dto.setFcontent(rs.getString("fcontent"));
				
				lists.add(dto);
			}
			
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	}
	
	public List<ShopDTO> getListsDi(int start, int end, String searchKey, String searchValue) {
		
		List<ShopDTO> lists = new ArrayList<ShopDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";
			
			
			sql = "select * from (";
			sql+= "select rownum rnum, data. * from (";
			sql+= "select fnum,fcategory,fsubject,fcontent from faqdiliver where " + searchKey + " like ? order by fnum desc) data) ";
			sql+= "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue); //�˻�
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ShopDTO dto = new ShopDTO();
				
				dto.setFnum(rs.getInt("fnum"));
				dto.setFcategory(rs.getString("fcategory"));
				dto.setFsubject(rs.getString("fsubject"));
				dto.setFcontent(rs.getString("fcontent"));
				
				lists.add(dto);
			}
			
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	}
	
	public List<ShopDTO> getListsEx(int start, int end, String searchKey, String searchValue) {
		
		List<ShopDTO> lists = new ArrayList<ShopDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";
			
			
			sql = "select * from (";
			sql+= "select rownum rnum, data. * from (";
			sql+= "select fnum,fcategory,fsubject,fcontent from faqexchange where " + searchKey + " like ? order by fnum desc) data) ";
			sql+= "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue); //�˻�
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ShopDTO dto = new ShopDTO();
				
				dto.setFnum(rs.getInt("fnum"));
				dto.setFcategory(rs.getString("fcategory"));
				dto.setFsubject(rs.getString("fsubject"));
				dto.setFcontent(rs.getString("fcontent"));
				
				lists.add(dto);
			}
			
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	}
	
	public List<ShopDTO> getListsMe(int start, int end, String searchKey, String searchValue) {
		
		List<ShopDTO> lists = new ArrayList<ShopDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";
			
			
			sql = "select * from (";
			sql+= "select rownum rnum, data. * from (";
			sql+= "select fnum,fcategory,fsubject,fcontent from faqmember where " + searchKey + " like ? order by fnum desc) data) ";
			sql+= "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue); //�˻�
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				ShopDTO dto = new ShopDTO();
				
				dto.setFnum(rs.getInt("fnum"));
				dto.setFcategory(rs.getString("fcategory"));
				dto.setFsubject(rs.getString("fsubject"));
				dto.setFcontent(rs.getString("fcontent"));
				
				lists.add(dto);
			}
			
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	}
	//num���� ��ȸ�� �Ѱ��� ������
		public ShopDTO getReadDatafaq(int fnum) {
			
			ShopDTO dto = null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;
			
			try {
				
				sql = "select fnum,fcategory,fcontent,fcontent2 from faq where fnum=?";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, fnum);
				
				rs = pstmt.executeQuery();
				
				if(rs.next()) {
					
					dto = new ShopDTO();
					
					dto.setFnum(rs.getInt("fnum"));
					dto.setFcategory(rs.getString("fcategory"));
					dto.setFcontent(rs.getString("fcontent"));
					dto.setFcontent2(rs.getString("fcontent2"));
		
				}
				
				rs.close();
				pstmt.close();
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			
			return dto;
		}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//num���� ��ȸ�� �Ѱ��� ������
	public ShopDTO getReadData(int fnum) {
		
		ShopDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select fnum,fcategory,fsubject,fcontent from faq where fnum=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, fnum);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				dto = new ShopDTO();
				
				dto.setFnum(rs.getInt("fnum"));
				dto.setFcategory(rs.getString("fcategory"));
				dto.setFsubject(rs.getString("fsubject"));
				dto.setFcontent(rs.getString("fcontent"));
	
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
	}
	
	//����
	public int updateData(ShopDTO dto) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "update faq set fcategory=?,fsubject=?,fcontent=? where fnum=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getFcategory());
			pstmt.setString(2, dto.getFsubject());
			pstmt.setString(3, dto.getFcontent());
			pstmt.setInt(4, dto.getFnum());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	//����
	public int deleteData(int fnum) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "delete faq where fnum=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, fnum);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	
	
	
	
	
	
	
	

}
