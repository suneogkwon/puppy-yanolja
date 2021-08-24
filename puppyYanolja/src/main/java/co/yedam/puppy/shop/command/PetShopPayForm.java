package co.yedam.puppy.shop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.shopItem.service.ShopItemServiceMapper;
import co.yedam.puppy.shopItem.vo.ShopItemVO;

public class PetShopPayForm implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 
		ShopItemServiceMapper ItemDao = new ShopItemServiceMapper();
		ShopItemVO vo = new ShopItemVO();
		
		int itNo = Integer.parseInt(request.getParameter("itNo"));
		vo.setItNo(itNo);
		
		ShopItemVO memberVo = new ShopItemVO(); 
		memberVo =	ItemDao.shopItemSelect(vo);
		
		request.setAttribute("list", memberVo);
		int count = Integer.parseInt(request.getParameter("count"));
		int payment = count * memberVo.getPrice();
		
		// 구매금액 30000원 이상시 배송비 0
		if (payment > 30000) {
			memberVo.setShippingCharge(0); 
		}
		
		// 총 결제금액
		request.setAttribute("payment", payment+ memberVo.getShippingCharge() );
		request.setAttribute("count", request.getParameter("count") );
		
		
		return "booking/petShopPayForm";
	}

}
