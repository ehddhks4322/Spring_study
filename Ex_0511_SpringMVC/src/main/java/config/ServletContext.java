package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import org.springframework.web.servlet.view.InternalResourceViewResolver;
import org.springframework.web.servlet.view.JstlView;

@Configuration
@EnableWebMvc
@ComponentScan("com.korea.mvc")
//어노테이션의 상속관계
/*
* @Component
* 	ㄴ @Controller
* 	ㄴ @Service
* 	ㄴ @Repository
* */
//컴포넌트의 자식객체가 들어있으면 사실 Controller가 아니어도 객체가 생성될 수 있다.
public class ServletContext implements WebMvcConfigurer {

	//내가 앞으로 사용할 이미지,JS,CSS파일과 같은 참조파일들을 webapp/resources에 보관을해라
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources");
	}
	
	/*
	 * @Bean public InternalResourceViewResolver resolver() {
	 * InternalResourceViewResolver resolver = new InternalResourceViewResolver();
	 * resolver.setViewClass(JstlView.class); resolver.setPrefix("/WEB-INF/views/");
	 * resolver.setSuffix(".jsp");
	 * 
	 * return resolver; }
	 */
}
