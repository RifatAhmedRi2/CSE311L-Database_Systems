<?php
$link = mysqli_connect("localhost", "root", "", "hermes");

if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$sql = "SELECT * FROM order_tracking";


if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>Order ID</th>";
                echo "<th>Customer ID</th>";
                echo "<th>Product ID</th>";
                echo "<th>Location ID</th>";
                echo "<th>Order Status</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['orderID'] . "</td>";
                echo "<td>" . $row['customerID'] . "</td>";
                echo "<td>" . $row['productID'] . "</td>";
                echo "<td>" . $row['locationID'] . "</td>";
                echo "<td>" . $row['orderStatus'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";

        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

mysqli_close($link);
?>
