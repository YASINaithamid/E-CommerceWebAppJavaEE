<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.meecommerce.beans.Marchands"%>  
<%@ page import="com.meecommerce.beans.Marchand"%>
<%@ page import="com.meecommerce.beans.Products"%>
<%@ page import="com.meecommerce.beans.commandes"%>
<%@ page import="com.meecommerce.beans.Clients"%>
<%@ page import="com.meecommerce.beans.Client"%>
<% 
Marchands Marchands=new Marchands();
Marchand Marchand =new Marchand(0,"0","0","0","0","0");
Marchand.setId((Marchands.chercherMarchand(String.valueOf(session.getAttribute( "id_m" )))).getId());
Marchand.setNom((Marchands.chercherMarchand(String.valueOf(session.getAttribute( "id_m" )))).getNom());
Marchand.setPrenom((Marchands.chercherMarchand(String.valueOf(session.getAttribute( "id_m" )))).getPrenom());
Marchand.setEmail((Marchands.chercherMarchand(String.valueOf(session.getAttribute( "id_m" )))).getEmail());
Marchand.setAdress((Marchands.chercherMarchand(String.valueOf(session.getAttribute( "id_m" )))).getAdress());
%>
<%@ page import="com.meecommerce.beans.commande"%> 
<%@ page import="com.meecommerce.beans.Product"%> 
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%
commandes commandes=new commandes();
List<commande> tableCommandesM = new ArrayList<commande>();
tableCommandesM=commandes.recuperercommandes_M(String.valueOf(session.getAttribute( "id_m" )),"en livraison"); 
Products Products=new Products();
String j;
Clients Clients=new Clients();
Client Client=new Client(0,"0","0","0","0");
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
    <title>Online Store - Commandes</title>

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

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
                        <a class="collapse-item" href="CommandesConfM.jsp">Commandes Confirmées</a>
                        <a class="collapse-item" href="CommandesLivreM.jsp">Commandes Livrées</a>
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
                                    Paramètres
                                </a>
                                <div class="dropdown-divider"></div>
                                <a class="dropdown-item" href="Index_Out.jsp" data-toggle="modal" data-target="#logoutModal">
                                    <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                                    Déconnexion
                                </a>
                            </div>
                        </li>

                    </ul>

                </nav>
                <!-- End of Topbar -->

                <!-- Begin Page Content -->
                <div class="container-fluid">
                            <div class="card shadow mb-4">
                                <!-- Card Header - Dropdown -->
                                <div class="card-header py-3">
                                    <h6 class="m-0 font-weight-bold text-primary">Commandes Confirmées</h6>
                                </div>
                                <!-- Card Body -->
                                <div class="card-body">
                                    <div class="table-responsive">
                                		<table class="table table-bordered" id="dataTable" style="width: 100%;cellspacing: 0">
                                    		<thead>
                                        		<tr>
                                            		<th>ID Commande</th>
                                            		<th>Client</th>
                                            		<th>Adresse livraison</th>
                                            		<th>Date de Commande</th>
                                            		<th>Date de Livraison</th>
                                            		<th>Id Produit</th>
                                            		<th>Size</th>
		                                            <th>Quantity</th>
		                                            <th>Prix Total</th>
		                                            <th></th>
                                        		</tr>
                                    		</thead>
                                    		<tbody>
                                    		<%for(int i = 0; i < tableCommandesM.size(); i++){
                                    			j=Integer.toString((tableCommandesM.get(i)).getid_c());
                                    			Client.setNom((Clients.chercherClient(j)).getNom());
												Client.setPrenom((Clients.chercherClient(j)).getPrenom());%>
                                        		<tr>
		                                            <td><%= (tableCommandesM.get(i)).getcommande_id() %></td>
		                                            <th><%= Client.getNom() %> <%=Client.getPrenom() %></th>
		                                            <td><%= (tableCommandesM.get(i)).getdistinataire() %></td>
		                                            <td><%= (tableCommandesM.get(i)).getdate_creation() %></td>
		                                            <td><%= (tableCommandesM.get(i)).getdate_livraison() %></td>
		                                            <td><%=(Products.chercherProduct(String.valueOf((tableCommandesM.get(i)).getid_produit()))).getproduit_id() %></td>
		                                            <td><%= (tableCommandesM.get(i)).getsize()%></td>
		                                            <td><%= (tableCommandesM.get(i)).getQuantity()%></td>
		                                            <td><%= ((tableCommandesM.get(i)).getQuantity())*((Products.chercherProduct(String.valueOf((tableCommandesM.get(i)).getid_produit()))).getprix())%></td>
		                                            <td><form action="commandelivre?id_Com=<%= (tableCommandesM.get(i)).getcommande_id() %>&i=1" method="post"><button class="btn btn-success" type="submit">Livrée</button></form> 
		                                            <p></p><form action="commandelivre?id_Com=<%= (tableCommandesM.get(i)).getcommande_id() %>&i=0" method="post"><button class="btn btn-danger" type="submit">Annuler</button></form></td>
		                                        </tr>
		                                    <%}; %>
		                                   	</tbody>
                                		</table>
                            		</div>
                                </div>
                            </div>
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
                    <h5 class="modal-title" id="exampleModalLabel">Prêt à partir?</h5>
                    <button class="close" type="button" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">×</span>
                    </button>
                </div>
                <div class="modal-body">Sélectionnez «Déconnexion» ci-dessous si vous êtes prêt à mettre fin à votre session en cours.</div>
                <div class="modal-footer">
                    <button class="btn btn-secondary" type="button" data-dismiss="modal">Annuler</button>
                    <a class="btn btn-primary" href="Index_Out.jsp">Déconnexion</a>
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