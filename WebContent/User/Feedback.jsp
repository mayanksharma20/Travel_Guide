<%@page import="connection.ConnectionString"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="../home/Aside.css">
<link rel="stylesheet" type="text/css" href="../home/Home.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Feedback</title>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$('#addfeedback').click(function(){
		var packagename = $('#packagename').find('option:selected').text();
		var feedback = $('#feedback').val();
		var name=$('#name').val();;
		$.ajax({
			type:'POST',
			data:{ packagename:packagename,feedback:feedback,name:name},
			url:'../Feedback',
			success: function(result){
				$('#validation').html(result);
			}
		});	
	});
});
</script>
<%@ include file ="Header.jsp" %>
<%@ include file ="Aside.jsp" %>
	<section class="section">
		<div class="sectiondev">
			<div class="container">
			  <h2>Feedback</h2>
			  <div class="panel col-sm-10">
			    <div class="panel-body">
			    	<div class="row">
			    		<form>
			    			<div class="col-sm-8">
			    				<div class="col-sm-4">
			    					<div class="form-group">
			    						Select Package:
			    					</div>
			    				</div>
			    				<div class="col-sm-4">
			    					<div class="form-group">
					    				<%
					    				try {
					    					Connection con = ConnectionString.getCon();
					    					PreparedStatement ps = con.prepareStatement("select DISTINCT packagename from package");
					    					ResultSet rs = ps.executeQuery();
					    					
					    						%>
					    						<select name="packagename" id=packagename class="form-control">
					    						<%while(rs.next()){ %>
					    							<option value="<%=rs.getString(1)%>" ><%=rs.getString(1) %></option>
					    							<%} %>
					    						</select>
					    						<% 
					    					
					    				}
					    				catch (Exception e) {
					    					e.printStackTrace();
					    				}
					    				%>
			    					</div>
			    				</div>
			    			</div>
			    			<div class="col-sm-8">
			    				<div class="col-sm-4">
				    				<div class="form-group">
										<p id="label">Suggestion/Feedback:</p>
				    				</div>
				    			</div>
			    				<div class="col-sm-4">
			    					<div class="form-group">
			    						 <input type="hidden" id="name" name="name" value="<%=session.getAttribute("name") %>" >
			    						<textarea class="form-control" id="feedback" name="feedback" required="true"></textarea>
			    					</div>
			    				</div>
			    			</div>
			    			<div class="col-sm-8">	
				    			<div class ="col-sm-8">
				    				<div class="form-group">
				    					<div class="text-right">
				    					<input type="button" id="addfeedback" value="Submit" class="btn btn-primary">
					    			</div>
					    			</div>
				    			</div>
			    			</div>
			    			<div class="col-sm-8">
			    			<div id="validation"></div>
			    			</div>
			    		</form>
			    	</div>
			    </div>
			  </div>
			</div>
		</div>
	</section>
<%@ include file="../home/Footer.jsp" %>
</body>
</html>