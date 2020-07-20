package io.github.mokaim.mapper;

import org.apache.ibatis.annotations.Select;

public interface TestMapper {

	
	@Select("SELECT id FROM test")
	public String getTest();
}
