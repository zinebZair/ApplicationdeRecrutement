<!doctype html>
<html lang="en">
<?php 
include '../constants/settings.php'; 
include 'constants/check-login.php';

if ($user_online == "true") {
if ($myrole == "employer") {
}else{
header("location:../");		
}
}else{
header("location:../");	
}
?>
<head>

	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<title>OuZi - Profil de l'entreprise</title>
	<meta name="description" content="Online Job Management / Job Portal" />
	<meta name="keywords" content="job, work, resume, applicants, application, employee, employer, hire, hiring, human resource management, hr, online job management, company, worker, career, recruiting, recruitment" />
	<meta name="author" content="BwireSoft">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<meta property="og:image" content="http://<?php echo "$actual_link"; ?>/images/banner.jpg" />
    <meta property="og:image:secure_url" content="https://<?php echo "$actual_link"; ?>/images/banner.jpg" />
    <meta property="og:image:type" content="image/jpeg" />
    <meta property="og:image:width" content="500" />
    <meta property="og:image:height" content="300" />
    <meta property="og:image:alt" content="Bwire Jobs" />
    <meta property="og:description" content="Online Job Management / Job Portal" />

	<link rel="shortcut icon" href="../images/ico/favicon.png">

	<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css" media="screen">	
	<link href="../css/animate.css" rel="stylesheet">
	<link href="../css/main.css" rel="stylesheet">
	<link href="../css/component.css" rel="stylesheet">
	
	<link rel="stylesheet" href="../icons/linearicons/style.css">
	<link rel="stylesheet" href="../icons/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="../icons/simple-line-icons/css/simple-line-icons.css">
	<link rel="stylesheet" href="../icons/ionicons/css/ionicons.css">
	<link rel="stylesheet" href="../icons/pe-icon-7-stroke/css/pe-icon-7-stroke.css">
	<link rel="stylesheet" href="../icons/rivolicons/style.css">
	<link rel="stylesheet" href="../icons/flaticon-line-icon-set/flaticon-line-icon-set.css">
	<link rel="stylesheet" href="../icons/flaticon-streamline-outline/flaticon-streamline-outline.css">
	<link rel="stylesheet" href="../icons/flaticon-thick-icons/flaticon-thick.css">
	<link rel="stylesheet" href="../icons/flaticon-ventures/flaticon-ventures.css">

	<link href="../css/style.css" rel="stylesheet">
	
</head>


<body class="not-transparent-header">

	<div class="container-wrapper">

	<?php include('../header.php');?>	

		<div class="main-wrapper">
		
			<div class="breadcrumb-wrapper">
			
				<div class="container">
				
					<ol class="breadcrumb-list booking-step">
						<li><a href="../">OuZi</a></li>
						<li><span>Profil</span></li>
					</ol>
					
				</div>
				
			</div>

			
			<div class="admin-container-wrapper">

				<div class="container">
				
					<div class="GridLex-gap-15-wrappper">
					
						<div class="GridLex-grid-noGutter-equalHeight">
						
							<div class="GridLex-col-3_sm-4_xs-12">
							
								<div class="admin-sidebar">
										
										
									<div class="admin-user-item for-employer">
										
										<div class="image">
										<?php 
										if ($logo == null) {
										print '<center>Company Logo Here</center>';
										}else{
										echo '<center><img alt="image" title="'.$compname.'" width="180" height="100" src="data:image/jpeg;base64,'.base64_encode($logo).'"/></center>';	
										}
										?><br>
										</div>
										
										<h4><?php echo "$compname"; ?></h4>
										
									</div>
									
									<div class="admin-user-action text-center">
									
										<a href="post-job.php" class="btn btn-primary btn-sm btn-inverse">Publier une offre</a>
										
									</div>
									
									<ul class="admin-user-menu clearfix">
										<li  class="active">
											<a href="./"><i class="fa fa-user"></i> Profil</a>
										</li>
										<li class="">
										<a href="change-password.php"><i class="fa fa-key"></i> Changer mot de passe </a>
										</li>
			
										<li>
											<a href="../company.php?ref=<?php echo "$myid"; ?>"><i class="fa fa-briefcase"></i>Présentation de l'entreprise</a>
										</li>
										<li>
											<a href="my-jobs.php"><i class="fa fa-bookmark"></i>Emplois publiés</a>
										</li>
										<li>
											<a href="../logout.php"><i class="fa fa-sign-out"></i> Se Deconnecter</a>
										</li>
									</ul>
									
								</div>

							</div>
							
							<div class="GridLex-col-9_sm-8_xs-12">
							
								<div class="admin-content-wrapper">

									<div class="admin-section-title">
									
										<h2>Profil</h2>
										<p>Votre dernière connexion: <span class="text-primary"><?php echo "$mylogin"; ?></span></p>
										
									</div>
									
									<form class="post-form-wrapper" action="app/update-profile.php" method="POST" autocomplete="off">
								
											<div class="row gap-20">
												<?php include 'constants/check_reply.php'; ?>
												<div class="clear"></div>
												
												<div class="col-sm-12 col-md-8">
												
													<div class="form-group">
														<label>Nom de l'entreprise</label>
														<input name="company" placeholder="Enter company name" type="text" class="form-control" value="<?php echo "$compname"; ?>" required>
													</div>
													
												</div>
												<div class="clear"></div>
												
												<div class="col-sm-6 col-md-4">
												
													<div class="form-group">
														<label>Établi en</label>
                                                    <input name="year" placeholder="Enter year eg: 2016, 2017, 2018" type="text" class="form-control" value="<?php echo "$esta"; ?>" required>
													</div>
													
												</div>
												
												<div class="col-sm-6 col-md-4">
												
													<div class="form-group">
														<label>Type</label>
                                                    <input class="form-control" placeholder="Eg: Booking, Travel" name="type" required type="text" value="<?php echo "$mytitle"; ?>" required> 
													</div>
													
												</div>
												
												<div class="clear"></div>

												<div class="form-group">
													
													<div class="col-sm-6 col-md-4">
														<label>Personnes</label>
														<select name="people" required class="selectpicker show-tick form-control mb-15" data-live-search="false">
															<option <?php if ($mypeople == "1-10") { print ' selected '; } ?> value="1-10">1-10</option>
															<option <?php if ($mypeople == "11-100") { print ' selected '; } ?> value="11-100">11-100</option>
															<option <?php if ($mypeople == "200+") { print ' selected '; } ?> value="200+" >200+</option>
															<option <?php if ($mypeople == "300+") { print ' selected '; } ?> value="300+">300+</option>
															<option <?php if ($mypeople == "1000+") { print ' selected '; } ?>value="1000+">1000+ </option>
														</select>
													</div>

													<div class="col-sm-6 col-md-4">
														<label>Site Internet</label>
														<input type="text" class="form-control" value="<?php echo "$myweb"; ?>" name="web" placeholder="Enter your website">
													</div>
														
												</div>
												
												<div class="clear"></div>
												
												<div class="col-sm-6 col-md-4">
												
													<div class="form-group">
														<label>Ville</label>
														<input name="city" required type="text" class="form-control" value="<?php echo "$city"; ?>" placeholder="Enter your city">
													</div>
													
												</div>
												
												<div class="col-sm-6 col-md-4">
												
													<div class="form-group">
														<label>Rue</label>
														<input name="street" required type="text" class="form-control" value="<?php echo "$street"; ?>" placeholder="Enter your street">
													</div>
													
												</div>
												
												<div class="clear"></div>
												
												<div class="col-sm-6 col-md-4">
												
													<div class="form-group">
														<label>Code postal</label>
														<input name="zip" required type="text" class="form-control" value="<?php echo "$zip"; ?>" placeholder="Enter your zip">
													</div>
													
												</div>
												
												<div class="col-sm-6 col-md-4">
												
													<div class="form-group">
														<label>Pays</label>
														<select name="country" required class="selectpicker show-tick form-control" data-live-search="true">
															<option disabled value="">Selectionner</option>
						                                   <?php
														   require '../constants/db_config.php';
														   try {
                                                           $conn = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
                                                           $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	
                                                           $stmt = $conn->prepare("SELECT * FROM tbl_countries ORDER BY country_name");
                                                           $stmt->execute();
                                                           $result = $stmt->fetchAll();
  
                                                           foreach($result as $row)
                                                           {
		                                                    ?> <option <?php if ($country == $row['country_name']) { print ' selected '; } ?> value="<?php echo $row['country_name']; ?>"><?php echo $row['country_name']; ?></option> <?php
	 
	                                                        }

					  
	                                                       }catch(PDOException $e)
                                                           {

                                                           }
	
														   ?>
														</select>
													</div>
													
												</div>

												<div class="clear"></div>
												
												<div class="col-sm-6 col-md-4">
												
													<div class="form-group">
														<label>Numéro de téléphone</label>
														<input type="text" name="phone" required class="form-control" value="<?php echo "$myphone"; ?>" placeholder="Enter your phone">
													</div>
													
												</div>
												
												<div class="col-sm-6 col-md-4">
												
													<div class="form-group">
														<label>Addresse Mail</label>
														<input type="email" name="email" required class="form-control" value="<?php echo "$mymail"; ?>" placeholder="Enter your email">
													</div>
													
												</div>
												


												<div class="clear"></div>
												


												<div class="clear"></div>
												
												<div class="col-sm-12 col-md-12">
												
													<div class="form-group bootstrap3-wysihtml5-wrapper">
														<label>entreprise background</label>
														<textarea name="background" class="bootstrap3-wysihtml5 form-control" placeholder="Enter company background ..." style="height: 200px;"><?php echo "$desc"; ?></textarea>
													</div>
													
												</div>
												
												<div class="clear"></div>
												
												<div class="col-sm-12 col-md-12">
												
													<div class="form-group bootstrap3-wysihtml5-wrapper">
														<label>Services</label>
														<textarea name="services" class="bootstrap3-wysihtml5 form-control" placeholder="Enter company services ..." style="height: 200px;"><?php echo "$myserv"; ?></textarea>
													</div>
													
												</div>
												
												<div class="clear"></div>
												
												<div class="col-sm-12 col-md-12">
												
													<div class="form-group bootstrap3-wysihtml5-wrapper">
														<label>Compétence</label>
														<textarea name="expertise" class="bootstrap3-wysihtml5 form-control" placeholder="Enter company expertise ..." style="height: 200px;"><?php echo "$myex"; ?></textarea>
													</div>
													
												</div>
												
												<div class="clear"></div>

												<div class="col-sm-12 mt-10">
													<button type="submit" class="btn btn-primary">Sauvegarder</button>
													<button type="reset" class="btn btn-warning">Annuler</button>
												</div>

											</div>
											
										</form><br>
										
										<form action="app/new-dp.php" method="POST" enctype="multipart/form-data">
										<div class="row gap-20">
										<div class="col-sm-12 col-md-12">
												
										<div class="form-group bootstrap3-wysihtml5-wrapper">
										<label>Logo d'entreprise</label>
										<input accept="image/*" type="file" name="image"  required >
										</div>
													
										</div>
												
										<div class="clear"></div>

										<div class="col-sm-12 mt-10">
										<button type="submit" class="btn btn-primary">Mise à jour</button>
										<?php 
										if ($logo == null) {

										}else{
										?><a onclick = "return confirm('Are you sure you want to delete your logo ?')" class="btn btn-primary btn-inverse" href="app/drop-dp.php">Delete</a> <?php
										}
										?>
										</div>
										</div>
										</form>
									
								</div>

							</div>
							
						</div>

					</div>

				</div>
			
			</div>

			<footer class="footer-wrapper">
			
				<div class="main-footer">
				
					<div class="container">
					
						<div class="row">
						
							
							<div class="col-sm-12 col-md-3 mt-30-sm">
							
								<h5 class="footer-title">Pour nous contacter</h5>
								
								<p>Addresse : Sidi-maarouf Casablanca</p>
								<p>Mail : <a href="mailto:HIRE@gmail.com">easyjob.ouzi@gmail.com</a></p>
								<p>Téléphone  : <a href="tel:+212648029148">05 22 32 44 45</a></p>
								
							</div>

							
						</div>
						
					</div>
					
				</div>
				
				<div class="bottom-footer">
				
					<div class="container">
					
						<div class="row">
						
							<div class="col-sm-4 col-md-4">
							
								<ul class="bottom-footer-menu">
									<li><a >Developper par OuZi</a></li>
								</ul>
							
							</div>
							
							
						
						</div>

					</div>
					
				</div>
			
			</footer>
			
		</div>

	</div>

 
 
<div id="back-to-top">
   <a href="#"><i class="ion-ios-arrow-up"></i></a>
</div>


<script type="text/javascript" src="../js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-modalmanager.js"></script>
<script type="text/javascript" src="../js/bootstrap-modal.js"></script>
<script type="text/javascript" src="../js/smoothscroll.js"></script>
<script type="text/javascript" src="../js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="../js/jquery.waypoints.min.js"></script>
<script type="text/javascript" src="../js/wow.min.js"></script>
<script type="text/javascript" src="../js/jquery.slicknav.min.js"></script>
<script type="text/javascript" src="../js/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-tokenfield.js"></script>
<script type="text/javascript" src="../js/typeahead.bundle.min.js"></script>
<script type="text/javascript" src="../js/bootstrap3-wysihtml5.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-select.min.js"></script>
<script type="text/javascript" src="../js/jquery-filestyle.min.js"></script>
<script type="text/javascript" src="../js/bootstrap-select.js"></script>
<script type="text/javascript" src="../js/ion.rangeSlider.min.js"></script>
<script type="text/javascript" src="../js/handlebars.min.js"></script>
<script type="text/javascript" src="../js/jquery.countimator.js"></script>
<script type="text/javascript" src="../js/jquery.countimator.wheel.js"></script>
<script type="text/javascript" src="../js/slick.min.js"></script>
<script type="text/javascript" src="../js/easy-ticker.js"></script>
<script type="text/javascript" src="../js/jquery.introLoader.min.js"></script>
<script type="text/javascript" src="../js/jquery.responsivegrid.js"></script>
<script type="text/javascript" src="../js/customs.js"></script>


</body>



</html>