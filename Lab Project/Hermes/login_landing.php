<!DOCTYPE html>

<html>
  <head>
    <meta charset="utf-8">
    <meta name="description" content="Search result page">
    <link rel="stylesheet" type = "text/css" href="style_ll.css">
    <link rel="icon" type="png/gif" href="img/ll_icon.png">

    <title> Order Status </title>
  </head>
  <h1 id = "MainTitle01"> Hermes Delivery Database </h1>
  <hr id="hr01">


  <body class="facny-bg">
    <div style="text-align: center">
    Hello, welcome to the portal! </div>
    <div style="margin-left: 400px">
    <ul id="boxes">
      <a href="tables/location.php"><li>Locations</li></a>
      <a href="tables/order_tracking.php"><li>Orders</li></a>
      <a href="tables/billing.php"><li>Billing</li></a>
      <a href="tables/customer.php"><li>Customer</li></a>
      <a href="tables/product.php"><li>Product</li></a>
      <a href="tables/merchant.php"><li>Merchant</li></a>
    </ul>
    </div>
    <hr>
    <br>
    <style>
      div {background-image: url('img/ll_bg.jpg');}
    </style>
    <div style="margin-top: 150px">
      <form method="post" action="backend_files/search_result.php">
      <label for="orderid_input"> <br> Type your order ID here: </label>
      <input type="text" name="orderid_input">
      <input type="submit" value="Search" style="margin-left: 10px; margin-top: 20px;">
      </form>
    </div>

    <div class="logout" style="margin-top: 130px">
      <form method="post" action="index.php">
        <table style="border: none">
        <tr>
           <th style="border: none"> <input type="submit" value="Log Out" style="margin-left: 155px; margin-top: 20px; margin-bottom: 20px;"> </th>
        </tr>
        </table>
      </form>
    </div>

  <!--
  <div style="margin-top: 50px">
      <form method="post" action="backend_files/orderinput.php">
      <p><strong>Create New Order</strong></p>
        <label> Order Id </label>
        <input type="text" name="orderID" placeholder="123456">
        <br>

        <label> Customer ID </label>
            <select id="customerID" name="customerID">
              <?php
              include_once("/backend_files/db_connection.php");
              session_start();
              $sql = "SELECT DISTINCT customerID FROM `customer` ORDER BY Employee_Id DESC";
              $result = mysqli_query($conn, $sql);
              while($row = mysqli_fetch_row($result)){
                ?>
                <option value="<?php echo $row[0]?>"> <?php echo $row[0]?> </option>
                <?php
              }
              ?>
            </select>
        <br>

        <label> Product ID </label>
            <select id="productID" name="productID">
              <?php
              include_once("backend_files/db_connection.php");
              session_start();
              $sql = "SELECT DISTINCT job_id FROM `jobs`";
              $result = mysqli_query($conn, $sql);
              while($row = mysqli_fetch_row($result)){
                ?>
                <option value="<?php echo $row[0]?>"> <?php echo $row[0]?> </option>
                <?php
              }
              ?>
            </select>
        <br>
        <label> Location ID </label>
        <select id="locationID" name="locationID">
              <?php
              include_once("/backend_files/db_connection.php");
              session_start();
              $sql = "SELECT DISTINCT locationID FROM `location` ORDER BY Employee_Id DESC";
              $result = mysqli_query($conn, $sql);
              while($row = mysqli_fetch_row($result)){
                ?>
                <option value="<?php echo $row[0]?>"> <?php echo $row[0]?> </option>
                <?php
              }
              ?>
            </select>
        <br>
        <input type="submit" value="Submit " style="margin-left: 30%;">
      </form>
    </div>
  -->

    <br>
  </body>


</html>
