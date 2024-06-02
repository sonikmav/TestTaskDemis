<?php
$servername = "localhost:3306";
$username = "root";
$password = "";
$dbname = "contacts";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
  die("Ошибка подключения к базе данных: " . $conn->connect_error);
}

$sql = "SELECT * FROM (SELECT * FROM news ORDER BY Data DESC LIMIT 3) AS sub ORDER BY Data DESC";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
  while ($row = $result->fetch_assoc()) {
    echo "<tr>";
    echo "<td>" . $row["Name"] . "</td>";
    echo "<td>" . substr($row["Text"], 0, strpos($row["Text"], ".")) . "</td>";
    echo "<td>" . $row["Data"] . "</td>";
    echo "</tr>";
  }
} else {
  echo "<tr><td colspan='3'>Нет данных</td></tr>";
}

$conn->close();
?>
