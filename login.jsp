<!DOCTYPE html>
<%
 String s_alert = request.getParameter("alert"); if(s_alert==null) s_alert="X";
%>
<html>
<head>
  <meta charset="utf-8">
  <link rel="icon"  href="../plugins/images/favicon.ico" type="image/x-icon"/>
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>..::Login::..</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.7 -->
  <link rel="stylesheet" href="../plugins/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="../plugins/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="../plugins/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../plugins/css/AdminLTE.min2.css">
  <!-- Google Font -->
  <link rel="stylesheet" href="../plugins/fonts/css.css">
</head>
<body class="hold-transition login-page">
<div class="login-box">
  <div class="login-logo">
    <a href="../index.jsp"><b>ADMIN</b>ISTRADOR</a>
  </div>
  <!-- /.login-logo -->
  <div class="login-box-body">
    <form action="index.jsp" method="POST" name="datos1" onSubmit="return validar()">
      <div class="form-group has-feedback">
        <input type="text" class="form-control" placeholder="Login" name="f_login" required>
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input type="password" class="form-control" placeholder="Password" name="f_passwd" required>
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="row">
        <div class="col-xs-12">
          <button type="submit" class="btn btn-primary btn-block btn-flat">INGRESAR</button>
        </div>
        <!-- /.col -->
      </div>
    </form>
  </div>
  <br>
  <!-- /.login-box-body -->
  <% 
    if (s_alert.equals("X")) 
    {
      out.print("");
    } 
  
    if (s_alert.equals("1"))
     { %>
      <div class='alert alert-danger alert-dismissable'>
        <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
              <h4>  <i class='icon fa fa-check-circle'></i> Alerta!</h4>
              A ingresado erronemente el Usuario o Password.<br>Ingrese nuevamente los datos
            </div>
     <% }

    if (s_alert.equals("2")) 
    { %>
      <div class='alert alert-danger alert-dismissable'>
              <button type='button' class='close' data-dismiss='alert' aria-hidden='true'>&times;</button>
              <h4>  <i class='icon fa fa-check-circle'></i> Alerta!</h4>
             Acceso denegado a este Modulo.
            </div>
    <% }
    %>
</div>
<!-- /.login-box -->
</body>
</html>

