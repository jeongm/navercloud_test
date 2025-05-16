package com.lgdxs.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.lgdxs.entity.Member;

@Repository
public interface MemberRepository extends JpaRepository<Member, String> {
	
//	@Query("SELECT m FROM Member m WHERE m.id = :id AND m.pw = :pw")
//	Member login(@Param("id")String id, @Param("pw")String pw);

//	boolean existsByIdAndPw(String id, String pw);	
	
	Member findByIdAndPw(String id, String pw);

}

