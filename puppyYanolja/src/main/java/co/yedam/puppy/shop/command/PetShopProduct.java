package co.yedam.puppy.shop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.shopItem.service.ShopItemServiceMapper;
import co.yedam.puppy.shopItem.vo.ShopItemVO;

public class PetShopProduct implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 상품 한건 조회
		ShopItemServiceMapper ItemDao = new ShopItemServiceMapper();
		ShopItemVO vo = new ShopItemVO();
		
		int itNo = Integer.parseInt(request.getParameter("itNo"));
		vo.setItNo(itNo);
		request.setAttribute("list", ItemDao.shopItemSelect(vo));
		
		
		
		return "booking/petShopProduct";
	}

}
