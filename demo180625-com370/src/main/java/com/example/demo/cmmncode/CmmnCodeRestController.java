package com.example.demo.cmmncode;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.ApiPageable;

@RestController
@RequestMapping("/api/v1/cmmn-codes")
public class CmmnCodeRestController {

	@Autowired
	private CmmnCodeRepository repository;

	@GetMapping
	// @ApiImplicitParams({
	// @ApiImplicitParam(name = "page", dataType = "integer", paramType = "query",
	// value = "Results page you want to retrieve (0..N)"),
	// @ApiImplicitParam(name = "size", dataType = "integer", paramType = "query",
	// value = "Number of records per page."),
	// @ApiImplicitParam(name = "sort", allowMultiple = true, dataType = "string",
	// paramType = "query", value = "Sorting criteria in the format:
	// property(,asc|desc). "
	// + "Default sort order is ascending. " + "Multiple sort criteria are
	// supported.") })
	@ApiPageable
	public Page<CmmnCode> findAll(Pageable pageable) {
		Page<CmmnCode> findAll = repository.findAll(pageable);
		return findAll;
	}

}
