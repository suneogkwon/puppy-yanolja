package co.yedam.puppy.member.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.shop.service.ShopServiceMapper;
import co.yedam.puppy.shop.vo.ShopVO;

public class PartnerShopInsert implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 상점 등록 
		
		ShopServiceMapper shopDao = new ShopServiceMapper();
		ShopVO vo = new ShopVO();
		
		HttpSession session = request.getSession();

		int maxFileSize = 1024 *1024 * 200; //최대 파일 사이즈 100MB

		try {
			MultipartRequest part = new MultipartRequest(request, session.getServletContext().getRealPath("/") + "/assets/img/booking/", maxFileSize, "utf-8", new DefaultFileRenamePolicy());

			String upfileName = part.getOriginalFileName("mainFile"); // 원래 파일명
			String upfileName2 = part.getOriginalFileName("subFile"); // 원래 파일명

			vo.setCompanyOwner(part.getParameter("companyOwner"));
			vo.setCompanyName(part.getParameter("companyName"));
			vo.setSaupjaNo(part.getParameter("saupjaNo"));
			vo.setCompanyTel(part.getParameter("companyTel"));
			vo.setCompanyZip(part.getParameter("companyZip"));
			vo.setCompanyAddr(part.getParameter("companyAddr"));
			vo.setBankName(part.getParameter("bankName"));
			vo.setBankNumber(part.getParameter("bankNumber"));
			vo.setBankOwnerName(part.getParameter("bankOwnerName"));
			vo.setMemberNo(Integer.parseInt(part.getParameter("memberNo")));
			vo.setCategoryNo(Integer.parseInt(part.getParameter("categoryNo")));
			vo.setLocationNo(Integer.parseInt(part.getParameter("locationNo")));

			vo.setMainFile(upfileName);
			vo.setSubFile(upfileName2);




			int n = shopDao.shopInsert(vo);
			if (n != 0) {
				request.setAttribute("message", "상점등록 완료되었습니다!");
			}else {
				request.setAttribute("message", "상점등록 실패..");
			}

		} catch (IOException e) {
			// TODO
			e.printStackTrace();
		}
		
		
		return "member/partnerShopInsert";
	}

}
