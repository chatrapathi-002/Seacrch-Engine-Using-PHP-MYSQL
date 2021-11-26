<?php
$name = $_POST['name'];
?>
<html>
<head>
    <title>search engine</title>
    <link rel="shortcut icon" type="image/ico" href="images/favicon.ico" />
    <link rel="stylesheet" type="text/css" href="style.css" />
</head>
<body>
    <div id="header">
        <div id="topbar">
            <div id="searchbar" type="text"><?php
                echo "<input id='searchbartext' name='name' type='text' value='$name'/>"; ?>
                <button  name="submit" id="searchbarbutton"><a href="search.php">
                    <svg focusable="false" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24">
                        <path
                            d="M15.5 14h-.79l-.28-.27A6.471 6.471 0 0 0 16 9.5 6.5 6.5 0 1 0 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z">
                        </path>
                    </svg>
</a>
                </button>
            </div>
        </div>
        <div id="optionsbar">
            <ul id="optionsmenu1">
                <li id="optionsmenuactive">results</li>
            </ul>
        </div>
<div id="searchresultsarea">
    <?php
$conn = mysqli_connect("localhost", "root", "","searchbox");
if($_REQUEST['submit']){
$name = $_POST['name'];
if(empty($name)){
	$make = '<h4>You must type a word to search!</h4>';
}else{
	$make = '<h4>No match found!</h4>';
	$sele = "SELECT * FROM search WHERE title LIKE '%$name%'";
	$result = mysqli_query($conn,$sele);
	
	if($row = mysqli_num_rows($result) > 0){
        
	 while($row = mysqli_fetch_assoc($result)){
        
		            echo"<div class='searchresult'>";
                echo"<h2 style='font-size:24px;'><a style='color:blue; text-decoration:none;' href='".$row['link']; echo" '>".$row['title']; echo "</a></h2>";
                echo"<p>".$row['link']; echo" ▼</p>";
                echo "<p>".$row['description'];"</p>";
                echo "<p>".$row['sub-description']; echo"</p>
            </div>";
            echo"__________________________________________________________________________";
        }
    }else{
    echo'<h2> Search Result</h2>';
    print ($make);
}
mysqli_free_result($result);
mysqli_close($conn);
}
}
?>
</div>
</body>
</html>