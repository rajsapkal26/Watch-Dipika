<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Cart-Details</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
	
	<h1 class="text-center second mt-5">Cart-Details</h1>
	<%
	HttpSession s=request.getSession();
	String cust_id=s.getAttribute("cust_id").toString();
	int total=0;
	
	try {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task1","root","root");
		
		Statement stat=conn.createStatement();
		
		ResultSet rs=stat.executeQuery("select c_id,p_name,p_img,p_price from cart,products where cart.p_id=products.p_id and cust_id="+cust_id);
		
		
		%>
		<table class="table table-bordered container my-5">
			<thead>
				<tr>
					<th class="ps-5 third">Name</th>
					<th class="third">Price</th>
					<th class="third">Delete</th>
				</tr>
				
			</thead>
		<%
		
		while(rs.next()) {
			int c_id=rs.getInt(1);
			String p_name=rs.getString(2);
			String p_img=rs.getString(3);
			int p_price=rs.getInt(4);
			total=total+rs.getInt(4);
			
			%>
			
			<tbody>
				<tr>
					<td>
						<div class="d-flex ">
							<img src="<%=rs.getString(3) %>" class="img-fluid" width="180"/>
							<div class=" px-2">
								<p class="para6"><%=rs.getString(2) %></p>
							</div>
						</div>
					</td>
					<td>
						<p class="para6"><%=rs.getInt(4) %></p>
					</td>
					<td>
						<a href="delete.jsp?c_id=<%=rs.getInt("c_id") %>"><button type="submit" class="btn btn-danger rounded-0 cart" >Delete</button></a>
					</td>
				</tr>
			</tbody>
			
			
			<% 
			
		}
		
	}
	catch(Exception e) {
		e.printStackTrace();
	}
	
	%>
	</table>
	
	<div class="container mb-5">
		<div>
			<p class="d-flex justify-content-end third">Total Amount : <%=total%></p>
		</div>
		<div class="d-flex justify-content-end third">
			<form method="post" action="BuyNow">
				<button type="submit" class="btn btn-dark rounded-0 cart">Buy now</button>
			</form>
		</div>
	</div>
		
</body>
</html>