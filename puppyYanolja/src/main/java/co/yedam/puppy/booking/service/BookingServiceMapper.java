package co.yedam.puppy.booking.service;

import co.yedam.puppy.common.DataSource;
import org.apache.ibatis.session.SqlSession;

public class BookingServiceMapper implements BookingService{
    private SqlSession sqlSession = DataSource.getSession();
    BookingService mapper = sqlSession.getMapper(BookingService.class);

}
