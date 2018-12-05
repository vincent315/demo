package com.hq.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.dbutils.handlers.ArrayListHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import com.hq.beans.Xiaofu;
import com.hq.db.Db;
@WebServlet("/regist")
public class RegistServlet extends ServletBase {

	@Override
	public void execute(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    
		try {
			List<Xiaofu> list=Db.query("select * from xiaofu order by sn", new BeanListHandler<Xiaofu>(Xiaofu.class));
			
			req.setAttribute("list", list);
			
			
			List<Object[]> d1sm=Db.query("select size,sum(d1) from xiaofu where sex='M' group by size with rollup", new ArrayListHandler());
			List<Object[]> d1sf=Db.query("select size,sum(d1) from xiaofu where sex='F' group by size with rollup", new ArrayListHandler());
			req.setAttribute("d1sm", d1sm);
			req.setAttribute("d1sf", d1sf);
	
			
			List<Object[]> d2sm=Db.query("select size,sum(d2) from xiaofu where sex='M' group by size with rollup", new ArrayListHandler());
			List<Object[]> d2sf=Db.query("select size,sum(d2) from xiaofu where sex='F' group by size with rollup", new ArrayListHandler());
			req.setAttribute("d2sm", d2sm);
			req.setAttribute("d2sf", d2sf);
			
			List<Object[]> d3sm=Db.query("select size,sum(d3) from xiaofu where sex='M' group by size with rollup", new ArrayListHandler());
			List<Object[]> d3sf=Db.query("select size,sum(d3) from xiaofu where sex='F' group by size with rollup", new ArrayListHandler());
			req.setAttribute("d3sm", d3sm);
			req.setAttribute("d3sf", d3sf);
			
			
			
			List<Object[]> d4sm=Db.query("select size,sum(d4) from xiaofu where sex='M' group by size with rollup", new ArrayListHandler());
			List<Object[]> d4sf=Db.query("select size,sum(d4) from xiaofu where sex='F' group by size with rollup", new ArrayListHandler());
			req.setAttribute("d4sm", d4sm);
			req.setAttribute("d4sf", d4sf);
			
			List<Object[]> d5sm=Db.query("select size,sum(d5) from xiaofu where sex='M' group by size with rollup", new ArrayListHandler());
			List<Object[]> d5sf=Db.query("select size,sum(d5) from xiaofu where sex='F' group by size with rollup", new ArrayListHandler());
			req.setAttribute("d5sm", d5sm);
			req.setAttribute("d5sf", d5sf);
			
			List<Object[]> d6sm=Db.query("select size,sum(d6) from xiaofu where sex='M' group by size with rollup", new ArrayListHandler());
			List<Object[]> d6sf=Db.query("select size,sum(d6) from xiaofu where sex='F' group by size with rollup", new ArrayListHandler());
			req.setAttribute("d6sm", d6sm);
			req.setAttribute("d6sf", d6sf);
			List<Object[]> d7sm=Db.query("select size,sum(d7) from xiaofu where sex='M' group by size with rollup", new ArrayListHandler());
			List<Object[]> d7sf=Db.query("select size,sum(d7) from xiaofu where sex='F' group by size with rollup", new ArrayListHandler());
			req.setAttribute("d7sm", d7sm);
			req.setAttribute("d7sf", d7sf);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		  this.forward(req, resp, "show.jsp");
	}
	
	public void tosave(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  Xiaofu xf=new Xiaofu();
		  this.getBean(req, xf);
		  
		  String sql="insert into xiaofu(sn,name,sex,d1,d2,d3,d4,d5,d6,d7,txt,size) value(?,?,?,?,?,?,?,?,?,?,?,?)";
		  
		  try {
			Db.update(sql,
					  xf.getSn(),xf.getName(),xf.getSex(),xf.getD1(),xf.getD2(),xf.getD3(),xf.getD4(),xf.getD5(),xf.getD6(),xf.getD7(),xf.getTxt(),xf.getSize());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  req.setAttribute("msg", "成功!");
		  this.execute(req, resp);

	}

}
