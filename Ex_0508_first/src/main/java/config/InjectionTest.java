package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import vo.PersonVO;

@Configuration //이 클래스를 마치 xml파일과 같은 설정파일로 사용을 하겠다.
public class InjectionTest {
	
	@Bean
	public PersonVO p1() {
		PersonVO p1 = new PersonVO();
		p1.setName("홍길동");
		p1.setTel("010-1111-1111");
		p1.setAge(30);
		return p1;
	}
	
	@Bean
	public PersonVO p2() {
		PersonVO p2 = new PersonVO("이길동","010-2222-2222",40);

		return p2;
	}
}
