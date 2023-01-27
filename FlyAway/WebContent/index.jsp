<!DOCTYPE html>
<html>
<head>
<title>FlyAway</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<style>
@Import Url("Https://Fonts.Googleapis.Com/Css2?Family=Open+Sans&Display=Swap");
Body {
    Font-Family: "Open Sans", Sans-Serif;
    Margin: 0;
    background-color: "green";
}
A {
    Text-Decoration: None;
    Color: #000;
}
A:hover {
    Color: Rgb(179, 179, 179);
}
.Site-Header {
    Border-Bottom: 1px Solid #Ccc;
    Padding: 0.5em 1em;
    Display: Flex;
    Justify-Content: Space-Between;
}
.Site-Identity H1 {
    Font-Size: 1.5em;
    Margin: 0.6em 0;
    Display: Inline-Block;
    background-color: "green";
}
.Site-Navigation Ul,
.Site-Navigation Li {
    Margin: 0;
    Padding: 0;
}
.Site-Navigation Li {
    Display: Inline-Block;
    Margin: 1.4em 1em 1em 1em;
}





body {
  margin: 0;
  font-family: "Lato", sans-serif;
  
}

.sidebar {
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
  position: fixed;
  height: 100%;
  overflow: auto;
}

.sidebar a {
  display: block;
  color: black;
  padding: 16px;
  text-decoration: none;
}
 
.sidebar a.active {
  background-color: #04AA6D;
  color: white;
}

.sidebar a:hover:not(.active) {
  background-color: #555;
  color: white;
}

div.content {
  margin-left: 200px;
  padding: 1px 16px;
  height: 1000px;
}

@media screen and (max-width: 700px) {
  .sidebar {
    width: 100%;
    height: auto;
    position: relative;
  }
  .sidebar a {float: left;}
  div.content {margin-left: 0;}
}

@media screen and (max-width: 400px) {
  .sidebar a {
    text-align: center;
    float: none;
  }
}
</style>
</head>
<body>

<div class="sidebar">
  <a class="active" href="#home">Home</a>
  <a href="#news">News</a>
  <a Href="AdminLogin.jsp">Admin Login</a>
  <a href="#contact">Contact</a>
  <a href="#about">About</a>
</div>

<div class="content">
<Header Class="Site-Header">
            <Div Class="Site-Identity">
                <H1><A Href="index.jsp">FlyAway <i class="fa fa-plane" style="font-size:25px;"></i></A></H1>
            </Div>
            <Nav Class="Site-Navigation">
                <Ul Class="Nav">
                    <Li><A Href="#">Home</A></Li>
                    <Li><A Href="AdminLogin.jsp">Admin Login</A></Li>
                    <Li><A Href="#">About</A></Li>
                    <Li><A Href="#">Blog</A></Li>
                    <Li><A Href="#">Contact</A></Li>
                </Ul>
            </Nav>
        </Header>
  <h2>Welcome to FlyAway</h2>
  <p>This example use media queries to transform the sidebar to a top navigation bar when the screen size is 700px or less.</p>
  <p>We have also added a media query for screens that are 400px or less, which will vertically stack and center the navigation links.</p>
  <h3>Resize the browser window to see the effect.</h3>
</div>

</body>
</html>
