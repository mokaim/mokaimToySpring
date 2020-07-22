package io.github.mokaim;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.github.mokaim.domain.CommentsDTO;
import io.github.mokaim.service.CommentService;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class RestCon {

	@Autowired
	CommentService commentService;

	@RequestMapping(value="/comments", method = RequestMethod.POST)
	public CommentsDTO comments(@RequestParam("comment") String comment) {
		
		CommentsDTO commentsDTO = new CommentsDTO();
		commentsDTO.setComments_content(comment);
		commentsDTO.setUsr_id("admin");
		commentsDTO.setReg_date("2020-07-22");
		
		commentService.setComments(commentsDTO);
		
		
		log.info("test : " + comment);
		
		
		return commentsDTO;
	}
	
	@RequestMapping(value="/show", method = RequestMethod.GET)
	public List<CommentsDTO> show() {
		
		return commentService.getComments();
		
		
	}
}
