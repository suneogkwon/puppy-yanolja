package co.yedam.puppy.shoporder.service;

import java.util.List;

import co.yedam.puppy.shoporder.vo.ShopOrderVO;

public interface ShopOrderService {
	
	// 전체 주문 리스트
	List<ShopOrderVO> shopOrderList();
	
	// 주문 한 건 보기
	ShopOrderVO shopOrderSelect(ShopOrderVO vo);
	
	
	int shopOrderDelete(ShopOrderVO vo);
	
	
}