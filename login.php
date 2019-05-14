<?php
require 'database.php';
if ($_SERVER["REQUEST_METHOD"] == "POST" && !empty($_POST)) {
    $loginError = ''; //on initialise nos messages d' erreurs
    $passwordError = '';
    $password = $_POST['password']; //on securise les données
    $login = $_POST['login'];
    $msgError='';
    // on vérifie les input
    $valid = true;
    if (empty($login)) {
        $loginError = '<span style="color:red">Entrez un identifiant</span>';
        $valid = false;
    }
    if (empty($password)) {
        $passwordError = '<span style="color:red">Entrez le mot de passe</span>';
        $valid = false;
    }
    if ($valid) { //si c'est bon, on connecte à la base
        $pdo = Database :: connect();
        $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "SELECT * FROM utilisateurs WHERE username= ? AND password= ? ";
        $q = $pdo->prepare($sql);
        $q->execute(array($login, $password));
        $data = $q->fetch(PDO::FETCH_ASSOC);
        if ($data['password'] == $password && $data['username'] == $login) { // Acces OK ! s'il y a des data et qu'elle correspondent
            session_start(); //on ouvre la session
            $_SESSION['login'] = $data['username']; //on assigne nos valeurs
            $_SESSION['password'] = $data['password'];
            $_SESSION['role'] = $data['role'];
            echo '<p>Bienvenue ' . $data['username'] . ', 
			vous êtes maintenant connecté!</p>
			<p>Cliquez <a href="./index.php">ici</a> 
			pour revenir à la page d accueil</p>';
            header('location:index.php'); //et on renvoie vers l'index
        } else { // Acces refusé on reste sur la page!
            $msgError =
                '<p style="color:red">Une erreur s\'est produite 
	    pendant votre identification.<br /> Le mot de passe ou le pseudo 
            entré n\'est pas correcte.</p><p>Cliquez <a href="./login.php">ici</a></p>';
        }
    }
    Database::disconnect();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="Dashboard">
  <meta name="keyword" content="Dashboard, Bootstrap, Admin, Template, Theme, Responsive, Fluid, Retina">
  <title>Viewstats - Application des statistiques</title>

  <!-- Favicons -->
  <link href="img/favicon.png" rel="icon">
  <link href="img/apple-touch-icon.png" rel="apple-touch-icon">

  <!-- Bootstrap core CSS -->
  <link href="lib/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <!--external css-->
  <link href="lib/font-awesome/css/font-awesome.css" rel="stylesheet" />
  <!-- Custom styles for this template -->
  <link href="css/style.css" rel="stylesheet">
  <link href="css/style-responsive.css" rel="stylesheet">

</head>

<body >
  <!-- **********************************************************************************************************************************************************
      MAIN CONTENT
      *********************************************************************************************************************************************************** -->
  <div id="login-page">
    <div class="container">
      <form class="form-login" method="POST" action="login.php">
        <h2 class="form-login-heading">Se connecter</h2>
        <div class="login-wrap">
            <div class="control-group <?php echo!empty($loginError) ? 'error' : ''; ?>">
          <input type="text" class="form-control" name="login" placeholder="Username ou adresse email" autofocus>
                <?php if (!empty($loginError)) : ?><!-- affiche erreur-->
                <br />
                <span class="help-inline"><?php echo $loginError; ?></span>
                <?php endif; ?>
            </div>
          <br>
            <div class="control-group<?php echo!empty($passwordError) ? 'error' : ''; ?>">
          <input type="password" name="password" class="form-control" placeholder="mot de passe">
            <?php if (!empty($passwordError)) : ?> <!-- affiche erreur-->
            <br />
                <span class="help-inline"><?php echo $passwordError; ?></span>
            <?php endif; ?>
            </div>
            <br />
            <span class="pull-right">
            <a data-toggle="modal" href="login.html#myModal"> Mot de passe oublié ?</a>
            </span>
            <br /><br />
          <button class="btn btn-theme btn-block" type="submit"><i class="fa fa-lock"></i> SE CONNECTER</button>
          <hr>
          <div class="registration">
            <p>Si vous n'avez pas de compte, veuillez contacter l'administrateur</p>
          </div>
        </div>
        <!-- Modal -->
        <div aria-hidden="true" aria-labelledby="myModalLabel" role="dialog" tabindex="-1" id="myModal" class="modal fade">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Mot de passe oublié?</h4>
              </div>
              <div class="modal-body">
                <p>Entrer votre adresse email pour réinitialiser votre mot de passe.</p>
                <input type="text" name="email" placeholder="Email" autocomplete="off" class="form-control placeholder-no-fix">
              </div>
              <div class="modal-footer">
                <button data-dismiss="modal" class="btn btn-default" type="button">Retour</button>
                <button class="btn btn-theme" type="button">Envoyer</button>
              </div>
            </div>
          </div>
        </div>
        <!-- modal -->
      </form>
    </div>
  </div>
  <!-- js placed at the end of the document so the pages load faster -->
  <script src="lib/jquery/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  <!--BACKSTRETCH-->
  <!-- You can use an image of whatever size. This script will stretch to fit in any screen size.-->
  <script type="text/javascript" src="lib/jquery.backstretch.min.js"></script>
 <script>
    $.backstretch("img/login-bg.jpg", {
      speed: 500
    });
  </script>
</body>

</html>
