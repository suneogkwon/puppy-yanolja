package co.yedam.puppy.shop.service;

import co.yedam.puppy.shop.vo.ShopVO;

import java.util.List;

public interface ShopService {
    List<ShopVO> shopList(String category);
    ShopVO viewShopDetail(int shopNo);
    
    int shopInsert(ShopVO vo);
    


}
