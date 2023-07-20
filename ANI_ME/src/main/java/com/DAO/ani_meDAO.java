package com.DAO;

import java.util.List;

public abstract class ani_meDAO <E, K> {
	abstract public void create(E entity);

    abstract public void update(E entity);

    abstract public void delete(K key);

    abstract public  E findById(K key);

    abstract public List<E> findAll();
}
