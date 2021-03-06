<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.meecommerce.beans.Marchands"%>  
<%@ page import="com.meecommerce.beans.Marchand"%>
<% 
Marchands Marchands=new Marchands();
Marchand Marchand =new Marchand(0,"0","0","0","0","0");
Marchand.setId((Marchands.chercherMarchand(String.valueOf(session.getAttribute( "id_m" )))).getId());
Marchand.setNom((Marchands.chercherMarchand(String.valueOf(session.getAttribute( "id_m" )))).getNom());
Marchand.setPrenom((Marchands.chercherMarchand(String.valueOf(session.getAttribute( "id_m" )))).getPrenom());
Marchand.setEmail((Marchands.chercherMarchand(String.valueOf(session.getAttribute( "id_m" )))).getEmail());
Marchand.setAdress((Marchands.chercherMarchand(String.valueOf(session.getAttribute( "id_m" )))).getAdress());
%>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
	<link rel="icon" href="Images/B.png" type="image/icon type">
    <title>Online Store - Produits</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template-->
    <link href="css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

    <!-- Page Wrapper -->
    <div id="wrapper">

        <!-- Sidebar -->
        <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

            <!-- Sidebar - Brand -->
            <a class="sidebar-brand d-flex align-items-center justify-content-center" href="EspaceMarchand.jsp">
                <div class="sidebar-brand-icon rotate-n-15">
                    <i class="fas fa-shopping-bag"></i>
                </div>
                <div class="sidebar-brand-text mx-3">Online Store </div>
            </a>

            <!-- Divider -->
            <hr class="sidebar-divider my-0">

            <!-- Nav Item - Dashboard -->
            <li class="nav-item active">
                <a class="nav-link" href="EspaceMarchand.jsp">
                    <i class="fas fa-fw fa-tachometer-alt"></i>
                    <span>Tableau de bord</span></a>
            </li>

            <!-- Divider -->
            <hr class="sidebar-divider">

            <!-- Heading -->
            <div class="sidebar-heading">
                Services
            </div>

            <!-- Nav Item - Pages Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo"
                    aria-expanded="true" aria-controls="collapseTwo">
                    <i class="fa fa-cart-arrow-down"></i>
                    <span>Les Commandes</span>
                </a>
                <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="CommandesM.jsp">Nouvelles Commandes</a>
                        <a class="collapse-item" href="CommandesConfM.jsp">Commandes Confirm??es</a>
                        <a class="collapse-item" href="CommandesLivreM.jsp">Commandes Livr??es</a>
                    </div>
                </div>
            </li>

            <!-- Nav Item - Utilities Collapse Menu -->
            <li class="nav-item">
                <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
                    aria-expanded="true" aria-controls="collapseUtilities">
                    <i class="fa fa-cart-plus"></i>
                    <span>Les Produits</span>
                </a>
                <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
                    data-parent="#accordionSidebar">
                    <div class="bg-white py-2 collapse-inner rounded">
                        <a class="collapse-item" href="ProduitsM.jsp">Mes Produits</a>
                        <a class="collapse-item" href="AjouterProduitM.jsp">Ajouter Un Produit</a>
                    </div>
                </div>
            </li>

        </ul>
        <!-- End of Sidebar -->

        <!-- Content Wrapper -->
        <div id="content-wrapper" class="d-flex flex-column">

            <!-- Main Content -->
            <div id="content">

                <!-- Topbar -->
                <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

                    <!-- Sidebar Toggle (Topbar) -->
                    <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
                        <i class="fa fa-bars"></i>
                    </button>

                    <!-- Topbar Search -->
                    

                    <!-- Topbar Navbar -->
                    <ul class="navbar-nav ml-auto">

                        

                        <div class="topbar-divider d-none d-sm-block"></div>

                        <!-- Nav Item - User Information -->
                        <li class="nav-item dropdown no-arrow">
                            <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button"
                                data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                <span class="mr-2 d-none d-lg-inline text-gray-600 small"><%=Marchand.getNom() %> <%=Marchand.getPrenom() %></span>
                                <img class="img-profile rounded-circle"
                                    src="Images/undraw_profile.svg">
                            </a>
                            <!-- Dropdown - User Information -->
                            <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
                                aria-labelledby="userDropdown">
                                <a class="dropdown-item" href="ProfilM.jsp">
                                    <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Profil
                                </a>
                                <a class="dropdown-item" href="EditProfilM.jsp">
                                    <i class="fas fa-cogs fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Param??tres
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Index_Out.jsp" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    D??connexion
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                			<form action="ajouterproduitM" method="post">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                                    <h6 class="m-0 font-weight-bold text-primary">Ajouter Un Produit</h6>
                                    <div class="dropdown no-arrow">
                                        <button class="btn btn-primary" type="submit">Ajouter</button>
                                    </div>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="mb-3 row">
    										<label for="inputname" class="col-sm-2 col-form-label">Nom :</label>
    										<div class="col-sm-10">
      											<input type="text" class="form-control" id="inputname" name="name">
    										</div>
  										</div>
  										<div class="mb-3 row">
    										<label for="inputname" class="col-sm-2 col-form-label">Description :</label>
    										<div class="col-sm-10">
      											<input type="text" class="form-control" id="inputname" name="description">
    										</div>
  										</div>
  										<div class="mb-3 row">
    										<label for="inputname" class="col-sm-2 col-form-label">Prix :</label>
    										<div class="col-sm-10">
      											<input type="text" class="form-control" id="inputname" name="prix">
    										</div>
  										</div>
  										<div class="mb-3 row">
    										<label for="inputname" class="col-sm-2 col-form-label">Image :</label>
    										<div class="col-sm-10">
      											<input class="form-control form-control-sm" id="fichier" type="file" name="fichier">
    										</div>
  										</div>
  										<div class="mb-3 row">
    										<label for="inputname" class="col-sm-2 col-form-label">Sible :</label>
    										<div class="col-sm-10">
												  <select id="inputState" class="form-select" name="sible">
												      <option selected>Choisir...</option>
												      <option value="Kids">Les enfants</option>
												      <option value="Mens">Les hommes</option>
												      <option value="Womans">Les femmes</option>
												    </select>
											</div>
  										</div>
                                </div>
                            </div>
                            </form>
                        </div>
                        <footer class="sticky-footer bg-white">
                <div class="container my-auto">
                    <div class="copyright text-center my-auto">
                        <span>Copyright &copy; 2021</span>
                    </div>
                </div>
            </footer>
            <!-- End of Footer -->

        </div>
        <!-- End of Content Wrapper -->

    </div>
    <!-- End of Page Wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
        <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel"
        aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Pr??t ?? partir?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">??</span>
                    </button>
                </div>
                <div class="modal-body">S??lectionnez ??D??connexion?? ci-dessous si vous ??tes pr??t ?? mettre fin ?? votre session en cours.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Annuler</button>
                    <a class="btn btn-primary" href="Index_Out.jsp">D??connexion</a>
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

    <!-- Page level plugins -->
    <script src="vendor/chart.js/Chart.min.js"></script>

    <!-- Page level custom scripts -->
    <script src="js/demo/chart-area-demo.js"></script>
    <script src="js/demo/chart-pie-demo.js"></script>

</body>

</html>