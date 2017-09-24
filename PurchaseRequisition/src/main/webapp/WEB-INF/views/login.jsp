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
                background-color: #FFFFFF;
                /* For WebKit (Safari, Chrome, etc) */
                background: #FFFFFF -webkit-gradient(linear, left top, left bottom, from(#73ADC0), to(#FFFFFF)) no-repeat;
                /* Mozilla,Firefox/Gecko */
                background: #FFFFFF -moz-linear-gradient(top, #73ADC0, #FFFFFF) no-repeat;
                /* IE 5.5 - 7 */
                filter: progid:DXImageTransform.Microsoft.gradient(startColorstr=#73ADC0, endColorstr=#FFFFFF) no-repeat;
                /* IE 8 */
                -ms-filter: "progid:DXImageTransform.Microsoft.gradient(startColorstr=#73ADC0, endColorstr=#73ADC0)" no-repeat;			    
			}
           /* Full-width input fields */
           input[type=text], input[type=password] {
              	width: 100%;
				padding: 12px 20px;
               	margin: 8px 0;
               	display: inline-block;
               	border: 1px solid #ccc;
               	border-color: tomato;
               	border-radius: 5px;
               	box-sizing: border-box;
           }

           /* Set a style for all buttons */
           button {
               background-color: #368BC1;
               color: white;
               padding: 14px 20px;
               margin: 8px 0;
               border: none;
               cursor: pointer;
               width: 40%;
               font-size: 15px;
               font-weight: bold;
               border-radius: 5px;
           }

           /* Add padding to container elements */
           .container {
               width: 350px;
               margin: 0 auto;
               padding: 16px;
               border: 1px cornflowerblue solid;
               border-radius: 10px;
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
                    	<div style="font-size: 20px; text-align: center; color: navy;">
                            <b>Welcome to Dalmia Group</b><br/><br/>
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