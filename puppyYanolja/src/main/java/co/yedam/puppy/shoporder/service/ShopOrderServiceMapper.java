package co.yedam.puppy.shoporder.service;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.yedam.puppy.common.DataSource;
import co.yedam.puppy.shoporder.vo.ShopOrderVO;

public class ShopOrderServiceMapper implements ShopOrderService {

	private SqlSession sqlSession = DataSource.getSession().openSession(true);
	ShopOrderService mapper = sqlSession.getMapper(ShopOrderService.class);

	@Override
	public List<ShopOrderVO> shopOrderList(int shopNo) {
		// TODO Auto-generated method stub
		return mapper.shopOrderList(shopNo);
	}

	@Override
	public List<ShopOrderVO> shopOrderListMember(int memberNo) {
		// TODO Auto-generated method stub
		return mapper.shopOrderListMember(memberNo);
	}

	@Override
	public ShopOrderVO shopOrderSelect(ShopOrderVO vo) {
		// TODO Auto-generated method stub
		return mapper.shopOrderSelect(vo);
	}

	@Override
	public int shopOrderInsert(ShopOrderVO vo) {
		// TODO Auto-generated method stub
		return mapper.shopOrderInsert(vo);
	}

	@Override
	public int shopOrderUpdate(ShopOrderVO vo) {
		// TODO Auto-generated method stub
		return mapper.shopOrderUpdate(vo);
	}

	@Override
	public int shopOrderDelete(ShopOrderVO vo) {
		// TODO Auto-generated method stub
		return mapper.shopOrderDelete(vo);
	}

}
