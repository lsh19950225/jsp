package days07.mvc.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import days07.mvc.command.CommandHandler;

//@WebServlet("/DispatcherServlet")
public class DispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public DispatcherServlet() {
        super();
    }
    
    //   /board/list.do  new ListHanler()
    public Map<String, CommandHandler> commandHandlerMap = new HashMap<>();
    
    @Override
    // init() : 서블릿이 생성될 때 자동으로 호출하는 함수
    public void init() throws ServletException {    	
    	super.init();
    	// System.out.println("> DispatcherServlet.init()...");
    	// web.xml 에서 <servlet><init-param><param-name>path</servlet> 값을 가져온다.
    	String path = this.getInitParameter("path"); // 필요한 경로가 들어가 있다.
    	
    	// 배포했을때 실제 경로
    	String realPath = this.getServletContext().getRealPath(path);
    	// C:\E\Class\SS20Class\Workspace\JSPClass\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\jspPro\WEB-INF\commandHandler.properties
    	// System.out.println(realPath);
    	
    	// 맵과 같지만 / Properties 엔트리 형태 / 키, 벨류 값 둘다 스트링인 클래스
    	Properties prop = new Properties();
    	try (FileReader reader = new FileReader(realPath);) {
			prop.load(reader);		 
		} catch (Exception e) { 
			throw new ServletException();
		} 
    	// .properties -load()-> prop<key, value> -> Map<url, 실제객체 >
    	Set<Entry<Object, Object>> set = prop.entrySet();
    	Iterator<Entry<Object, Object>> ir = set.iterator();
    	while(ir.hasNext()) {
    		Entry<Object, Object> entry =ir.next();
    		
    		// /board/list.do
    		String url = (String) entry.getKey(); // Map<key>
    		// days07.mvc.command.ListHandler
    		String className = (String) entry.getValue();
    		
    		Class<?> commandHandlerClass = null;
    		try {
    			commandHandlerClass = Class.forName(className);
    			try {
    				// 객체 생성
					CommandHandler handler = (CommandHandler) commandHandlerClass.newInstance();
					this.commandHandlerMap.put(url, handler); // 맵 추가
				} catch (InstantiationException e) { 
					e.printStackTrace();
				} catch (IllegalAccessException e) { 
					e.printStackTrace();
				}
			} catch (ClassNotFoundException e) { 
				e.printStackTrace();
			}
    	} // while
    } // init

	@Override
	public void destroy() { 
		super.destroy();
		// System.out.println("> DispatcherServlet.destroy()...");
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// request.getRequestURI();
		// String requestURL = request.getRequestURL().toString();
		// http://localhost/jspPro/board/list.do
		// System.out.println( requestURL );
		
		//                  /jspPro/board/list.do
		String requestURI = request.getRequestURI();
		
		// "/jspPro"
		// 7
		int beginIndex = request.getContextPath().length();
		requestURI = requestURI.substring(beginIndex);
		// System.out.println(requestURI);  // "/board/list.do"
		
		// [M]VC
		CommandHandler handler = this.commandHandlerMap.get(requestURI);
		
		String view = null; // M[V]C
		try {
			view = handler.process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 리다이렉트 또는 포워딩
		if( view != null ) {
			// 포워딩
			RequestDispatcher dispatcher = request.getRequestDispatcher(view);
			dispatcher.forward(request, response);
		} // if
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}
