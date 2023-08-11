<nav class="navbar navbar-expand-lg navbar-light bg-info">
	<div class ="container">
  <form class="form-inline" action="index.jsp" method="get">
			<div class="input-group">
				<input type="text" class="form-control" size="30" name="search"
					placeholder="Search" required>
				<div class="input-group-btn">
					<input type="submit" class="btn btn-danger" value="Search" />
				</div>
			</div>
		</form>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="userindex.jsp">Home </a>
      </li>
      
        <li class="nav-item">
        <a class="nav-link" href="userproduct.jsp">Product</a></li>
        
        <li class="nav-item">
        <a class="nav-link" href="usermyorder.jsp">My Order</a></li>
		        <%
					if(auth != null){%>
                 
              		<li class="nav-item">
              		<a class="nav-link" href="log-out">Logout</a>
            		</li>
            		
        	<% }else{ %>
        		    <li class="nav-item">
       				 <a class="nav-link" href="Selectrole.jsp">Login</a>
      				</li>
        	<%} %>
    </ul>
    </div>
  </div>
</nav>