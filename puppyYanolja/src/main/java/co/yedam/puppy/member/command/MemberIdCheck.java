package co.yedam.puppy.member.command;

import co.yedam.puppy.common.Command;
import co.yedam.puppy.member.service.MemberServiceMapper;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonObject;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MemberIdCheck implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        MemberServiceMapper map = new MemberServiceMapper();
        String id = request.getParameter("id");
        Gson gson = new GsonBuilder().create();
        JsonObject jo = new JsonObject();

        if(map.isMemberId(id)){
            jo.addProperty("result","아이디가 존재합니다.");
            jo.addProperty("flag",0);
        } else {
            jo.addProperty("result","사용가능한 아이디입니다.");
            jo.addProperty("flag",1);
        }

        return gson.toJson(jo).toString() + ".ajax";
    }
}
