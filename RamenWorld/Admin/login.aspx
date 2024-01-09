<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="RamenWorld.Admin.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login - Ramen World</title>
	<link rel="icon" type="image/x-icon" href="/img/noodle-bowl.ico">

    <link rel="stylesheet" href="../Content/bootstrap.min.css" />
    <script src="../Scripts/bootstrap.bundle.min.js"></script>
    <link href="../lib/lightbox/css/lightbox.min.css" rel="stylesheet"/>
    <link href="../lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"/>
    <link href="../css/style.css" rel="stylesheet"/>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="../lib/easing/easing.min.js"></script>
    <script src="../lib/waypoints/waypoints.min.js"></script>
    <script src="../lib/lightbox/js/lightbox.min.js"></script>
    <script src="../lib/owlcarousel/owl.carousel.min.js"></script>

    <script src="js/main.js"></script>

	<meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
</head>
<body>
    <div class="card bg-light" style="height: 100vh;">
	<article class="card-body mx-auto" style="width: 500px;">
		<h2 class="card-title mt-3 text-center">Ramen World</h2>
		<p class="text-center">Welcome back admin of ramen world!</p>
		<h4 class="card-title mt-5 mb-3 text-center">Admin Login</h4>
		<form id="form1" runat="server">
			<label for="TextBox1" class="form-label">Username</label>
			<div class="input-group mb-3">
				<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter your username" aria-label="Enter your username" aria-describedby="basic-addon1"></asp:TextBox>
			</div>
			<label for="TextBox2" class="form-label">Password</label>
			<div class="input-group mb-3">
				<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter your password" aria-label="Enter your password" aria-describedby="basic-addon1" TextMode="Password"></asp:TextBox>
			</div>
		
			<asp:Button ID="Button1" runat="server" Text="Login" class="btn btn-primary w-100 mt-4" OnClick="Button1_Click" />                                                        
		</form>
	</article>
	</div>
</body>
</html>