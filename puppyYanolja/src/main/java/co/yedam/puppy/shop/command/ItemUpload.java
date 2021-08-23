package co.yedam.puppy.shop.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.shopItem.service.ShopItemServiceMapper;
import co.yedam.puppy.shopItem.vo.ShopItemVO;

public class ItemUpload implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// item 상품 등록

		ShopItemServiceMapper ItemDao = new ShopItemServiceMapper();
		ShopItemVO vo = new ShopItemVO();
		
		HttpSession session = request.getSession();

		int maxFileSize = 1024 *1024 * 200; //최대 파일 사이즈 100MB

		try {
			MultipartRequest part = new MultipartRequest(request, session.getServletContext().getRealPath("/") + "/assets/img/booking/", maxFileSize, "utf-8", new DefaultFileRenamePolicy());

			String orgfileName = part.getFilesystemName("mainFile") ; // 업로드한 파일명
			String upfileName = part.getOriginalFileName("mainFile"); // 원래 파일명

			String orgfileName2 = part.getFilesystemName("subFile") ; // 업로드한 파일명
			String upfileName2 = part.getOriginalFileName("subFile"); // 원래 파일명

			vo.setShopNo(Integer.parseInt(part.getParameter("shopNo")));
			vo.setItName(part.getParameter("itName"));
			vo.setItBrand(part.getParameter("itBrand"));
			vo.setItCategory(part.getParameter("itCategory"));
			vo.setItExplanText(part.getParameter("itExplanText"));
			vo.setCustPrice(Integer.parseInt(part.getParameter("custPrice")));
			vo.setPrice(Integer.parseInt(part.getParameter("price")));
			vo.setSaveMoney(Integer.parseInt(part.getParameter("saveMoney")));
			vo.setShippingCharge(Integer.parseInt(part.getParameter("shippingCharge")));

			vo.setMainFile(upfileName);
			vo.setMainRealFile(orgfileName);
			vo.setSubFile(upfileName2);
			vo.setSubRealFile(orgfileName2);



			int n = ItemDao.shopItemInsert(vo);
			if (n != 0) {
				request.setAttribute("message", orgfileName + "파일업로드 성공!");
			}else {
				request.setAttribute("message", orgfileName + "파일업로드 실패..");
			}

		} catch (IOException e) {
			// TODO
			e.printStackTrace();
		}

		return "booking/UploadResult";
	}

}
