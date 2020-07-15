package com.yeoni.testSpring.Member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.yeoni.testSpring.Member.vo.Member;

@Repository("mDao")
public class MemberDao {
	

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	

	public Member selectMember(Member m) {
		// TODO Auto-generated method stub
		return sqlSessionTemplate.selectOne("memberMapper.selectOne",m);
	}

}
