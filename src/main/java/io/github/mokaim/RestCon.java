package io.github.mokaim;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import io.github.mokaim.domain.CommentsDTO;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RestController
public class RestCon {

	@RequestMapping(value="/comments", method = RequestMethod.POST)
	public CommentsDTO comments(@RequestParam("story") String story) {
		
		CommentsDTO commentsDTO = new CommentsDTO();
		commentsDTO.setStory(story);
		log.info("test : " + story);
		
		
		return commentsDTO;
	}
}
