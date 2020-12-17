package com.sxt.oa_demo;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.ComponentScan.Filter;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.FilterType;
import org.springframework.context.annotation.Import;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages = "com.sxt.oa_demo", excludeFilters = @Filter(type = FilterType.ANNOTATION, classes = Controller.class))
@Import(value = MyBatisConfig.class)
@EnableTransactionManagement
public class SpringConfig {

	@Bean(destroyMethod = "close")
	public DataSource dataSource() {
		BasicDataSource ds = new BasicDataSource();

		ds.setDriverClassName("oracle.jdbc.driver.OracleDriver");
		ds.setUrl("jdbc:oracle:thin:@192.168.1.178:1521/xe");
		ds.setUsername("oa");
		ds.setPassword("oa12345");
		return ds;
	}

	@Bean
	public PlatformTransactionManager transactionManager(DataSource dataSource) {
		DataSourceTransactionManager mgr = new DataSourceTransactionManager();
		mgr.setDataSource(dataSource);
		return mgr;
	}

}
