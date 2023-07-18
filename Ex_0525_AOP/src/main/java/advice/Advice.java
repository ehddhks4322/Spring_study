package advice;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class Advice {
	//공통기능이 담기는 클래스
						//dao패키지에 있는 DAO				
	@Pointcut("execution(* dao.*DAO.*(..))")
	public void myPoint() {}
	
	@Before("myPoint()")
	//jp.getSignature() : 타겟으로 삼고있는 메서드의 정보를 가져온다.
	public void before(JoinPoint jp) {
		System.out.println("---before:"+jp.getSignature());
	}
	
	@After("myPoint()")
	//jp.toLongString() : 타겟 메서드를 완전하게 표현한 메서드(메서드의 리턴타입, 파라미터 타입을 표기)
	public void after(JoinPoint jp) {
		System.out.println("---after:"+jp.toLongString());
	}
}
