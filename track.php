<?php
$data = json_decode(file_get_contents("php://input"), true);

$filename = "index.html";
if (!file_exists($filename)) {
    file_put_contents($filename, json_encode([]));
}

$logs = json_decode(file_get_contents($filename), true);
$logs[] = $data;

file_put_contents($filename, json_encode($logs, JSON_PRETTY_PRINT));
echo json_encode(["status" => "success"]);
?>
