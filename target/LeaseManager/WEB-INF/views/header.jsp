 <!DOCTYPE html>
<html lang="en">
<head>
  <title>Lease Manager</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
	//css code

body,html{
    height: 100%;
  }

  nav.sidebar, .main{
    -webkit-transition: margin 200ms ease-out;
      -moz-transition: margin 200ms ease-out;
      -o-transition: margin 200ms ease-out;
      transition: margin 200ms ease-out;
  }

  .main{
    padding: 10px 10px 0 10px;
  }

 @media (min-width: 765px) {

    .main{
      position: absolute;
      width: calc(100% - 40px); 
      margin-left: 40px;
      float: right;
    }

    nav.sidebar:hover + .main{
      margin-left: 200px;
    }

    nav.sidebar.navbar.sidebar>.container .navbar-brand, .navbar>.container-fluid .navbar-brand {
      margin-left: 0px;
    }

    nav.sidebar .navbar-brand, nav.sidebar .navbar-header{
      text-align: center;
      width: 100%;
      margin-left: 0px;
    }
    
    nav.sidebar a{
      padding-right: 13px;
    }

    nav.sidebar .navbar-nav > li:first-child{
      border-top: 1px #e5e5e5 solid;
    }

    nav.sidebar .navbar-nav > li{
      border-bottom: 1px #e5e5e5 solid;
    }

    nav.sidebar .navbar-nav .open .dropdown-menu {
      position: static;
      float: none;
      width: auto;
      margin-top: 0;
      background-color: transparent;
      border: 0;
      -webkit-box-shadow: none;
      box-shadow: none;
    }

    nav.sidebar .navbar-collapse, nav.sidebar .container-fluid{
      padding: 0 0px 0 0px;
    }

    .navbar-inverse .navbar-nav .z .dropdown-menu>li>a {
      color: #777;
    }

    nav.sidebar{
      width: 200px;
      height: 100%;
      margin-left: -160px;
      float: left;
      margin-bottom: 0px;
    }

    nav.sidebar li {
      width: 100%;
    }

    nav.sidebar:hover{
      margin-left: 0px;
    }

    .forAnimate{
      opacity: 0;
    }
  }
   
  @media (min-width: 1330px) {

    .main{
      width: calc(100% - 200px);
      margin-left: 200px;
    }

    nav.sidebar{
      margin-left: 0px;
      float: left;
    }

    nav.sidebar .forAnimate{
      opacity: 1;
    }
  }

  nav.sidebar .navbar-nav .open .dropdown-menu>li>a:hover, nav.sidebar .navbar-nav .open .dropdown-menu>li>a:focus {
    color: #CCC;
    background-color: transparent;
  }

  nav:hover .forAnimate{
    opacity: 0;
  }
  section{
    padding-left: 15px;
  }
  
 </style>

</head>
<body>

<nav class="navbar sidebar navbar-inverse bg-primary" role="navigation"">
    <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-sidebar-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>      
    </div>
    <div class="collapse navbar-collapse" id="bs-sidebar-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li class="active"><a href="http://localhost:8080/LeaseManager/">Home<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-home"></span></a></li>
         <!-- 
         <li class="dropdown">
          <a data-target="#" href="#" class="dropdown-toggle" data-toggle="dropdown">Rentals <span class="caret"></span><span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a>
          <ul class="dropdown-menu forAnimate" role="menu">
            <li><a href="./getAddNewPropertyForm">Properties</a></li>
            <li><a href="#">Rent Roll</a></li>
            <li><a href="#">Tenants</a></li>
            <li><a href="#">Rental Owners</a></li>
            <li><a href="#">Outstanding Balance</a></li>
          </ul>
        </li>        
 -->
		<li><a href="#"> Hi Atul <span class="pull-right hidden-xs showopacity glyphicon glyphicon-user"></span></a></li>
	    <li><a href="#"> Logout<span class="pull-right hidden-xs showopacity glyphicon glyphicon-log-in"></span> </a></li>
		<li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Rental<span class="caret"></span>
		    <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-tower"></span></a>
		     <ul class="dropdown-menu">
		       <li><a href="./properties">Properties</a></li>
		       <li><a href="#">Rent Roll</a></li>
		       <li><a href="#">Tenants</a></li>
		       <li><a href="#">Rental Owners</a></li>
		       <li><a href="#">Outstanding Balance</a></li>
		     </ul>
		</li>
		<li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Leasing<span class="caret"></span>
		    <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-paperclip"></span></a>
		     <ul class="dropdown-menu">
		       <li><a href="#">Listings</a></li>
		       <li><a href="#">Applicants</a></li>
		       <li><a href="#">eLease and Draft Leases</a></li>
		       <li><a href="#">Lease Renewals</a></li>
		     </ul>
		</li>
		<li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Associations<span class="caret"></span>
		    <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-briefcase"></span></a>
		     <ul class="dropdown-menu">
		       <li><a href="#">Associations</a></li>
		       <li><a href="#">Ownership Accounts</a></li>
		       <li><a href="#">Association Owners and Tenants</a></li>
		       <li><a href="#">Outstanding Balances</a></li>
		     </ul>
		</li>   
		<li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Accounting<span class="caret"></span>
		    <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-usd"></span></a>
		     <ul class="dropdown-menu">
		       <li><a href="#">Financials</a></li>
		       <li><a href="#">General Ledge</a></li>
		       <li><a href="#">Banking</a></li>
		       <li><a href="#">Bills</a></li>
		       <li><a href="#">Recurring Transactions</a></li>
		       <li><a href="#">Budgets</a></li>
		       <li><a href="#">Chart of Accounts</a></li>
		       <li><a href="#">Company Financials</a></li>
		       <li><a href="#">1099-MISC Tax Filings</a></li>
		       <li class="divider"></li>
      		   <li class="dropdown-header">Moved to new Maintenance menu:</li>
		       <li><a href="#">Vendors</a></li>
		       <li><a href="#">Work Orders</a></li>
		     </ul>
		</li> 
		<li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Maintenance<span class="caret"></span>
		    <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-warning-sign"></span></a>
		     <ul class="dropdown-menu">
		       <li><a href="#">Vendors</a></li>
		       <li><a href="#">Work Orders</a></li>
		       <li><a href="#">Property Inspections (new)</a></li>
		       <!-- Vendors and Work orders were moved from Accounting -->
		     </ul>
		</li>   
		<li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Tasks<span class="caret"></span>
		    <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-tasks"></span></a>
		     <ul class="dropdown-menu">
		       <li><a href="#">Incoming requests</a></li>
		       <li><a href="#">My Tasks</a></li>
		       <li><a href="#">All Tasks</a></li>
		       <li><a href="#">Recurring Tasks</a></li>
		     </ul>
		</li>
		<li class="dropdown">
		    <a href="#" class="dropdown-toggle" data-toggle="dropdown">Communication<span class="caret"></span>
		    <span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-envelope"></span></a>
		     <ul class="dropdown-menu">
		       <li><a href="#">Public Site</a></li>
		       <li><a href="#">Resident Site</a></li>
		       <li><a href="#">Resident Site Users</a></li>
		       <li><a href="#">Resident Site Contact Directory</a></li>
		       <li><a href="#">Resident Site Announcements</a></li>
		       <li><a href="#">Resident Community Discussions</a></li>
		       <li><a href="#">Mailings</a></li>
		       <li><a href="#">Emails</a></li>
		       <li><a href="#">Mailing and Email Templates</a></li>
		       <li><a href="#">Automated Email Settings</a></li>
		       <li><a href="#">SMS Accounts</a></li>
		     </ul>
		</li>
        <li ><a href="#">Libros<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-th-list"></span></a></li>        
        <li ><a href="#">Tags<span style="font-size:16px;" class="pull-right hidden-xs showopacity glyphicon glyphicon-tags"></span></a></li>
      </ul>
    </div>
  </div>
</nav>

</body> 
