package co.yedam.puppy.shop.service;

import co.yedam.puppy.common.DataSource;
import co.yedam.puppy.shop.vo.ShopVO;
import org.apache.ibatis.session.SqlSession;

import java.util.List;

public class ShopServiceMapper {
    private SqlSession sqlSession = DataSource.getSession().openSession(true);
    private ShopService map = sqlSession.getMapper(ShopService.class);

    public List<ShopVO> shopList(String category){
        return map.shopList(category);
    }
}
