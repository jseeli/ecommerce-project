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
@ComponentScan(/*basePackages = */"com")
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
		dataSource.setUrl("jdbc:h2:tcp://localhost/~/test");
		dataSource.setUsername("vandan");
		dataSource.setPassword("vandy");
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
		//properties.put("hibernate.format_sql","false");
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
	@Bean(name="UserDaoImpl")
	public UserDaoImpl getUserDAO(SessionFactory sessionFactory) 
	{
		System.out.println("This is a UserDaoImpl Session Factory");
		return new UserDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name="CategoryDaoImpl")
	public CategoryDaoImpl getCategoryDAO(SessionFactory sessionFactory) 
	{
		System.out.println("This is a CategoryDaoImpl Session Factory");
		return new CategoryDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name="SupplierDaoImpl")
	public SupplierDaoImpl getSupplierDAO(SessionFactory sessionFactory) 
	{
		System.out.println("This is a SupplierDaoImpl Session Factory");
		return new SupplierDaoImpl(sessionFactory);
	}
	
	@Autowired
	@Bean(name="ProductDaoImpl")
	public ProductDaoImpl getProductDAO(SessionFactory sessionFactory) 
	{
		System.out.println("This is a ProductDaoImpl Session Factory");
		return new ProductDaoImpl(sessionFactory);
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
