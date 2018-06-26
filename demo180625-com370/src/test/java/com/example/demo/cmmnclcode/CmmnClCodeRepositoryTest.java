package com.example.demo.cmmnclcode;

import java.util.Date;
import java.util.Optional;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.history.Revision;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class CmmnClCodeRepositoryTest {

	@Autowired
	private CmmnClCodeRepository repository;

	// @Test
	public void contextLoads() {
		String id = "EFC";
		Optional<CmmnClCode> findById = repository.findById(id);
		System.out.println("findById=" + findById);

		CmmnClCode entity = new CmmnClCode();
		entity.setClCode("A");
		CmmnClCode save = repository.save(entity);
		System.out.println("entity=" + entity);
		System.out.println("save=" + save);

		// entity.setClCodeNm("에이");
		save.setClCodeNm("에이");

		Optional<CmmnClCode> findById2 = repository.findById(entity.getClCode());
		if (findById2.isPresent()) {
			CmmnClCode get = findById2.get();
			get.setClCodeNm("에이");
		}

		Optional<Revision<Long, CmmnClCode>> findLastChangeRevision = repository.findLastChangeRevision(id);
		System.out.println("findLastChangeRevision=" + findLastChangeRevision);
		// Revision<Long, CmmnClCode> get = findLastChangeRevision.get();
		// System.out.println("get=" + get);
		// System.out.println("clCode=" + get.getEntity().getClCode());
	}

	// @Test
	public void contextLoads2() {
		String id = "A";
		Optional<CmmnClCode> findById = repository.findById(id);
		System.out.println("findById=" + findById);
		System.out.println("clCode=" + findById.get().getClCode());
		findById.get().setClCodeNm("에이");

		CmmnClCode entity = findById.get();
		entity.setClCodeNm("에이2");
		repository.save(entity);

		// repository.deleteById("A");
	}

	// @Test
	public void contextLoads3() {
		CmmnClCode entity = new CmmnClCode();
		entity.setClCode("A");

		Optional<CmmnClCode> findById = repository.findById(entity.getClCode());

		System.out.println("findById=" + findById);

		System.out.println(findById.orElse(new CmmnClCode()).getClCode());
	}

	// @Test
	public void contextLoads4() {
		String clCode = "A";

		CmmnClCode result = repository.findByClCode(clCode);

		System.out.println("result=" + result);
		System.out.println("getClCode=" + result.getClCode());

		result.setClCodeNm("에이");

		repository.save(result);
	}

	@Test
	public void contextLoads5() {
		CmmnClCode entity = new CmmnClCode();
		entity.setClCode("A");
		entity.setClCodeNm("에이 " + new Date());
		entity.setFrstRegistPnttm(new Date());

		repository.save(entity);
	}

}
