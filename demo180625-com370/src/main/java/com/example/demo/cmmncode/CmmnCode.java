package com.example.demo.cmmncode;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import com.example.demo.cmmnclcode.CmmnClCode;

import lombok.Data;

@Entity
@Table(name = "comtccmmncode")
@Data
public class CmmnCode {

	@Id
	private String codeId;
	private String codeIdNm;
	private String codeIdDc;
	private String useAt;

	// private String clCode;
	@ManyToOne
	@JoinColumn(name = "CL_CODE")
	private CmmnClCode cmmnClCode;

	private Date frstRegistPnttm;
	private String frstRegisterId;
	private Date lastUpdtPnttm;
	private String lastUpdusrId;

}
