package com.example.demo;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

import lombok.Data;

@SpringBootApplication
public class Demo180703JpaMysqlApplication {

	public static void main(String[] args) {
		SpringApplication.run(Demo180703JpaMysqlApplication.class, args);
	}

	// @Bean
	public CommandLineRunner runner(CmmnClCodeRepository cmmnClCodeRepository) {
		return args -> {
			System.out.println("runner");

			List<CmmnClCode> findAll = cmmnClCodeRepository.findAll();

			System.out.println("findAll=" + findAll);

			findAll.forEach(result -> {
				System.out.println("result=" + result);
				System.out.println("getClCode=" + result.getClCode());
				System.out.println("getClCodeNm=" + result.getClCodeNm());
			});
		};
	}

	@Bean
	public CommandLineRunner runner2(CmmnClCodeService cmmnClCodeService) {
		return args -> {
			System.out.println("runner2");

			cmmnClCodeService.findAll(null);
		};
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

interface CmmnClCodeRepository extends JpaRepository<CmmnClCode, String> {
	// interface CmmnClCodeRepository extends CrudRepository<CmmnClCode, String>
	// {

}

@Service
class CmmnClCodeService {

	@Autowired
	private CmmnClCodeRepository cmmnClCodeRepository;

	public void findAll(Sort sort2) {
		// Sort sort = new Sort(Direction.DESC, "clCode");
		Sort sort = new Sort(Direction.DESC, new String[] { "clCode", "clCodeNm" });
		// sort.and(new Sort(Direction.ASC, "clCodeNm"));

		List<CmmnClCode> findAll = cmmnClCodeRepository.findAll(sort);

		findAll.forEach(result -> {
			System.out.println("result=" + result);
		});
	}

}
