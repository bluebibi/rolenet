package com.springapp.dao;

import java.util.List;

import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.springapp.entity.Member;
import com.springapp.entity.MovieList;

public interface MemberMapper {
	@Select("select * from member")
	public List<Member> list();
	
	@Select("SELECT * FROM member WHERE id = #{id}")
	MovieList selectMemberByID(@Param("id") int id);
	
	@Select("select count(*) from member")
	public int memberCount();
	
	@Insert("insert into member values(#{id},#{pass},#{nick},#{email},#{regist_day},#{country})")
	public void insertMember();
	

}
