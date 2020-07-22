package io.github.mokaim.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import io.github.mokaim.domain.CommentsDTO;
import io.github.mokaim.mapper.TestMapper;

@Service
public class CommentService {

	@Autowired
	TestMapper testMapper;
	
	public void setComments(CommentsDTO commentsDTO) {
		testMapper.setComments(commentsDTO);
	}
	
	public List<CommentsDTO> getComments(){
		
		return testMapper.getComments();
	}
}
