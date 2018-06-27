package com.example.demo;

import java.util.Date;
import java.util.Optional;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.stereotype.Service;

import lombok.Data;

@SpringBootApplication
public class DemoApplication {

	public static void main(String[] args) {
		SpringApplication.run(DemoApplication.class, args);
	}

	@Bean
	// @Transactional
	CommandLineRunner commandLineRunner(CmmnClCodeRepository repository, CmmnClCodeService service) {
		return (args -> {

			// Optional<CmmnClCode> findById = repository.findById("A");
			//
			// System.out.println("findById=" + findById);
			//
			// CmmnClCode result = findById.orElse(new CmmnClCode());
			//
			// result.setClCodeNm("에이 " + new Date());
			//
			// CmmnClCode result2 = repository.findByClCode("A");
			// result2.setClCodeNm("에이 " + new Date());
			// // repository.save(result2);

			service.test();

		});
	}
}

@Entity
@Table(name = "comtccmmnclcode")
@Data
class CmmnClCode {

	@Id
	private String clCode;
	private String clCodeNm;
	private String clCodeDc;
	private String useAt;
	private Date frstRegistPnttm;
	private String frstRegisterId;
	private Date lastUpdtPnttm;
	private String lastUpdusrId;

}

interface CmmnClCodeRepository extends PagingAndSortingRepository<CmmnClCode, String> {

	CmmnClCode findByClCode(String clCode);

}

@Service
@Transactional
class CmmnClCodeService {

	@Autowired
	private CmmnClCodeRepository repository;

	public void test() {

		Optional<CmmnClCode> findById = repository.findById("A1");

		System.out.println("findById=" + findById);

		CmmnClCode result = findById.orElse(new CmmnClCode());

		result.setClCodeNm("에이 " + new Date());

		// CmmnClCode result2 = repository.findByClCode("A");
		// result2.setClCodeNm("에이 " + new Date());
		// repository.save(result2);

	}

}