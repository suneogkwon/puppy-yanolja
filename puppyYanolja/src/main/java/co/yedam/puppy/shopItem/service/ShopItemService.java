package co.yedam.puppy.shopItem.service;

import java.util.List;

import co.yedam.puppy.shopItem.vo.ShopItemVO;

public interface ShopItemService {

	// 상품 전체리스트
	List<ShopItemVO> shopItemList(int shopNo); 
	
	// 카테고리 리스트
	List<ShopItemVO> shopItemFoodList(String category);
	List<ShopItemVO> shopItemSnackList(String category);
	List<ShopItemVO> shopItemProductList(String category);
	
	// 상품 한건 보기
	ShopItemVO shopItemSelect(ShopItemVO vo);
	
	// 상품 등록, 삭제, 수정
	int shopItemInsert(ShopItemVO vo);
	int shopItemDelete(ShopItemVO vo);
	int shopItemUpdate(ShopItemVO vo);
	
}
