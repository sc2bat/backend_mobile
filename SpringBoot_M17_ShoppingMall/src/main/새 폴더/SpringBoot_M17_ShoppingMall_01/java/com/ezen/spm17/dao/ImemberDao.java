package com.ezen.spm17.dao;

import java.util.HashMap;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ImemberDao {

	void getMember(HashMap<String, Object> paramMap);

	void selectAddressByDong(HashMap<String, Object> paramMap);

	void insertMember(HashMap<String, Object> paramMap);

	void updateMember(HashMap<String, Object> paramMap);

}
