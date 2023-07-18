package vo;

import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
public class MemberVO {

	private int memNo;
	private String memId;
	private String memNm;//이름
	private LocalDateTime regDate;//등록 날짜 
	private LocalDateTime modDt;//수정한 날짜
}
