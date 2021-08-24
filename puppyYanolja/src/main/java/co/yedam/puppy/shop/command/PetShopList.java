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
		
		int shopNo = 5;
		request.setAttribute("list", ItemDao.shopItemList(shopNo)); // 전체리스트
		
		String food="사료";
		String snack="간식";
		String product="용품";
		request.setAttribute("foodList", ItemDao.shopItemFoodList(food));
		request.setAttribute("snackList", ItemDao.shopItemSnackList(snack));
		request.setAttribute("productList", ItemDao.shopItemProductList(product));
		
		return "booking/petShopList";
	}

}
