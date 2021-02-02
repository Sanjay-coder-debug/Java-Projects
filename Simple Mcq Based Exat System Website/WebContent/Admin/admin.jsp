<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    
    
 <!doctype html>
<html lang="en">
  <head>
   
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <script src="https://kit.fontawesome.com/1737af4a09.js" crossorigin="anonymous"></script>
   
  </head>


  <body style="background-color: beige;">
    <nav id="navbar-example2" class="navbar navbar-light bg-light">
        <a class="navbar-brand" href="admin.jsp">Student_Support</a>

        <i class="fas fa-user-circle fa-8x" style="text-align: center;"></i>
        <ul class="nav nav-pills">
          <li class="nav-item">
            <a class="nav-link" href="admin.jsp">Home</a>
          </li>
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">MyProfile</a>
            <div class="dropdown-menu">
              <a class="dropdown-item" href="#one">View Profile</a>
              <a class="dropdown-item" href="#two">Edit My Profile</a>
              <div role="separator" class="dropdown-divider"></div>
              <a class="dropdown-item" href="../logout.jsp">Signout</a>
            </div>
          </li>
        </ul>
      </nav>


      <div class="spinner-grow text-primary" role="status">
        <span class="sr-only">Loading...</span>
      </div>
      <div class="spinner-grow text-secondary" role="status">
        <span class="sr-only">Loading...</span>
      </div>
      <div class="spinner-grow text-success" role="status">
        <span class="sr-only">Loading...</span>
      </div>
      <div class="spinner-grow text-danger" role="status">
        <span class="sr-only">Loading...</span>
      </div>
      <div class="spinner-grow text-warning" role="status">
        <span class="sr-only">Loading...</span>
      </div>
      <div class="spinner-grow text-info" role="status">
        <span class="sr-only">Loading...</span>
      </div>
      <div class="spinner-grow text-light" role="status">
        <span class="sr-only">Loading...</span>
      </div>
      <div class="spinner-grow text-dark" role="status">
        <span class="sr-only">Loading...</span>
      </div>
    
  </div>
      </div>
      <div class="alert alert-success" role="alert" style="text-align: center;">
        <h4 class="alert-heading">Well Come To Admin Page</h4>
        <p>Aww yeah, you successfully read this important alert message. This example text is going to run a bit longer so that you can see how spacing within an alert works with this kind of content.</p>
      </div>

  <div class="jumbotron" style="width: 50%;">
    <h1 class="display-4">Hello, Admin!</h1>
    <p class="lead"> a simple jumbotron-style component for calling extra attention to featured content or information.</p>
    <hr class="my-4">
    <a class="btn btn-primary btn-lg" href="Math.jsp" role="button" target="">CREATE MATH QUESTION</a><br><br>
    <a class="btn btn-secondary btn-lg" href="ViewQuestion.jsp" role="button">VIEW QUESTION</a><br><br>
    <a class="btn btn-primary btn-lg" href="Computer.jsp" role="button" target="">CREATE COMPUTER QUESTION</a><br><br>
    <a class="btn btn-secondary btn-lg" href="ViewComputer.jsp" role="button">VIEW QUESTION</a><br><br>
    <a class="btn btn-primary btn-lg" href="Gk.jsp" role="button" target="">CREATE GK QUESTION</a><br><br>
    <a class="btn btn-secondary btn-lg" href="ViewGk.jsp" role="button">VIEW QUESTION</a><br><br>
      
  </div>
  
  <div class="p-3 mb-2 bg-secondary text-white" style="text-align: center;">Copyrights By @Student_Support</div>
  </body>
</html>