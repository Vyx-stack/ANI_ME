package com.DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityTransaction;
import javax.persistence.TypedQuery;

import com.Entity.Users;
import com.utils.JpaUtils;

public class UserDAO extends ani_meDAO<Users, String> {
	
	EntityManager em = JpaUtils.getEntityManager();
	EntityTransaction trans = em.getTransaction();
	
	@Override
	public void create(Users entity) {		
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
	public void update(Users entity) {
		try {
			em.getTransaction().begin();;
			em.merge(entity);
			em.getTransaction().commit();			
		} catch (Exception e) {
			em.getTransaction().rollback();
			throw new RuntimeException(e);
		}
		
	}

	@Override
	public void delete(String id) {
		Users entity = this.findById(id);
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
	public Users findById(String id) {
		Users entity = em.find(Users.class, id);
		return entity;
	}
	

	@Override
	public List<Users> findAll() {
		String jpql = "SELECT o FROM Users o";
		TypedQuery<Users> query = em.createQuery(jpql, Users.class);
		List<Users> list = query.getResultList();
		return list;
	}
	
}
