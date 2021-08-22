package co.yedam.puppy.member.command;

import co.yedam.puppy.common.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class memberSignUpForm implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {

        return "member/signUpForm";
    }
}
