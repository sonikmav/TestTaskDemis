<?php
$servername = "localhost:3306";
$username = "root";
$password = "";
$dbname = "contacts";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Ошибка подключения к базе данных: " . $conn->connect_error);
}

$fullName = $_POST["fullName"];
$address = $_POST["address"];
$phone = $_POST["phone"];
$email = $_POST["email"];
if ($fullName === "" || $address === "" || $phone === "" || $email === "") {
    die("Ошибка: Пожалуйста, заполните все обязательные поля");
  }
  
  $stmt = $conn->prepare("INSERT INTO contacts (fullName, address, phone, email) VALUES (?, ?, ?, ?)");
  $stmt->bind_param("ssss", $fullName, $address, $phone, $email);
  
  if ($stmt->execute()) {
    echo "Данные успешно сохранены";
  } else {
    echo "Ошибка при сохранении данных: " . $conn->error;
  }
  
  $stmt->close();
  $conn->close();
  ?>