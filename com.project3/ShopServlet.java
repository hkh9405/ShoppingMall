package com.project3;

import java.io.File;
import java.io.IOException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.sql.Connection;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.board.BoardDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.util.DBCPConn;
import com.util.FileManager;
import com.util.MyUtil;

public class ShopServlet extends HttpServlet{

	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}
	
	//중복코딩 계속 호출하기위해
	protected void forward(HttpServletRequest req, HttpServletResponse resp,
			String url) throws ServletException, IOException { //호출할때 url도 넣어주면됨
		
		//포워딩시켜라 -> 주소는바뀌지않으면서 내용은 created.jsp가 출력됨
		RequestDispatcher rd = req.getRequestDispatcher(url);
		rd.forward(req, resp);
	}	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//모든jsp에있던것...우리가계속사용한것
		//req.setCharacterEncoding("UTF-8");
		req.setCharacterEncoding("UTF-8");
		String cp = req.getContextPath(); 
		
		Connection conn = DBCPConn.getConnection();
	
		
		ShopDAO dao = new ShopDAO(conn);
		ShopBrandDAO dao2 = new ShopBrandDAO(DBCPConn.getConnection());
		LoginDAO dao3=new LoginDAO(DBCPConn.getConnection());
		CartDAO dao4 = new CartDAO(conn);
		QnaDAO dao5 = new QnaDAO(conn);
		
		MyUtil myUtil = new MyUtil();
		/*FAQUtil fUtil = new FAQUtil();*/
		//여기까지 당연히 있어야함
		
		//uri -> /sboard/created.do
		String uri = req.getRequestURI();
		
		String url = null;
		
		String root = getServletContext().getRealPath("/");
		String path = root + "shopProject" + File.separator + "imageList";
		
		File f = new File(path);
		
		HttpSession session=req.getSession();
		
		/*CustomInfo info = null;*/
		
		String userId=null;
		
		
		/*if(session!=null) {
			info = (CustomInfo)session.getAttribute("customInfo");
			userId = info.getId();
		}*/
		
		//경로만 만듬 파일자체는 inputstream이 만듬 via fileManager through doFIleDownload()
		if(!f.exists()) {
			f.mkdirs();
		}
		


		
		
		if(uri.indexOf("main.do")!=-1) {
			
			String pageNum = req.getParameter("pageNum");
			//첫페이지
			int currentPage=1;
			//판단
			if(pageNum!=null) {
				currentPage = Integer.parseInt(pageNum);
			}
			//검색
			String searchValue = req.getParameter("searchValue");
			//null판단
			if(searchValue==null) {
				searchValue = "";
			}else {
				//get방식
				if(req.getMethod().equals("GET")) {
					//utf8로
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}
			
			int dataCount = dao.getDataCount(searchValue);

			//전체페이지수
			int numPerPage = 40;//페이지당
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
			
			if(currentPage>totalPage) {
				currentPage = totalPage;
			}
			
			int start = (currentPage-1)*numPerPage+1;
			int end = currentPage*numPerPage;
			
			//List<ShopDTO> lists = dao.getList(start, end, searchValue);
			
			String param="";
			//검색을했는가?
			if(!searchValue.equals("")) {
				param = "searchValue" + URLEncoder.encode(searchValue, "UTF-8");
			}
			
			String listUrl = cp + "/shop/main.do";
			
			if(!param.equals("")) {
				listUrl += "?" + param;
			}
			
			String pageindexList = myUtil.pageIndexList(currentPage, totalPage, listUrl);
			
			//search페이지 주소정리
			String searchUrl = cp + "/shop/search.do?pageNum=" + currentPage;
			//검색된상태에서는??
			if(!param.equals("")) {
				searchUrl += "&" + param;
			}
			
			//req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageindexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("searchUrl", searchUrl);
			//포워딩 넘어갈때 같이넘어감
			
			
			url = "/project3/main.jsp";
			
			forward(req, resp, url);
			
		}else if(uri.indexOf("search_ok.do")!=-1) {


			String pageNum = req.getParameter("pageNum");

			//paging
			int currentPage = 1;


			if(pageNum!=null) {

				currentPage = Integer.parseInt(pageNum);

			}

			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");

			searchKey = "PFOOTNOTE";
			
			if(searchValue==null) {
				searchKey = "PFOOTNOTE";
				searchValue = "";
			}else {
				if(req.getMethod().equalsIgnoreCase("GET")) {
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}

			int dataCount = dao2.getDataCount(searchKey, searchValue);

			int numPerPage = 24;

			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			//삭제시
			if(currentPage>totalPage) {
				currentPage = totalPage;
			}

			int start = (currentPage - 1)*numPerPage+1;
			int end = currentPage * numPerPage;





			//db뿌려주기
			List<ShopBrandDTO> lists = dao2.getlists(start, end, searchKey, searchValue);



			String param = "";

			if(!searchValue.equals("")) {
				param = "searchKey=" + searchKey; //사용자 정의
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}

			String listUrl = cp + "/shop/search_ok.do";

			if(!param.equals("")) {
				listUrl += "?" + param;
			}

			//paging
			String pageIndexList = 
					myUtil.pageIndexList(currentPage, totalPage, listUrl);

			String brandUrl = cp + "/shop/search_ok.do?pageNum=" + currentPage;

			if(!param.equals("")) {
				brandUrl += "&" + param;
			}

			String deletePath = cp + "/shop/delete.do";

			//가상 말고 실제 경로에 받음
			//image 넘기기
			String imagePath = cp + "/shopProject/imageList";

			//					${ imagePath}
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("currentPage", currentPage);
			req.setAttribute("imagePath", imagePath);
			req.setAttribute("params", param);
			req.setAttribute("brandUrl", brandUrl);
			req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("deletePath", deletePath);


			url = "/project3/search.jsp";
			forward(req, resp, url);

		
			
			
			
			
		}else if(uri.indexOf("faq.do")!=-1) {
			
			String pageNum = req.getParameter("pageNum");
			
			int currentPage = 1;
			
			if(pageNum!=null) {
				currentPage = Integer.parseInt(pageNum);
			}
			
			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");
			
			
			if(searchValue==null) {
				searchKey = "fsubject";
				searchValue = "";
			}else {
				if(req.getMethod().equalsIgnoreCase("GET")) {
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}
			
			int dataCount = dao.getDataCount(searchKey, searchValue);
			
			int numPerPage = 10;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
			
			if(currentPage>totalPage) {
				currentPage=totalPage;
			}
			
			int start = (currentPage-1)*numPerPage+1;
			int end = currentPage*numPerPage;
			
			
			List<ShopDTO> lists = dao.getLists(start, end, searchKey, searchValue);

			
			
			String param = "";
			
			if(!searchValue.equals("")) {
				param = "searchKey=" + searchKey;
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
			
			String listUrl = cp + "/shop/faq.do"; //주소고치기
			
			if(!param.equals("")) {
				listUrl += "?" + param;
			}
			
			String pageIndexList = 
					myUtil.pageIndexList(currentPage, totalPage, listUrl);
			
			String articleUrl = cp + "/shop/faq_ok.do?pageNum=" + currentPage; //주소 고치기
			
			if(!param.equals("")) {
				articleUrl += "&" + param;
			}
			
			//포워딩할 페이지에 넘길 데이터
			req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("articleUrl", articleUrl);
			
			url = "/project3/faq.jsp";
			forward(req, resp, url);	
			
		}else if(uri.indexOf("faq_ok.do")!=-1) {
			
			int fnum = Integer.parseInt(req.getParameter("fnum"));
			String pageNum = req.getParameter("pageNum");
			
			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");
			
			if(searchValue!=null) {
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			}
			
			ShopDTO dto = dao.getReadDatafaq(fnum);
			
			if(dto==null) {
				url = cp + "/shop/faq.do";
				resp.sendRedirect(url);
			}
			
			dto.setFcontent2(dto.getFcontent2().replaceAll("\n", "<br/>"));
		
			String param = "pageNum=" + pageNum;
			
			if(searchValue!=null) {
				param+= "&searchKey=" + searchKey;
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}

			req.setAttribute("dto", dto);
			req.setAttribute("params", param);
			req.setAttribute("pageNum", pageNum);
			
			url = "/project3/faq_ok.jsp";
			forward(req, resp, url);
			
		}
		
		
		
		
		
		
		//----------------------------------병호
		else if(uri.indexOf("write.do")!=-1) {

			url = "/project3/write.jsp";
			forward(req, resp, url);

		}else if(uri.indexOf("write_ok.do")!=-1) {


			String encType = "UTF-8";
			int maxSize = 10*1024*1024;

			//파일 업로드
			MultipartRequest mr = new MultipartRequest(req, path, maxSize,
					encType, new DefaultFileRenamePolicy());
			try {
				
				if(mr.getFile("upload1")!=null && mr.getFile("upload2")!=null 
						&&mr.getFile("upload3")!=null && mr.getFile("upload4")!=null
						&& mr.getFile("upload5")!=null && mr.getFile("upload6")!=null
						&& mr.getFile("upload7")!=null) {

					int maxNum = dao2.getMaxNum();

					ShopBrandDTO dtob = new ShopBrandDTO();
					
					
					dtob.setpID(maxNum + 1);
					dtob.setpKIND(mr.getParameter("pKIND"));
					dtob.setpCONTENT(mr.getFilesystemName("upload1"));
					dtob.setpFOOTNOTE(mr.getFilesystemName("upload2"));
					dtob.setpINFO(mr.getFilesystemName("upload3"));
					dtob.setpOFFICIAL(mr.getFilesystemName("upload4"));
					dtob.setpNPAY(mr.getFilesystemName("upload5"));
					dtob.setpIMAGE(mr.getFilesystemName("upload6"));
					dtob.setpDESC(mr.getFilesystemName("upload7"));
					dtob.setpPRICE(Integer.parseInt(req.getParameter("pPRICE").trim()));
					dtob.setpNAME(req.getParameter("pNAME"));

					dao2.insertData(dtob);
				}

				url = cp + "/shop/shopbrand.do";
				resp.sendRedirect(url);
				
			} catch (Exception e) {
				System.out.println(e.toString());
			}
			//DB에 정보 입력
			

		}else if(uri.indexOf("shopbrand.do")!=-1){

			String pageNum = req.getParameter("pageNum");

			//paging
			int currentPage = 1;


			if(pageNum!=null) {

				currentPage = Integer.parseInt(pageNum);

			}

			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");

			if(searchValue==null) {
				searchKey = "pKIND";
				searchValue = "";
			}else {
				if(req.getMethod().equalsIgnoreCase("GET")) {
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}

			int dataCount = dao2.getDataCount(searchKey, searchValue);

			int numPerPage = 24;

			int totalPage = myUtil.getPageCount(numPerPage, dataCount);

			//삭제시
			if(currentPage>totalPage) {
				currentPage = totalPage;
			}

			int start = (currentPage - 1)*numPerPage+1;
			int end = currentPage * numPerPage;





			//db뿌려주기
			List<ShopBrandDTO> lists = dao2.getlists(start, end, searchKey, searchValue);

			

			String param = "";

			if(!searchValue.equals("")) {
				param = "searchKey=" + searchKey; //사용자 정의
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}

			String listUrl = cp + "/shop/shopbrand.do";

			if(!param.equals("")) {
				listUrl += "?" + param;
			}

			//paging
			String pageIndexList = 
					myUtil.pageIndexList(currentPage, totalPage, listUrl);

			String brandUrl = cp + "/shop/shobrand.do?pageNum=" + currentPage;

			if(!param.equals("")) {
				brandUrl += "&" + param;
			}

			String deletePath = cp + "/shop/delete.do";

			//가상 말고 실제 경로에 받음
			//image 넘기기
			String imagePath = cp + "/shopProject/imageList";

			//					${ imagePath}
			
		
			req.setAttribute("totalPage", totalPage);
			req.setAttribute("currentPage", currentPage);
			req.setAttribute("imagePath", imagePath);
			req.setAttribute("params", param);
			req.setAttribute("brandUrl", brandUrl);
			req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("deletePath", deletePath);


			url = "/project3/shopbrand.jsp";
			forward(req, resp, url);

		/*}else if(uri.indexOf("delete.do")!=-1) {
		

				int pID=Integer.parseInt(req.getParameter("pID"));
				System.out.println(pID);
				ShopBrandDTO dto=dao2.getReadData(pID);
				//1.file삭제
				FileManager.doFileDelete(dto.getpCONTENT(), dto.getpFOOTNOTE(), path);
				//2.DB삭제
				dao2.deleteData(pID);
				url=cp+"/shop/shopbrand.do";
				resp.sendRedirect(url);*/

			



		}else if(uri.indexOf("shopClothes1.do")!=-1) {

			int pPRICE = Integer.parseInt(req.getParameter("pPRICE"));
			int pID = Integer.parseInt(req.getParameter("pID"));
			/*int oID = Integer.parseInt(req.getParameter("oID"));*/
			String pageNum = req.getParameter("pageNum");
			String pINFO = req.getParameter("pINFO");
			String pOFFICIAL = req.getParameter("pOFFICIAL");
			String pNPAY = req.getParameter("pNPAY");
			String pIMAGE = req.getParameter("pIMAGE");
			String pDESC = req.getParameter("pDESC");
			String size = req.getParameter("size");
			String pNAME = req.getParameter("pNAME");
			

	
			String imagePath = cp + "/shopProject/imageList";
			
			ShopBrandDTO dtob = dao2.getReadData(pID,pPRICE);
	
			


			String param = "pageNum=" + pageNum;

		
			
			req.setAttribute("pNAME", pNAME);
			req.setAttribute("size", size);
			req.setAttribute("pINFO", pINFO);
			req.setAttribute("pOFFICIAL", pOFFICIAL);
			req.setAttribute("pNPAY", pNPAY);
			req.setAttribute("pIMAGE", pIMAGE);
			req.setAttribute("pDESC", pDESC);
			req.setAttribute("pPRICE", pPRICE);
			req.setAttribute("params", param); 
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("imagePath", imagePath);
			req.setAttribute("dtob", dtob); //pid를 통한 한개의 상품 이미지와 정보 
			
			/*req.setAttribute("dtoc", dtoc); */

			url = "/project3/shopClothes1.jsp";
			forward(req, resp, url);
			}
		
		
		
		
		
		
		
		
		
		
		
		
		
		//------------------------경환
		
		else if(uri.indexOf("login.do")!=-1) {
			url="/project3/login/login.jsp";
			forward(req,resp,url);
		} else if (uri.indexOf("login_ok.do")!=-1) {
			String id=req.getParameter("id");
			String pwd=req.getParameter("pwd");
			
			LoginDTO dto=dao3.getReadData(id,pwd);
			
			if(dto==null ||(!dto.getId().equals(id))||(!dto.getPwd().equals(pwd))) {
				req.setAttribute("msg", "alert(\"아이디 또는 비밀번호가 정확하지 않습니다.\\n다시 입력해주세요.\");");
				url="/project3/login/login.jsp";
				forward(req, resp, url);
				return;
			}
			
			session.setMaxInactiveInterval(30*60); // 세션 30분
			
			CustomInfo info=new CustomInfo();
		
			info.setId(dto.getId());
			info.setName(dto.getName());
			
			session.setAttribute("customInfo", info);
			
			url=cp+"/shop/main.do";
			resp.sendRedirect(url);
		}else if (uri.indexOf("find_id.do")!=-1) {
			url="/project3/login/find_id.jsp";
			forward(req,resp,url);
		}else if (uri.indexOf("find_id_ok.do")!=-1) {
			String name=req.getParameter("name");
			String email=req.getParameter("email");
			
			String id=dao3.findData(name, email);

			if(id==null||id.equals("")) {
				req.setAttribute("msg", "alert(\"내용과 일치하는 회원정보가 없습니다.\");");
				url="/project3/login/find_id.jsp";
				forward(req, resp, url);
				return;
			}
			
			StringBuffer pwd = new StringBuffer();
			
			Random rnd = new Random();
			for (int i = 0; i < 8; i++) {
			    int rIndex = rnd.nextInt(3);
			    switch (rIndex) {
			    case 0:
			        // a-z
			        pwd.append((char) ((int) (rnd.nextInt(26)) + 97));
			        break;
			    case 1:
			        // A-Z
			        pwd.append((char) ((int) (rnd.nextInt(26)) + 65));
			        break;
			    case 2:
			        // 0-9
			        pwd.append((rnd.nextInt(10)));
			        break;
			    }
			}
			
			req.setAttribute("email", email);
			req.setAttribute("name", name);
			req.setAttribute("id", id);
			req.setAttribute("pwd", pwd);
			
			url="/project3/login/find_id_ok.jsp";
			forward(req,resp,url);
		} else if (uri.indexOf("logout.do")!=-1) {
			session.removeAttribute("customInfo");
			session.invalidate();
			
			url=cp+"/shop/main.do";
			resp.sendRedirect(url);
		} else if (uri.indexOf("membership.do")!=-1) {
			url="/project3/login/membership.jsp";
			forward(req,resp,url);
		} else if (uri.indexOf("membership_ok.do")!=-1) {
			LoginDTO dto=new LoginDTO();
			
			String birthyear=req.getParameter("birthyear");
			String birthmonth=req.getParameter("birthmonth");
			String birthdate=req.getParameter("birthdate");
			String birth=birthyear+"-"+birthmonth+"-"+birthdate;
			
			dto.setName(req.getParameter("name"));
			dto.setId(req.getParameter("id"));
			dto.setPwd(req.getParameter("pwd"));
			dto.setBirth(birth);
			dto.setEmail(req.getParameter("email"));
			dto.setTel(req.getParameter("tel"));
			
			String name=dto.getName();
			
			dao3.insertData(dto);
			
			req.setAttribute("name", name);
			
			url="/project3/login/membership_ok.jsp";
			forward(req,resp,url);
		} else if (uri.indexOf("userInfo.do")!=-1) {
			CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
		
			info=(CustomInfo) session.getAttribute("customInfo");
			
			String id=info.getId();
			String name=info.getName();
			
			InfoDTO dto=dao3.getInfo(id);
			String birthyear=dto.getBirth().substring(0, 4);
			String birthmonth=dto.getBirth().substring(5, 7);
			String birthdate=dto.getBirth().substring(8);
			
			req.setAttribute("dto", dto);
			req.setAttribute("birthyear", birthyear);
			req.setAttribute("birthmonth", birthmonth);
			req.setAttribute("birthdate", birthdate);
			
			url="/project3/login/userInfo.jsp";
			forward(req,resp,url);
		} else if (uri.indexOf("userInfo_ok.do")!=-1) {
			CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
			
			/*info=(CustomInfo) session.getAttribute("customInfo");*/

			String id=info.getId();
			
			InfoDTO dto=new InfoDTO();
			
			dto.setName(req.getParameter("name"));
			dto.setPwd(req.getParameter("pwd"));
			dto.setBirth(req.getParameter("birth"));
			dto.setGender(req.getParameter("gender"));
			dto.setAddr1(req.getParameter("addr1"));
			dto.setAddr2(req.getParameter("addr2"));
			dto.setAddr3(req.getParameter("addr3"));
			dto.setTel(req.getParameter("tel"));
			dto.setBank(req.getParameter("bank"));
			dto.setAccount(req.getParameter("account"));
			
			dao3.updateData(dto, id);
			
			url=cp+"/shop/main.do";
			resp.sendRedirect(url);
		} else if (uri.indexOf("withdrwal.do")!=-1) {
			url="/project3/login/withdrwal.jsp";
			forward(req,resp,url);
		} else if (uri.indexOf("withdrwal_ok.do")!=-1) {
			CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
			
			/*info=(CustomInfo) session.getAttribute("customInfo");*/

			String id=info.getId();
			
			dao3.deleteData(id);

			session.removeAttribute("customInfo");
			session.invalidate();

			url=cp+"/shop/main.do";
			resp.sendRedirect(url);
		}
		
		
		
		//성준이형4
				else if(uri.indexOf("basket.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId = info.getId();
					
					if(info!=null) {
						List<CartDTO> clists = dao4.getReadData(userId);
						List<CartDTO> wlists = dao4.getReadWishData(userId);
						
						req.setAttribute("clists", clists);
						req.setAttribute("wlists", wlists);
					}		
					
					url = "/project3/mypage/basket.jsp";
					forward(req, resp, url);			
					
				}else if(uri.indexOf("basket_ok.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();
				
					CartDTO dto = new CartDTO();
					
					String wno = req.getParameter("wno");
								
					int no = dao4.getCartMaxNo();
					int temp = 0;
					int mileage = 0;
					int amount = 0;
					int price = 0;
					
					dto.setNo(no+1);
					dto.setUserId(userId);
					
					String str = req.getParameter("pPRICE");
					
					if(str!=null ) {
						
						int mm = Integer.parseInt(str);
						mileage = (int) (Math.floor(((mm*0.03)* 100) / 100));
						
						if(req.getParameter("size")!=null) {
							dto.setSized(req.getParameter("size"));
							temp = 1;
						}				
						dto.setProduct(req.getParameter("pCONTENT"));
						dto.setTitle(req.getParameter("pNAME"));
						dto.setQty(1);
						dto.setMileage(mileage);
						dto.setPrice(Integer.parseInt(req.getParameter("pPRICE")));
						
					}else {
						
						if(req.getParameter("sized")!=null) {
							dto.setSized(req.getParameter("sized"));
							temp = 1;
						}
						dto.setProduct(req.getParameter("product"));
						dto.setTitle(req.getParameter("title"));
						
						String mmm2 = req.getParameter("amount");
						if(mmm2!=null) {
							amount = Integer.parseInt(mmm2);
						}
						dto.setQty(amount);
						
						String mmm = req.getParameter("mileage");
						if(mmm!=null) {
							mileage = Integer.parseInt(mmm);
						}
						dto.setMileage(mileage);
						
						String mmm3 = req.getParameter("price");
						if(mmm3!=null) {
							price = Integer.parseInt(mmm3);
						}
						dto.setPrice(price);
					}
					
					dao4.insertCart(dto, temp);
					
					if(wno!=null) {				
						dao4.deleteWishList(userId, Integer.parseInt(wno));				
					}
					
					url = cp + "/shop/basket.do";	
					
					resp.sendRedirect(url);
					
				}else if(uri.indexOf("deleteCart.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();
					
					int cno = Integer.parseInt(req.getParameter("cno"));			
					
					dao4.deleteCart(userId, cno);
					
					url = cp + "/shop/basket.do?";
					
					resp.sendRedirect(url);
					
				}else if(uri.indexOf("deleteAllCart.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();
					
					dao4.deleteAllCart(userId);
					
					url = cp + "/shop/basket.do?";
					
					resp.sendRedirect(url);

				}else if(uri.indexOf("updateCart.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();
					
					int qty = Integer.parseInt(req.getParameter("amount"));
					int cno = Integer.parseInt(req.getParameter("cno"));
				
					CartDTO dto = new CartDTO();
					
					dto.setNo(cno);
					dto.setUserId(userId);
					dto.setQty(qty);
					
					dao4.updateCart(dto);
					
					url = cp + "/shop/basket.do?";
					resp.sendRedirect(url);
					
				}else if(uri.indexOf("wishlist_ok.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();
					
					String cno = req.getParameter("cno");
					
					CartDTO dto = new CartDTO();
					
					int no = dao4.getWishMaxNo();
					int temp = 0;
					
					dto.setNo(no+1);
					dto.setUserId(userId);
					
					String str = req.getParameter("pPRICE");
					
					if(str!=null ) {
						
						int mm = Integer.parseInt(str);
						int mileage = (int) (Math.floor(((mm*0.03)* 100) / 100));
						
						if(req.getParameter("size")!=null) {
							dto.setSized(req.getParameter("size"));
							temp = 1;
						}
						dto.setProduct(req.getParameter("pCONTENT"));
						dto.setTitle(req.getParameter("pNAME"));
						dto.setQty(1);
						dto.setMileage(mileage);
						dto.setPrice(Integer.parseInt(req.getParameter("pPRICE")));
						
					}else {
						
						if(req.getParameter("sized")!=null) {
							dto.setSized(req.getParameter("sized"));
							temp = 1;
						}
						dto.setProduct(req.getParameter("product"));
						dto.setTitle(req.getParameter("title"));
						dto.setQty(Integer.parseInt(req.getParameter("amount")));
						dto.setMileage(Integer.parseInt(req.getParameter("mileage")));
						dto.setPrice(Integer.parseInt(req.getParameter("price")));
					}
					
					dao4.insertWishList(dto,temp);
					
					if(cno!=null) {
						dao4.deleteCart(userId, Integer.parseInt(cno));
					}			
					
					url = cp + "/shop/basket.do";
					
					resp.sendRedirect(url);
					
				}else if(uri.indexOf("deleteWishList.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();						
					
					int wno = Integer.parseInt(req.getParameter("wno"));
					
					dao4.deleteWishList(userId, wno);
					
					String page = req.getParameter("page");
					
					if(page.equals("c")) {
						url = cp + "/shop/basket.do?";
					}else if(page.equals("m")) {
						url = cp + "/shop/mywishlist.do?";
					}
					resp.sendRedirect(url);
					
				}else if(uri.indexOf("deleteAllWishList.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();	
					
					dao4.deleteAllCart(userId);
					
					url = cp + "/shop/mywishlist.do?";
					
					resp.sendRedirect(url);
					
				}else if(uri.indexOf("updateWishList.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();	
					
					int qty = Integer.parseInt(req.getParameter("amount"));
					int wno = Integer.parseInt(req.getParameter("wno"));
					
					CartDTO dto = new CartDTO();
					
					dto.setNo(wno);
					dto.setUserId(userId);
					dto.setQty(qty);
					
					dao4.updateWishList(dto);
					
					String page = req.getParameter("page");
					
					if(page.equals("c")) {
						url = cp + "/shop/basket.do?";
					}else if(page.equals("m")) {
						url = cp + "/shop/mywishlist.do?";				
					}	
					resp.sendRedirect(url);
					
				}else if(uri.indexOf("orders.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();	
					
					String pay = req.getParameter("kakaopay_direct");
					
					
					CartDTO dto = new CartDTO();
					
					int no = dao4.getCartMaxNo();
					int temp = 0;
					
					dto.setNo(no+1);
					dto.setUserId(userId);
					
					String str = req.getParameter("pPRICE");
					
					if(str!=null ) {
						
						int mm = Integer.parseInt(str);
						int mileage = (int) (Math.floor(((mm*0.03)* 100) / 100));
						
						//if(req.getParameter("size")!=null) {
							dto.setSized(req.getParameter("size"));
							temp = 1;
						//}
						dto.setProduct(req.getParameter("pCONTENT"));
						dto.setTitle(req.getParameter("pNAME"));
						dto.setQty(1);
						dto.setMileage(mileage);
						dto.setPrice(Integer.parseInt(req.getParameter("pPRICE")));
						
						dao4.insertCart(dto,temp);
						
					}
					
					//String ttel = req.getParameter("tel");
					String ttel = "010-1111-2222";
					
					String[] tel = ttel.split("-");			
					
					List<CartDTO> clists = dao4.getReadData(userId);
					
					req.setAttribute("clists", clists);
					
					req.setAttribute("tel1", tel[0]);
					req.setAttribute("tel2", tel[1]);
					req.setAttribute("tel3", tel[2]);
					
					req.setAttribute("kakaopay_direct", pay);
					
					url = "/project3/mypage/orders.jsp";
					forward(req, resp, url);	
				
					
				}else if(uri.indexOf("mypage.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();
					
					int totalMileage = dao4.getTotalMileage(userId);
					int cartCnt = dao4.getReadCartCnt(userId);
					int wishCnt = dao4.getReadWishCnt(userId);
					int totalPrice = dao4.getTotalPrice(userId);
					
					req.setAttribute("totalMileage", totalMileage);
					req.setAttribute("cartCnt", cartCnt);	
					req.setAttribute("wishCnt", wishCnt);			
					req.setAttribute("totalPrice", totalPrice);
					
					url = "/project3/mypage/mypage.jsp";
					forward(req, resp, url);
					
				}else if(uri.indexOf("mywishlist.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();
					
					List<CartDTO> wlists = dao4.getReadWishData(userId);
					
					req.setAttribute("wlists", wlists);
					
					url = "/project3/mypage/mywishlist.jsp";
					forward(req, resp, url);			
				
					
				}else if(uri.indexOf("myreserve.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();
					
					List<CartDTO> mlists = dao4.getReadMileage(userId);
					
					int totalMileage = dao4.getTotalMileage(userId);
					
					req.setAttribute("mlists", mlists);
					req.setAttribute("totalMileage", totalMileage);
					
					url = "/project3/mypage/myreserve.jsp";
					forward(req, resp, url);		

				}else if(uri.indexOf("myorder.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();

					List<CartDTO> olists = dao4.getOrder(userId);

					req.setAttribute("olists", olists);

					url = "/project3/mypage/myorder.jsp";
					forward(req, resp, url);
					
				}else if(uri.indexOf("orders_ok.do")!=-1) {	
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();
					
					CartDTO dto = new CartDTO();
					
					int no = dao4.getOrderMaxNo();
					int temp = 0;
					
					List<CartDTO> clists = dao4.getReadData(userId);
					
					Iterator<CartDTO> cit = clists.iterator();
					
					while(cit.hasNext()) {
						
						CartDTO cdto = cit.next();
						
						dto.setNo(no+1);
						dto.setUserId(userId);
						dto.setProduct(cdto.getProduct());
						if(cdto.getSized()!=null) {
							dto.setSized(cdto.getSized());
							temp = 1;
						}			
						dto.setTitle(cdto.getTitle());
						dto.setQty(cdto.getQty());
						dto.setPrice(cdto.getPrice());
												
						dao4.insertOrder(dto,temp);
						
						no++;				
					}	
					String mmm = req.getParameter("mileage");
					int mileage = 0;
					if(mmm!=null) {
						mileage = Integer.parseInt(mmm);
					}
					
					
					dto.setMileage(mileage);
					
					if(mileage>0) {
						dto.setContent("적립금이 추가되었습니다.");
						dao4.insertMileage(dto);
						dto.setMileage(Integer.parseInt(req.getParameter("intmileage")));
					}else if(mileage<0) {
						dto.setContent("적립금을 사용하였습니다.");
						dao4.insertMileage(dto);
					}
					
					dao4.deleteAllCart(userId);
					
					String fprice = req.getParameter("fprice");
					String fmileage = req.getParameter("fmileage");
					
					url = cp + "/shop/complete.do?fmileage=" + fmileage + "&fprice=" + fprice;
					
					resp.sendRedirect(url);
					
				}else if(uri.indexOf("complete.do")!=-1) {
					
					CustomInfo info=(CustomInfo) session.getAttribute("customInfo");
					
					userId=info.getId();
					
					int no = dao4.getOrderMaxNo();
					
					CartDTO dto = dao4.getOrderData(userId,no);

					req.setAttribute("dto", dto);

					url = "/project3/mypage/complete.jsp";
					forward(req, resp, url);	
					
				}else if(uri.indexOf("updateSized_ok.do")!=-1) {
					
					String sized = req.getParameter("nsized");
					int cno = Integer.parseInt(req.getParameter("cno"));
					
					CartDTO dto = new CartDTO();
					
					dto.setNo(cno);
					dto.setUserId(userId);
					dto.setSized(sized);
					
					dao4.updateSize(dto);
					
					
					url = cp + "/shop/basket.do?";
						
					resp.sendRedirect(url);	
					
					
					
					
				}
				
				
				
				
				
				
				
				//연지누나
				
				
				
				
				else if(uri.indexOf("created.do")!=-1) {

			String pNAME=req.getParameter("pNAME");
			/*int pPRICE = Integer.parseInt(req.getParameter("pPRICE"));*/
			String pPRICE = req.getParameter("pPRICE");
			String pCONTENT = req.getParameter("pCONTENT");
			String imagePath = cp + "/shopProject/imageList";
			
			CustomInfo info = (CustomInfo)session.getAttribute("customInfo");
			
			if(info==null) {
				
				url = "/project3/login.jsp"; //로그인화면주소적기,,
				forward(req, resp, url);
				return;
			}

			req.setAttribute("imagePath", imagePath);
			req.setAttribute("pNAME", pNAME);
			req.setAttribute("pPRICE", pPRICE);
			req.setAttribute("pCONTENT", pCONTENT);
					
			url = "/project3/created.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("created_ok.do")!=-1) {
			
			String encType = "UTF-8";
			int maxSize = 10*1024*1024;
			
			MultipartRequest mr = new MultipartRequest(req, path, maxSize, encType, new DefaultFileRenamePolicy());
			
			if(mr.getFile("upload")!=null) {
			
				QnaDTO dto = new QnaDTO();
				
				int maxNum = dao5.getMaxNum();
				
				dto.setQnum(maxNum + 1);
				dto.setQname(mr.getParameter("qname"));
				dto.setQpwd(mr.getParameter("qpwd"));
				dto.setQsubject(mr.getParameter("qsubject"));
				dto.setQcontent(mr.getParameter("qcontent"));
				dto.setQsaveFileName(mr.getFilesystemName("upload"));
				
				dao5.insertData(dto);
			
			} else {
				
				QnaDTO dto = new QnaDTO();
				
				int maxNum = dao5.getMaxNum();
				
				dto.setQnum(maxNum + 1);
				dto.setQname(mr.getParameter("qname"));
				dto.setQpwd(mr.getParameter("qpwd"));
				dto.setQsubject(mr.getParameter("qsubject"));
				dto.setQcontent(mr.getParameter("qcontent"));
				dto.setQsaveFileName(mr.getFilesystemName("upload"));
				
				dao5.insertData(dto);
			}
			
			url = cp + "/shop/qna.do";
			resp.sendRedirect(url);
			
		}else if(uri.indexOf("qna.do")!=-1) {
			
			String pageNum = req.getParameter("pageNum");
			
			int currentPage = 1;
			
			if(pageNum!=null) {
				currentPage = Integer.parseInt(pageNum);
			}
			
			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");
			
			if(searchValue==null) {
				searchKey = "qname";
				searchValue = "";
			}else {
				if(req.getMethod().equalsIgnoreCase("GET")) {
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}
			
			int dataCount = dao5.getDataCount(searchKey, searchValue);
			
			int numPerPage = 12;
			int totalPage = myUtil.getPageCount(numPerPage, dataCount);
			
			if(currentPage>totalPage) {
				currentPage=totalPage;
			}
			
			int start = (currentPage-1)*numPerPage+1;
			int end = currentPage*numPerPage;
			
			List<QnaDTO> lists = dao5.getLists(start, end, searchKey, searchValue);
			
			String param = "";
			
			if(!searchValue.equals("")) {
				param = "searchKey=" + searchKey;
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
			
			String listUrl = cp + "/shop/qna.do"; //가짜주소 만들기
			
			if(!param.equals("")) {
				listUrl += "?" + param;
			}
			
			String pageIndexList = 
					myUtil.pageIndexList(currentPage, totalPage, listUrl);
			
			String articleUrl = cp + "/shop/qnaArticle.do?pageNum=" + currentPage;
			
			if(!param.equals("")) {
				articleUrl += "&" + param;
			}
			
			String imagePath= cp + "/shopProject/imageList";
			String no="null.gif";
			
			req.setAttribute("lists", lists);
			req.setAttribute("pageIndexList", pageIndexList);
			req.setAttribute("dataCount", dataCount);
			req.setAttribute("articleUrl", articleUrl);
			req.setAttribute("imagePath", imagePath);
			req.setAttribute("no", no);
			
			url = "/project3/qna.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("qnaArticle.do")!=-1) {
			
			int qnum = Integer.parseInt(req.getParameter("qnum"));
			String pageNum = req.getParameter("pageNum");
			String pCONTENT = req.getParameter("pCONTENT");
			
			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");
			
			if(searchValue!=null) {
				searchValue = URLDecoder.decode(searchValue, "UTF-8");
			}
			
			dao5.updateHitCount(qnum);
			
			QnaDTO dto = dao5.getReadData(qnum);
			ShopBrandDTO dtob = dao2.getReadDataqna(pCONTENT);
			
			
			/*if(dtob==null) {
				url = cp + "/shop/qna.do";
				resp.sendRedirect(url);
			}*/
			
			dto.setQcontent(dto.getQcontent().replaceAll("\n", "<br/>"));
			
			String param = "pageNum=" + pageNum;
			
			if(searchValue!=null) {
				param+= "&searchKey=" + searchKey;
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
			
			String imagePath = cp + "/shopProject/imageList";
			
			req.setAttribute("dto", dto);
			req.setAttribute("dtob", dtob);
			req.setAttribute("params", param);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("imagePath", imagePath);
			
			url = "/project3/qnaArticle.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("updated.do")!=-1) {
			
			int qnum = Integer.parseInt(req.getParameter("qnum"));
			String pageNum = req.getParameter("pageNum");
			
			//검색-----
			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");
			
			if(searchValue!=null) {
				
				if(req.getMethod().equalsIgnoreCase("get")) {
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}else{
				searchKey = "qname";
				searchValue = "";
			}
			//검색-----
			
			QnaDTO dto = dao5.getReadData(qnum);
			
			if(dto==null) {
				url = cp + "/shop/qna.do";
				resp.sendRedirect(url);
			}
			
			String param = "pageNum=" + pageNum;
			
			if(!searchValue.equals("")) {
				param+= "&searchKey=" + searchKey;
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
			
			String imagePath = cp + "/shopProject/imageList";
			
			req.setAttribute("dto", dto);
			req.setAttribute("pageNum", pageNum);
			req.setAttribute("params", param);
			req.setAttribute("searchKey", searchKey);
			req.setAttribute("searchValue", searchValue);
			req.setAttribute("imagePath", imagePath);
			
			url = "/project3/updated.jsp";
			forward(req, resp, url);
			
		}else if(uri.indexOf("updated_ok.do")!=-1) {

			String pageNum = req.getParameter("pageNum");		
			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");
			
/*			if(searchValue!=null) {
				
				if(req.getMethod().equalsIgnoreCase("get")) {
					searchValue = URLDecoder.decode(searchValue, "UTF-8");
				}
			}else{
				searchKey = "qname";
				searchValue = "";
			}*/

			System.out.println(pageNum+"aaaa");	
			System.out.println(searchValue+"aaaa");	
			
			String encType = "UTF-8";
			int maxSize = 10*1024*1024;
				
			MultipartRequest mr = new MultipartRequest(req, path, maxSize,
					encType, new DefaultFileRenamePolicy());

			/*int qnum = Integer.parseInt(req.getParameter("qnum"));*/

			if(mr.getFile("upload")!=null) {
					
				QnaDTO dto = new QnaDTO();
				
				dto.setQnum(Integer.parseInt(mr.getParameter("qnum")));
				dto.setQname(mr.getParameter("qname"));
				dto.setQpwd(mr.getParameter("qpwd"));
				dto.setQsubject(mr.getParameter("qsubject"));
				dto.setQcontent(mr.getParameter("qcontent"));
				dto.setQsaveFileName(mr.getFilesystemName("upload"));
					
				dao5.updateData(dto);
				
			} else {
					
				QnaDTO dto = new QnaDTO();

				dto.setQnum(Integer.parseInt(mr.getParameter("qnum")));
				dto.setQname(mr.getParameter("qname"));
				dto.setQpwd(mr.getParameter("qpwd"));
				dto.setQsubject(mr.getParameter("qsubject"));
				dto.setQcontent(mr.getParameter("qcontent"));
				dto.setQsaveFileName(mr.getFilesystemName("upload"));
					
				dao5.updateData(dto);
			}
				
			String param = "pageNum=" + pageNum;
				
			if(searchValue!=null) {
				param+= "&searchKey=" + searchKey;
				param+= "&searchValue=" + URLEncoder.encode(searchValue, "UTF-8");
			}
				
			url = cp + "/shop/qna.do?" + param;
			resp.sendRedirect(url);
			
		}else if(uri.indexOf("deleted_ok.do")!=-1) {
			
			int qnum = Integer.parseInt(req.getParameter("qnum"));
			String pageNum = req.getParameter("pageNum");
			
			String searchKey = req.getParameter("searchKey");
			String searchValue = req.getParameter("searchValue");
			
			QnaDTO dto = dao5.getReadData(qnum);
			FileManager.doFileDelete(dto.getQsaveFileName(), path);
			
			dao5.deleteData(qnum);
			
			String param = "pageNum=" + pageNum;
			
			if(searchValue!=null) {
				param += "&searchKey=" + searchKey;
				param += "&searchValue=" + searchValue;
			}
			
			url = cp + "/shop/qna.do?" + param;
			resp.sendRedirect(url);
			
		}
		
		
		
	}
		
		
		
		
		
		
}
	
	
	
	