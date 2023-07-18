package context;

import javax.sql.DataSource;

import org.apache.commons.dbcp.BasicDataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


@Configuration
public class Context_1_dataSource {

	@Bean
	public DataSource ds() {
		BasicDataSource ds = new BasicDataSource();
//		ds.setDriverClassName("oracle.jdbc.OracleDriver");
//		ds.setUrl("jdbc:oracle:thin:@localhost:1521:xe");
		ds.setDriverClassName("net.sf.log4jdbc.sql.jdbcapi.DriverSpy");
		ds.setUrl("jdbc:log4jdbc:oracle:thin:@localhost:1521:xe");
		ds.setUsername("test_data");
		ds.setPassword("1111");
		return ds;
	}

}
