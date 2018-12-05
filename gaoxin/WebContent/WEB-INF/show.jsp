<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,com.hq.beans.*"%>
       <%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>一年级7班校服统计表</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
	
	</head>
	<body>
		<div class="container">
			<table class="table table-bordered table-condensed table-hover table-responsive table-striped">
				<tr>
					<th>学号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>白衬衣(48元)</th>
					<th>蓝长袖(43元)</th>
					<th>毛背心(52元)</th>
					<th>毛衣(82元)</th>
					<th>蓝裤子(56元)</th>
					<th>红运动服(128元)</th>
					<th>抓绒外套(98元)</th>
					<th>尺码</th>
					<th>备注</th>
					<th>总金额</th>
				</tr>
				
				<%
				 int d1m=0,d1f=0,d2m=0,d2f=0,d3m=0,d3f=0,d4m=0,d4f=0,d5m=0,d5f=0,d6m=0,d6f=0,d7m=0,d7f=0;
				  List<Xiaofu> list=(List<Xiaofu>)request.getAttribute("list");
				int sum=0;
				if(null!=list&&list.size()>0)
				{
				
					for(Xiaofu xf:list)
					{
						int rowsum=xf.getD1()*48+xf.getD2()*43+xf.getD3()*52+xf.getD4()*82+xf.getD5()*56+xf.getD6()*128+xf.getD7()*98;
						sum+=rowsum;
						if("M".equals(xf.getSex()))
						{
							d1m+=xf.getD1();
							d2m+=xf.getD2();
							d3m+=xf.getD3();
							d4m+=xf.getD4();
							d5m+=xf.getD5();
							d6m+=xf.getD6();
							d7m+=xf.getD7();
						}else
						{
							d1f+=xf.getD1();
							d2f+=xf.getD2();
							d3f+=xf.getD3();
							d4f+=xf.getD4();
							d5f+=xf.getD5();
							d6f+=xf.getD6();
							d7f+=xf.getD7();
						}
						
						
						%>
				<tr>
					<td><%=xf.getSn() %></td>
					<td><%=xf.getName()%></td>
					<td><%="M".equals(xf.getSex())?"男":"女"%></td>
					<td><%=xf.getD1()%></td>
					<td><%=xf.getD2()%></td>
					<td><%=xf.getD3()%></td>
					<td><%=xf.getD4()%></td>
					<td><%=xf.getD5()%></td>
					<td><%=xf.getD6()%></td>
					<td><%=xf.getD7()%></td>
					<td><%=xf.getSize()%></td>
					<td><%=xf.getTxt()%></td>
					<td><%=rowsum%></td>
				</tr>
						<%
					}
				}
				%>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td>男：<%=d1m%>女：<%=d1f%></td>
					<td>男：<%=d2m%>女：<%=d2f%></td>
					<td>男：<%=d3m%>女：<%=d3f%></td>
					<td>男：<%=d4m%>女：<%=d4f%></td>
					<td>男：<%=d5m%>女：<%=d5f%></td>
					<td>男：<%=d6m%>女：<%=d6f%></td>
					<td>男：<%=d7m%>女：<%=d7f%></td>
					<td></td>
					<td></td>
					<td></td>
				</tr>
				<tr>
					<td></td>
					<td></td>
					<td></td>
					<td>
					   <ul style="padding: 0;margin: 0;list-style: none;">
				          
				           <%
				             List<Object[]> d1sm=(List<Object[]>)request.getAttribute("d1sm");
				           if(null!=d1sm&&d1sm.size()>0)
				           {
				        	   for(Object[] tem:d1sm)
				        	   {
				        		   %>
				        		   <li>男:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           out.println("<li>---------------</li>");
				           List<Object[]> d1sf=(List<Object[]>)request.getAttribute("d1sf");
				           if(null!=d1sf&&d1sf.size()>0)
				           {
				        	   for(Object[] tem:d1sf)
				        	   {
				        		   %>
				        		   <li>女:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           %>
                       	</ul>
                    </td>
					<td>
					<ul style="padding: 0;margin: 0;list-style: none;">
				          
				           <%
				             List<Object[]> d2sm=(List<Object[]>)request.getAttribute("d2sm");
				           if(null!=d2sm&&d2sm.size()>0)
				           {
				        	   for(Object[] tem:d2sm)
				        	   {
				        		   %>
				        		   <li>男:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           out.println("<li>---------------</li>");
				           List<Object[]> d2sf=(List<Object[]>)request.getAttribute("d2sf");
				           if(null!=d2sf&&d2sf.size()>0)
				           {
				        	   for(Object[] tem:d2sf)
				        	   {
				        		   %>
				        		   <li>女:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           %>
                       	</ul>

                      </td>
					<td>
 <ul style="padding: 0;margin: 0;list-style: none;">
				          
				           <%
				             List<Object[]> d3sm=(List<Object[]>)request.getAttribute("d3sm");
				           if(null!=d3sm&&d3sm.size()>0)
				           {
				        	   for(Object[] tem:d3sm)
				        	   {
				        		   %>
				        		   <li>男:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           out.println("<li>---------------</li>");
				           List<Object[]> d3sf=(List<Object[]>)request.getAttribute("d3sf");
				           if(null!=d3sf&&d3sf.size()>0)
				           {
				        	   for(Object[] tem:d3sf)
				        	   {
				        		   %>
				        		   <li>女:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           %>
                       	</ul>
</td>
					<td>
 <ul style="padding: 0;margin: 0;list-style: none;">
				          
				           <%
				             List<Object[]> d4sm=(List<Object[]>)request.getAttribute("d4sm");
				           if(null!=d4sm&&d4sm.size()>0)
				           {
				        	   for(Object[] tem:d4sm)
				        	   {
				        		   %>
				        		   <li>男:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           out.println("<li>---------------</li>");
				           List<Object[]> d4sf=(List<Object[]>)request.getAttribute("d4sf");
				           if(null!=d4sf&&d4sf.size()>0)
				           {
				        	   for(Object[] tem:d4sf)
				        	   {
				        		   %>
				        		   <li>女:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           %>
                       	</ul>
</td>
					<td>
 <ul style="padding: 0;margin: 0;list-style: none;">
				          
				           <%
				             List<Object[]> d5sm=(List<Object[]>)request.getAttribute("d5sm");
				           if(null!=d5sm&&d5sm.size()>0)
				           {
				        	   for(Object[] tem:d5sm)
				        	   {
				        		   %>
				        		   <li>男:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           out.println("<li>---------------</li>");
				           List<Object[]> d5sf=(List<Object[]>)request.getAttribute("d5sf");
				           if(null!=d5sf&&d5sf.size()>0)
				           {
				        	   for(Object[] tem:d5sf)
				        	   {
				        		   %>
				        		   <li>女:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           %>
                       	</ul>
</td>
					<td>
 <ul style="padding: 0;margin: 0;list-style: none;">
				          
				           <%
				             List<Object[]> d6sm=(List<Object[]>)request.getAttribute("d6sm");
				           if(null!=d6sm&&d6sm.size()>0)
				           {
				        	   for(Object[] tem:d6sm)
				        	   {
				        		   %>
				        		   <li>男:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           out.println("<li>---------------</li>");
				           List<Object[]> d6sf=(List<Object[]>)request.getAttribute("d6sf");
				           if(null!=d6sf&&d6sf.size()>0)
				           {
				        	   for(Object[] tem:d6sf)
				        	   {
				        		   %>
				        		   <li>女:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           %>
                       	</ul></td>
					<td>
 <ul style="padding: 0;margin: 0;list-style: none;">
				          
				           <%
				             List<Object[]> d7sm=(List<Object[]>)request.getAttribute("d7sm");
				           if(null!=d7sm&&d7sm.size()>0)
				           {
				        	   for(Object[] tem:d7sm)
				        	   {
				        		   %>
				        		   <li>男:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           out.println("<li>---------------</li>");
				           List<Object[]> d7sf=(List<Object[]>)request.getAttribute("d7sf");
				           if(null!=d7sf&&d7sf.size()>0)
				           {
				        	   for(Object[] tem:d7sf)
				        	   {
				        		   %>
				        		   <li>女:<%=null!=tem[0]?tem[0]:"&nbsp;&nbsp;&nbsp;" %>---<%=null!=tem[1]?tem[1]:"&nbsp;&nbsp;" %></li>
				        		   <%
				        	   }
				           }
				           %>
                       	</ul>
</td>
					<td></td>
					<td></td>
					<td></td>
				</tr>	
				<tr><td colspan="13">总共：<%=sum %>元</td></tr>
			</table>
		</div>
	</body>
</html>
