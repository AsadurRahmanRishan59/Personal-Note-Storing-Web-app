<%@page import="jakarta.persistence.TypedQuery"%>
<%@page import="com.entities.Note"%>
<%@page import="java.util.List"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>All notes</title>
<%@include file="allJs&Css.jsp"%>

</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<br>
		<h1>All Notes:</h1>

		<div class="row">
			<div class="col-12">
				<%
				Session s = FactoryProvider.getFactory().openSession();

				TypedQuery<Note> query = s.createQuery("from Note", Note.class);

				List<Note> notes = query.getResultList();

				for (Note note : notes) {
				%>
				<div class="card mt-3">
					<img class="card-img-top m-4 mx-auto" src="img/note.png"
						style="max-width: 100px;" alt="Card image cap">
					<div class="card-body px-5">
						<h5 class="card-title"><%=note.getTitle()%></h5>
						<p class="card-text"><%=note.getContent()%></p>
						<p><b class="text-primary"><%= note.getAddedDate().toLocaleString()  %></b></p>
						<div class="container text-center mt-2">
							<a href="DeleteServlet?note_id=<%=note.getId()%>"
								class="btn btn-danger">Delete</a> <a
								href="edit_note.jsp?note_id=<%=note.getId()%>"
								class="btn btn-primary">Update</a>
						</div>
					</div>
				</div>

				<%
				}
				s.close();
				%>
			</div>
		</div>



	</div>
</body>
</html>