package resourcesMybatis;

import java.io.IOException;
import java.io.Reader;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class MybatisMapper {

	private static SqlSessionFactory sessionFactory;
	
	static {
		Reader reader;
		try {
			reader = Resources.getResourceAsReader("resourcesMybatis/mybatis-config.xml");
			sessionFactory = new SqlSessionFactoryBuilder().build(reader);
		}
		catch(IOException e) {
			e.printStackTrace();
		}
	}
	
	public static SqlSessionFactory getSqlSessionFactory() {
		return sessionFactory;
	}
}
