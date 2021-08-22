package co.yedam.puppy.member.command;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.member.service.MemberServiceMapper;
import co.yedam.puppy.member.vo.MemberVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        MemberServiceMapper service = new MemberServiceMapper();
        String id = request.getParameter("m-id");
        String pwd = request.getParameter("m-pwd");
        MemberVO vo = new MemberVO();
        vo.setId(id);
        vo.setPassword(pwd);

        if(service.login(vo)){
            HttpSession session = request.getSession();
            vo = service.getData(vo);
            session.setAttribute("member", vo);
            return "home.do";
        }

        return "loginForm.do";
    }
}
