package co.yedam.puppy.board.command;

import co.yedam.puppy.common.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class QnaListCmd implements Command {
    @Override
    public String execute(HttpServletRequest request, HttpServletResponse response) {
        return "board/qnaList";
    }
}
