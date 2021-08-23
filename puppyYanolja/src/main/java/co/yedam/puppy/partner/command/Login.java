package co.yedam.puppy.partner.command;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.common.Sha256;
import co.yedam.puppy.member.service.MemberServiceMapper;
import co.yedam.puppy.member.vo.MemberVO;
import co.yedam.puppy.partner.service.PartnerServiceMapper;
import co.yedam.puppy.partner.vo.PartnerVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.NoSuchAlgorithmException;

public class Login implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        PartnerServiceMapper map = new PartnerServiceMapper();
        String id = request.getParameter("mId");
        String pwd = request.getParameter("mPwd");
        PartnerVO vo = new PartnerVO();
        vo.setId(id);
        try {
            vo.setPassword(new Sha256().encrypt(pwd));
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }

        if(map.login(vo)){
            request.getSession().setAttribute("partner", map.getData(vo));
            map.closeSession();
            return "home.do";
        }
        String msg = "아이디 또는 비밀번호가 일치하지 않습니다.";
        request.setAttribute("msg",msg);
        map.closeSession();
        return "member/loginForm";
    }
}
