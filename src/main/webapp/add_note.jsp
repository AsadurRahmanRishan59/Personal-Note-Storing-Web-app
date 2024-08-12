<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Note</title>

<%@include file="allJs&Css.jsp"%>
</head>
<body>
	<div class="container">
		<%@include file="navbar.jsp"%>

		<br>
		<h1>Write your notes</h1>
		<br>
		<!-- this is add form -->

		<form action="SaveNoteServlet" method="POST">
			<div class="form-group">
				<label for="title">Note Title</label> 
				<input name="title" required type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="Write your note title">
			</div>
			<br>
			<div class="form-group">
				<label for="content">Note Content</label>
				<textarea name="content" required class="form-control" style="height: 300px" id="content"
					placeholder="Write your note"></textarea>
			</div>

			<div class="container text-center">
				<button type="submit" class="btn btn-primary nav-background">Add</button>
			</div>
		</form>
	</div>

</body>
</html>
