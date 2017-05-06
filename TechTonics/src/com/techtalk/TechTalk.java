package com.techtalk;

import java.util.Date;

/**
 * Book.java
 * This is a model class represents a book entity
 * @author www.codejava.net
 *
 */
public class TechTalk {
	protected int id;
	protected String title;
	protected String presentor;
	protected String description;
	protected String techTalkDate;
	protected int status;

	public TechTalk() {
	}

	public TechTalk(int id) {
		this.id = id;
	}

	public TechTalk(int id, String title, String description, String presentor,String techTalkDate ,int status) {
		this(title, description,presentor,techTalkDate,status);
		this.id = id;
	}
	
	public TechTalk(String title, String description,String presentor, String date,int status) {
		this.title = title;
		this.presentor = presentor;
		this.description = description;
		this.techTalkDate = date; 
		this.status = status;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPresentor() {
		return presentor;
	}

	public void setPresentor(String presentor) {
		this.presentor = presentor;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getTechTalkDate() {
		return techTalkDate;
	}

	public void setTechTalkDate(String techTalkDate) {
		this.techTalkDate = techTalkDate;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	

}
