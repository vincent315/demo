package com.hq.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/login")
public class LoginServlet extends ServletBase {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		this.forward(req, resp, "login.jsp");
	}

	public void toregist(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String str=this.getString(req, "sn");
		if(str.trim().length()==4&&(str.startsWith("07")))
		{
		req.setAttribute("sn", str);
		req.setAttribute("name", this.getString(req, "name"));
		req.setAttribute("sex", this.getString(req, "sex"));
		this.forward(req, resp, "regist.jsp");
		}else
		{
			this.execute(req, resp);
		}
	}
}
