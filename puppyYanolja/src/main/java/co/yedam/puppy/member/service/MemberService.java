package co.yedam.puppy.member.service;

import co.yedam.puppy.member.vo.MemberVO;

public interface MemberService {
    int login(MemberVO vo);
    int signUp(MemberVO vo);
    MemberVO getData(MemberVO vo);
    int isMemberId(String id);
}
