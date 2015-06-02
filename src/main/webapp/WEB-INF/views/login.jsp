<%--
  Created by IntelliJ IDEA.
  User: abhayphougat
  Date: 6/2/15
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="pageTitle" value="Please Login" scope="request"/>
<jsp:include page="./includes/header.jsp"/>

<form action="/login" method="post">
  <c:if test="${param.error != null}">
    <div class="alert alert-error" >
      Failed To Login

    <c:if test="${SPRING_SECURITY_LAST_EXCEPTION.message != null}">
     Reason: <c:out value="${SPRING_SECURITY_LAST_EXCEPTION.message}"/>
    </c:if>
    </div>
  </c:if>
  <c:if test="${param.logout != null}">
    <div class="alert alert-success">
      You have been Logged Out !
    </div>
  </c:if>
  <label for="username">UserName</label>
  <input type="text" id="username" name="username"/>
  <label for="password">Password</label>
  <input type="text" id="password" name="password"/>
  <div class="form-actions">
  <button type="submit" name="submit" value="Login" id="submit" class="btn"/>
  </div>
</form>
<jsp:include page="./includes/footer.jsp"/>
