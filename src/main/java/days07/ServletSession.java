package days07;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import days06.MemberInfo;

// @WebServlet("/days07/session.htm")
public class ServletSession extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletSession() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		System.out.println("doGet()");
		
		/*
	       * HttpSession session request.getSession();랑
	       * HttpSession session request.getSession(true)는 같아
	       * 세션이 존재하면 존재하는 session객체를 반환, 없다면 세션 객체 새로 만들어서 return
	       * 
	       * 
	       * HttpSession session request.getSession(false);
	       * 세션이 존재하면 세션 객체를 return, 없다면 null return
	       * 
	       * 주의)
	       * 	HttpSession session = request.getSession();
	       * 	if(session == null){ x 불가능하다.
	       * 		//
	       * 		//
	       * 	}
	       */
		
		// 인증받은 사용자 정보를 세션에 저장
		MemberInfo mi = new MemberInfo();
		mi.setId("admin");
		mi.setName("홍길동");
		mi.setEmail("admin@naver.com");
		mi.setPasswd("1234");
		
		HttpSession session = request.getSession();
		session.setAttribute("auth", mi);
		
		// 사용자 정보를 사용
		MemberInfo auth_mi = (MemberInfo)session.getAttribute("auth");
		if(auth_mi != null) {
			//
			//
		} // if
		
		// 제거
		session.removeAttribute("auth");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
