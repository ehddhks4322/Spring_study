package dao;

import java.util.List;

public interface BoardDAO {
	
	//CRUD기능을 가지고 있다.
	public int insert(Object ob);
	
	public List<Object> selectList();
	
	public int update(Object ob);
	
	public int delete(int idx);
}
