<?php
$servername = "localhost:3306";
$username = "root";
$password = "";
$dbname = "contacts";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Ошибка подключения к базе данных: " . $conn->connect_error);
}

$sql = "SELECT * FROM contacts";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row["fullName"] . "</td>";
    echo "<td>" . $row["address"] . "</td>";
    echo "<td>" . $row["phone"] . "</td>";
    echo "<td>" . $row["email"] . "</td>";
    echo "</tr>";
  }
} else {
  echo "<tr><td colspan='4'>Нет данных</td></tr>";
}

$conn->close();
?>
