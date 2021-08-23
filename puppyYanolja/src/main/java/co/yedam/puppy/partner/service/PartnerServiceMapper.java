package co.yedam.puppy.partner.service;

import co.yedam.puppy.common.DataSource;
import co.yedam.puppy.partner.vo.PartnerVO;
import org.apache.ibatis.session.SqlSession;

public class PartnerServiceMapper {
    private SqlSession sqlSession = DataSource.getSession().openSession(true);
    private PartnerService map = sqlSession.getMapper(PartnerService.class);

    public Boolean login(PartnerVO vo) {
        if (map.login(vo) == 0)  // 로그인 실패시
            return false;
        if(map.isStateAllow(vo.getId()) == 1) {

        }
        return true;
    }

    public Boolean signUp(PartnerVO vo) {
        if (map.isPartnerId(vo.getId()) != 0)    //아이디 중복
            return false;
        if (map.signUp(vo) == 0)   // 회원가입 실패시
            return false;

        return true;
    }

    public PartnerVO getData(PartnerVO vo) {
        return map.getData(vo);
    }

    public Boolean isPartnerId(String id) {
        if (map.isPartnerId(id) == 0)   // 아이디 없음
            return false;

        return true;
    }

    public void closeSession() {
        sqlSession.close();
    }
}
