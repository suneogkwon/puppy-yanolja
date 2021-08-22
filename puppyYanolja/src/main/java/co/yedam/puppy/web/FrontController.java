package co.yedam.puppy.web;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.puppy.board.command.BoardDeleteCmd;
import co.yedam.puppy.board.command.BoardInsertCmd;
import co.yedam.puppy.board.command.BoardInsertFormCmd;
import co.yedam.puppy.board.command.BoardListCmd;
import co.yedam.puppy.board.command.BoardSelectCmd;
import co.yedam.puppy.board.command.BoardUpdateCmd;
import co.yedam.puppy.board.command.BoardUpdateFormCmd;
import co.yedam.puppy.board.command.CommentDeleteCmd;
import co.yedam.puppy.board.command.CommentInsertCmd;
import co.yedam.puppy.board.command.CommentInsertFormCmd;
import co.yedam.puppy.board.command.CommentListCmd;
import co.yedam.puppy.board.command.CommentUpdateCmd;
import co.yedam.puppy.board.command.CommentUpdateFormCmd;
import co.yedam.puppy.board.command.QnaInsertCmd;
import co.yedam.puppy.common.Command;
import co.yedam.puppy.main.command.Home;
import co.yedam.puppy.member.command.*;
import co.yedam.puppy.shop.command.*;

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
		map.put("/home.do", new Home());

		// 회원관련
		map.put("/login.do", new Login());
		map.put("/loginForm.do", new LoginForm());
		map.put("/logout.do", new Logout());
		map.put("/memberSignUpForm.do", new memberSignUpForm());
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
		map.put("/memberIdCheck.do", new memberIdCheck());

		// 게시판관련
<<<<<<< HEAD
		map.put("/boardList.do", new BoardListCmd());
		map.put("/boardInsertForm.do", new BoardInsertFormCmd());
		map.put("/boardInsert.do", new BoardInsertCmd());
		map.put("/boardDelete.do", new BoardDeleteCmd());
		map.put("/boardUpdateForm.do", new BoardUpdateFormCmd());
		map.put("/boardUpdate.do", new BoardUpdateCmd());
		map.put("/boardSelect.do", new BoardSelectCmd());
		map.put("/commentList.do", new CommentListCmd());
		map.put("/commentInsertForm.do", new CommentInsertFormCmd());
		map.put("/commentInsert.do", new CommentInsertCmd());
		map.put("/commentUpdateForm.do", new CommentUpdateFormCmd());
		map.put("/commentUpdate.do", new CommentUpdateCmd());
		map.put("/commentDelete.do", new CommentDeleteCmd());
		map.put("/QnaInsert.do", new QnaInsertCmd());
		
		// 서비스관련(공통)
=======
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
>>>>>>> refs/remotes/origin/feature-main
		map.put("/reservationList.do", null);
		map.put("/reservationView.do", null);
<<<<<<< HEAD
		
		// 서비스관련(멤버)
=======

		// 서비스관련 (멤버)
>>>>>>> refs/remotes/origin/feature-main
		map.put("/reservationForm.do", null);
		map.put("/reservationWriteForm.do", null);
		map.put("/reservationWrite.do", null);
		map.put("/payForm.do", new PayForm());
		map.put("/orderComplete.do", null);//
		map.put("/reviewList.do", null);
		map.put("/reviewInsertForm.do", null);
		map.put("/reviewInsert.do", null);
<<<<<<< HEAD
		
		// 서비스관련(파트너)
=======

		// 서비스관련 (파트너)
>>>>>>> refs/remotes/origin/feature-main
		map.put("/reservationList.do", null);//
		map.put("/reservationUpdateForm.do", null);
		map.put("/reservationUpdate.do", null);
		map.put("/reservationDelete.do", null);

		// 예약
		map.put("/reservationSelectForm.do", new ReservationSelectForm());
		map.put("/reservationSelectDetail.do", new ReservationSelectDetail());
		map.put("/reservationSelect.do", new ReservationSelect());
		map.put("/petShopList.do", new PetShopList());
		map.put("/petShopProduct.do", new PetShopProduct());
		map.put("/petShopPayForm.do", new PetShopPayForm());
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO 媛먯옄媛먯옄 ���솉�떒媛먯옄~!!!!!! �븳�냼�씪!!!!泥대옿!!!!�뀪_�뀪!

		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");

		String uri = request.getRequestURI();
		String context = request.getContextPath();
		String path = uri.replace(context, "");

		Command command = map.get(path);

		String view = command.execute(request, response);
<<<<<<< HEAD
		
		if(view.startsWith("ajax:")) {	// ajax �뜲�씠�꽣 泥섎━
			String data = view.replace("ajax:", "");
=======

		if(view.endsWith(".ajax")) {	// ajax 데이터 처리
			String data = view.replace(".ajax", "");
>>>>>>> refs/remotes/origin/feature-main
			response.getWriter().print(data);
		} else if(view.endsWith(".do")) {
			response.sendRedirect(view);
		} else {
			view += ".tiles";
			request.getRequestDispatcher(view).forward(request, response);
		}
	}

}
