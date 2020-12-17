package com.sxt.oa_demo;

import javax.sql.DataSource;

import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.support.PathMatchingResourcePatternResolver;

@Configuration
@MapperScan(basePackages = "com.sxt.oa_demo.data")
public class MyBatisConfig {

	@Bean
	public SqlSessionFactory sqlSessionFactory(DataSource dataSource) {
		SqlSessionFactory factory = null;

		SqlSessionFactoryBean bean = new SqlSessionFactoryBean();
		bean.setDataSource(dataSource);
		bean.setTypeAliasesPackage("com.sxt.oa_demo.domain");

		// 列名的下划线命名到Bean对象中的驼峰表示法之间的转换
		org.apache.ibatis.session.Configuration configuration = new org.apache.ibatis.session.Configuration();
		configuration.setMapUnderscoreToCamelCase(true);
		bean.setConfiguration(configuration);

		PathMatchingResourcePatternResolver resolver = new PathMatchingResourcePatternResolver();
		// 映射xml文件的路径
		try {
			bean.setMapperLocations(resolver.getResources("classpath:com/sxt/oa_demo/data/*Mapper.xml"));
			factory = bean.getObject();
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		return factory;
	}
}
