<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Login Page</title>
		<style>
			#grad1 {
			    height: 300px;
               /* For WebKit (Safari, Chrome, etc) */
              background-color: #d5d8df;
               
               		    
			}
           /* Full-width input fields */
           input[type=text], input[type=password] {
              	width: 100%;
				padding: 12px 20px;
               	margin: 20px 0;
               	display: inline-block;
               	border: 1px solid #0054a6;
               	background-color:#fff;
               
               	border-radius: 5px;
               	box-sizing: border-box;
           }

           /* Set a style for all buttons */
           button {
               background-color:#0054a6;
               color: white;
               padding: 14px 20px;
               margin: 8px 0;
               border: none;
               cursor: pointer;
               width: 40%;
               font-size: 15px;
               font-weight: bold;
               border-radius: 5px;
               float:right;
           }

           /* Add padding to container elements */
           .container {
               width: 350px;
               margin: 0 auto;
               padding: 16px;
               border: 1px #384148 solid;
               border-radius: 0px 0px 8px 8px;
               background-color:#fff;
               box-shadow: 0px 4px 5px 0px #333;
               color:#333;
               
            
           }

           /* Clear floats */
           .clearfix::after {
               content: "";
               clear: both;
               display: table;
           }

           /* Change styles for cancel button and signup button on extra small screens */
           @media screen and (max-width: 300px) {
               .cancelbtn, .signupbtn {
                  width: 50%;
               }
           }
           
           /* Centering the content */
           .outer {
               display: table;
               position: absolute;
               height: 95%;
               width: 95%;
           }
           .middle {
               display: table-cell;
               vertical-align: middle;
           }
           .inner {
               margin-left: auto;
               margin-right: auto;     
           }
           
       </style>
	</head>
	<body id="grad1" style="font-family: Arial, Helvetica, sans-serif;">
		<form action="./login" method="post">
            <div class="outer">
                <div class="middle">
                    <div class="inner">
                    	<div style="font-size: 24px;text-align: center;color: #fff;margin: auto;width: 350px;background-color:#0054a6;padding: 8px 16px;border-radius: 8px 8px 0px 0px;height: 30px;">
                            Welcome to Dalmia Group
                        </div>
                        <div class="container">
                            <label><b>User ID</b></label>
                            <input type="text" placeholder="Enter User Id" name="userid" id="userid" required>
                            <label><b>Password</b></label>
                            <input type="password" placeholder="Enter Password" name="password" id="password" required>
                            <div class="clearfix" style="text-align: center">
                                <button type="submit" >Login</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>