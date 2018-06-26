package com.example.demo;

import java.io.Serializable;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.IdClass;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import lombok.Data;

@SpringBootApplication
public class Demo180625Com370Application {

	public static void main(String[] args) {
		SpringApplication.run(Demo180625Com370Application.class, args);
	}

	// @Bean
	// public MappingJackson2HttpMessageConverter
	// mappingJackson2HttpMessageConverter() {
	// MappingJackson2HttpMessageConverter jsonConverter = new
	// MappingJackson2HttpMessageConverter();
	// ObjectMapper objectMapper = new ObjectMapper();
	// objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES,
	// false);
	// jsonConverter.setObjectMapper(objectMapper);
	// return jsonConverter;
	// }

}

@RestController
class CmmnDetailCodeRestController {

	@Autowired
	private CmmnDetailCodeRepo cmmnDetailCodeRepo;

	@GetMapping(path = "/cmmn-detail-codes")
	public @ResponseBody Page<CmmnDetailCode> getCmmnDetailCodes(@RequestParam String name, @RequestParam String email,
			Pageable pageable) {

		// Map<String, Object> map = new HashMap<>();

		System.out.println("name=" + name);
		System.out.println("email=" + email);

		Page<CmmnDetailCode> results = cmmnDetailCodeRepo.findAll(pageable);

		for (CmmnDetailCode result : results) {
			System.out.println("result=" + result);
			System.out.println("result=" + result);
		}

		return results;
	}

	@GetMapping(path = "/v1/cmmn-detail-codes")
	public @ResponseBody Iterable<CmmnDetailCode> getV1CmmnDetailCodes() {

		Iterable<CmmnDetailCode> results = cmmnDetailCodeRepo.findAll();

		for (CmmnDetailCode result : results) {
			System.out.println("result=" + result);
			System.out.println("result=" + result);
		}

		return results;
	}

	@GetMapping(path = "/v2/cmmn-detail-codes")
	public @ResponseBody Iterable<CmmnDetailCode> getV2CmmnDetailCodes() {

		List<CmmnDetailCode> results = cmmnDetailCodeRepo.findByCodeId("COM001");

		for (CmmnDetailCode result : results) {
			System.out.println("result=" + result);
			System.out.println("codeId=" + result.getCodeId());
		}

		return results;
	}

}

@SuppressWarnings("serial")
@Data
class CmmnDetailCodeId implements Serializable {

	private String codeId;
	private String code;

}

@Entity
@Table(name = "comtccmmndetailcode")
@IdClass(CmmnDetailCodeId.class)
@Data
class CmmnDetailCode {

	@Id
	private String codeId;
	@Id
	private String code;

	private String codeNm;

}

interface CmmnDetailCodeRepo extends PagingAndSortingRepository<CmmnDetailCode, CmmnDetailCodeId> {

	List<CmmnDetailCode> findByCodeId(String codeId);

}
