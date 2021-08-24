package co.yedam.puppy.shopItem.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import co.yedam.puppy.common.DataSource;
import co.yedam.puppy.shopItem.vo.ShopItemVO;

public class ShopItemServiceMapper implements ShopItemService {

	private SqlSession sqlSession = DataSource.getSession().openSession(true);
    ShopItemService mapper = sqlSession.getMapper(ShopItemService.class);

	@Override
	public List<ShopItemVO> shopItemList(int shopNo) {
		// TODO Auto-generated method stub
		return mapper.shopItemList(shopNo);
	}

	@Override
	public ShopItemVO shopItemSelect(ShopItemVO vo) {
		// TODO Auto-generated method stub
		return mapper.shopItemSelect(vo);
	}

	@Override
	public int shopItemInsert(ShopItemVO vo) {
		// TODO Auto-generated method stub
		return mapper.shopItemInsert(vo);
	}

	@Override
	public int shopItemDelete(ShopItemVO vo) {
		// TODO Auto-generated method stub
		return mapper.shopItemDelete(vo);
	}

	@Override
	public int shopItemUpdate(ShopItemVO vo) {
		// TODO Auto-generated method stub
		return mapper.shopItemUpdate(vo);
	}

	public void closeSession(){
		sqlSession.close();
	}

	@Override
	public List<ShopItemVO> shopItemFoodList(String category) {
		// TODO Auto-generated method stub
		return mapper.shopItemFoodList(category);
	}

	@Override
	public List<ShopItemVO> shopItemSnackList(String category) {
		// TODO Auto-generated method stub
		return mapper.shopItemSnackList(category);
	}

	@Override
	public List<ShopItemVO> shopItemProductList(String category) {
		// TODO Auto-generated method stub
		return mapper.shopItemProductList(category);
	}
}
