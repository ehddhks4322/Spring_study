package vo;

import org.springframework.web.multipart.MultipartFile;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class PhotoVO {
	
	//<input name="title"><br>
	//<input type="file" name="photo"><br>
	private String title;//우리가 설정한 제목
	private MultipartFile photo;//사진이든 동영상이든 일단 넘어온 미디어의 정보
	private String filename;//실제 파일 제목
}
