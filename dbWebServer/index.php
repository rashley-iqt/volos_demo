<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Stand in for a web app</title>
  <style>
    table {
      border-collapse: collapse;
      font-size: 20px;
    }
    th {
      background-color: #72bbf7;
      color: white;
      border: 1px solid black;
    }
    table, td {
      border: 1px solid black;
    }
  </style>
</head>

<body>
  <h1>If this was your corporate intranet you'd be home by now</h1>
  <p>Here is some proprietary data.</p>
  <pre>
    <?php 
        $servername = "192.168.100.36";
        $username = "goat";
        $password = "GoatStuff#123";
        $port = 3306;
        $db_name = "real_db";

        // Create connection
        $conn = new mysqli($servername, $username, $password, $db_name);

        // Check connection
        if ($conn->connect_error) {
          die("Connection failed: " . $conn->connect_error);
        }
        
        $sql = "SELECT id, these, are, columns FROM real_table";
        $result = $conn->query($sql);

        if ($result->num_rows > 0) {
          //create headers
          echo "<table><tr><th>ID</th><th>These</th><th>Are</th><th>Columns</th></tr>";
          // output data of each row
          while($row = $result->fetch_assoc()) {
            echo "<tr><td>" . $row["id"]. "</td><td>" . $row["these"]. "</td><td>" . $row["are"]. "</td><td>" . $row["columns"]. "</td></tr>";
          }
          echo"</table>";
        } else {
          echo "0 results";
        }
    ?>
  </pre>
</body>
</html>
