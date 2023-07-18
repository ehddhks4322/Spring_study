package context;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.apache.ibatis.session.SqlSessionFactory;
import org.mybatis.spring.SqlSessionFactoryBean;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

@Configuration
public class Context_2_mybatis {
	
	DataSource ds;
	
	public Context_2_mybatis(BasicDataSource ds) {
		this.ds = ds;
	}
	
	@Bean
	public SqlSessionFactoryBean factoryBean() {
		SqlSessionFactoryBean factoryBean = new SqlSessionFactoryBean();
		factoryBean.setDataSource(ds);
		
		//Mybatis 설정 파일 경로
		Resource configLocation = new ClassPathResource("config/mybatis/mybatis-config.xml");
		factoryBean.setConfigLocation(configLocation);
		
		return factoryBean;
	}
	
	@Bean
	public SqlSessionTemplate sessionTemplate(SqlSessionFactory factoryBean) {
		return new SqlSessionTemplate(factoryBean);
	}
	
}
