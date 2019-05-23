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
        <h3><i class="fa fa-angle-right"></i> Informations des agents de collectes</h3>
        <div class="row mb">
          <!-- page start-->
          <div class="content-panel">
            <div class="adv-table">
              <table cellpadding="0" cellspacing="0" border="0" class="display table table-bordered" id="hidden-table-info">
                <thead>
                  <tr class="ent">
                    <th>Id de l'agent</th>
                    <th>Nom</th>
                    <th>Prénom</th>
                    <th>Age</th>
                    <th>Ville</th>
                  </tr>
                </thead>
                <tbody>
                <?php
                $pdo = Database::connect();
                $sql = 'SELECT * FROM agents ORDER BY id ';
                foreach ($pdo->query($sql) as $row) {
                    echo '<tr class="trbody">';
                    echo'<td>' . $row['id'] . '</td>';
                    echo'<td>' . $row['nom'] . '</td>';
                    echo'<td>' . $row['prenom'] . '</td>';
                    echo'<td>' . $row['age'] . '</td>';
                    echo'<td>' . $row['ville'] . '</td>';
                    echo '</tr>';
                    echo'
	<tr hidden><td class="details" colspan="6">
		<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">
			<tbody>
				<tr>
					<td>Adresse:</td>
					<td>1 27</td>
				</tr>
				<tr>
					<td>Téléphone:</td>
					<td>Could provide a link here</td>
				</tr>
				<tr>
					<td>Email:</td>
					<td>And any further details here (images etc)</td>
				</tr>
			</tbody>
		</table>
	</td></tr>
';
                }
                Database::disconnect(); //on se deconnecte de la base
                ;
                ?>

                </tbody>
              </table>
            </div>
          </div>
          <!-- page end-->
        </div>
        <!-- /row -->
      </section>
      <!-- /wrapper -->
    </section>
    <!-- /MAIN CONTENT -->
    <!--main content end-->
    <!--footer start-->
      <?php include("footer.php"); ?>
    <!--footer end-->
  </section>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script type="text/javascript" language="javascript" src="lib/advanced-datatable/js/jquery.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <script class="include" type="text/javascript" src="lib/jquery.dcjqaccordion.2.7.js"></script>
  <script src="lib/jquery.scrollTo.min.js"></script>
  <script src="lib/jquery.nicescroll.js" type="text/javascript"></script>
  <script type="text/javascript" language="javascript" src="lib/advanced-datatable/js/jquery.dataTables.js"></script>
  <script type="text/javascript" src="lib/advanced-datatable/js/DT_bootstrap.js"></script>
  <!--common script for all pages-->
  <script src="lib/common-scripts.js"></script>
  <!--script for this page-->
  <script type="text/javascript">
    /* Formating function for row details */
    function fnFormatDetails(oTable, nTr) {
      var aData = oTable.fnGetData(nTr);
      var sOut = '<table cellpadding="5" cellspacing="0" border="0" style="padding-left:50px;">';
      sOut += '<tr><td>Rendering engine:</td><td>' + aData[1] + ' ' + aData[4] + '</td></tr>';
      sOut += '<tr><td>Link to source:</td><td>Could provide a link here</td></tr>';
      sOut += '<tr><td>Extra info:</td><td>And any further details here (images etc)</td></tr>';
      sOut += '</table>';

      return sOut;
    }

    $(document).ready(function() {

        function func(e) {
            var val = "tr"+$(e).attr("id");
            var nTr = $(this).parents('tr')[0];
            if (oTable.fnIsOpen(nTr)) {
                /* This row is already open - close it */
                this.src = "lib/advanced-datatable/images/details_open.png";
                $(val).hide();
            } else {
                /* Open this row */
                this.src = "lib/advanced-datatable/images/details_close.png";
                $(val).show();
                //  oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
            }
        }
      /*
       * Insert a 'details' column to the table
       */
      var nCloneTh = document.createElement('th');
      var nCloneTd = document.createElement('td');
      nCloneTd.innerHTML = '<img src="lib/advanced-datatable/images/details_open.png">';
      nCloneTd.className = "center";

      $('#hidden-table-info thead .ent').each(function() {
        this.insertBefore(nCloneTh, this.childNodes[0]);
      });

      $('#hidden-table-info .trbody').each(function() {
        this.insertBefore(nCloneTd.cloneNode(true), this.childNodes[0]);
      });

      /*
       * Initialse DataTables, with no sorting on the 'details' column
       */
      var oTable = $('#hidden-table-info').dataTable({
        "aoColumnDefs": [{
          "bSortable": false,
          "aTargets": [0]
        }],
        "aaSorting": [
          [1, 'asc']
        ]
      });

      /* Add event listener for opening and closing details
       * Note that the indicator for showing which row is open is not controlled by DataTables,
       * rather it is done here
       */


      $('#hidden-table-info tbody td img').live('click', function() {
        var nTr = $(this).parents('tr')[0];
        if (oTable.fnIsOpen(nTr)) {
          /* This row is already open - close it */
          this.src = "lib/advanced-datatable/images/details_open.png";
        //  oTable.fnClose(nTr);
        } else {
          /* Open this row */
          this.src = "lib/advanced-datatable/images/details_close.png";
        //  oTable.fnOpen(nTr, fnFormatDetails(oTable, nTr), 'details');
        }
      });


    });
  </script>
</body>

</html>
