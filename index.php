<?php
$ip = $_SERVER['REMOTE_ADDR'] ?? 'Unknown';
$time = date("Y-m-d H:i:s");
?>
<!DOCTYPE html>
<html>
<head>
    <title>Hello from PHP</title>
</head>
<body>
<h1>Hello, World!</h1>
<p>Your IP Address: <strong><?php echo htmlspecialchars($ip); ?></strong></p>
<p>Server Time: <strong><?php echo $time; ?></strong></p>
</body>
</html>
