package com.tanglin.blog.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.tanglin.blog.dao.AccountDao;
import com.tanglin.blog.entity.Account;

import javax.annotation.Resource;

@Service
public class AccountService {
	@Resource
	private AccountDao accountDao;
	
	public List<Account> findAll(){
		return accountDao.findAll();
	}
	
	public  Account findById(long id){
		Account acc = accountDao.findById(id);
		return acc;
	}
	
	public int add(Account acc){
		return accountDao.add(acc);
	}
	
	public int deleteById(long id){
		return accountDao.deleteById(id);
	}
	
	public int updateById(Account acc){
		return accountDao.updateById(acc);
	}
	
}
