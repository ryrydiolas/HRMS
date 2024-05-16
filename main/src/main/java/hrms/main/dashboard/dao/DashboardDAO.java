package hrms.main.dashboard.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import hrms.main.dashboard.dto.DashboardDTO;
import hrms.main.login.dto.LoginDTO;
import resourcesMybatis.MybatisMapper;

@Repository
public class DashboardDAO {

	public List<DashboardDTO> getEmployeeList() {
	    SqlSession session = MybatisMapper.getSqlSessionFactory().openSession();
	    List<DashboardDTO> userLoggedList = session.selectList("getEmployeeList");
	    session.commit();
	    session.close();
	    return userLoggedList;
	}

}
