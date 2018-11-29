package com.dev.controller;

import java.io.*;
import java.util.ArrayList;

import javax.servlet.*;
import javax.servlet.http.*;

import com.dev.service.MemberService;
import com.dev.vo.MemverVO;

public class MemberListController impelments Controller{
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		MemberService service =MemberService.getInstance();
		ArrayList<MemberVO> list = service.memberList();
		
		request.setAttribute("list", list);
		HttpUtil.forward(request, response, "/result/memberListOutput.jsp");
	}
}
