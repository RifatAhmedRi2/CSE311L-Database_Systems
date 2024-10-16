<?php
$link = mysqli_connect("localhost", "root", "", "hermes");

if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

$sql = "SELECT * FROM product";


if($result = mysqli_query($link, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table>";
            echo "<tr>";
                echo "<th>Product Name</th>";
                echo "<th>Product ID</th>";
                echo "<th>Product Type</th>";
                echo "<th>Product Weight</th>";
                echo "<th>Total Amount</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['productName'] . "</td>";
                echo "<td>" . $row['productID'] . "</td>";
                echo "<td>" . $row['productType'] . "</td>";
                echo "<td>" . $row['productWeight'] . "</td>";
                echo "<td>" . $row['totalAmount'] . "</td>";
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
