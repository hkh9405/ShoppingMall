package com.project3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class QnaDAO {

	private Connection conn = null;
	
	public QnaDAO(Connection conn) {
		this.conn = conn;
	}
	
	//num 최대값
	public int getMaxNum() {
		
		int maxNum = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select nvl(max(qnum),0) from qna";
			
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
	
	//입력
	public int insertData(QnaDTO dto) {
		
		int result = 0;
		
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "insert into qna (qnum,qname,qpwd,qsubject,qcontent,qsaveFileName,qdate,qhits) values (?,?,?,?,?,?,sysdate,0)";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, dto.getQnum());
			pstmt.setString(2, dto.getQname());
			pstmt.setString(3, dto.getQpwd());
			pstmt.setString(4, dto.getQsubject());
			pstmt.setString(5, dto.getQcontent());
			pstmt.setString(6, dto.getQsaveFileName());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;	
	}
	
	//전체데이터 개수
	public int getDataCount(String searchKey,String searchValue) {
		
		int totalDataCount = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";
			
			sql = "select nvl(count(*),0) from qna where " + searchKey + " like ?";
			
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
	
	//표시할 페이지(rownum범위) 데이터
	public List<QnaDTO> getLists(int start, int end, String searchKey, String searchValue) {
		
		List<QnaDTO> lists = new ArrayList<QnaDTO>();
		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			searchValue = "%" + searchValue + "%";
			
			sql = "select * from (";
			sql+= "select rownum rnum, data. * from (";
			sql+= "select qnum,qname,qpwd,qsubject,qcontent,qsaveFileName,to_char(qdate,'YYYY-MM-DD') qdate,";
			sql+= "qhits from qna where " + searchKey + " like ? order by qnum desc) data) ";
			sql+= "where rnum>=? and rnum<=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, searchValue); //검색
			pstmt.setInt(2, start);
			pstmt.setInt(3, end);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				QnaDTO dto = new QnaDTO();
				
				dto.setQnum(rs.getInt("qnum"));
				dto.setQname(rs.getString("qname"));
				dto.setQpwd(rs.getString("qpwd"));
				dto.setQsubject(rs.getString("qsubject"));
				dto.setQcontent(rs.getString("qcontent"));
				dto.setQsaveFileName(rs.getString("qsaveFileName"));
				dto.setQdate(rs.getString("qdate"));
				dto.setQhits(rs.getInt("qhits"));

				lists.add(dto);
			}
			
			pstmt.close();
			rs.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return lists;
	}
	
	//num으로 조회한 한개의 데이터
	public QnaDTO getReadData(int qnum) {
		
		QnaDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			
			sql = "select qnum,qname,qpwd,qsubject,qcontent,qsaveFileName,qdate,qhits from qna where qnum=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, qnum);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				
				dto = new QnaDTO();
				
				dto.setQnum(rs.getInt("qnum"));
				dto.setQname(rs.getString("qname"));
				dto.setQpwd(rs.getString("qpwd"));
				dto.setQsubject(rs.getString("qsubject"));
				dto.setQcontent(rs.getString("qcontent"));
				dto.setQsaveFileName(rs.getString("qsaveFileName"));
				dto.setQdate(rs.getString("qdate"));
				dto.setQhits(rs.getInt("qhits"));
	
			}
			
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return dto;
	}
	
	//조회수 증가
	public int updateHitCount(int qnum) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "update qna set qhits=qhits+1 where qnum=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, qnum);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
		
	}
	
	//수정
	public int updateData(QnaDTO dto) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "update qna set qname=?,qpwd=?,qsubject=?,qcontent=?,qsaveFileName=? where qnum=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getQname());
			pstmt.setString(2, dto.getQpwd());
			pstmt.setString(3, dto.getQsubject());
			pstmt.setString(4, dto.getQcontent());
			pstmt.setString(5, dto.getQsaveFileName());
			pstmt.setInt(6, dto.getQnum());
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	
	//삭제
	public int deleteData(int qnum) {
		
		int result = 0;
		PreparedStatement pstmt = null;
		String sql;
		
		try {
			
			sql = "delete qna where qnum=?";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setInt(1, qnum);
			
			result = pstmt.executeUpdate();
			
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		
		return result;
	}
	
}
