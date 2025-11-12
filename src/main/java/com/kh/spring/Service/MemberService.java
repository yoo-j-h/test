package com.kh.spring.Service;

import com.kh.spring.model.vo.Member;

public interface MemberService {
    Member getMemberById(String memberId);
    int getMemberCountById(String memberId);
    int addMember(Member member);
}
