<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table, th, td {
            border: 1px;
            padding: 1px;
        }
    </style>
</head>
<body>
<!-- XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->


          <div class="ticket">        
            <!-- <img src="2.png" alt="Logo" width="42" height="42" style="vertical-align:middle"> -->
            <p class="centered">
                <img src="2.png" alt="Logo" width="42" height="42" style="vertical-align:middle"> 
                CJ Store
                Mulavana
                <!-- <br>Address line 2 -->
              </p>
            <table >
            <!-- //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX -->
            <?php
                include('connection.php');  
                $sql1="select order_no as num from bill_print limit 1";
                $data1=mysql_query($sql1);
                $id1=0;
                while($row1=mysql_fetch_array($data1))
                {
                    $id1=$row1['num'];
                }
            ?>  
            <thead>
                    <tr>
                        <td class="description">Bill No : <?php echo $id1; ?></td>
                        <td class="Mrp"></td>
                        <td class="price">date : </td>
                        <td class="quantity"><?php echo date("Y/m/d"); ?></td>
                    </tr>

                </thead>
                <!-- <thead>
                    <tr>
                        <th class="description"></th>
                        <th class="quantity"></th>
                        <th class="Mrp">Mrp</th>
                        <th class="price">Rate</th>
                    </tr>
                </thead> -->
                <thead>
                    <tr>
                        <th class="description">Item</th>
                        <th class="quantity">Qty</th>
                        <th class="Mrp">Mrp</th>
                        <th class="price">Rate</th>
                    </tr>
                    
                    <tr>
                        <th class="description">*****</th>
                        <th class="quantity">*****</th>
                        <th class="Mrp">*****</th>
                        <th class="price">*****</th>
                    </tr>
                </thead>
                <?php                                             
                        include('connection.php');   

                        $query = "select item_name,order_item_quantity,order_item_price, order_item_actual_amount from bill_print";
                        $result = mysql_query($query);
                        if (!$result)
                        {
                        $message = 'ERROR:' . mysql_error();
                        return $message;
                        }
                        else
                        {
                        $i = 0;
                        // echo '<table id="customers" border=1 align=center><tr>';
                        // echo '<tr>';
                        // while ($i < mysql_num_fields($result))
                        // {
                        //   $meta = mysql_fetch_field($result, $i);
                        //   echo '<th>' . ucfirst($meta->name) . '</th>';
                        //   $i = $i + 1;
                        // }
                        // echo '<th>Approve</th><th>Delete</th></tr>';
                        $i = 0;
                        while ($row = mysql_fetch_row($result))
                        {
                          echo '<tr align=center>';
                          $count = count($row);
                          $y = 0;
                          $idval='1';
                          while ($y < $count)
                          {
                          $c_row = current($row);
                          if($y==0)
                            $idval=$c_row;
                        //   if($y==1)
                        //     $c_row="****";
                          echo '<td>' . $c_row . '</td>';
                          next($row);
                          $y = $y + 1;
                          }
                          $i = $i + 1;
                        }
                        echo '<tr><td>___________</td><td>_______</td><td>_______</td><td>________</td></tr>';
                        //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                        $sql="select max(order_total_after_tax) as roll from bill_print";
                        $data=mysql_query($sql);
                        $id=0;
                        while($row=mysql_fetch_array($data))
                        {
                            $id=$row['roll'];
                        }
                        //XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
                        echo '<tr>  <td></td><td></td>   <td><b>Total:</b></td>    <td><b>' . $id . '</b></td>    </tr>';
                        echo '</table>';
                        mysql_free_result($result);
                        }
                        mysql_close ($con);

                     ?>
            </table>
            <!-- <p class="centered"> &nbsp&nbsp&nbsp Thanks for your purchase!</p> -->
        </div>
        <br>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <button id="btnPrint" class="hidden-print">Thanks for your purchase!</button>
        <script src="script.js"></script>
        <form name="" method="post" action="">
        &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
        <input type="submit" name="btnsubmit" value="Visit Again" class="btnRegister">
        </form>
        <?php
            if(isset($_POST['btnsubmit']))
            {
                include('connection.php'); 
                    $sql="delete from bill_print";
                    
                    mysql_query($sql,$con);

                    header("location: ../invoice.php?add=1");
            }
        ?>
        

</body>
</html>



<!-- header("location:invoice.php?add=1"); -->