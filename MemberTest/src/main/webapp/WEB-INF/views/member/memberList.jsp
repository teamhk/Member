<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="../include/header.jsp" />
<title>hk Member</title>
</head>

<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Begin Page Content -->
        <div class="container-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-2 text-gray-800">Tables</h1>
          <p class="mb-4">멤버 리스트입니다. 회원가입을 원하신다면 <a target="_blank" href="register">회원가입</a>을 클릭해 주세요</p>

          <!-- DataTales Example -->
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              <div class="m-0 font-weight-bold text-primary">Member List</div>&nbsp;&nbsp;&nbsp;
     		<span class="m-0 font-weight-bold text-primary"> ${loginMember.mname}</span> 님 환영합니다.
            </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                      <th>MNO</th>
                      <th>MNAME</th>
                      <th>EMAIL</th>
                      <th>PASSWORD</th>
                      <th>CRE_DATE</th>
                      <th>MOD_DATE</th>
                      <th>ECT</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>MNO</th>
                      <th>MNAME</th>
                      <th>EMAIL</th>
                      <th>PASSWORD</th>
                      <th>CRE_DATE</th>
                      <th>MOD_DATE</th>
                      <th>ECT</th>
                    </tr>
                  </tfoot>
                  <tbody>
                
                <c:forEach var="member" items="${members}">
                	<tr>
                      <td>${member.mno}</td>
                      <td>${member.mname}</td>
                      <td>${member.email}</td>
                      <td>${member.pwd}</td>
                      <td><fmt:formatDate value="${member.cre_date}" pattern="yyyy-MM-dd"/></td>
                      <td><fmt:formatDate value="${member.mod_date}" pattern="yyyy-MM-dd"/></td>
                      <td><input type="button" onclick="location.href='update?mno=${member.mno}'" value="수정">,<input type="button" onclick="location.href='delete?mno=${member.mno}'" value="삭제"></td>
                    </tr>
                    </c:forEach>    
                    
                  </tbody>
                </table>
              </div>
            </div>
          </div>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; HK Website 2020</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->
<jsp:include page="../include/footer.jsp" />
</html>