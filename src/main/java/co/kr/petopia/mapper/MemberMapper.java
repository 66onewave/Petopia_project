package co.kr.petopia.mapper;

import org.apache.ibatis.annotations.Mapper;

import co.kr.petopia.vo.MemberVO;

@Mapper
public interface MemberMapper {
	
		//회원 가입
	MemberVO getSelectMemberInfo(String member_id);
}


