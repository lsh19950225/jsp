package days07.mvc.command;

import java.sql.Connection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.util.ConnectionProvider;
import com.util.DBConn;

import days04.board.domain.BoardDTO;
import days04.board.persistence.BoardDAO;
import days04.board.persistence.BoardDAOImpl;
import days04.board.vo.PagingVO;

public class ListHandler implements CommandHandler{  // [M]VC
	
	int currentPage = 1; // 현재 페이지 번호
    int numberPerPage = 10; // 한 페이지에 출력할 게시글 수
    int numberOfPageBlock = 10; // [1] 2 3 4 5 ... >
    int totalRecords = 0; // 총 레코드 수
    int totalPages = 0; // 총 페이지 수
	
	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {

		System.out.println("> ListHandler.process()");
		
	    try {
			this.currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}catch(Exception e) {
			this.currentPage = 1;
		} // try
		
		try {
			this.numberPerPage = Integer.parseInt(request.getParameter("numberPerPage"));
		}catch(Exception e) {
			this.numberPerPage = 10;
		} // try
		
		String searchCondition = null;
		try {
			searchCondition = request.getParameter("searchCondition");
		}catch(Exception e) {
			searchCondition = "title";
		} // try
		
		// 검색어가 없는 경우 null
		String searchWord = request.getParameter("searchWord");
		
		// 1. 로직 처리
		// 커넥션 풀 쓴 것
		Connection conn = ConnectionProvider.getConnection();
		BoardDAO dao = new BoardDAOImpl(conn);
		ArrayList<BoardDTO> list = null;
		
		PagingVO pvo = null;

		try {
			// 검색어가 없는 경우
			if (searchWord == null || searchWord.equals("")) {
				pvo = new PagingVO(currentPage, numberPerPage, numberOfPageBlock);
				// 페이징 처리 x
				// list = dao.select();
				// 페이징 처리 o + 검색 x
				list = dao.select(this.currentPage, this.numberPerPage);
			}else {
				pvo = new PagingVO(currentPage, numberPerPage, numberOfPageBlock, searchCondition, searchWord);
				list = dao.search(searchCondition, searchWord, currentPage, numberPerPage);
			} // if
		} catch (Exception e) {
			System.out.println("> List.doGet() Exception");
			e.printStackTrace();
		} finally {
			conn.close(); // 커넥션 풀에 반환
		} // try
		
		// 2. 포워딩
		request.setAttribute("list", list);
		request.setAttribute("pvo", pvo);
		request.setAttribute("searchCondition", searchCondition);
		request.setAttribute("searchWord", searchWord);
	    
		return "/days07/board/list.jsp"; // M[V]C
		
	}

	
	
} // class
