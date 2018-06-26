package com.example.demo.cmmnclcode;

import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.repository.history.RevisionRepository;

public interface CmmnClCodeRepository
		extends PagingAndSortingRepository<CmmnClCode, String>, RevisionRepository<CmmnClCode, String, Long> {

	CmmnClCode findByClCode(String clCode);

}
