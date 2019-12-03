<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="RAS_System.Login" %>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>RAS System - Login</title>

  <!-- Custom fonts for this template-->
  <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">

</head>

<body class="bg-dark">

  <div class="container">
    <div class="card card-login mx-auto mt-5">
      <div class="card-header"><h2 class="text-center">Login</h2></div>
      <div class="card-body">
    <form id="form1" runat="server">
          <div class="form-group">
            <div class="form-label-group">
               Username <asp:TextBox ID="txtUserName" runat="server" CssClass="form-control"></asp:TextBox>
              
            </div>
          </div>
          <div class="form-group">
            <div class="form-label-group">
              Password  <asp:TextBox ID="txtPassword" runat="server" CssClass="form-control" TextMode="Password"></asp:TextBox>
              
            </div>
          </div>
          <div class="form-group">         
              <asp:Button ID="bntLogin" runat="server" Text="Login" CssClass="btn btn-primary btn-block" OnClick="bntLogin_Click" />
              </div>
       </form>
      </div>
    </div>
  </div>
 

  <!-- Bootstrap core JavaScript-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  <!-- Core plugin JavaScript-->
  <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

</body>

</html>
