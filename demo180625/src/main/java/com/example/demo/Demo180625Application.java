package com.example.demo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;

import org.springframework.boot.CommandLineRunner;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;
import org.springframework.data.repository.PagingAndSortingRepository;

import lombok.Data;

@SpringBootApplication
public class Demo180625Application {

	public static void main(String[] args) {
		SpringApplication.run(Demo180625Application.class, args);
	}

	@Bean
	public CommandLineRunner commandLineRunner(ComTcCmmnDetailCodeRepository comTcCmmnDetailCodeRepository) {
		return (args) -> {
			System.out.println("commandLineRunner()");

			// Iterable<ComTcCmmnDetailCode> results =
			// comTcCmmnDetailCodeRepository.findAll();
			Iterable<Comtccmmndetailcode> results = comTcCmmnDetailCodeRepository.findAll();

			System.out.println("results=" + results);

			for (Comtccmmndetailcode result : results) {
				System.out.println("result=" + result);
				// System.out.println("codeId=" + result.getCodeId());
				// System.out.println("codeId=" + result.getCodeId());
				// System.out.println("code=" + result.getCode());
				System.out.println("codeId=" + result.getComtccmmndetailcodeId().getCodeId());
				System.out.println("code=" + result.getComtccmmndetailcodeId().getCode());
				System.out.println("codeNm=" + result.getCodeNm());
				System.out.println("useAt=" + result.getUseAt());
			}

			Iterable<Comtccmmndetailcode> results2 = comTcCmmnDetailCodeRepository.findByCodeId("COM001");
			System.out.println("results2=" + results2);
			for (Comtccmmndetailcode result : results2) {
				System.out.println("result=" + result);
				System.out.println("codeId=" + result.getCodeId());
				// System.out.println("code=" + result.getCode());
				System.out.println("codeNm=" + result.getCodeNm());
				System.out.println("useAt=" + result.getUseAt());
			}

			// ComtccmmndetailcodeId comtccmmndetailcodeId = new
			// ComtccmmndetailcodeId();
			// comtccmmndetailcodeId.setCodeId("COM001");
			// Iterable<Comtccmmndetailcode> results2 =
			// comTcCmmnDetailCodeRepository
			// .findByComtccmmndetailcodeId(comtccmmndetailcodeId);
			// System.out.println("results2=" + results2);
			// for (Comtccmmndetailcode result : results2) {
			// System.out.println("result=" + result);
			// // System.out.println("codeId=" + result.getCodeId());
			// // System.out.println("code=" + result.getCode());
			// System.out.println("codeNm=" + result.getCodeNm());
			// System.out.println("useAt=" + result.getUseAt());
			// }
		};
	}

}

@Embeddable
@Data
class ComtccmmndetailcodeId implements Serializable {
	private String codeId;
	private String code;
}

@Entity
@Data
// @IdClass(ComtccmmndetailcodeId.class)
// class ComTcCmmnDetailCode {
class Comtccmmndetailcode {

	// @Id
	// private String codeId;
	// @Id
	// private String code;

	@EmbeddedId
	ComtccmmndetailcodeId comtccmmndetailcodeId;

	// @Id
	@Column(insertable = false, updatable = false)
	private String codeId;
	// @Id
	// private String code;

	private String codeNm;
	private String useAt;

}

// interface ComTcCmmnDetailCodeRepository extends
// PagingAndSortingRepository<ComTcCmmnDetailCode, String> {
interface ComTcCmmnDetailCodeRepository extends PagingAndSortingRepository<Comtccmmndetailcode, ComtccmmndetailcodeId> {

	Iterable<Comtccmmndetailcode> findByCodeId(String codeId);

	// Iterable<Comtccmmndetailcode>
	// findByComtccmmndetailcodeId(ComtccmmndetailcodeId comtccmmndetailcodeId);

}
