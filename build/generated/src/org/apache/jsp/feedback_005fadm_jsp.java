package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.ResultSet;

public final class feedback_005fadm_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("    ");
 
    if(session.getAttribute("usr")==null)
    {
        response.sendRedirect("index.jsp");
    }

      out.write("\n");
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
      out.write("\n");
      out.write("\n");
      out.write("<!--[if lt IE 9]>\n");
      out.write("\t<script type=\"text/javascript\" src=\"http://info.template-help.com/files/ie6_warning/ie6_script_other.js\"></script>\n");
      out.write("\t<script type=\"text/javascript\" src=\"js/html5.js\"></script>\n");
      out.write("<![endif]-->\n");
      out.write("</head>\n");
      out.write("<body id=\"page3\">\n");
      out.write("    \n");
      out.write("<div class=\"body1\">\n");
      out.write("\t<div class=\"body2\">\n");
      out.write("\t\t<div class=\"main\">\n");
      out.write("<!-- header -->\n");
      out.write("\t\t\t<header>\n");
      out.write("\t\t\t\t<div class=\"wrapper\">\n");
      out.write("\t\t\t\t\t<h1><a href=\"index.jsp\" id=\"logo\">First</a></h1>\n");
      out.write("\t\t\t\t\t<div class=\"right\">\n");
      out.write("\t\t\t\t\t\t<nav>\n");
      out.write("                                                <ul id=\"top_nav\">\n");
      out.write("                                                    <li><a href=\"logout.jsp\">Logout</a></li>\n");
      out.write("                                                    <li><img src=\"images/border.gif\"></li>\n");
      out.write("                                                    <li><a href=\"#\"><img src=\"images/a_logo.png\">");
      out.print( session.getAttribute("usr") );
      out.write("</a></li>\n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("                                                </nav>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<nav id=\"menu\">\n");
      out.write("\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav1\"><a href=\"index_adm.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav2\"><a href=\"service_adm.jsp\">Services</a></li>\n");
      out.write("                                                <li class=\"nav3\"><a href=\"offer_adm.jsp\">Offers</a></li>\n");
      out.write("\t\t\t\t\t\t<li class=\"nav4\"><a href=\"order_adm.jsp\">Order</a></li>\n");
      out.write("                                                <li class=\"nav5\" id=\"active\"><a href=\"feedback_adm.jsp\">Feedback</a></li>\n");
      out.write("\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t</nav>\n");
      out.write("\t\t\t</header><div class=\"ic\">More Website Templates at TemplateMonster.com!</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("<!-- / header -->\n");
      out.write("<!-- content -->\n");
      out.write("<div class=\"body5\">\n");
      out.write("\t\t<div class=\"body6\">\n");
      out.write("\t\t\t<div class=\"main\">\n");
      out.write("\t\t\t\t<div class=\"wrapper\">\n");
      out.write("\t\t\t\t\t\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<div class=\"body7\">\n");
      out.write("\t\t<div class=\"main\">\n");
      out.write("\t\t\t<section id=\"content\">\n");
      out.write("                            <div class=\"wrapper\">\n");
      out.write("                                <article class=\"col2\">\n");
      out.write("\t\t\t\t\t\t<div class=\"pad1\">\n");
      out.write("                                                     <div class=\"main\">\n");
      out.write("                                           \n");
      out.write("                                       \n");
      out.write("                                                    \n");
      out.write("                                                        <h2>Check Feedback For Service:</h2><br/>\n");
      out.write("                                                        <form id=\"ContactForm\" name=\"frm1\">\n");
      out.write("                                                            \n");
      out.write("\t\t\t\t\t\t\t\t\n");
      out.write("\t\t\t\t\t\t\t\t\t\t\n");
      out.write("<br/>                                                                        \n");
      out.write("<div class=\"wrapper\">\n");
      out.write("    <table width=\"59%\" border=\"1\"><tr>\n");
      out.write("    \n");
      out.write("    <th>User ID</th>\n");
      out.write("    <th>Service</th>\n");
      out.write("    <th>Comment</th>\n");
      out.write("    <th>Date</th>\n");
      out.write("    \n");
      out.write("    </tr>\n");
      out.write("\n");

                Class.forName("com.mysql.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/handyman?zeroDateTimeBehavior=convertToNull","root","");
Statement st=cn.createStatement();
              String f="select * from complain where status='pending'";  
              
      out.write("\n");
      out.write("             \n");
      out.write("              ");

              ResultSet rs2=st.executeQuery(f);
              
              while(rs2.next())
              {

      out.write("\n");
      out.write("<tr>\n");
      out.write("                  \n");
      out.write("                  <td>");
      out.print(rs2.getString(4) );
      out.write("</td>\n");
      out.write("                  <td>");
      out.print(rs2.getString(2) );
      out.write("</td>\n");
      out.write("                  <td>");
      out.print(rs2.getString(3) );
      out.write("</td>\n");
      out.write("                  <td>");
      out.print(rs2.getString(5) );
      out.write("</td>\n");
      out.write("                 \n");
      out.write("                  <td><a href=\"status_adm.jsp?k=");
      out.print(rs2.getInt(1));
      out.write("\"> Solved </td>\n");
      out.write("              </tr>\n");
      out.write("\n");
      out.write("\n");
      out.write("                ");

              }  
                   
      out.write("\n");
      out.write("                                                                   </table>\n");
      out.write("</div>  <br/>\n");
      out.write("<br>\n");
      out.write("<br>\n");
      out.write("                                                                      </div>  <br/>\n");
      out.write("                            </div>\n");
      out.write("                                                        </form>\n");
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
      out.write("\t\t\t\t\t<!--<h3>Social Networks</h3>\n");
      out.write("\t\t\t\t\t<ul class=\"list3\">\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Twitter</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Facebook</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Flickr</a></li>\n");
      out.write("\t\t\t\t\t\t<li><a href=\"#\">Blogger</a></li>\n");
      out.write("\t\t\t\t\t</ul>-->\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col_2 pad_left1\">\n");
      out.write("\t\t\t\t\t<h3>Quick Links</h3>\n");
      out.write("\t\t\t\t\t<div class=\"wrapper\">\n");
      out.write("\t\t\t\t\t\t<ul class=\"list3 col_1\">\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"index_adm.jsp\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"service_adm.jsp\">Services</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"order_adm.jsp\">Order</a></li>\n");
      out.write("                                                </ul>\n");
      out.write("\t\t\t\t\t</div>\n");
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
      out.write("</html>\n");
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
