package dao;

import java.util.ArrayList;
import java.util.List;

public class BoardDAOImpl implements BoardDAO {

	@Override
	public int insert(Object ob) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public List<Object> selectList() {
		List<Object> list = new ArrayList<Object>();
		list.add("사과");
		list.add("수박");
		list.add("복숭아");
		list.add("바나나");
		list.add("포도");
		return list;
	}
	
	//여기가 dao이니까 반환받은 값을 Servlet이 받아서 바인딩하고 포워딩을 해서 JSP에서 출력을 했다.
	//그 사이에 service라고 하는 애가 받아준다.

	@Override
	public int update(Object ob) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(int idx) {
		// TODO Auto-generated method stub
		return 0;
	}

}
