package hrms.main.login.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import hrms.main.login.dto.LoginDTO;
import resourcesMybatis.MybatisMapper;

@Repository
public class LoginDAO {

	public LoginDTO authenticateUser(String username, String password) {
        SqlSession session = MybatisMapper.getSqlSessionFactory().openSession();
        Map<String, String> params = new HashMap<>();
        params.put("username", username);
        params.put("password", password);
        LoginDTO user = session.selectOne("getUserByUsername", params);
        session.close();

        System.out.println("==================== test data user: " + user);

        return user;
    }

	public Object getAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

}
