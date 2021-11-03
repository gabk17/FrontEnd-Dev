<%
String msg = request.getParameter("msg") != null ? "Failed to login" : "";
%>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Sign In</title>

  <link
			rel="stylesheet"
			href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>

  <style>
        @font-face{
            font-family:'ArnoPro';
            src: url(ArnoPro-Regular.otf);
            font-style:normal;
            font-weight:normal;
        }

        .topTitle{
            font-family: ArnoPro;
            font-weight: normal;
        }

        .glass-button{
            display: inline-block;
            padding: 24px 32px;
            border: 0;
            text-decoration: none;
            border-radius: 15px;
            background-color: rgba(255,255,255,0.1);
            border: 1px solid rgba(255,255,255,0.1);
            backdrop-filter: blur(30px);
            color: #fff;
            font-size: 26px;
            letter-spacing: 2px;
            cursor: pointer;
            text-transform: uppercase;
        }

        .glass-button:hover {
            background-color: rgba(255,255,255,0.3);
        }

        .glass-panel {
            background-color: rgba(255,255,255,0.2);
            border: 1px solid rgba(255,255,255,0.1);
            border-radius: 15px;
        }

        .glass-panels{    
            position: absolute;
            top: 21px;
            left: 1230px;
            color: #fff;
            background-color: rgba(255,255,255,0.06);
            border: 1px solid rgba(255,255,255,0.5);
            width: 580px;
            height:910px;
            border-radius: 15px;
            padding: 32px;
            backdrop-filter: blur(10px);
            z-index: -1;
        }

        body {
	overflow: hidden;
}

section {
	position: absolute;
    z-index: -1;
	width: 100%;
	height: 180vh;
	display: flex;
	justify-content: center;
	align-items: center;
	background-image: url('SignBack.jpg');
     background-position: 0px -100px; 
}

section::before {
	content: "";
	position: absolute;
	width: 100%;
	height: 50%;
	bottom: 0;
	z-index: 10;
	border-top: 1px solid rgba(255, 255, 255, 0.5);
	background: rgba(255, 255, 255, 0.1);
	backdrop-filter: blur(10px);
}

section .color {
	position: absolute;
	filter: blur(150px);
}

section .color:nth-child(1) {
	top: -350px;
	background: #5390d9;
	width: 600px;
	height: 600px;
}

ul {
	position: relative;
	display: flex;
}

ul li {
	position: relative;
	list-style: none;
	margin: 10px;
}

ul li a {
	position: relative;
	top: 0;
	width: 80px;
	height: 80px;
	display: flex;
	justify-content: center;
	align-items: center;
	color: #fff;
	font-size: 2em;
	border: 1px solid rgba(255, 255, 255, 0.4);
	border-right: 1px solid rgba(255, 255, 255, 0.2);
	border-bottom: 1px solid rgba(255, 255, 255, 0.2);
	border-radius: 10px;
	background: rgba(255, 255, 255, 0.1);
	backdrop-filter: blur(4px);
	z-index: 1;
	box-shadow: 0 5px 45px rgba(0, 0, 0, 0.1);
	text-decoration: none;
	overflow: hidden;
	transition: top 0.5s, z-index 0s, transform 0.5s;
	transition-delay: 0.5s, 0.5s, 0s;
}

ul li a:hover {
	transition-delay: 0s, 0.5s, 0.5s;
	top: -50px;
	transform: translateY(50px);
	z-index: 11;
}
ul li a:before {
	content: "";
	position: absolute;
	top: 0;
	left: 0;
	width: 50px;
	height: 100%;
	background: rgba(255, 255, 255, 0.5);
	transform: skewX(45deg) translateX(150px);
	transition: 0.5s;
}

ul li a:hover:before {
	transform: skewX(45deg) translateX(-150px);
}

    </style>

    <link rel="stylesheet" href="ButtonStyle.css"/>
    <link rel="stylesheet" href="Navbar.css"/>

</head>

<body style="background-image: url('SignBack.jpg');">
  
    <form id="form1" action="JDBCSignIn.jsp" method="POST">
        
        <div class=".container">
			<section>
				<div class="color"></div>
				<div class="color"></div>
				<div class="color"></div>
				<ul>
					<li>
						<a href="#"
							><i class="fa fa-facebook-official" aria-hidden="true"></i
						></a>
					</li>
					<li>
						<a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
					</li>
					<li>
						<a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
					</li>
				</ul>
			</section>
		</div>

        <div class="glass-panels">

        </div>
                
        <div style="width: 940px; float:left; height:220px; background: white; margin: 20px 0 0 130px; display: flex; justify-content: center; border: 10px solid white; border-radius:10px; z-index: 11">
            <img src="LogoSign.png" style="width: 550px; height: 500px; margin-top: -140px;z-index: 10; " alt=""/>
            </div>
        </div>

        <div style="width: 900px; height: 160px; position: absolute; top: 300px; left: 160px; ">
            <label style="color: white; font-size: 30px; text-align: justify; font-weight: bold;">
            Located on Oahu's North Shore, the family-friendly Turtle Bay Resort has everything to keep you busy when you're not lounging on the beach.
            </label>
        </div>

        <div style="width: 580px; float:left; height:910px; margin:14px 5px 5px 160px; border:3.4px solid #9CD4FF; " class="glass-panel">
        
            <div style ="position:absolute; width: 150px; top: 69px; left: 1490px;"> 
                <input ID="txt_Username" name="uname"style="position:absolute; top: 226px; left: -127px; height: 33px; width: 317px;" placeholder="Enter your username here" required/>  
                <input ID="txt_Pass" name="password" style="position:absolute; top: 338px; left: -127px; margin-top: 11px; margin-bottom: 1px; height: 33px; width: 317px;" placeholder="Enter your password here" type="Password" required/>

                <label ID="LabelRes" Text="" style="position:absolute; top: 570px; left: 180px; width: 100px; color: red"><%=msg%></label>

                <label class="topTitle" style="font-size:60px; color:white; position:absolute; top: 50px; left: -110px; width: 300px;">Log In Here</label>
            
                <div style ="position:absolute; top: 120px; left: -80px; width: 189px; margin-top: 0px; background:#9CD4FF; height: 2px;">
                </div>

                <div style ="position:absolute; top: 190px; left: -127px; width: 100px;">
                    <label class="topTitle" style="font-size:17px; color:#fff; font-weight:bold;">User Name :</label>
                </div>

                <div style ="position:absolute; top: 315px; left: -127px; width: 84px;">
                    <label class="topTitle" style="font-size:17px; color:#fff; font-weight:bold;">Password :</label>
                </div>

                <div style ="position:absolute; top: 420px; left: -127px; width: 84px;">
                    <label class="topTitle" style="font-size:17px; color:#fff; font-weight:bold;">Type :</label>
                </div>

                <select ID="DropDownList1"
                    style="position: absolute; top: 457px; left: -127px; width: 315px; height: 35px;" name="priority"> 
                    <option value="Regular User">Regular User</option>
                    <option value="Admin">Admin</option>
                </select>

                <div style="position:absolute; top: 557px; left: -54px; height: 100px; width: 200px;">
                    <button ID="Button1" type="submit" class="glass-button">Sign In</button>
                </div>

                <div style="position: absolute; top: 687px; left: -80px; width: 386px;">
                    <label style="color: white; margin-left: 30px;">Not a Member yet ? <br/>
                    <label style="color: black; text-decoration: underline;">Ask an Admin to Register You</label></label>
                </div>
            </div>
          

            </div>
           
    </form>
</body>
</html>