package com.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.Entity.Video;
import com.utils.JpaUtils;

public class VideoDAO extends ani_meDAO<Video, String> {

	EntityManager em = JpaUtils.getEntityManager();
	EntityTransaction trans = em.getTransaction();
	
	@Override
	public void create(Video entity) {
		try {
			em.getTransaction().begin();
			em.persist(entity);
			em.getTransaction().commit();
		}catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public void update(Video entity) {
		try {
			em.getTransaction().begin();
			em.merge(entity);
			em.getTransaction().commit();			
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public void delete(String maVideo) {
		Video entity = this.findById(maVideo);
		try {
			em.getTransaction().begin();
			em.remove(entity);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public Video findById(String maVideo) {
		Video entity = em.find(Video.class, maVideo);
		return entity;
	}

	@Override
	public List<Video> findAll() {
		String jpql = "SELECT o FROM Video o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> list = query.getResultList();
		return list;
	}
	
	public List<Video> findPhieuLuu() {
		String theLoai="Phiêu lưu";
		String jpql = "SELECT o FROM Video o WHERE o.theLoai = :theLoai";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setParameter("theLoai", theLoai);
		List<Video> list = query.getResultList();
		return list;
	}
	
	public List<Video> findHanhDong() {
		String theLoai="Hành động";
		String jpql = "SELECT o FROM Video o WHERE o.theLoai = :theLoai";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setParameter("theLoai", theLoai);
		List<Video> list = query.getResultList();
		return list;
	}
	
	public List<Video> findTrinhTham() {
		String theLoai="Trinh thám";
		String jpql = "SELECT o FROM Video o WHERE o.theLoai = :theLoai";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setParameter("theLoai", theLoai);
		List<Video> list = query.getResultList();
		return list;
	}
	
	public List<Video> findHaiHuoc() {
		String theLoai="Hài hước";
		String jpql = "SELECT o FROM Video o WHERE o.theLoai = :theLoai";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		query.setParameter("theLoai", theLoai);
		List<Video> list = query.getResultList();
		return list;
	}
	
	public List<Video> findPhoBien() {		
		String jpql = "SELECT o FROM Video o WHERE o.luotXem > 100 ORDER BY o.luotXem desc";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> list = query.getResultList();
		return list;
	}
	
	public List<Video> findThinhHanh() {		
		String jpql = "SELECT o FROM Video o WHERE o.luotXem > 50 ORDER BY o.luotXem desc";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		List<Video> list = query.getResultList();
		return list;
	}
	
	

	
	
}
