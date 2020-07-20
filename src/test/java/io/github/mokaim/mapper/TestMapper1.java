package io.github.mokaim.mapper;

import static org.junit.Assert.*;


import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class TestMapper1 {

	
	@Setter(onMethod_ = {@Autowired})
	private TestMapper testMapper;
	
	@Test
	public void test() {
		log.info("test query result : " + testMapper.getTest());
	}

}