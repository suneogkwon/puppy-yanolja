package co.yedam.puppy.shop.command;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.shop.service.ShopServiceMapper;
import co.yedam.puppy.shop.vo.ShopVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class shopList implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        ShopServiceMapper map = new ShopServiceMapper();
        String sort = request.getParameter("sort");
        List<ShopVO> shopList = map.shopList(sort);
        request.setAttribute("List",shopList);

        return "booking/shopList";
    }
}
