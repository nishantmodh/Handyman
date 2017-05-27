package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class ser_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("<title>Services</title>\n");
      out.write("<meta charset=\"utf-8\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/reset.css\" type=\"text/css\" media=\"all\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/layout.css\" type=\"text/css\" media=\"all\">\n");
      out.write("<link rel=\"stylesheet\" href=\"css/style.css\" type=\"text/css\" media=\"all\">\n");
      out.write("<script type=\"text/javascript\" src=\"js/jquery-1.4.2.js\" ></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-yui.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/cufon-replace.js\"></script>  \n");
      out.write("<script type=\"text/javascript\" src=\"js/Copse_400.font.js\"></script>\n");
      out.write("<script type=\"text/javascript\" src=\"js/imagepreloader.js\"></script>\n");
      out.write("<script type=\"text/javascript\">\n");
      out.write("\tpreloadImages([\n");
      out.write("\t'images/menu1_active.gif',\n");
      out.write("\t'images/menu2_active.gif',\n");
      out.write("\t'images/menu3_active.gif',\n");
      out.write("\t'images/menu4_active.gif',\n");
      out.write("\t'images/menu5_active.gif']);\n");
      out.write("</script>\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("\t<script type=\"text/javascript\" src=\"http://info.template-help.com/files/ie6_warning/ie6_script_other.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/html5.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("</head>\n");
      out.write("<body id=\"page3\">\n");
      out.write("<div class=\"body1\">\n");
      out.write("\t<div class=\"body2\">\n");
      out.write("\t\t<div class=\"main\">\n");
      out.write("<!-- header -->\n");
      out.write("\t\t\t<header>\n");
      out.write("\t\t\t\t<div class=\"wrapper\">\n");
      out.write("\t\t\t\t\t<h1><a href=\"index.jsp\" id=\"logo\">First</a></h1>\n");
      out.write("\t\t\t\t\t<div class=\"right\">\n");
      out.write("\t\t\t\t\t\t<nav> </nav>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<nav id=\"menu\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav1\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav2\"><a href=\"about_us.jsp\">ABOUT Us</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav3\" id=\"active\"><a href=\"service.jsp\">Services</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav4\"><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</nav>\n");
      out.write("\t\t\t</header><div class=\"ic\">More Website Templates at TemplateMonster.com!</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- / header -->\n");
      out.write("<!-- content -->\n");
      out.write("\t<div class=\"body5\">\n");
      out.write("\t\t<div class=\"body6\">\n");
      out.write("\t\t\t<div class=\"main\">\n");
      out.write("\t\t\t\t<div class=\"wrapper\">\n");
      out.write("\t\t\t\t\t<figure class=\"left\"><img src=\"images/letter3.png\" alt=\"\"></figure>\n");
      out.write("\t\t\t\t\t<h2>These We Can Do <span>For You</span></h2>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"body7\">\n");
      out.write("\t\t<div class=\"main\">\n");
      out.write("\t\t\t<section id=\"content\">\n");
      out.write("\t\t\t\t<div class=\"wrapper\">\n");
      out.write("\t\t\t\t\t<article class=\"col2\">\n");
      out.write("\t\t\t\t\t\t<div class=\"pad1\">\n");
      out.write("\t\t\t\t\t\t\t<h2>Our Services</h2>\n");
      out.write("\t\t\t\t\t\t</div>\t\n");
      out.write("                                            \n");
      out.write("                                            \n");
      out.write("                                            <div><form> \n");
      out.write("                                                                                     \n");

Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
Statement st=cn.createStatement();
try {

String s="select * from services_details_adm ";
ResultSet rs=st.executeQuery(s);
while(rs.next()){
    
      out.write("\n");
      out.write("       <article class=\"col1\">\n");
      out.write("\t\t\t\t\t<div class=\"box1\"><div class=\"box1_bot\"><div class=\"box1_top\">\n");
      out.write("\t\t\t\t\t\t<div class=\"pad\"><div class=\"pad1\">\n");
      out.write("\t\t\t\t\t\t\t<figure class=\"left\"><img src=\"images/marker_1.gif\" alt=\"\"></figure>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\t<div class=\"cols\">\n");
      out.write("                                                                                                <h6> &nbsp;&nbsp;");
      out.print(rs.getString(2) );
      out.write("</h6><br/>\n");
      out.write("                                                                                                <p><img src=\"images/");
      out.print(rs.getString(4) );
      out.write("\"></p>\n");
      out.write("                                                                                                <p> &nbsp;&nbsp;&nbsp;&nbsp;");
      out.print(rs.getString(3) );
      out.write("</p>\n");
      out.write("<div class=\"wrapper center\">\n");
      out.write("\t\t\t\t\t\t\t\t<a href=\"#\" class=\"button\"><span><span>More</span></span></a>\n");
      out.write("\t\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t</div></div>\n");
      out.write("\t\t\t\t\t</div></div></div>\n");
      out.write("        \t\t</article>\n");
      out.write("\n");
      out.write("\t\t\t\t\t\n");
      out.write("        \n");
      out.write("    ");

    }
  
}catch(Exception e)
{
    
}

      out.write(" \n");
      out.write("\n");
      out.write("  \n");
      out.write("     </form>\t</div>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t</article>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</section>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- / content -->\n");
      out.write("<!-- footer -->\n");
      out.write("\t<div class=\"body8\">\n");
      out.write("\t<div class=\"body9\">\n");
      out.write("\t\t<div class=\"main\">\n");
      out.write("\t\t\t<footer>\n");
      out.write("\t\t\t\t<div class=\"col_1\">\n");
      out.write("        <h3>Quick Links</h3>\n");
      out.write("\t  <ul class=\"list3\">\n");
      out.write("               <li><a href=\"index.jsp\">Home</a></li>\n");
      out.write("               <li><a href=\"about_us.jsp\">About Us</a></li>\n");
      out.write("\t       <li><a href=\"service.jsp\">Services</a></li>\n");
      out.write("               <li><a href=\"contact.jsp\">Contact</a></li>\n");
      out.write("\t  </ul>\n");
      out.write("</div>\n");
      out.write("<div class=\"col_2 pad_left1\">\n");
      out.write("           <h3>Benefits</h3>\n");
      out.write("           <ul class=\"list3 col_1\" >\n");
      out.write("\t\t\t<li>- Better Services</li>\n");
      out.write("\t\t\t<li>- Have Skilled Handymen</li>\n");
      out.write("\t\t\t<li>- Provide Feedback Services</li>\n");
      out.write("                        <li>- 24x7 Service</li>\n");
      out.write("                  </ul>\n");
      out.write("\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col_3\">\n");
      out.write("\t\t\t\t\t<!--<a href=\"index.html\" id=\"footer_logo\">First</a><a rel=\"nofollow\" href=\"http://www.templatemonster.com/\" target=\"_blank\">Website template</a><br>\n");
      out.write("\t\t\t\t\t\tdesigned by TemplateMonster.com\n");
      out.write("\t\t\t\t\t<p class=\"center\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"http://www.templates.com/product/3d-models/\" target=\"_blank\">3D Models</a><br>\n");
      out.write("\t\t\t\t\t\t\tprovided by Templates.com</p>-->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</footer>\n");
      out.write("\t\t\t</div>\n");
      out.write("<!-- / footer -->\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<script type=\"text/javascript\"> Cufon.now(); </script>\n");
      out.write("</body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
