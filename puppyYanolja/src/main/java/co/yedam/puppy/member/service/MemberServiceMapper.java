package co.yedam.puppy.member.service;

import co.yedam.puppy.common.DataSource;
import co.yedam.puppy.member.vo.MemberVO;
import org.apache.ibatis.session.SqlSession;

public class MemberServiceMapper {
    private SqlSession sqlSession = DataSource.getSession();
    private MemberService map = sqlSession.getMapper(MemberService.class);

    public Boolean login(MemberVO vo) {
        if(map.login(vo) == 0)  // 로그인 실패시
            return false;

        return true;
    }

    public Boolean signUp(MemberVO vo) {
        if(map.isMemberId(vo.getId()) != 0)    //아이디 중복
            return false;
        if(map.signUp(vo) == 0)   // 회원가입 실패시
            return false;

        return true;
    }

    public MemberVO getData(MemberVO vo) {
        return map.getData(vo);
    }

    public Boolean isMemberId(String id){
        if(map.isMemberId(id) == 0)   // 아이디 없음
            return false;

        return true;
    }
}
