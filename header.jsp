<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<div class="collapse navbar-collapse menu--shylock"
	id="bs-example-navbar-collapse-1">
	<ul class="nav navbar-nav menu__list">
		<li class="active menu__item menu__item--current"><a
			class="menu__link" href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
		<li class="active menu__item menu__item"><a class="menu__link"
			href="products.jsp"> Products </a></li>
		<li class=" menu__item"><a class="menu__link" href="contacts.jsp">Contact</a></li>
                <li class=" menu__item"><a class="menu__link" href="orders.jsp">Orders</a></li>
                
                
                <li class=" menu__item"><a class="menu__link" href="Register.jsp">REGISTER</a></li>
                               
		<%
			if ((String) session.getAttribute("name") != null) {
		%>
		<li class="dropdown menu__item"><a href="#"
			class="dropdown-toggle menu__link" data-toggle="dropdown"
			role="button" aria-haspopup="true" aria-expanded="false"><%=session.getAttribute("name")%>
				<span class="caret"></span></a>
			<ul class="dropdown-menu">
		<li><a href="logout.jsp">&nbsp;&nbsp;&nbsp;Logout</a></li>
						</ul>
					</div>
					<div class="clearfix"></div>
				</div>
			</ul></li>
		<%
			} else {
		%>
		<li class="menu__item"><a class="menu__link"
			href="Customerlogin.jsp"><span
				class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Login</a></li>
		<%
			}
		%>
	   <li class=" menu__item"><a class="menu__link" href="help.jsp">Help&nbsp;<span 
                       class="glyphicon glyphicon-question-sign"></span></a></li>
                       <style>
                           div ul li a{
                               text-decoration: none;
                               list-style: none;
                           }
                       </style>
	</ul>
</div>
