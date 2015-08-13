package blog;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.tanglin.blog.dao.AccountDao;
import com.tanglin.blog.entity.Account;

public class MybatisTest {
	
	public static void main(String[] args){
		//此处加载了mybatis-spring.xml，mybatis-spring.xml中又指定了mybatis-sqlmap.xml的位置
		String resource = "classpath:mybatis-spring.xml";
		ApplicationContext ctx = new ClassPathXmlApplicationContext(resource);
		AccountDao dao = ctx.getBean(AccountDao.class);
		//增
		Account acc = new Account();
		acc.setName("txl");
		acc.setNickName("nana");
		acc.setPwd("123");
		int r = dao.add(acc);
		System.out.println(r);
		//删
		dao.deleteById(9);
		System.out.println(r);
		//查
		Account account = dao.findById(4);
		System.out.println(account.getName());
		//改
		account.setNickName("nausicaa");
		dao.updateById(account);
		System.out.println(r);
	}

}
