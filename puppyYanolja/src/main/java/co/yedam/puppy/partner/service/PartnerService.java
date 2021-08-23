package co.yedam.puppy.partner.service;

import co.yedam.puppy.partner.vo.PartnerVO;

public interface PartnerService {
    int login(PartnerVO vo);
    int signUp(PartnerVO vo);
    PartnerVO getData(PartnerVO vo);
    int isPartnerId(String id);
    int isStateAllow(String id);
}
