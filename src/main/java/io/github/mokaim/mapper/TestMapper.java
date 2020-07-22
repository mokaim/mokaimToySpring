package io.github.mokaim.mapper;


import java.util.List;

import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;

import io.github.mokaim.domain.CommentsDTO;

@Repository
public interface TestMapper {

	
	@Select("SELECT id FROM test")
	public String getTest();
	
	
	public void setComments(CommentsDTO commentsDTO);
	
	
	public List<CommentsDTO> getComments();
	

}
