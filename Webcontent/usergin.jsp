<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="cn.techtutorial.connection.DbCon"%>
<%@page import="cn.techtutorial.model.*"%>
<%@page import="cn.techtutorial.dao.ProductDao"%>
<%@page import="java.util.*"%>

<%
	
	ProductDao pd= new ProductDao(DbCon.getConnection());
	String str;

%>
    
<!DOCTYPE html>
<html>
<head>
<title>Product</title>
<%@include file="Includes/head.jsp" %>
<style>
        .card{
       	background-color: #ff0000;
        }
       
</style>
</head>
<body>

<%@include file="Includes/nav2.jsp" %>


		<%String category = "gin"; %>
		<%String chui = request.getParameter("chui"); %>
		
			
		<%if(category.equals("gin")){ %>
					<% List<Product> products = pd.getAllProductsgin();%>
<div class="app__banner">
            <div class="grid wide">
                <div class="row sm-gutter app__banner-content">
                    <div class="col l-8 m-12 c-12">
                        <div class="full-home-banners__main">
                            <div class="full-home-banners__main-inner">
                                <a href="" class="full-home-banners__main-item active">
                                    <img src="https://media.theweekendedition.com.au/wp-content/uploads/2023/01/TWE-Dark-Red-09.png" alt="">
                                </a>
                                <a href="" class="full-home-banners__main-item">
                                    <img src="https://www.lindt-spruengli.com/media/lindt-excellence-pairings-3-red-wine-pairings-01-raspberry.jpg" alt="">
                                </a>
                                <a href="" class="full-home-banners__main-item">
                                    <img src="https://www.thespruceeats.com/thmb/RRt94B04rqexveGo09-4FIfKt54=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/red-wine-in-wine-glass--bunch-of-dark-purple-grapes-615395214-5ac5375030371300375622c8.jpg" alt="">
                                </a>
                                <a href="" class="full-home-banners__main-item">
                                    <img src="https://recipes.net/wp-content/uploads/2021/04/a-bottle-of-red-wine-scaled.jpg" alt="">
                                </a>
                            </div>
                            <div class="full-home-banners__main-controls">
                                <i class="carosel-btn-left fa-solid fa-angle-left"></i>
                                <i class="carosel-btn-right fa-solid fa-angle-right"></i>
                            </div>
                            <div class="full-home-banners__main-indicators">
                                <div class="full-home-bannders__main-dot active"></div>
                                <div class="full-home-bannders__main-dot"></div>
                                <div class="full-home-bannders__main-dot"></div>
                                <div class="full-home-bannders__main-dot"></div>
                            </div>
                        </div>
                    </div>
                    <div class="col l-4 m-12">
                        <div class="row sm-gutter-tablet">
                            <a href="#" class="col l-12 m-6 full-home-banners__right-link">
                                <div class="full-home-banners__right-img"
                                    style="background-image: url('https://m.media-amazon.com/images/I/71-5Ux5AMsL._AC_UF350,350_QL80_.jpg')">
                                </div>
                            </a>
                            <a href="#" class="col l-12 m-6 full-home-banners__right-link">
                                <div class="full-home-banners__right-img"
                                    style="background-image: url('https://e1.pxfuel.com/desktop-wallpaper/386/98/desktop-wallpaper-a-glass-of-merlot-dark-wine.jpg')">
                                </div>
                            </a>
                        </div>
                    </div>
                </div>

            </div>
        </div>
        
        
        
        
        
        
        
        
<div class="app__container">
            <div class="grid wide">
                <div class="row sm-gutter app_content">
                    <!-- Category left bar -->
                    <div class="col l-2 m-0 c-0">
                        <nav class="category">
                            <h3 class="category__heading">Category</h3>

                            <ul class="category-list">
                            
                                <li class="category-item category-item--active">
                                    <a href="userindex.jsp" class="category-item__link">All</a>
                                </li>
                                <li class="category-item">
                                    <a href="usergin.jsp" class="category-item__link">Gin</a>
                                </li>
                                <li class="category-item">
                                    <a href="uservodka.jsp" class="category-item__link">Vodka</a>
                                </li>
                                <li class="category-item">
                                    <a href="userrum.jsp" class="category-item__link">Rum</a>
                                </li>
                                <li class="category-item">
                                    <a href="userchampange.jsp" class="category-item__link">Champange</a>
                                </li>
                            </ul>
                        </nav>
                    </div>

                    <!-- Product -->
                    <div class="col l-10 m-12 c-12">
                        <!-- Filter bar -->
                        <div class="home-filter hide-on-mobile-tablet">
                            <span class="home-filter__label">Sorted by</span>
                            <button class="home-filter__btn btn">Popular</button>
                            <button class="home-filter__btn btn btn--primary">Latest</button>
                            <button class="home-filter__btn btn">Selling</button>

                            <div class="select-input">
                                <span class="select-input__label">Price</span>
                                <i class="select-input__icon fa-solid fa-angle-down"></i>

                                <!-- List options -->
                                <ul class="select-input__list">
                                    <li class="select-input__item">
                                        <a href="" class="select-input__link">
                                            Low -> High
                                        </a>
                                    </li>
                                    <li class="select-input__item">
                                        <a href="" class="select-input__link">
                                            High -> Low
                                        </a>
                                    </li>
                                </ul>
                            </div>

                            <div class="home-filter__page">
                                <span class="home-filter__page-num">
                                    <span class="home-filter__page-current">1</span>/<span
                                        class="home-filter__page-total">14</span>
                                </span>
                                <div class="home-filter__page-control">
                                    <a href="" class="home-filter__page-btn home-filter__page-btn-disabled">
                                        <i class="home-filter__page-icon fa-solid fa-angle-left"></i>
                                    </a>
                                    <a href="" class="home-filter__page-btn">
                                        <i class="home-filter__page-icon fa-solid fa-angle-right"></i>
                                    </a>
                                </div>
                            </div>
                        </div>

                    

                        <!-- Product list -->
                        <div class="home-product">
                            <div class="row sm-gutter">
				<% if (!products.isEmpty()) {
				for (Product p : products) {%>
                                <!-- Product item -->
                                <div class="col l-2-4 m-4 c-6 pj">
                                    <div class="home-product-item">
                                        <div class="home-product-item__img"
                                            style="background-image: url(<%=p.getImage() %>);">
                                        </div>
                                        <h4 class="home-product-item__name">
                                            <%=p.getName() %>
                                        </h4>
                                        <div class="home-product-item__price">
                                            <span class="home-product-item__price-old">$<%=p.getPrice()+10 %></span>
                                           
                                            <span class="home-product-item__price-current">$<%=p.getPrice() %></span>
                                        </div>
                                        <div class="home-product-item__action">
                                            <span class="home-product-item__like home-product-item__like--liked">
                                                <i class="home-product-item__like-icon-empty fa-regular fa-heart"></i>
                                                <i class="home-product-item__like-icon-fill fa-solid fa-heart"></i>
                                            </span>
                                            <div class="home-product-item__rating">
                                                <i class="home-product-item__star--gold fa-solid fa-star"></i>
                                                <i class="home-product-item__star--gold fa-solid fa-star"></i>
                                                <i class="home-product-item__star--gold fa-solid fa-star"></i>
                                                <i class="home-product-item__star--gold fa-solid fa-star"></i>
                                                <i class=" fa-solid fa-star"></i>
                                            </div>
                                            <span class="home-product-item__sold"><%=p.getQuantity()%></span>
                                        </div>
                                        <div class="home-product-item__origin">
                                         
                                            <% if(p.getBrand().equals("CC000001")){%>
                                            <span class="home-product-item__brand">Champange</span>
	    				    				<%} %>
	    				    				
	    				    				<% if(p.getBrand().equals("CC000002")){%>
                                            <span class="home-product-item__brand">Gin</span>
	    				    						
	    				    				
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000003")){%>
                                            <span class="home-product-item__brand">Vodka</span>
	    				    				      
	    				    				<% }%>
	    				    				<% if(p.getBrand().equals("CC000004")){%>
                                            <span class="home-product-item__brand">Rum</span>
	    				    					
	    				    				<%} %>
                                        </div>
  											
  														<div class="card">
																<button type="submit" class="btn btn-danger">Add</button>
														</div>
                                        
                                        <div class="home-product-item__favourite">
                                            <i class="fa-solid fa-check"></i>
                                        </div>
                                        <div class="home-product-item__sale-off">
                                           
                                        </div>
                                    </div>
                                </div>
                <% }
				}
			%>

                              

                            </div>
                        </div>

                        <!-- Pagination -->
                        <ul class="pagination home-product__pagination">
                            <li class="pagination-item">
                                <a href="#" class="pagination-item__link">
                                    <i class="pagination-item__icon fa-solid fa-angle-left"></i>
                                </a>
                            </li>
                            <li class="pagination-item pagination-item--active">
                                <a href="#" class="pagination-item__link">1</a>
                            </li>
                            <li class="pagination-item">
                                <a href="#" class="pagination-item__link">2</a>
                            </li>
                            <li class="pagination-item">
                                <a href="#" class="pagination-item__link">3</a>
                            </li>
                            <li class="pagination-item">
                                <a href="#" class="pagination-item__link">4</a>
                            </li>
                            <li class="pagination-item">
                                <a href="#" class="pagination-item__link">5</a>
                            </li>
                            <li class="pagination-item">
                                <a href="#" class="pagination-item__link">...</a>
                            </li>
                            <li class="pagination-item">
                                <a href="#" class="pagination-item__link">14</a>
                            </li>
                            <li class="pagination-item">
                                <a href="#" class="pagination-item__link">
                                    <i class="pagination-item__icon fa-solid fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>        
        
        						
					
		<%} %>
		
		
	
<%@include file="Includes/Footer.jsp" %>
</body>
</html>