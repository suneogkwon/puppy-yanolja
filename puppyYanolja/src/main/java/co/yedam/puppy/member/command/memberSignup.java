package co.yedam.puppy.member.command;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.common.Sha256;
import co.yedam.puppy.member.service.MemberServiceMapper;
import co.yedam.puppy.member.vo.MemberVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.NoSuchAlgorithmException;

public class memberSignup implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        MemberServiceMapper map = new MemberServiceMapper();
        MemberVO vo = new MemberVO();
        String pwd = request.getParameter("mPwd");
        try {
            vo.setPassword(new Sha256().encrypt(pwd));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        vo.setId(request.getParameter("mId"));
        vo.setName(request.getParameter("mName"));
        vo.setHp(request.getParameter("mHp"));
        vo.setEmail(request.getParameter("mEmail"));

        if(map.signUp(vo)) {
            request.getSession().setAttribute("member", map.getData(vo));
            System.out.println( map.getData(vo).toString());
            map.closeSession();
            return "member/signUpCong";
        }
        return "home";
    }
}
