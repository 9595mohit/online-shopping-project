<%@page import="project.ConnectionProvider" %>
<%@page import="java.sql.*" %>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	String q1="create table users(name varchar(100),email varchar(100) primary key,mobileNumber bigint,sequrityQuestion varchar(200),answer varchar(200),password varchar(200),adress varchar(200),city varchar(100),state varchar(100),country varchar(100));";
	//st.execute(q1);
	//System.out.println(q1)
	String q2="create table product(id int,name varchar(200),category varchar(200),price int,active varchar(20))";
	//st.execute(q2);
	//System.out.println(q2);
	String q3="create table cart(email varchar(100),product_id int,quantity int,price int,total int,adress varchar(200),city varchar(100),state varchar(100),country varchar(100),mobileNumber bigint,orderDate varchar(100),deliveryDate varchar(100),paymentMethod varchar(100),transactionId varchar(100),status varchar(10))";
	//st.execute(q3);
	//System.out.println(q3);
	String q4="create table message(id int AUTO_INCREMENT primary key,email varchar(100),subject varchar(200),body varchar(500))";
	st.execute(q4);
	System.out.println(q4);
	System.out.println("table crated");
	con.close();
}
catch(Exception e)
{
	System.out.println(e);
}
%>