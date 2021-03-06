package kosii.com.cmmnclcode.service.impl;

import org.springframework.stereotype.Repository;

import egovframework.com.cmm.service.impl.EgovComAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;
import kosii.com.cmmnclcode.service.CmmnClCodeVO;

@Repository("CmmnClCodeDAO")
public class CmmnClCodeDAO extends EgovComAbstractDAO {

	public EgovMap selectCmmnClCode(CmmnClCodeVO vo) throws Exception {
		return (EgovMap) select("CmmnClCodeDAO.selectCmmnClCode", vo);
	}

}
