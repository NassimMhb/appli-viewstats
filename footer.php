
<!--footer start-->
    <footer class="site-footer">
      <div class="text-center">
        <p>
          &copy; Copyrights <strong>Viewstats</strong>. Tous droits réservés
        </p>
        <div class="credits">
          Plus d'informations sur le développeur <a href="http://nassimmouhoubi.com/" style="color:blue">Nassim Mouhoubi</a>
        </div>
        <a href="index.html#" class="go-top">
          <i class="fa fa-angle-up"></i>
          </a>
      </div>
    </footer>
    <!--footer end-->
<script>
    $(document).ready(function() {
        $( ".sidebar-menu .sub-menu" ).bind( "click", function(event) {
            event.preventDefault();
            var clickedItem = $( this );
            $( ".sidebar-menu .sub-menu" ).each( function() {
                $( this ).removeClass( "active" );
            });
            clickedItem.addClass( "active" );
        });
    });
</script>

