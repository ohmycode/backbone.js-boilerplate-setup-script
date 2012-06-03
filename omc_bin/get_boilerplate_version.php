<?php 
$str = file_get_contents('http://html5boilerplate.com');
$parts = explode('a href="http://github.com/h5bp/html5-boilerplate/zipball/', $str);
$parts2 = explode('"', $parts[1]);

echo $parts2[0];