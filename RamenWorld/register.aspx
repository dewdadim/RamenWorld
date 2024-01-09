<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="RamenWorld.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Register - Ramen World</title>
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
	<style>
		body {
          margin: 0;
          padding: 0;
          height: 100vh;
        }
        #login .container #login-row #login-column #login-box {
          margin-top: 120px;
          max-width: 600px;
          height: 320px;
          border: 1px solid #9C9C9C;
          background-color: #EAEAEA;
        }
        #login .container #login-row #login-column #login-box #login-form {
          padding: 20px;
        }
        #login .container #login-row #login-column #login-box #login-form #register-link {
          margin-top: -85px;
        }
	</style>
</head>
<body>
	<div class="card bg-light" style="height: 100vh;">
	<article class="card-body mx-auto" style="width: 500px;">
		<h2 class="card-title mt-3 text-center">Ramen World</h2>
		<p class="text-center">Create account for the best ramen world!</p>
		<h4 class="card-title mt-5 mb-3 text-center">Register</h4>
		<form id="form1" runat="server">
			<label for="TextBox1" class="form-label">First Name</label>
			<div class="mb-2">
				<asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Enter your first name" aria-label="Enter your first name" aria-describedby="basic-addon1"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter first name" ControlToValidate="TextBox1" CssClass="text-danger"></asp:RequiredFieldValidator>
			</div>
			<label for="TextBox2" class="form-label">Last Name</label>
			<div class=" mb-2">
				<asp:TextBox ID="TextBox2" runat="server" class="form-control" placeholder="Enter your last name" aria-label="Enter your last name" aria-describedby="basic-addon1"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter your last name" ControlToValidate="TextBox2" CssClass="text-danger"></asp:RequiredFieldValidator>
			</div>
			<label for="TextBox3" class="form-label">username</label>
			<div class=" mb-2">
				<asp:TextBox ID="TextBox3" runat="server" class="form-control" placeholder="Enter your username" aria-label="Enter your username" aria-describedby="basic-addon1"></asp:TextBox>
				<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter your username" ControlToValidate="TextBox3" CssClass="text-danger"></asp:RequiredFieldValidator>
			</div>
			<label for="TextBox5" class="form-label">Password</label>
			<div class=" mb-2">
				<asp:TextBox ID="TextBox4" runat="server" class="form-control" placeholder="Enter your password" aria-label="Enter your password" aria-describedby="basic-addon1" TextMode="Password"></asp:TextBox>
				<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please enter more than 5 characters" CssClass="text-danger" ControlToValidate="TextBox4" ValidationExpression=".{5,}"></asp:RegularExpressionValidator>
			</div>
			<label for="TextBox6" class="form-label">Confirm Password</label>
			<div class=" mb-2">
				<asp:TextBox ID="TextBox5" runat="server" class="form-control" placeholder="Confirm your password" aria-label="Confirm your password" aria-describedby="basic-addon1" TextMode="Password"></asp:TextBox>
				<asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password is not same!" ControlToCompare="TextBox4" ValueToCompare="TextBox4" CssClass="text-danger" ControlToValidate="TextBox5"></asp:CompareValidator>
			</div>
			
			<asp:Button ID="Button1" runat="server" Text="Create Account" class="btn btn-primary w-100 mt-4" OnClick="Button1_Click"/>   
			<p class="text-center">Have an account? <a href="login.aspx">Log In</a> </p>                                                                 
		</form>
	</article>
	</div>
</body>
</html>
