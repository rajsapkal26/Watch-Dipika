<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Watches</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Outfit:wght@100;200;300;400;500;600;700;800;900&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <link href="css/style.css" rel="stylesheet">
</head>
<body class="bg-light">
    
    <section class="container my-3">
        <div class="d-flex align-items-center justify-content-between">
            <div>
                <img src="images/illustration/logo.webp" alt="logo">
            </div>
           
                
                    <div class="d-flex justify-content-center align-items-center">
                    	<a href="cart-details.jsp" class="text-decoration-none d-flex align-items-center me-3"><i class="bi bi-cart-fill me-2 fs-5"></i><span class="d-none d-md-block text-dark para3">Cart</span></a>
                      	<a href="index.jsp" class="d-flex align-items-center"><i class="bi bi-person-fill me-2 fs-4"></i><span class="d-none d-md-block text-dark para3">Logout</span></a>
                    </div>
                
            
        </div>
    </section>

    <section>
        <div class="div1 d-none d-md-block">
            <div class="container">
                <div class="d-flex justify-content-between align-items-center">
                    <div class="d-flex">
                        <p class="my-2 me-2 me-sm-3 para5">Products</p>
                        <p class="my-2 para5">About us</p>
                    </div>
                    <div class="d-flex">
                        <p class="my-2 me-2 me-sm-5 para5">Enter search term</p>
                        <p class="my-2 ps-md-5"><i class="bi bi-search"></i></p>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section>
        <div class="wrapper">
            <div class="container">
                <div class="d-flex flex-column justify-content-center align-items-center align-items-md-start gap">
                    <h1 class="text-white col-9 col-lg-8 col-xl-6 first">YOUR BEST-WATCHES ONLINE-SHOP</h1>
                    <p class="d-none d-md-block col-7 col-lg-5 col-xl-4 text-white para1">Nail the surf-and-skavibe with an action-ready watch—like these from Rip Curl and more</p>
                </div>
            </div>
        </div>
    </section>
    
    <%
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/task1","root","root");
			
			Statement stat=conn.createStatement();
			
			ResultSet rs=stat.executeQuery("select * from products");
			
			%>
			
			 <section class="text-center bg-light py-5">
        		<div class="px-sm-4 px-lg-5">
           			 <div>
                		<h2 class="col-8 mx-auto second">OUR WATCHES</h2>
               			 <p class="col-9 col-lg-6 col-xxl-4 mb-4 mx-auto para2">Browse through our watches with over 10,000 available articles on the subject of watches.</p>
            		</div>
					<div class="px-2">
					<div class="d-flex flex-wrap">
			<%
			while(rs.next()) {
				int pid=rs.getInt(1);
				String name=rs.getString(2);
				String img=rs.getString(3);
				int price=rs.getInt(4);
				%> 
				
				
                    <div class="px-2 px-xl-3 col-6 col-md-4 col-xl-3 col-xxl-2">
                        <div class="box">
                            <figure class="bg-white p-2 p-sm-3">
                                	<img src="<%= rs.getString(3)%>" class="img-fluid"/>
                                <figcaption>
                                    <h3 class="my-3 third"><i class="bi bi-currency-rupee"></i><%=rs.getInt(4) %></h3>
                                    <p class="col-11 col-sm-9 col-xxl-10 mx-auto para6"><%=rs.getString(2)%></p>
                                    <form action="CartInsert" method="post">
										<input type="hidden" value="<%= + rs.getInt(1) %>" name="pid">
										<button class="btn btn-dark rounded-0 cart" type="submit">Add to cart</button>
									</form>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
				<%
			}
			%>
			</div>
			</div>
			</div>
			</section>
			<%
		}catch(Exception e){
			e.printStackTrace();
		}
	%>

    <section class="col-md-11 col-xxl-10 mx-auto">
        <div class="bg-white text-center py-5">
            <div>
                <h2 class="col-8 mx-auto second">OUR SERVICES</h2>
                <p class="col-9 col-lg-6 col-xxl-4 mb-5 mx-auto para2">The best from over 10 years of experience with latest watches.</p>
            </div>
            <div class="container px-lg-4">
                <div class="d-sm-flex flex-wrap">
                    <div class="px-2 px-xl-3 col-md-6 col-xl-4">
                        <div class="box">
                            <figure class="bg-white">
                                <img src="images/illustration/service1.jpg" alt="watch" class="img-fluid">
                                <figcaption class="p-2 p-sm-3">
                                    <h2 class="my-3 third"> A higher of Standards</h2>
                                    <p class="col-11 col-xxl-9 mx-auto para3">Plan inspections efficiently and perform them professionally.</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="px-2 px-xl-3 col-md-6 col-xl-4">
                        <div class="box">
                            <figure class="bg-white">
                                <img src="images/illustration/service2.jpg" alt="watch" class="img-fluid">
                                <figcaption  class="p-2 p-sm-3">
                                    <h2 class="my-3 third">Every Time has Its Story	</h2>
                                    <p class="col-11 col-xxl-9 mx-auto para3">Plan inspections efficiently and perform them professionally.</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="px-2 px-xl-3 col-md-6 mx-auto col-xl-4">
                        <div class="box">
                            <figure class="bg-white">
                                <img src="images/illustration/service3.jpg" alt="watch" class="img-fluid">
                                <figcaption  class="p-2 p-sm-3">
                                    <h2 class="my-3 third">A Drive of Amazing</h2>
                                    <p class="col-11 col-xxl-9 mx-auto para3">Plan inspections efficiently and perform them professionally.</p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-light text-center py-5">
        <div class="col-11 mx-auto">
            <div>
                <h2 class="col-11 col-lg-9 col-xl-7 col-xxl-6 mx-auto second">ORDER HOSE ASSEMBLIES WHERE AND WHEN YOU WANT</h2>
                <p class="mb-3 para3">All advantages at a glance</p>
            </div>
            <div>
                <div class="d-flex flex-wrap">
                    <div class="col-sm-6 col-md-4">
                        <img class="my-4" src="images/illustration/award.png" alt="award" width="50px" height="50px">
                        <h3 class="mb-3 four">Highest quality</h3>
                        <p class="col-11 col-xxl-9 mx-auto para3">Watches supplied by BEST WATCHES come from well-known manufacturers.</p>
                    </div>
                    <div class="my-4 col-sm-6 mt-sm-0 col-md-4">
                        <img class="my-4" src="images/illustration/forklift.png" alt="lift" width="50px" height="50px">
                        <h3 class="mb-3 four">High availability</h3>
                        <p class="col-11 col-xxl-10 mx-auto para3">Thanks to our large warehouse capacity, we can supply products reliably and at short notice.</p>
                    </div>
                    <div class="col-sm-6 mx-auto col-md-4">
                        <img class="my-4" src="images/illustration/location-pin.png" alt="box" width="50px" height="50px">
                        <h3 class="mb-3 four">Supplied from Germany</h3>
                        <p class="col-11 col-xxl-9 mx-auto para3">We deliver all BEST WATCHES products to you reliably and on schedule.</p>
                    </div>
                </div>
            </div>
        </div>
    </section>

        <section class="bg-white text-center py-5 mx-xxl-5">
        <div class="col-11 mx-auto">
            <div>
                <h2 class="col-10 mx-auto second">TRENDING PRODUCTS</h2>
                <p class="col-11 col-lg-6 col-xxl-4 mb-5 mx-auto para2">Our most popular products in focus.</p>
            </div> 
            <div class="col-md-10 col-lg-12 col-xl-11 mx-auto">
                <div class="d-flex flex-wrap justify-content-center">
                    <div class="col-sm-6 px-3 col-lg-4 col-xxl-3">
                        <div class="box p-2">
                            <figure>
                                <img src="images/illustration/img13.webp" alt="watch" class="img-fluid border border-black">
                                <figcaption>
                                    <h3 class="my-3 third">Rs.2200.00</h3>
                                    <p class="col-11 col-sm-12 mx-auto para6">Jabra REVO Wireless Bluetooth Stereo Headphones</p>
                                    <p class="text-decoration-none text-white d-flex justify-content-center"><span class="m-0 cart bg-dark">10% Off</span></p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="px-3 col-sm-6 col-lg-4 col-xxl-3">
                        <div class="p-2 my-4 mt-sm-0 m-lg-0 box">
                            <figure>
                                <img src="images/illustration/img14.webp" alt="watch" class="img-fluid border border-black">
                                <figcaption>
                                    <h3 class="my-3 third">Rs.3500.00</h3>
                                    <p class="col-11 mx-auto para6">Jessica Simpson Women's Claudette D'Orsay Pump</p>
                                    <p class="text-decoration-none text-white d-flex justify-content-center" href="#"><span class="m-0 cart bg-dark">5% Off</span></p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                    <div class="px-3 col-sm-6 mx-auto col-lg-4 col-xxl-3 mx-xxl-0">
                        <div class="p-2 box">
                            <figure>
                                <img src="images/illustration/img3.webp" alt="watch" class="img-fluid border border-black">
                                <figcaption>
                                    <h3 class="my-3 third">Rs.5000.00</h3>
                                    <p class="col-11 col-sm-12 col-md-11 mx-auto para6">Ralph Lauren Layette Wallace Crib Shoe (Infant)</p>
                                    <p class="text-decoration-none text-white d-flex justify-content-center" href="#"><span class="m-0 cart bg-dark">15% Off</span></p>
                                </figcaption>
                            </figure>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="bg-light py-5 text-center">
        <div class="col-11 mx-auto col-xxl-10">
            <div>
                <h2 class="col-11 mx-auto col-lg-8 col-xxl-6 second">WELCOME TO THE BEST-WATCHES ONLINE SHOP</h2>
                <p class="col-11 col-lg-6 col-xxl-4 mb-4 mx-auto para2">Your Go-To source for high-quality watches!</p>
            </div> 
            <div class="d-lg-flex">
                <div class="col-lg-5 mt-lg-4">
                    <img src="images/illustration/intro-1.jpg" alt="watch" class="img-fluid">
                </div>
                <div class="px-3 px-lg-4 mt-4 col-lg-7">
                    <p class="text-start m-0 para3">Discover our diverse range of first-class sports, fancy and many other types of watches . Asexperienced experts we provide latest watches in a wide range of numbers. Benefit from our outstandingquality, individualised advice and quick delivery. Our user-friendly online shop makes it easy to find andorder everything you need. Place your trust in BEST-WATCHES as your partner for first-class fluid technologyand optimise your systems with our high-quality products and comprehensive specialist knowledge. Our manyyears of experience are your assurance of precision and reliability. We guarantee quick delivery for minimumdowntimes. Explore the market-leading to latest watches in our online shop. Welcome to BEST-WATCHES – yourpartner for first-class performance in the field of watches!
                    </p>
                </div>
            </div>
        </div>
    </section>

    <footer class="d-lg-none">
        <div class="back py-5 mb-3">
            <div class="container">
                <div class="accordion accordion-flush" id="accordionFlushExample">
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingOne">
                        <button class="accordion-button collapsed five" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseOne" aria-expanded="false" aria-controls="flush-collapseOne">
                            How to reach us
                        </button>
                      </h2>
                      <div id="flush-collapseOne" class="accordion-collapse collapse" aria-labelledby="flush-headingOne" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            <div class="d-flex">
                                <div class="d-flex align-items-center"><i class="bi bi-telephone-fill"></i></div>
                                <div><p class="m-0 ps-3 para4">021 3456 789</p></div>
                            </div>
                            <div class="py-3 d-flex">
                                <div class="d-flex align-items-center"><i class="bi bi-envelope-fill"></i></div>
                                <div class="m-0 ps-3 para4">cust@bestwatches.com</div>
                            </div>
                            <div class="d-flex">
                                <div class="d-flex align-items-center"><i class="bi bi-geo-alt-fill"></i></div>
                                <div><p class="m-0 ps-3 para4">4200 Hamill Avenue, India</p></div>
                            </div>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingTwo">
                        <button class="accordion-button collapsed five" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseTwo" aria-expanded="false" aria-controls="flush-collapseTwo">
                            Service and Help
                        </button>
                      </h2>
                      <div id="flush-collapseTwo" class="accordion-collapse collapse" aria-labelledby="flush-headingTwo" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body">
                            <ul class="p-0 m-0">
                                <li>
                                    <a href="#" class="para4">Company</a>
                                </li>
                                <li>
                                    <a href="#" class="para4">Career</a>
                                </li>
                                <li>
                                    <a href="#" class="para4">Shipping Cost</a>
                                </li>
                                <li>
                                    <a href="#" class="para4">FAQs</a>
                                </li>
                            </ul>
                        </div>
                      </div>
                    </div>
                    <div class="accordion-item">
                      <h2 class="accordion-header" id="flush-headingThree">
                        <button class="accordion-button collapsed five" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseThree" aria-expanded="false" aria-controls="flush-collapseThree">
                            Payments Method
                        </button>
                      </h2>
                      <div id="flush-collapseThree" class="accordion-collapse collapse" aria-labelledby="flush-headingThree" data-bs-parent="#accordionFlushExample">
                        <div class="accordion-body"><span class="text-black cart1 bg-white">Invoice</span></div>
                      </div>
                    </div>
                    <div class="accordion-item">
                        <h2 class="accordion-header" id="flush-headingFour">
                          <button class="accordion-button collapsed five" type="button" data-bs-toggle="collapse" data-bs-target="#flush-collapseFour" aria-expanded="false" aria-controls="flush-collapseFour">
                            Shipping Methods
                          </button>
                        </h2>
                        <div id="flush-collapseFour" class="accordion-collapse collapse" aria-labelledby="flush-headingFour" data-bs-parent="#accordionFlushExample">
                          <div class="accordion-body">
                            <div>
                                <ul class="p-0 m-0 d-flex flex-wrap no-wrap">
                                    <li>
                                        <img src="images/illustration/brand1.png" alt="DHL logo">
                                    </li>
                                    <li class="mx-2">
                                        <img src="images/illustration/brand2.png" alt="GLS logo">
                                    </li>
                                    <li class="me-sm-2">
                                        <img src="images/illustration/brand3.png" alt="NOX logo">
                                    </li>
                                    <li>
                                        <img src="images/illustration/brand4.png" alt="DB logo">
                                    </li>
                                </ul>
                            </div>
                          </div>
                        </div>
                    </div>
                </div>
                <div class="py-5 back1">
                    <h3 class="text-center five">Follow Us</h3>
                    <div class="col-sm-8 mx-auto col-md-7">
                        <div class="d-flex justify-content-around my-3">
                            <div class="curve fs-2"><i class="bi bi-facebook"></i></div>
                            <div class="curve fs-2"><i class="bi bi-linkedin"></i></div>
                            <div class="curve fs-2"><i class="bi bi-twitter"></i></div>
                            <div class="curve fs-2"><i class="bi bi-google"></i></div>
                            <div class="curve fs-2"><i class="bi bi-youtube"></i></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <footer class="d-none d-lg-block">
        <div class="py-5 back">
            <div class="container">
                <div class="d-flex flex-wrap pb-3">
                    <div class="col-3 ps-4">
                        <h3 class="five">How to reach us</h3>
                        <div class="mt-4">
                            <div class="d-flex">
                                <div class="d-flex align-items-center"><i class="bi bi-telephone-fill"></i></div>
                                <div><p class="m-0 ps-3 para4">021 3456 789</p></div>
                            </div>
                            <div class="py-3 d-flex">
                                <div class="d-flex align-items-center"><i class="bi bi-envelope-fill"></i></div>
                                <div class="m-0 ps-3 para4">cust@bestwatches.com</div>
                            </div>
                            <div class="d-flex">
                                <div class="d-flex align-items-center"><i class="bi bi-geo-alt-fill"></i></div>
                                <div><p class="m-0 ps-3 para4">4200 Hamill Avenue, India</p></div>
                            </div>
                        </div>
                    </div>
                    <div class="col-3 ps-5">
                        <h3 class="five">Service and Help</h3>
                        <div  class="mt-4">
                            <ul class="p-0 m-0">
                                <li>
                                    <a href="#" class="para4">Company</a>
                                </li>
                                <li>
                                    <a href="#" class="para4">Career</a>
                                </li>
                                <li>
                                    <a href="#" class="para4">Shipping Cost</a>
                                </li>
                                <li>
                                    <a href="#" class="para4">FAQs</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-3 ps-5">
                        <h3 class="five"> Payments Method</h3>
                        <div class="mt-4">
                            <span class="text-black cart1 bg-white">Invoice</span>
                        </div>
                    </div>
                    <div class="col-3 ps-5">
                        <h3 class="five"> Shipping Methods</h3>
                        <div  class="mt-4">
                            <ul class="p-0 m-0 d-flex flex-wrap no-wrap">
                                <li>
                                    <img src="images/illustration/brand1.png" alt="DHL logo">
                                </li>
                                <li class="mx-2">
                                    <img src="images/illustration/brand2.png" alt="GLS logo">
                                </li>
                                <li class="me-sm-2">
                                    <img src="images/illustration/brand3.png" alt="NOX logo">
                                </li>
                                <li>
                                    <img src="images/illustration/brand4.png" alt="DB logo">
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="py-5 back1">
                    <h3 class="text-center five">Follow Us</h3>
                    <div class="col-lg-5 col-xl-4 mx-auto">
                        <div class="d-flex justify-content-around my-3">
                            <div class="curve fs-2"><i class="bi bi-facebook"></i></div>
                            <div class="curve fs-3"><i class="bi bi-linkedin"></i></div>
                            <div class="curve fs-2"><i class="bi bi-twitter"></i></div>
                            <div class="curve fs-2"><i class="bi bi-google"></i></div>
                            <div class="curve fs-2"><i class="bi bi-youtube"></i></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>



