<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <title>Java tickets</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>

<body style="background:transparent url('Los-Angeles.jpg')">
<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
      <div id="navbar" class="navbar-collapse collapse">
        <ul class="nav navbar-nav">
          <li class="active"><a href="javatickets.html">Home</a></li>
          <li><a href="#about">About</a></li>
          <li><a href="#contact">Contact</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
          <li
					class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("login.jsp") ? "active":"") %>"><a
					href="login.jsp">Login</a></li>
           <li
					class="<%= (request.getRequestURI().replace(request.getContextPath() + "/","").equals("register.jsp") ? "active":"") %>"><a
					href="register.jsp">Register</a></li>
            </ul>
          </div>
        </div>
</nav>

<div class="jumbotron">
        <h1 class="text-center">Java Tickets</h1>
        <p class="text-center"> Lalala Itinerary</p>
</div>

      <div class="container" role="main" >
        <form class="form-horizontal" method="get" action="itinerary">
          <div class="col-sm-4 col-sm-offset-2 text-center " style="background-color:white ">
            <label for="from">Αεροδρόμιο αναχώρησης</label>
            <select class="form-control" id="from" >
              <option>Αθήνα</option>
              <option>Θεσσαλονίκη</option>
              <option>Χανιά</option>
            </select>
            <label for="dateFrom">Date from:</label>
            <input type="date" class="form-control" id="dateFrom" name="dateFrom" placeholder="Date from">
          </div>

          <div class=" col-sm-4 text-center" style="background-color:white">
            <label for="from">Αεροδρόμιο προορισμού</label>
            <select class="form-control" id="to">
              <option>Αθήνα</option>
              <option>Θεσσαλονίκη</option>
              <option>Χανιά</option>
            </select>
            <label for="dateTo">Date to:</label>
            <input type="date" class="form-control" id="dateT" name="dateTo" placeholder="Date to">
          </div><br>
        </form><br>
      </div>

<!--  <div class="container">
    <div class="row">
        <div class='col-sm-6'>
            <div class="form-group">
                <div class='input-group date' id='datetimepicker1'>
                    <input type='text' class="form-control" />
                    <span class="input-group-addon">
                    <span class="glyphicon glyphicon-calendar"></span>
                    </span>
                </div>
            </div>
        </div>
        <script type="text/javascript">
            $(function () {
                $('#datetimepicker1').datetimepicker();
            });
        </script>
       </div>
    </div> -->

      <div id="loginModal" class="modal fade" role="dialog">
        <div class="modal-dialog">
          <div class="modal-content">
            <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal">&times;</button>
              <h4>Login</h4>
            </div>
            <div class="modal-body">
              <form class="form-horizontal">
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="exampleInputUsername">Username</label>
                  <div class="col-sm-10">
                    <input type="text" class="form-control" id="exampleInputUsername1" placeholder="Username">
                  </div>
                </div>
                <div class="form-group">
                  <label class="col-sm-2 control-label" for="exampleInputPassword1">Password</label>
                  <div class="col-sm-10">
                    <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-10 col-sm-offset-2">
                    <input type="checkbox" > Remember me
                  </div>
                </div>
                <div class="form-group">
                  <div class="col-sm-10 col-sm-offset-2">
                    <button type="submit" class="btn btn-success ">Sign in</button>
                    <button type="cancel" class="btn btn-danger ">Cancel</button>
                  </div>
                </div>
            </form>
          </div>
        </div>
      </div>
    </div>
    <div id="registerModal" class="modal fade" role="dialog">
      <div class="modal-dialog">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal">&times;</button>
            <h4>Register</h4>
          </div>
        <div class="modal-body">
          <form class="form-horizontal">
            <div class="form-group">
              <label class="col-sm-2 control-label" for="name">Name</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="name" placeholder="Name">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="surname">Surname</label>
              <div class="col-sm-10">
                <input type="text" class="form-control" id="surname" placeholder="Surname">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="email">Email</label>
              <div class="col-sm-10">
                <input type="email" class="form-control" id="email" placeholder="Email">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-2 control-label" for="password">Password</label>
              <div class="col-sm-10">
                <input type="password" class="form-control" id="password" placeholder="Password">
              </div>
            </div>
            <div class="form-group">
              <div class="col-sm-10 col-sm-offset-2">
                <button type="submit" class="btn btn-success ">Submit</button>
                <button type="reset" class="btn btn-danger ">Cancel</button>
              </div>
            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>