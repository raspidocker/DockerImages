<html>
<head>
<style type="text/css">body {font-family: arial,helvetica,sans-serif;} ul {margin:0 0 0 40;list-style-type:square; padding:0;font-size: 1.3em;font-weight:bold;}</style>
</head>
<body>
Please select a Folder:
<ul>
<?php 
$array=array("private", "public");
foreach ($array as $dir) {
	echo "<li><a href='$dir'>$dir</a></li>";
}
?>
<li>... and specified Userdirs</li>
</ul>

</body>
</html>