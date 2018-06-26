package com.example.demo.cmmnclcode;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.envers.Audited;

import lombok.Data;

@Entity
@Table(name = "comtccmmnclcode")
@Data
@Audited
public class CmmnClCode {

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
