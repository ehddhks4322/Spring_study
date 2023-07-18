package util;

public class Common {
	//여러가지 기능들을 편리하게 관리하기 위해서 설정용 클래스를
	//따로 만듦
	
	public static final String VIEW_PATH = "/WEB-INF/views/board/";
	
	//일반 게시판용
	public static class Board{
		//static 이라 객체를 만들지 않고 사용가능
		
		//한 페이지에 보여줄 게시물의 개수
		public final static int BLOCKLIST = 10;
		
		//페이지 메뉴 개수
		public final static int BLOCKPAGE = 3;
		
		//static 이라 객체를 만들지 않고 사용가능
		//Common.Board.BLOCKLIST; -> 10 
	}
	
	//공지사항용
	public static class Notice{
		//한 페이지에 보여줄 게시물의 개수
		public final static int BLOCKLIST = 20;
		
		//페이지 메뉴 개수
		public final static int BLOCKPAGE = 5;
		
		//static이라 객체를 만들지 않고 사용가능
		//Common.Notice.BLOCKLIST; -> 20
	}
	
}
