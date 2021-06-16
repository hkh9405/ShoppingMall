package com.project3;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartDAO {

	private Connection conn;

	public CartDAO(Connection conn) {
		this.conn = conn;
	}	
	
	//장바구니의 No 최대값
	public int getCartMaxNo() {

		int maxNo = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;;
		String sql;

		try {
			sql = "select nvl(max(no),0) from cart";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				maxNo = rs.getInt(1);
			}

			rs.close();
			pstmt.close();			

		} catch (Exception e) {
			System.out.println(e.toString());
		}		
		return maxNo;	
	}

	//장바구니 입력
	public int insertCart(CartDTO dto,int temp) {

		int result = 0;		
		PreparedStatement pstmt = null;
		String sql;

		try {
			if(temp==1) {
				sql = "insert into cart (no,userId,product,title,sized,qty,mileage,price,sdate) ";
				sql+= "values (?,?,?,?,?,?,?,?,sysdate)";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, dto.getNo());
				pstmt.setString(2, dto.getUserId());
				pstmt.setString(3, dto.getProduct());			
				pstmt.setString(4, dto.getTitle());
				pstmt.setString(5, dto.getSized());
				pstmt.setInt(6, dto.getQty());
				pstmt.setInt(7, dto.getMileage());
				pstmt.setInt(8, dto.getPrice());
				
			}else if(temp==0) {
				sql = "insert into cart (no,userId,product,title,qty,mileage,price,sdate) ";
				sql+= "values (?,?,?,?,?,?,?,sysdate)";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, dto.getNo());
				pstmt.setString(2, dto.getUserId());
				pstmt.setString(3, dto.getProduct());			
				pstmt.setString(4, dto.getTitle());
				pstmt.setInt(5, dto.getQty());
				pstmt.setInt(6, dto.getMileage());
				pstmt.setInt(7, dto.getPrice());
			}

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;		
	}

	//장바구니 선택 삭제
	public int deleteCart(String userId, int no) {

		int result = 0;		
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "delete cart where userId=? and no=?";

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			pstmt.setInt(2, no);

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;		
	}

	//장바구니 전체 삭제
	public int deleteAllCart(String userId) {

		int result = 0;		
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "delete cart where userId=?";

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;		
	}
	
	//장바구니 내꺼 불러오기
	public List<CartDTO> getReadData(String userId) {
		
		List<CartDTO> lists = new ArrayList<CartDTO>();		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;
		
		try {
			sql = "select no,product,sized,title,qty,mileage,price ";
			sql+= "from cart where userId = ? ";
			sql+= "order by sdate desc";
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				CartDTO dto = new CartDTO();
				
				dto.setNo(rs.getInt("no"));
				dto.setProduct(rs.getString("product"));
				dto.setSized(rs.getString("sized"));
				dto.setTitle(rs.getString("title"));
				dto.setQty(rs.getInt("qty"));
				dto.setMileage(rs.getInt("mileage"));
				dto.setPrice(rs.getInt("price"));
				dto.setUserId(userId);
				
				lists.add(dto);
			}
			rs.close();
			pstmt.close();
			
		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return lists;		
	}
	
	//장바구니 수량 수정
	public int updateSize(CartDTO dto) {

		int result = 0;		
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "update cart set sized=? ";
			sql+= "where userId=? and no=?";

			pstmt = conn.prepareStatement(sql);			

			pstmt.setString(1, dto.getSized());
			pstmt.setString(2, dto.getUserId());
			pstmt.setInt(3, dto.getNo());

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;	
	}
		
	
	
	//장바구니 수량 수정
	public int updateCart(CartDTO dto) {
		
		int result = 0;		
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "update cart set qty=? ";
			sql+= "where userId=? and no=?";

			pstmt = conn.prepareStatement(sql);			
			
			pstmt.setInt(1, dto.getQty());
			pstmt.setString(2, dto.getUserId());
			pstmt.setInt(3, dto.getNo());
			
			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;	
	}
	
	//관심목록 리스트 총 수량
		public int getReadCartCnt(String userId) {

			int cartCnt = 0;	
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			String sql;

			try {
				sql = "select count(no)cartCnt ";
				sql+= "from cart where userId = ?";

				pstmt = conn.prepareStatement(sql);

				pstmt.setString(1, userId);

				rs = pstmt.executeQuery();

				if(rs.next()) {

					cartCnt = rs.getInt("cartCnt");
				}
				rs.close();
				pstmt.close();

			} catch (Exception e) {
				System.out.println(e.toString());
			}
			return cartCnt;
		}
		
	
	//관심목록의 No 최대값
	public int getWishMaxNo() {

		int maxNo = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;;
		String sql;

		try {
			sql = "select nvl(max(no),0) from wishlist";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				maxNo = rs.getInt(1);
			}

			rs.close();
			pstmt.close();			

		} catch (Exception e) {
			System.out.println(e.toString());
		}		
		return maxNo;	
	}
	
	//관심목록 입력
	public int insertWishList(CartDTO dto,int temp) {

		int result = 0;		
		PreparedStatement pstmt = null;
		String sql=null;

		try {
			if(temp==1) {
				sql = "insert into wishlist (no,userId,product,title,sized,qty,mileage,price,sdate) ";
				sql+= "values (?,?,?,?,?,?,?,?,sysdate)";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, dto.getNo());
				pstmt.setString(2, dto.getUserId());
				pstmt.setString(3, dto.getProduct());			
				pstmt.setString(4, dto.getTitle());
				pstmt.setString(5, dto.getSized());
				pstmt.setInt(6, dto.getQty());
				pstmt.setInt(7, dto.getMileage());
				pstmt.setInt(8, dto.getPrice());
				
				
			}else if(temp==0) {
				sql = "insert into wishlist (no,userId,product,title,qty,mileage,price,sdate) ";
				sql+= "values (?,?,?,?,?,?,?,sysdate)";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, dto.getNo());
				pstmt.setString(2, dto.getUserId());
				pstmt.setString(3, dto.getProduct());			
				pstmt.setString(4, dto.getTitle());
				pstmt.setInt(5, dto.getQty());
				pstmt.setInt(6, dto.getMileage());
				pstmt.setInt(7, dto.getPrice());
			}			

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;		
	}	
	
	//관심품목 내꺼 불러오기
	public List<CartDTO> getReadWishData(String userId) {

		List<CartDTO> lists = new ArrayList<CartDTO>();		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select no,product,title,sized,qty,mileage,price ";
			sql+= "from wishlist where userId = ? ";
			sql+= "order by sdate desc";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);

			rs = pstmt.executeQuery();

			while(rs.next()) {

				CartDTO dto = new CartDTO();

				dto.setNo(rs.getInt("no"));
				dto.setProduct(rs.getString("product"));
				dto.setTitle(rs.getString("title"));
				dto.setSized(rs.getString("sized"));
				dto.setQty(rs.getInt("qty"));
				dto.setMileage(rs.getInt("mileage"));
				dto.setPrice(rs.getInt("price"));
				dto.setUserId(userId);

				lists.add(dto);
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return lists;		
	}
	
	//관심목록 선택 삭제
	public int deleteWishList(String userId, int no) {

		int result = 0;		
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "delete wishlist where userId=? and no=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);
			pstmt.setInt(2, no);

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;		
	}
	
	//장바구니 전체 삭제
	public int deleteAllWishList(String userId) {

		int result = 0;		
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "delete wishlist where userId=?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;		
	}
	
	//관심목록 수량 수정
	public int updateWishList(CartDTO dto) {

		int result = 0;
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "update wishlist set qty=? ";
			sql+= "where userId=? and no=?";

			pstmt = conn.prepareStatement(sql);			

			pstmt.setInt(1, dto.getQty());
			pstmt.setString(2, dto.getUserId());
			pstmt.setInt(3, dto.getNo());			

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;	
	}
	
	//관심목록 리스트 총 수량
	public int getReadWishCnt(String userId) {

		int wishCnt = 0;	
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select count(no) wishCnt ";
			sql+= "from wishlist where userId = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);

			rs = pstmt.executeQuery();

			if(rs.next()) {

				wishCnt = rs.getInt("wishCnt");
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return wishCnt;		
	}
		
	//포인트 입력
	public int insertPoint(CartDTO dto) {
		
		int result = 0;		
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "insert into points (userId,content,point,sdate) ";
			sql+= "values (?,?,?,sysdate)";		

			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getPoint());

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;	
	}
	
	//적립금 입력
	public int insertMileage(CartDTO dto) {

		int result = 0;		
		PreparedStatement pstmt = null;
		String sql;

		try {
			sql = "insert into Mileages (userId,content,Mileage,sdate) ";
			sql+= "values (?,?,?,sysdate)";		

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getUserId());
			pstmt.setString(2, dto.getContent());
			pstmt.setInt(3, dto.getMileage());

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;	
	}
	
	//포인트 내꺼 불러오기
	public List<CartDTO> getReadPoint(String userId) {

		List<CartDTO> lists = new ArrayList<CartDTO>();		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select to_char(sdate,'yyyy-mm-dd') sdate,content,point ";
			sql+= "from points where userId = ? ";
			sql+= "order by sdate desc";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);

			rs = pstmt.executeQuery();

			while(rs.next()) {

				CartDTO dto = new CartDTO();

				dto.setSdate(rs.getString("sdate"));
				dto.setContent(rs.getString("content"));
				dto.setPoint(rs.getInt("point"));

				lists.add(dto);
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return lists;		
	}
	
	//적립금 내꺼 불러오기
	public List<CartDTO> getReadMileage(String userId) {

		List<CartDTO> lists = new ArrayList<CartDTO>();		
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select to_char(sdate,'yyyy-mm-dd') sdate,content,mileage ";
			sql+= "from mileages where userId = ? ";
			sql+= "order by sdate desc";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);

			rs = pstmt.executeQuery();

			while(rs.next()) {

				CartDTO dto = new CartDTO();

				dto.setSdate(rs.getString("sdate"));
				dto.setContent(rs.getString("content"));
				dto.setMileage(rs.getInt("mileage"));

				lists.add(dto);
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return lists;		
	}
	
	//총적립금 내꺼 불러오기
	public int getTotalMileage(String userId) {
		
		int totalMileage = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select sum(mileage) totalMileage ";
			sql+= "from mileages where userId = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				totalMileage = rs.getInt("totalMileage");
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return totalMileage;		
	}
	
	//총포인트 내꺼 불러오기
	public int getTotalPoint(String userId) {

		int totalPoint = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select sum(point) totalPoint ";
			sql+= "from points where userId = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				totalPoint = rs.getInt("totalPoint");
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return totalPoint;		
	}
	
	//주문서의 No 최대값
	public int getOrderMaxNo() {

		int maxNo = 0;

		PreparedStatement pstmt = null;
		ResultSet rs = null;;
		String sql;

		try {
			sql = "select nvl(max(no),0) from orders";

			pstmt = conn.prepareStatement(sql);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				maxNo = rs.getInt(1);
			}

			rs.close();
			pstmt.close();			

		} catch (Exception e) {
			System.out.println(e.toString());
		}		
		return maxNo;	
	}
	
	//주문서 입력
	public int insertOrder(CartDTO dto,int temp) {

		int result = 0;		
		PreparedStatement pstmt = null;
		String sql;

		try {
			if(temp==1) {
				sql = "insert into orders (no,userId,product,title,sized,qty,mileage,price,sdate) ";
				sql+= "values (?,?,?,?,?,?,?,?,sysdate)";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, dto.getNo());
				pstmt.setString(2, dto.getUserId());
				pstmt.setString(3, dto.getProduct());			
				pstmt.setString(4, dto.getTitle());
				pstmt.setString(5, dto.getSized());
				pstmt.setInt(6, dto.getQty());
				pstmt.setInt(7, dto.getMileage());
				pstmt.setInt(8, dto.getPrice());
				
				
			}else if(temp==0) {
				sql = "insert into orders (no,userId,product,title,qty,mileage,price,sdate) ";
				sql+= "values (?,?,?,?,?,?,?,sysdate)";
				
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setInt(1, dto.getNo());
				pstmt.setString(2, dto.getUserId());
				pstmt.setString(3, dto.getProduct());			
				pstmt.setString(4, dto.getTitle());
				pstmt.setInt(5, dto.getQty());
				pstmt.setInt(6, dto.getMileage());
				pstmt.setInt(7, dto.getPrice());
			}		

			result = pstmt.executeUpdate();

			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return result;	
	}
	
	//내 주문 검색
	public List<CartDTO> getOrder(String userId) {		
		
		List<CartDTO> lists = new ArrayList<>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select no,to_char(sdate,'yyyy-mm-dd') sdate,title,sized,qty,price ";
			sql+= "from orders where userId = ? ";
			sql+= "order by no desc";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);

			rs = pstmt.executeQuery();

			while(rs.next()) {

				CartDTO dto = new CartDTO();
				
				dto.setNo(rs.getInt("no"));
				dto.setSdate(rs.getString("sdate"));
				dto.setTitle(rs.getString("title"));
				dto.setSized(rs.getString("sized"));
				dto.setQty(rs.getInt("qty"));
				dto.setPrice(rs.getInt("price"));

				lists.add(dto);
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return lists;	
	}
	
	//내 주문 하나 검색
	public CartDTO getOrderData(String userId,int no) {	
		
		CartDTO dto = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select no,to_char(sdate,'yyyy-mm-dd') sdate,title,price ";
			sql+= "from orders where userId = ? and no = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);
			pstmt.setInt(2, no);

			rs = pstmt.executeQuery();

			if(rs.next()) {

				dto = new CartDTO();
				
				dto.setNo(rs.getInt("no"));
				dto.setSdate(rs.getString("sdate"));
				dto.setTitle(rs.getString("title"));
				dto.setPrice(rs.getInt("price"));
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return dto;	
	}

	//내 총주문 금액
	public int getTotalPrice(String userId) {

		int totalPrice = 0;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql;

		try {
			sql = "select nvl(sum(price),0) totalPrice ";
			sql+= "from orders where userId = ?";

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, userId);

			rs = pstmt.executeQuery();

			if(rs.next()) {
				totalPrice = rs.getInt("totalPrice");
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			System.out.println(e.toString());
		}
		return totalPrice;		
	}

		
	
}	
