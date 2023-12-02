package com.board.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.board.domain.BoardVO;
import com.board.service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

	@Inject
	BoardService service;

	// GET 방식은 서버에서 정보를 조회할 때 주로 쓰이고, POST 방식은 정보를 수정하거나 입력할 때 사용
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public void getList(Model model) throws Exception { // Model은 컨트롤러(Controller)와 뷰(View)를 연결해주는 역할을 합니다.

		List list = null;
		list = service.list();
		model.addAttribute("list", list);
	}
	
	//게시글 작성 컨트롤러
	@RequestMapping(value = "/write", method = RequestMethod.GET)
	public void getWrite() throws Exception { 

	}

	// 스프링 게시판 만들기 #5. 게시물 작성 구현 메소드 이름이랑 이상하고 막 오타도 있으니까 무작정 베끼면 골로 간다.
	@RequestMapping(value = "/write", method = RequestMethod.POST)
	public String postWrite(BoardVO vo) throws Exception {
		service.write(vo);

		return "redirect:/board/list"; // 모든 작업을 마치고 /board/list, 즉 게시물 목록 화면으로 이동하겠다는 의미
		// 왜 그냥 url 쓰면 안되나? redirect를 사용해야 하는 이유는?
	}

	// 게시물 조회
	@RequestMapping(value = "/view", method = RequestMethod.GET)
	public void getView() throws Exception {
		
	}

}
