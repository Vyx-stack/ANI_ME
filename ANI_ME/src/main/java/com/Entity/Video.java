package com.Entity;

import java.util.List;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "video")
public class Video {
	@Id
	String maVideo;
	String tieuDe;
	String anhVideo;
	String theLoai;
	String moTa;
	String linkVideo;
	public String getLinkVideo() {
		return linkVideo;
	}

	public void setLinkVideo(String linkVideo) {
		this.linkVideo = linkVideo;
	}

	Integer luotXem;
	Boolean kichHoat = true;
	@OneToMany(mappedBy = "video")
	List<Favorite> favorites;

	public String getMaVideo() {
		return maVideo;
	}

	public void setMaVideo(String maVideo) {
		this.maVideo = maVideo;
	}

	public String getTieuDe() {
		return tieuDe;
	}

	public void setTieuDe(String tieuDe) {
		this.tieuDe = tieuDe;
	}

	public String getAnhVideo() {
		return anhVideo;
	}

	public void setAnhVideo(String anhVideo) {
		this.anhVideo = anhVideo;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}

	public Integer getLuotXem() {
		return luotXem;
	}

	public void setLuotXem(Integer luotXem) {
		this.luotXem = luotXem;
	}

	public boolean getKichHoat() {
		return kichHoat;
	}

	public void setKichHoat(boolean kichHoat) {
		this.kichHoat = kichHoat;
	}

	public List<Favorite> getFavorites() {
		return favorites;
	}

	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}

	public String getTheLoai() {
		return theLoai;
	}

	public void setTheLoai(String theLoai) {
		this.theLoai = theLoai;
	}

	
	

}
