package co.yedam.puppy.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.puppy.common.Command;

public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private HashMap<String, Command> map = new HashMap<String, Command>();
    
	
	public FrontController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Servlet#init(ServletConfig)
	 */
	public void init(ServletConfig config) throws ServletException {
		// 공통
		map.put("/home.do", new HomeCmd());
		
		// 회원관련
		map.put("/login.do", null);
		map.put("/loginForm.do", null);
		map.put("/logout.do", null);
		map.put("/memberSignUpForm.do", null);
		map.put("/memberSignUp.do", null);
		map.put("/memberSignOutForm.do", null);
		map.put("/memberSignOut.do", null);
		map.put("/partnerSignUpForm.do", null);
		map.put("/partnerSignUp.do", null);
		map.put("/partnerSignOutForm.do", null);
		map.put("/partnerSignOut.do", null);
		map.put("/myPage.do", null);
		map.put("/myPageUpdateForm.do", null);
		map.put("/myPageUpdate.do", null);
		
		// 게시판관련
		map.put("/boardList.do", null);
		map.put("/boardInsertForm.do", null);
		map.put("/boardInsert.do", null);
		map.put("/boardDelete.do", null);
		map.put("/boardUpdateForm.do", null);
		map.put("/boardUpdate.do", null);
		map.put("/boardSelect.do", null);
		map.put("/commentList.do", null);
		map.put("/commentInsertForm.do", null);
		map.put("/commentInsert.do", null);
		map.put("/commentUpdateForm.do", null);
		map.put("/commentUpdate.do", null);
		map.put("/commentDelete.do", null);
		map.put("/QnaInsert.do", null);
		
		// 서비스관련 (공통)
		map.put("/reservationList.do", null);
		map.put("/reservationView.do", null);
		
		// 서비스관련 (멤버)
		map.put("/reservationForm.do", null);
		map.put("/reservationWriteForm.do", null);
		map.put("/reservationWrite.do", null);
		map.put("/payForm.do", null);
		map.put("/orderComplete.do", null);//
		map.put("/reviewList.do", null);
		map.put("/reviewInsertForm.do", null);
		map.put("/reviewInsert.do", null);
		
		// 서비스관련 (파트너)
		map.put("/reservationList.do", null);//
		map.put("/reservationUpdateForm.do", null);
		map.put("/reservationUpdate.do", null);
		map.put("/reservationDelete.do", null);
		
		
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 감자감자 대홍단감자~!!!!!! 한소라!!!!체랴!!!!ㅠ_ㅠ!
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.replace(context, "");
		
		Command command = map.get(path);
		
		String view = command.execute(request, response);
		
		if(view.startsWith("ajax:")) {	// ajax 데이터 처리
			String data = view.replace("ajax:", "");
			response.getWriter().print(data);
		} else if(view.endsWith(".do")) {
			request.getRequestDispatcher(view).forward(request, response);
		} else {	
			view = view + ".tiles";
			request.getRequestDispatcher(view).forward(request, response);
		}
	}

}
