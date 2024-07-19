
<% String s=(String)session.getAttribute("msg"); %>
<%-- Swal.fire({
<% if(s!=null) {%>
  title: "Good job!",
  <%} else{%>
   title: "Someting Went Wrong !",
   <%} %>
  text: "<%= s %>",
  icon: "success"
}); --%>
 <center>

<% if(s!=null) {%>
 	<div class="alert alert-warning alert-dismissible fade show" role="alert">
   <%=s %>
  <button type="button" class="close" data-dismiss="alert" aria-label="Close">
    <span aria-hidden="true">&times;</span>
  </button>
  <%session.setAttribute("msg", null); %>
	
	 </div>
<%} %>

  

</center>