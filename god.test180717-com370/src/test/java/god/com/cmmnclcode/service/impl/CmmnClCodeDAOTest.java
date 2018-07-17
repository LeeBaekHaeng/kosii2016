package god.com.cmmnclcode.service.impl;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import god.com.cmmnclcode.service.CmmnClCodeVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:egovframework/spring/com/**/context-*.xml")
public class CmmnClCodeDAOTest {

	protected Logger egovLogger = LoggerFactory.getLogger(CmmnClCodeDAOTest.class);

	@Resource(name = "CmmnClCodeDAO")
	private CmmnClCodeDAO cmmnClCodeDAO;

	// @Test
	public void test() {
		// fail("Not yet implemented");
	}

	// @Test
	public void insertCmmnClCode() {
		CmmnClCodeVO vo = new CmmnClCodeVO();
		vo.setClCode("AAA");
		vo.setClCodeNm("에이에이에이");

		Object result = cmmnClCodeDAO.insertCmmnClCode(vo);

		egovLogger.debug("result=" + result);
	}

	// @Test
	public void updateCmmnClCode() {
		CmmnClCodeVO vo = new CmmnClCodeVO();
		vo.setClCode("AAA");
		vo.setClCodeNm("에이에이에이 수정");

		int result = cmmnClCodeDAO.updateCmmnClCode(vo);

		egovLogger.debug("result=" + result);
	}

	@Test
	public void deleteCmmnClCode() {
		CmmnClCodeVO vo = new CmmnClCodeVO();
		vo.setClCode("AAA");

		int result = cmmnClCodeDAO.deleteCmmnClCode(vo);

		egovLogger.debug("result=" + result);
	}

}
