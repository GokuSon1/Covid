<?php

  $conect = mysqli_connect('localhost', 'root', '', 'coronaproject');
  if ($conect) {
      // echo 'connected';
      $query = "SELECT distinct vaccine   FROM  hosp_register where hosp_name='".$_GET['id']."' ";
      $res = mysqli_query($conect, $query);
      if ($res) {
          while(  $data = mysqli_fetch_assoc($res)){

            echo '<option value="' .$data['vaccine'] . '">' . $data['vaccine']. '</option>';

          }}}

?>