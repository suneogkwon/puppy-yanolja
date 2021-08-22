package co.yedam.puppy.shop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.shopItem.service.ShopItemServiceMapper;

public class PetShopList implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		ShopItemServiceMapper ItemDao = new ShopItemServiceMapper();
		
		int shopNo = 1;
		request.setAttribute("list", ItemDao.shopItemList(shopNo));
		
		return "booking/petShopList";
	}

}
