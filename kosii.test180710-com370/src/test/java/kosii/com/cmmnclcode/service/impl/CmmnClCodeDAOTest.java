package kosii.com.cmmnclcode.service.impl;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import egovframework.rte.psl.dataaccess.util.EgovMap;
import kosii.com.cmmnclcode.service.CmmnClCodeVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath*:egovframework/spring/com/**/context-*.xml")
public class CmmnClCodeDAOTest {

	@Resource(name = "CmmnClCodeDAO")
	private CmmnClCodeDAO cmmnClCodeDAO;

	@Test
	public void test() throws Exception {
		// fail("Not yet implemented");

		CmmnClCodeVO vo = new CmmnClCodeVO();
		vo.setClCode("AAA");

		EgovMap result = cmmnClCodeDAO.selectCmmnClCode(vo);

		System.out.println("result=" + result);
		System.out.println("clCode=" + result.get("clCode"));
		System.out.println("clCodeNm=" + result.get("clCodeNm"));

	}

}
