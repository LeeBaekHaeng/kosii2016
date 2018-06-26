package com.example.demo.cmmnclcode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/v1/cmmn-cl-codes")
public class CmmnClCodeRestController {

	@Autowired
	private CmmnClCodeRepository repository;

	@GetMapping
	public Page<CmmnClCode> findAll(Pageable pageable) {
		Page<CmmnClCode> findAll = repository.findAll(pageable);
		return findAll;
	}

}
