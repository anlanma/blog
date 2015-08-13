package com.tanglin.blog.dao;

import java.util.List;

import com.tanglin.blog.entity.Account;

public interface AccountDao {
	
	public List<Account> findAll();
	
	public  Account findById(long id);
	
	public int add(Account acc);
	
	public int deleteById(long id);
	
	public int updateById(Account acc);
	
	

}
