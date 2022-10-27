<?php
$servername = "localhost";
$username = "root";
$password = "";

try {
  $conn = new PDO("mysql:host=$servername;dbname=shoptk", $username, $password);
  // set the PDO error mode to exception
  $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
  echo "Connected successfully";
} catch(PDOException $e) {
  echo "Connection failed: " . $e->getMessage();
}

//insert
try{
$sql = "INSERT INTO `loai`(`ma_loai`, `ten_loai`) VALUES ('1','máy tính')";
$conn->exec($sql);
echo "thanh cong";
}catch(PDOException $e){
    echo "that bai";
}

try{
$sql1  =  "SELECT * FROM `loai`";
$stml = $conn->prepare($sql1);
$stml -> execute();
$rows = $stml->fetchAll() ;
foreach($rows as $row){
echo $row['ma_loai'];
echo $row['ten_loai'];
}
}catch(PDOException $e){
echo "aaa";
}
unset($conn);
?>