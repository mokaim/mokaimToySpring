package io.github.mokaim.domain;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CommentsDTO {
	
	private int comments_id;
	private String usr_id;
	private String comments_content;
	private String reg_date;
	
}
