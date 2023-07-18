package vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


public class PersonVO {
	
	private String name,tel;
	private int age;
	
	public PersonVO() {
		System.out.println("---PersonVO의 기본생성자 호출---");
	}
	
	public PersonVO(String name, String tel, int age) {
		System.out.println("---PersonVO의 오버로딩 생성자 호출---");
		this.name = name;
		this.tel = tel;
		this.age = age;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		System.out.println("---name setter 호출---");
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		System.out.println("---tel setter 호출---");
		this.tel = tel;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		System.out.println("---age setter 호출---");
		this.age = age;
	}
	
	
}
