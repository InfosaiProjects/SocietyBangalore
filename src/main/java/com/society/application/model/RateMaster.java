package com.society.application.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class RateMaster {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String goldRateType;
	private String goldRate;
	private String silverRate;
	private String createdBy;
	private String createdDt; 

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getGoldRateType() {
		return goldRateType;
	}

	public void setGoldRateType(String goldRateType) {
		this.goldRateType = goldRateType;
	}

	public String getGoldRate() {
		return goldRate;
	}

	public void setGoldRate(String goldRate) {
		this.goldRate = goldRate;
	}

	public String getSilverRate() {
		return silverRate;
	}

	public void setSilverRate(String silverRate) {
		this.silverRate = silverRate;
	}

	public String getCreatedBy() {
		return createdBy;
	}

	public void setCreatedBy(String createdBy) {
		this.createdBy = createdBy;
	}

	public String getCreatedDt() {
		return createdDt;
	}

	public void setCreatedDt(String createdDt) {
		this.createdDt = createdDt;
	}
	
}
