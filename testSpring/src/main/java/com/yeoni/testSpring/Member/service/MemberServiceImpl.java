package com.yeoni.testSpring.Member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.yeoni.testSpring.Member.dao.MemberDao;
import com.yeoni.testSpring.Member.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDao mDao;
	
	@Override
	public Member loginMember(Member m) {
		// TODO Auto-generated method stub
		return mDao.selectMember(m);
	}

}
