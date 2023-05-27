<?php
session_start();
include('config.php');

if (empty($_SESSION['alogin'])) {
    header("Location: authentication/login.php");
}
?>
<!DOCTYPE html>
<html>
<?php
include('structure/header.php');
include ('structure/menu.php');

?>

<body class="theme-red">
<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>
                <small>Taken from <a href="https://github.com/mhuggins/jquery-countTo" target="_blank">github.com/mhuggins/jquery-countTo</a></small>
            </h2>
        </div>
        <!-- Counter Examples -->
        <div class="row clearfix">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <div class="icon bg-red">
                        <i class="material-icons">shopping_cart</i>
                    </div>
                    <div class="content">
                        <div class="text">HÓA ĐƠN</div>
                        <?php
                        $sqlInvoice = "SELECT * FROM invoice WHERE status != 'DELETED'";
                        $queryInvoice = $dbh->prepare($sqlInvoice);
                        $queryInvoice->execute();
                        $invoice = $queryInvoice->rowCount();
                        ?>
                        <div class="number count-to" data-from="0" data-to="<?php echo $invoice ?>" data-speed="1000" data-fresh-interval="20"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <div class="icon bg-indigo">
                        <i class="material-icons">face</i>
                    </div>
                    <div class="content">
                        <div class="text">KHÁCH HÀNG</div>
                        <?php
                        $sqlUser = "SELECT * FROM users WHERE status != 'DELETED'";
                        $queryUser= $dbh->prepare($sqlUser);
                        $queryUser->execute();
                        $user = $queryUser->rowCount();
                        ?>
                        <div class="number count-to" data-from="0" data-to="<?php echo $user ?>" data-speed="1000" data-fresh-interval="20"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <div class="icon bg-purple">
                        <i class="material-icons">bookmark</i>
                    </div>
                    <div class="content">
                        <div class="text">ĐÁNH GIÁ</div>
                        <?php
                        $sqlRate = "SELECT * FROM ratehotels WHERE status != 'DELETED'";
                        $queryRate= $dbh->prepare($sqlRate);
                        $queryRate->execute();
                        $rate = $queryRate->rowCount();
                        ?>
                        <div class="number count-to" data-from="0" data-to="<?php echo $rate ?>" data-speed="1000" data-fresh-interval="20"></div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box">
                    <div class="icon bg-deep-purple">
                        <i class="material-icons">favorite</i>
                    </div>
                    <div class="content">
                        <div class="text">KHÁCH SẠN</div>
                        <div class="number count-to" data-from="0" data-to="1432" data-speed="1500" data-fresh-interval="20"></div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Counter Examples -->
        <!-- Hover Zoom Effect -->
        <div class="block-header">
            <h2>HOVER ZOOM EFFECT</h2>
        </div>
        <div class="row clearfix">
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box hover-zoom-effect">
                    <div class="icon bg-pink">
                        <i class="material-icons">email</i>
                    </div>
                    <div class="content">
                        <div class="text">VẤN ĐỀ</div>
                        <div class="number">15</div>
                    </div>
                </div>

            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box hover-zoom-effect">
                    <div class="icon bg-blue">
                        <i class="material-icons">devices</i>
                    </div>
                    <div class="content">
                        <div class="text">CPU USAGE</div>
                        <div class="number">92%</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box hover-zoom-effect">
                    <div class="icon bg-light-blue">
                        <i class="material-icons">access_alarm</i>
                    </div>
                    <div class="content">
                        <div class="text">ALARM</div>
                        <div class="number">07:00 AM</div>
                    </div>
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                <div class="info-box hover-zoom-effect">
                    <div class="icon bg-cyan">
                        <i class="material-icons">gps_fixed</i>
                    </div>
                    <div class="content">
                        <div class="text">LOCATION</div>
                        <div class="number">Turkey</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Hover Zoom Effect -->
    </div>
</section>
</body>

<?php include('structure/footer.php') ?>
</html>
