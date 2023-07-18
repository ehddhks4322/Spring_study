package vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class VisitVO {
	
	private int idx;
	private String name,content,pwd,ip,regdate,filename;
	private MultipartFile photo;
}
