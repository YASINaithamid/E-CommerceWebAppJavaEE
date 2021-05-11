<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="icon" href="Images/B.png" type="image/icon type">
    <title>OnlineStore - S'inscrire</title>

    <!-- Custom fonts for this template-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="styleshe">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body class="bg-gradient-primary">

    <div class="container">

        <div class="card o-hidden border-0 shadow-lg my-5">
            <div class="card-body p-0">
                <!-- Nested Row within Card Body -->
                <div class="row">
                    <div class="col-lg-5 d-none d-lg-block bg-register-image"></div>
                    <div class="col-lg-7">
                        <div class="p-5">
                            <div class="text-center">
                                <h1 class="h4 text-gray-900 mb-4">Créer un compte!</h1>
                            </div>
                            <form action="creer_compte" method="post" class="user">
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="text" class="form-control form-control-user" id="exampleFirstName"
                                            placeholder="Nom" name="Nom">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" id="exampleLastName"
                                            placeholder="Prenom" name="Prenom">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="email" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Email" name="Email">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="text" class="form-control form-control-user" id="exampleInputEmail"
                                        placeholder="Adresse" name="Adress">
                                    </div>
                                </div>
                                <div class="form-group row">
                                    <div class="col-sm-6 mb-3 mb-sm-0">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleInputPassword" placeholder="Mot de passe" name="Password">
                                    </div>
                                    <div class="col-sm-6">
                                        <input type="password" class="form-control form-control-user"
                                            id="exampleRepeatPassword" placeholder="Confirmer Mot de passe">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <select class="form-select form-control-user" aria-label="Default select example" name="Compte" required>
                                    <option selected disabled value="1">Compte</option>
                                    <option value="Client">Client</option>
                                    <option value="Marchand">Marchand</option>
                                    <option value="Livreur">Livreur</option>
                                    </select>
                                </div>
                                <strong><P style="color: red"><% 
                                            String msg=(String) request.getAttribute("message");
                                            if(msg!=null){
                                                out.println(msg);
                                            }
                                            %></P>
                                </strong>
                                <button class="btn btn-primary btn-user btn-block">
                                    Créer un compte
                                </button>
                                <hr>
                                <a href="#" class="btn btn-google btn-user btn-block">
                                    <i class="fab fa-google fa-fw"></i> Connectez-vous avec Google
                                </a>
                                <a href="#" class="btn btn-facebook btn-user btn-block">
                                    <i class="fab fa-facebook-f fa-fw"></i> Connectez-vous avec Facebook
                                </a>
                            </form>
                            <hr>
                            <div class="text-center">
                                <a class="small" href="Login.jsp">Vous avez déjà un compte? Connexion!</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin-2.min.js"></script>

</body>

</html>
