<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<div class="ftco-blocks-cover-1">
        <div class="ftco-cover-1 overlay" style="background-image: url('https://source.unsplash.com/pSyfecRCBQA/1920x780')">
          <div class="container">
            <div class="row align-items-center">
              <div class="col-lg-6">
                <h1>Approve Branch</h1>
                     <?php
                        include('connection.php');

                        $query = "select * from bill_print";
                        $result = mysql_query($query);
                        if (!$result)
                        {
                        $message = 'ERROR:' . mysql_error();
                        return $message;
                        }
                        else
                        {
                        $i = 0;
                        echo '<table id="customers" border=1 align=center><tr>';
                        while ($i < mysql_num_fields($result))
                        {
                          $meta = mysql_fetch_field($result, $i);
                          echo '<th>' . ucfirst($meta->name) . '</th>';
                          $i = $i + 1;
                        }
                        // echo '<th>Approve</th><th>Delete</th></tr>';
                        $i = 0;
                        while ($row = mysql_fetch_row($result))
                        {
                          echo '<tr>';
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
                        //   echo '<td><a href=approveBranch1.php?id='.

                        // $idval.'>Approve</a></td><td><a href=deleteBranch.php?id='.$idval.'>Delete</a></td>';
                        //   echo '</tr>';
                          $i = $i + 1;
                        }
                        echo '</table>';
                        mysql_free_result($result);
                        }
                        mysql_close ($con);

                     ?>  
              </div>
            </div>
          </div>
        </div>
      </div>
</body>
</html>