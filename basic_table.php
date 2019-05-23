<!--head start-->
<?php include("head.php"); ?>
<!--head end-->

<body>
  <section id="container">
    <!-- **********************************************************************************************************************************************************
        TOP BAR CONTENT & NOTIFICATIONS
        *********************************************************************************************************************************************************** -->
      <!--  header start -->
      <?php include("header.php"); ?>
      <!--  header end -->
    <!-- **********************************************************************************************************************************************************
        MAIN SIDEBAR MENU
        *********************************************************************************************************************************************************** -->
      <!--sidebar start-->
      <?php include("nav_vertical.php"); ?>
      <!--sidebar end-->
    <!-- **********************************************************************************************************************************************************
        MAIN CONTENT
        *********************************************************************************************************************************************************** -->
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <h3><i class="fa fa-angle-right"></i> Gestion des utilisateurs</h3>
        <div class="row">
          <!-- /col-md-12 -->
          <div class="col-md-12 mt">
            <div class="content-panel">
              <table class="table table-hover">
                <h4><i class="fa fa-angle-right"></i> Liste des commerçants</h4>
                <hr>
                <thead>
                  <tr>
                    <th>#</th>
                    <th>Prénom</th>
                    <th>Nom</th>
                    <th>Nom id</th>
                      <th><i class="fa fa-bookmark"></i> Profit</th>
                      <th></th>
                  </tr>
                </thead>
                <tbody>


                <?php
                $pdo = Database::connect();
                $sql = 'SELECT * FROM commercants ORDER BY id ';
                foreach ($pdo->query($sql) as $row) {
                    echo '<tr>';
                    echo'<td>' . $row['id'] . '</td>';
                    echo'<td>' . $row['nom'] . '</td>';
                    echo'<td>' . $row['prenom'] . '</td>';
                    echo'<td>@' . $row['nomid'] . '</td>';
                    echo'<td>' . $row['profit'] . ' $</td>';
                    echo' <td>
                          <button class="btn btn-success btn-xs"><i class="fa fa-check"></i></button>
                          <button class="btn btn-primary btn-xs"><i class="fa fa-pencil"></i></button>
                          <button class="btn btn-danger btn-xs"><i class="fa fa-trash-o "></i></button>
                      </td>';
      /*              echo '<td>' . '<a class="btn1 opt1" href="' . $row['ID'] . '">Lire</a></td>';
                    echo '<td>' . '<a class="btn2 opt2" href="' . $row['ID'] . '">Modifier</a></td>';
                    echo' <td>' . '<a class="btn3 opt3" href="' . $row['ID'] . ' ">Supprimer</a></td>';
        */
                    echo '</tr>';
                }
                Database::disconnect(); //on se deconnecte de la base
                ;
                ?>
                </tbody>
              </table>
            </div>
          </div>
          <!-- /col-md-12 -->
        </div>
      </section>
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
      <?php include("footer.php"); ?>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->


  
</body>

</html>
