package com.config;

import java.util.Properties;
import javax.sql.DataSource;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.jdbc.datasource.DriverManagerDataSource;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.dao.CartDao;
import com.dao.CategoryDao;
import com.dao.ProductDao;
import com.dao.SupplierDao;
import com.dao.UserDao;
import com.daoImpl.CartDaoImpl;
import com.daoImpl.CategoryDaoImpl;
import com.daoImpl.ProductDaoImpl;
import com.daoImpl.SupplierDaoImpl;
import com.daoImpl.UserDaoImpl;
import com.model.Cart;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;
import com.model.User;


@Configuration
@ComponentScan("com")
@EnableTransactionManagement
public class hibernateConfig 
{
	@Autowired
	@Bean (name="dataSource")
	public DataSource getH2DataSource()
	{
		System.out.println("Data Source Object Creating");
		DriverManagerDataSource dataSource = new DriverManagerDataSource();
		dataSource.setDriverClassName("org.h2.Driver");
		dataSource.setUrl("jdbc:h2:tcp://localhost/");
		dataSource.setUsername("user");
		dataSource.setPassword("user");
		System.out.println("Data Source Object Created");
		System.out.println("Data Source Created");
		return dataSource;
	}
	
	private Properties getHibernateProperties() 
	{
		System.out.println("Hibernate Properties Object Creating");
		Properties properties = new Properties();
		properties.put("hibernate.dialect","org.hibernate.dialect.H2Dialect");
		properties.put("hibernate.hbm2ddl.auto","update");
		properties.put("hibernate.show_sql","true");
		System.out.println("Hibernate Properties Object Created");
		System.out.println("Table Source Created");
		return properties;
	}
	
	@Autowired
	@Bean(name="sessionFactory")
	public SessionFactory getSessionFactory(DataSource dataSource) 
	{
		System.out.println("Session Factory Object Creating");
		LocalSessionFactoryBuilder sessionBuilder = new LocalSessionFactoryBuilder(dataSource);
		sessionBuilder.addProperties(getHibernateProperties());
		sessionBuilder.addAnnotatedClass(User.class);
		sessionBuilder.addAnnotatedClass(Category.class);
		sessionBuilder.addAnnotatedClass(Supplier.class);
		sessionBuilder.addAnnotatedClass(Product.class);
		sessionBuilder.addAnnotatedClass(Cart.class);
		System.out.println("Session Factory Object Created");
		return sessionBuilder.buildSessionFactory();
	}
	
	@Autowired
	@Bean(name="userDao")
	public UserDao getUserDao(SessionFactory sessionFactory) 
	{
		System.out.println("The UserDao Object Created");
		return new UserDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name="categoryDao")
	public CategoryDao getCategoryDao(SessionFactory sessionFactory) 
	{
		System.out.println("The CategoryDao Object Created");
		return new CategoryDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name="supplierDao")
	public SupplierDao getSupplierDao(SessionFactory sessionFactory) 
	{
		System.out.println("The SupplierDao Object Created");
		return new SupplierDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name="productDao")
	public ProductDao getProductDao(SessionFactory sessionFactory) 
	{
		System.out.println("The ProductDao Object Created");
		return new ProductDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name="cartDao")
	public CartDao getCartDao(SessionFactory sessionFactory)
	{
		System.out.println("The CartDao Object Created");
		return new CartDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name="transactionManager")
	public HibernateTransactionManager getTransactionManager(SessionFactory sessionFactory) 
	{
		System.out.println("Transaction Manager Object Creating");
		HibernateTransactionManager transactionManager = new HibernateTransactionManager(sessionFactory);
		System.out.println("Transaction Manager Object Created");
		return transactionManager;
	}
}
