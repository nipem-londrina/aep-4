<%@page import="br.com.nipem.security.PasswordAuthentication"%>
<jsp:useBean id="obj" class="br.com.nipem.security.LoginBean"/>
<jsp:setProperty name="obj" property="*"/>
<jsp:getProperty name="obj" property="type"/><br>
<jsp:getProperty name="obj" property="login"/><br>
<jsp:getProperty name="obj" property="password"/><br>
<%out.print(obj.authenticate());%>
