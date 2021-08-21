package co.yedam.puppy.common;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class DataSource {
    private static SqlSessionFactory sqlSessionFactory;

    public static SqlSession getSession(){
        return sqlSessionFactory.openSession();
    }
}
