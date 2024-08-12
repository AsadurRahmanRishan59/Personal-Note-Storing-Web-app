<%@page import="com.entities.Note"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit</title>
<%@include file="allJs&Css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>
		<h1>Edit your note</h1>
		<br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		Note note = s.get(Note.class, noteId);
		%>
		<form action="UpdateServlet" method="POST">
		
		<input value="<%=note.getId() %>" name="noteId" type="hidden">
		
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input name="title" required
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" 
					placeholder="Write your note title"
					value="<%= note.getTitle() %>"
					>
			</div>
			<br>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required class="form-control"
					style="height: 300px" id="content" placeholder="Write your note"><%=note.getContent() %></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-success">Update</button>
			</div>
		</form>

	</div>
</body>
</html>