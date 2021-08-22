package co.yedam.puppy.shop.command;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.multipart.MultipartRequest;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.shopItem.service.ShopItemServiceMapper;
import co.yedam.puppy.shopItem.vo.ShopItemVO;

public class ItemUpload implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// item 상품 등록
		
		ShopItemServiceMapper ItemDao = new ShopItemServiceMapper();
		ShopItemVO vo = new ShopItemVO();
		
		int maxFileSize = 1024 *1024 * 200; //최대 파일 사이즈 100MB
		
		
		try {
			MultipartRequest part = new MultipartRequest(request, "c:/Temp/", maxFileSize, "utf-8", new DefaultFileRenamePolicy());

			String upfileName = part.getFilesystemName("fileName") ; // 업로드한 파일명
			String orgfileName = part.getOriginalFileName("fileName"); // 원래 파일명
			
			
			vo.setShopNo(Integer.parseInt(request.getParameter("shopNo")));
			vo.setItName(request.getParameter("itName"));
			vo.setItBrand(request.getParameter("itBrand"));
			vo.setItCategory(request.getParameter("itCategory"));
			vo.setItExplanText(request.getParameter("itExplanText"));
			vo.setCustPrice(Integer.parseInt(request.getParameter("custPrice")));
			vo.setPrice(Integer.parseInt(request.getParameter("price")));
			vo.setSaveMoney(Integer.parseInt(request.getParameter("saveMoney")));
			vo.setShippingCharge(Integer.parseInt(request.getParameter("shippingCharge")));
			
			vo.setMainImg(orgfileName);
			vo.setSubImg(orgfileName);
			
			
			
			int n = ItemDao.shopItemInsert(vo);
			if (n != 0) {
				request.setAttribute("message", vo.getItName() + "파일업로드 성공!");
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
