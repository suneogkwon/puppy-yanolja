package co.yedam.puppy.shop.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import co.yedam.puppy.common.Command;

public class PetShopItemInsetFrom implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		// TODO 상품등록 폼
		
		
		
		return "booking/petShopItemInsetFrom";
	}

}
