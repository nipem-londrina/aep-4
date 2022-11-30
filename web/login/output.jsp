<%@page import="br.com.nipem.security.PasswordAuthentication"%>
<jsp:useBean id="obj" class="br.com.nipem.security.LoginBean"/>  
<jsp:setProperty name="obj" property="*"/>
<jsp:getProperty name="obj" property="type"/><br>
<jsp:getProperty name="obj" property="login"/><br>
<%
    PasswordAuthentication pa = new PasswordAuthentication();
    /*
    String login = obj.getLogin();
    String password = obj.getPassword();
    
    out.print(login + "<br>");
    out.print(password + "<br>");
    */
    
    String token = pa.hash(obj.getPassword());
    out.print(token + "<br>");
    out.print(pa.authenticate(obj.getPassword(), token));
    
%>