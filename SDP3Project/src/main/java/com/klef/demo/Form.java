package com.klef.demo;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;
import javax.persistence.Table;

import org.springframework.boot.context.properties.ConfigurationProperties;
@ConfigurationProperties(prefix = "file")
@Entity
@Table(name="projects")
public class Form {
	@Id
	@Column(name="id")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int id;
	@Column(name="name")
	private String name;
	@Column(name="email")
	private String email;
	@Column(name="qualification")
	private String qualification;
	@Column(name="prjname")
	private String prjname;
	@Column(name="age")
	private String age;
	@Column(name="bio")
	private String bio;
	@Column(name="job")
	private String job;
	@Column(name="briefdetails")
	private String briefdetails;
	@Column(name="bdetails")
	private String bdetails;
	@Column(name="comments")
	private String comments;
	@Column(name="booked")
	private String booked;
	@Column(name="sell")
	private String sell;
	@Column(name="cost")
	private String cost;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSell() {
		return sell;
	}
	public void setSell(String sell) {
		this.sell = sell;
	}
	public String getPrjname() {
		return prjname;
	}
	public void setPrjname(String prjname) {
		this.prjname = prjname;
	}
	public String getBio() {
		return bio;
	}
	public void setBio(String bio) {
		this.bio = bio;
	}
	public String getComments() {
		return comments;
	}
	public void setComments(String comments) {
		this.comments = comments;
	}
	public String getBooked() {
		return booked;
	}
	public int getU_id() {
		return id;
	}
	public void setU_id(int id) {
		this.id = id;
	}
	public void setBooked(String booked) {
		this.booked = booked;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getJob() {
		return job;
	}
	public void setJob(String job) {
		this.job = job;
	}
	public String getBriefdetails() {
		return briefdetails;
	}
	public void setBriefdetails(String briefdetails) {
		this.briefdetails = briefdetails;
	}
	public String getBdetails() {
		return bdetails;
	}
	public void setBdetails(String bdetails) {
		this.bdetails = bdetails;
	}
	public String getCost() {
		return cost;
	}
	public void setCost(String cost) {
		this.cost = cost;
	}
	
}
