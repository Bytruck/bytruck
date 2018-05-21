<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>
<style>
.toplist {
	margin-top: 10%;
}
footer{
	
}
</style>
<body>
	<div class="row">
		<div class="container">
			<div class="col-lg-offset-2 col-lg-8 col-lg-offset-2">
				<header>
				  <jsp:include page ="/template/header.jsp"/>
				</header>
			</div>
		</div>
	</div>
	<div class="aside">
		  <jsp:include page ="/template/admin_aside.jsp"/>
	</div>
	<div class="container">
		<div class="row">
			     <div class="card-block">
                                <h4 class="card-title">GAUGE CHART</h4>
                                <div class="ct-gauge-chart"></div>
                            </div>
                        </div>
                        </div>
  <div class="foot">
      <div class="row">
         <div class="container-fluid">
            <div class="col-lg-12">
               <footer>
                  <jsp:include page ="/template/footer.jsp"/>
               </footer>
            </div>
         </div>
      </div>
   </div>                        
</body>
</html>