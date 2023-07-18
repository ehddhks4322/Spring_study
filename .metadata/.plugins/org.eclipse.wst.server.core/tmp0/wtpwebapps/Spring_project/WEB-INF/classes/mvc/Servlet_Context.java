package mvc;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import com.korea.test_member.MemberController;

import dao.IT_BoardDAO;
import dao.IT_Board_DetailDAO;
import dao.IT_MemberDAO;
import dao.IT_Member_DetailDAO;
import dao.IT_ProductDAO;


@Configuration
@EnableWebMvc
//@ComponentScan("com.korea.test_member")
//컨트롤러 뿐만 아니라 Component의 자식요소를 전부 탐색해서 객체로 만들어준다.
/*
 *@Component
 *	ㄴ@Controller
 *	ㄴ@Service
 *	ㄴ@Repository 
 * */
//컴포넌트의 자식객체가 들어있으면 사실 Controller가 아니어도 만들어 질 수 있다.
public class Servlet_Context implements WebMvcConfigurer {

	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
		registry.addResourceHandler("/resources/**").addResourceLocations("/resources/");
	}

	
//	  @Bean 
//	  public InternalResourceViewResolver resolver() {
//	  InternalResourceViewResolver resolver = new InternalResourceViewResolver();
//	  resolver.setViewClass(JstlView.class); resolver.setPrefix("/WEB-INF/views/");
//	  resolver.setSuffix(".jsp"); return resolver; }
	
	@Bean
	public MemberController memberController(IT_BoardDAO board_dao, IT_Board_DetailDAO board_detail_dao,IT_MemberDAO member_dao,IT_Member_DetailDAO member_detail_dao,IT_ProductDAO product_dao) {
		return new MemberController(board_dao,board_detail_dao,member_dao,member_detail_dao,product_dao);
	}
	
	
}
