package co.yedam.puppy.common;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.IOException;
import java.io.InputStream;

public class DataSource {
    private static SqlSessionFactory sqlSessionFactory;

    public static SqlSession getSession(){
        InputStream inputStream = null;
        try {
            String resource = "config/mybatis-config.xml";
            inputStream = Resources.getResourceAsStream(resource);
            sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        } catch (IOException e) {
            e.printStackTrace();
        }
        return sqlSessionFactory.openSession(true);
    }
}
