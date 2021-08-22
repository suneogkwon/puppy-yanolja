package co.yedam.puppy.shoporder.service;

import java.util.List;

import co.yedam.puppy.shoporder.vo.ShopOrderVO;

public interface ShopOrderService {
	
	// 전체 주문 리스트
	List<ShopOrderVO> shopOrderList(int shopNo);
	List<ShopOrderVO> shopOrderListMember(int memberNo);
	
	// 주문 한 건 보기
	ShopOrderVO shopOrderSelect(ShopOrderVO vo);
	
	// 주문 등록, 수정, 삭제
	int shopOrderInsert(ShopOrderVO vo);
	int shopOrderUpdate(ShopOrderVO vo);
	int shopOrderDelete(ShopOrderVO vo);
	
}