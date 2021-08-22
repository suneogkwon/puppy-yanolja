package co.yedam.puppy.member.command;

import co.yedam.puppy.common.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginForm implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        if(request.getSession().getAttribute("member") != null){
            return "home";
        }
        request.setAttribute("pageTitle", "로그인");
        return "member/loginForm";
    }
}
