package com.asm3.shoeproject.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScans;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@EnableTransactionManagement
@ComponentScans(value = {@ComponentScan("com.asm3.shoeproject")})
public class HibernateConfig {
	@Autowired
	private ApplicationContext context;

  @Bean
  public LocalSessionFactoryBean getSessionFactory() {

    LocalSessionFactoryBean factoryBean = new LocalSessionFactoryBean();
    factoryBean.setPackagesToScan("com.asm3.shoeproject.model");
    factoryBean.setConfigLocation(context.getResource("classpath:hibernate.cfg.xml"));

    return factoryBean;
  }

  @Bean
  public HibernateTransactionManager getTransactionManager() {
  
    HibernateTransactionManager transactionManager = new HibernateTransactionManager();
    transactionManager.setSessionFactory(getSessionFactory().getObject());
    return transactionManager;
  }
}
