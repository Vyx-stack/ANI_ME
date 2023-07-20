package com.Entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="chiaSe")
public class Share {
	@Id
	@Column(name="maChiaSe")
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int shareId;

	@Column(name="emails")
	private String email;

	@Column(name="ngayChiaSe")
	private Date sharedDate;
	
	@ManyToOne
	@JoinColumn(name="maND")
	private Users users;

	@ManyToOne
	@JoinColumn(name="maVideo")
	private Video video;

	public int getShareId() {
		return shareId;
	}

	public void setShareId(int shareId) {
		this.shareId = shareId;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getSharedDate() {
		return sharedDate;
	}

	public void setSharedDate(Date sharedDate) {
		this.sharedDate = sharedDate;
	}

	public Users getUsers() {
		return users;
	}

	public void setUsers(Users users) {
		this.users = users;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	
}
