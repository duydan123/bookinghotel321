<?php
session_start();
error_reporting(0);
include('includes/config.php');
if (isset($_POST['submit2'])) {
    $pid = intval($_GET['pkgid']);
    $useremail = $_SESSION['login'];
    $fromdate = $_POST['fromdate'];
    $todate = $_POST['todate'];
    $comment = $_POST['comment'];
    $status = 0;
    try {
        $sql = "INSERT INTO booking(PackageId,UserEmail,FromDate,ToDate,Comment,status) VALUES(:pid,:useremail,:fromdate,:todate,:comment,:status)";
        $query = $dbh->prepare($sql);
        $query->bindParam(':pid', $pid, PDO::PARAM_STR);
        $query->bindParam(':useremail', $useremail, PDO::PARAM_STR);
        $query->bindParam(':fromdate', $fromdate, PDO::PARAM_STR);
        $query->bindParam(':todate', $todate, PDO::PARAM_STR);
        $query->bindParam(':comment', $comment, PDO::PARAM_STR);
        $query->bindParam(':status', $status, PDO::PARAM_STR);
        $query->execute();
        $lastInsertId = $dbh->lastInsertId();
        if ($lastInsertId) {
            $msg = "Booked Successfully";
        } else {
            $error = "Something went wrong. Please try again";
        }
    } catch (Exception $exception) {
        $error = 'có lỗi trong quá trình xử lý dữ liệu';
    }

}
?>
<!DOCTYPE HTML>
<html>
<head>
    <title></title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type="applijewelleryion/x-javascript">
         addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); }


    </script>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="css/style.css" rel='stylesheet' type='text/css'/>
    <link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- Custom Theme files -->
    <script src="js/jquery-1.12.0.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!--animate-->
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
    <link rel="stylesheet" href="css/jquery-ui.css"/>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/lightbox2/2.11.3/js/lightbox.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <!--animate-->

    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <link rel="stylesheet" href="css/star-rating.css">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
        if (window.history.replaceState) {
            window.history.replaceState(null, null, window.location.href);
        }
    </script>

    <script src="js/jquery-ui.js"></script>
    <script>
        $(function () {
            $("#datepicker,#datepicker1").datepicker();
        });
        $(function () {
            $("#datepicker2,#datepicker3").datepicker();
        });
    </script>
    <style>
        .errorWrap {
            padding: 10px;
            margin: 0 0 20px 0;
            background: #fff;
            border-left: 4px solid #dd3d36;
            -webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
        }

        .succWrap {
            padding: 10px;
            margin: 0 0 20px 0;
            background: #fff;
            border-left: 4px solid #5cb85c;
            -webkit-box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
            box-shadow: 0 1px 1px 0 rgba(0, 0, 0, .1);
        }

        .img-thumbnail {
            max-width: 100px;
            height: auto;
            margin: 5px;
        }

        .custom-list {
            padding: 0;
            list-style: none;
            margin: 0;
            display: flex;
            flex-wrap: wrap;
        }

        .custom-list li {
            width: 33.33%; /* Điều chỉnh kích thước cho phần tử li */
            box-sizing: border-box;
            padding: 5px;
            display: flex;
        }
    </style>

</head>
<body>
<!-- top-header -->
<?php include('includes/header.php'); ?>
<div class="banner-3">
    <div class="container">
        <h1 class="wow zoomIn animated animated" data-wow-delay=".5s"
            style="visibility: visible; animation-delay: 0.5s; animation-name: zoomIn;"></h1>
    </div>
</div>
<!--- /banner ---->
<!--- selectroom ---->
<div class="selectroom">
    <div class="container">
        <?php if ($error) { ?>
            <div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?>
            </div><?php } else if ($msg) { ?>
            <div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php } ?>
        <?php
        $pid = intval($_GET['pkgid']);
        $sql = "SELECT * from hotels where id=:pid";
        $query = $dbh->prepare($sql);
        $query->bindParam(':pid', $pid, PDO::PARAM_STR);
        $query->execute();
        $result = $query->fetch(PDO::FETCH_OBJ);
        $cnt = 1;
        if ($query->rowCount() > 0) {
            ?>
            <form name="book" method="post">
                <div class="selectroom_top">
                    <div class="row" style="padding-bottom: 30px">
                        <?php
                        $sqlImages = "SELECT * from images where code = 'HOTEL' AND objectId=:objectId limit 1";
                        $queryImages = $dbh->prepare($sqlImages);
                        $queryImages->bindParam(':objectId', $result->id, PDO::PARAM_STR);
                        $queryImages->execute();
                        $imagesTitle = $queryImages->fetch(PDO::FETCH_OBJ);
                        if ($imagesTitle) {
                            ?>
                            <div class="col-md-4 selectroom_left wow fadeInLeft animated" data-wow-delay=".5s">
                                <a href="admins/images/products/<?php echo $imagesTitle->name ?>" data-lightbox="example" style="width: 1920px; height: 1080px;">
                                    <img width="1920" height="1080"
                                         src="admins/images/products/<?php echo $imagesTitle->name ?>"
                                         class="img-responsive" alt="">
                                </a>
                            </div>
                        <?php } else { ?>
                            <div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s" style="padding: 10px">
                                <a href="admins/images/pngtree-now-booking-business-text-background-png-image_691369.jpeg" data-lightbox="example">
                                    <img src="admins/images/pngtree-now-booking-business-text-background-png-image_691369.jpeg"
                                         class="img-thumbnail" alt="">
                                </a>
                            </div>
                        <?php } ?>
                        <div class="col-md-8 selectroom_right wow fadeInRight animated" data-wow-delay=".5s">
                            <h2 style="color: black"><?php echo htmlentities($result->name); ?></h2>
                            <p style="color: black"><b> <?php echo htmlentities($result->type); ?></b></p>
                            <p><?php echo htmlentities($result->location); ?></p>
                            <?php if ($result->convenient) { ?><p><b>Tiện Nghi Khách sạn :</b></p><?php } ?>
                            <div class="clearfix"></div>
                            <?php if ($result->convenient) { ?>
                                <h4><?php echo htmlentities($result->convenient); ?></h4><?php } ?>
                            <div class="star-ratings" style="font-size: 2em;">
                                <?php
                                $num_stars = intval($result->ranking);
                                for ($i = 0; $i < $num_stars; $i++) {
                                    echo '<span class="star" style="color: gold">&#9733;</span>';
                                }
                                for ($i = $num_stars; $i < 5; $i++) {
                                    echo '<span class="star" style="color: gold">&#9734;</span>';
                                }
                                ?>
                            </div>
                            <br>
                            <p style="padding-top: 1%"><?php echo htmlentities($result->description); ?> </p>
                            <div style="padding-bottom: 10px">
                                <?php if ($_SESSION['login']) {
                                    ?>
                                    <div class="spe" align="center" style="padding-bottom: 30px">
                                        <a class="btn-danger btn create-booking" href="#"
                                           style="display: flex; justify-content: center; float: right;text-align: center; width: 200px; height: 100%;line-height: 100%"
                                           data-toggle="modal" data-target="#myModal5"
                                           data-id="">Đặt Ngay</a>
                                    </div>
                                <?php } else { ?>
                                    <div class="spe" align="center" style="float: right; padding-bottom: 30px">
                                        <a href="#" data-toggle="modal" data-target="#myModal4"
                                           class="btn-primary btn">
                                            Đăng nhập</a>
                                        <a href="#" class="btn-primary btn" data-toggle="modal" data-target="#myModal">Đăng
                                            Ký</a>&nbsp;
                                    </div>
                                <?php } ?>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            <img src="admins/images/FWKCLM-XoAIDx_l.jpg" width="100%" height="100%" alt="">
                        </div>
                        <div class="col-md-9">
                            <iframe style="width: 100%; height: 300px"
                                    src="<?php echo $result->embedLocation ?>"
                                    width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy"
                                    referrerpolicy="no-referrer-when-downgrade"></iframe>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <?php

                $pid = intval($_GET['pkgid']);
                $sql = "SELECT * from roomType where hotelId=:pid";
                $queryRoomType = $dbh->prepare($sql);
                $queryRoomType->bindParam(':pid', $pid, PDO::PARAM_STR);
                $queryRoomType->execute();
                $roomTypes = $queryRoomType->fetchAll(PDO::FETCH_OBJ);
                $cnt = 1;

                if ($queryRoomType->rowCount() > 0) {
                    foreach ($roomTypes as $roomType) {
                        ?>
                        <div class="selectroom_top">
                            <h2><b><?php echo htmlentities($roomType->name); ?></b></h2><br>
                            <div class="row">
                                <div class="col-md-4 wow fadeInLeft animated" data-wow-delay=".5s">
                                    <div class="selectroom_top" style="padding: 0">
                                        <?php
                                        $sqlImagesRoomType = "SELECT * from images where code = 'ROOMTYPE' AND objectId=:objectId limit 1";
                                        $queryImagesRoom = $dbh->prepare($sqlImagesRoomType);
                                        $queryImagesRoom->bindParam(':objectId', $roomType->id, PDO::PARAM_STR);
                                        $queryImagesRoom->execute();
                                        $imagesRoom = $queryImagesRoom->fetch(PDO::FETCH_OBJ);
                                        if ($imagesRoom) {
                                            ?>
                                            <a href="admins/images/products/<?php echo $imagesRoom->name ?>"
                                               data-lightbox="example">
                                                <img width="1920" height="1080"
                                                     src="admins/images/products/<?php echo $imagesRoom->name ?>"
                                                     class="img-responsive" alt="">
                                            </a>
                                        <?php } ?>
                                    </div>
                                    <div>
                                        <div style="display: flex">
                                            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" data-id="IcHotelRoomMeasure"><path d="M12 21H7L21 7V21H18M12 21V20M12 21H15M15 21V20M15 21H18M18 21V20M15 17H17V15" stroke="#0194F3" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path><path d="M8 8L9 9M8 8L5 11M8 8L11 5M5 11L6 12M5 11L2 14L5 17L17 5L14 2L11 5M11 5L12 6" stroke="#03121A" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path></svg>
                                            <p style="font-size: 15px; color: black"><b>&nbsp;&nbsp;: <?php echo htmlentities($roomType->acreage) ?> m2</b></p>
                                        </div>
                                        <div style="display: flex">
                                            <p style="padding-right: 10px"><img
                                                        src="https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/b/b463404debb801ce2c39019560ba92d2.svg"
                                                        width="16" height="16" style="margin-right: 8px;" alt=""><b
                                                        style="color: #34ad00">: <?php echo htmlentities($roomType->numberCustomer); ?>
                                                    khách</b></p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8 wow fadeInRight animated" data-wow-delay=".5s">
                                    <div class="selectroom_top">
                                        <p class="dow"><?php echo htmlentities($roomType->benefit); ?></p>
                                        <div style="display: flex;">
                                            <p style="padding-right: 10px"><img
                                                        src="https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/b/bf6a43a380752458f8ff4bcf166ccd42.svg"
                                                        style="margin-right: 8px;">: <b
                                                        style="color: black"> <?php echo htmlentities($roomType->doubleBed); ?>
                                                    gường đôi</b></p>
                                            <p style="padding-right: 10px"><img
                                                        src="https://d1785e74lyxkqq.cloudfront.net/_next/static/v2/b/bf6a43a380752458f8ff4bcf166ccd42.svg"
                                                        style="margin-right: 8px;">: <b
                                                        style="color: black"> <?php echo htmlentities($roomType->singleBed); ?>
                                                    gường đơn</b></p>
                                        </div>
                                        <div style="border-bottom: 1px solid #999;padding: 5px"></div>
                                        <div class="ul-container">
                                            <ul class="custom-list">
                                                <?php
                                                $sqlRoomTypeConvenient = "SELECT *,
                                convenient.name as convenient_name
                                FROM roomtypeconvenient 
                                INNER JOIN convenient ON convenient.id = roomtypeconvenient.convenientId WHERE roomTypeId = :roomTypeId AND convenient.status = 'ENABLE'";
                                                $queryRoomTypeCon = $dbh->prepare($sqlRoomTypeConvenient);
                                                $queryRoomTypeCon->bindParam(':roomTypeId', $roomType->id);
                                                $queryRoomTypeCon->execute();
                                                $roomTypeConvenient = $queryRoomTypeCon->fetchAll();
                                                if (count($roomTypeConvenient) > 0) {
                                                    foreach ($roomTypeConvenient as $key => $value) {
                                                        echo '<li><i class="fas fa-angle-double-right" style="color: #00a0dc; font-size: 10px;padding-top: 5px;"></i>&nbsp;<p style="font-size: 15px">' . $value['convenient_name'] . '</p></li>';
                                                    }
                                                }
                                                ?>
                                            </ul>
                                        </div>


                                        <div class="clearfix"></div>
                                        <br>
                                        <div class="grand" style="padding-bottom: 5px">
                                            <p><b>Giá phòng</b></p>
                                            <h3 style="color: red"><b><?php echo number_format($roomType->price, 0, ',', '.') . ' VNĐ/Phòng/Đêm' ?></b></h3>
                                        </div>
                                        <?php if ($roomType->isUseDeposit) { ?>
                                            <div class="grand">
                                                <p><b>Tiền cọc:</b></p>
                                                <h3 style="color: red"><b><?php echo number_format($roomType->depositPercent, 0, ',', '.') . '%' ?></b></h3>
                                            </div>
                                        <?php } ?>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                            <div class="selectroom-info animated wow fadeInUp animated" data-wow-duration="1200ms"
                                 data-wow-delay="500ms"
                                 style="visibility: visible; animation-duration: 1200ms; animation-delay: 500ms; animation-name: fadeInUp; margin-top: -70px">
                                <ul>
                                    <li class="spe">
                                        <h3>Chi tiết</h3>
                                        <p style="padding-top: 1%;"><?php echo htmlentities($roomType->feature); ?> </p>
                                    </li>
                                    <li style="width: 100%">
                                        <div class="col-md-4 wow fadeInLeft animated" data-wow-delay=".5s"
                                             style="display: flex; flex-wrap: wrap; width: 100%">
                                            <?php
                                            $sqlImagesRoomType = "SELECT * from images where code = 'ROOMTYPE' AND objectId=:objectId";
                                            $queryImagesRoom = $dbh->prepare($sqlImagesRoomType);
                                            $queryImagesRoom->bindParam(':objectId', $roomType->id, PDO::PARAM_STR);
                                            $queryImagesRoom->execute();
                                            $imagesRooms = $queryImagesRoom->fetchALL(PDO::FETCH_OBJ);
                                            if ($queryImagesRoom->rowCount() > 0) {
                                                foreach ($imagesRooms as $imagesRoom) {
                                                    ?>
                                                    <a href="admins/images/products/<?php echo $imagesRoom->name ?>"
                                                       data-lightbox="example">
                                                        <img src="admins/images/products/<?php echo $imagesRoom->name ?>"
                                                             class="img-thumbnail" alt="">
                                                    </a>
                                                <?php }
                                            } ?>
                                        </div>
                                    </li>
                                    <?php if ($_SESSION['login']) {
                                        ?>
                                        <li class="spe" align="center" style=" margin-top: 0;">
                                            <a class="btn-danger btn create-booking" href="#"
                                               style="float: right; width: auto" data-toggle="modal"
                                               data-target="#myModal5" data-id="<?php echo $roomType->id ?>">Đặt
                                                Ngay</a>
                                        </li>
                                    <?php } else { ?>
                                        <li class="sigi" align="center" style="float: right">
                                            <a href="#" data-toggle="modal" data-target="#myModal4"
                                               class="btn-primary btn">
                                                Đăng nhập</a>
                                        </li>
                                        <li class="sig" style="float: right" align="center">
                                            <a href="#" class="btn-primary btn" data-toggle="modal"
                                               data-target="#myModal">Đăng Ký</a>&nbsp;
                                        </li>
                                    <?php } ?>
                                    <div class="clearfix"></div>
                                </ul>
                            </div>
                        </div>
                    <?php }
                } ?>

            </form>
            <div class="row">
                <div class="col-md-5">
                    <div class="rom-btm">
                        <div class="form-group room-right wow fadeInRight animated" data-wow-delay=".5s">
                            <h3 style="color: #34ad00;font-weight: 700;float: left">Đánh giá</h3>
                            <?php
                             $sqlRate = "SELECT *,
                                                users.fullName as user_name,
                                                rateHotels.rate as rate_rate,
                                                rateHotels.createdAt as rate_created,
                                                rateHotels.description as rate_description
                                        FROM rateHotels
                                        LEFT JOIN users ON users.id = rateHotels.userId
                                        WHERE rateHotels.status = 'ENABLE' AND rateHotels.hotelId =:id";
                             $queryRate = $dbh->prepare($sqlRate);
                             $queryRate->bindParam(':id', $pid);
                             $queryRate->execute();
                             $ratesHotels = $queryRate->fetchAll(PDO::FETCH_OBJ);
                             if ($queryRate->rowCount() > 0) {
                                 foreach ($ratesHotels as $rateHotel) {
                                     if ($rateHotel->user_name) {
                                         $userName = $rateHotel->user_name;
                                     } else {
                                         $userName = 'Khách vãng lai';
                                     }
                            ?>
                            <div class="rom-btm" style="display: grid;padding: 5px">
                                <div>
                                    <div class="star-ratings" style="font-size: 20px; float: left">
                                        <?php
                                        $num_stars = intval($rateHotel->rate_rate);
                                        for ($i = 0; $i < $num_stars; $i++) {
                                            echo '<span class="star" style="color: gold">&#9733;</span>';
                                        }
                                        for ($i = $num_stars; $i < 5; $i++) {
                                            echo '<span class="star" style="color: gold">&#9734;</span>';
                                        }
                                        ?>
                                    </div>
                                </div>
                                <div>
                                    <h5  style="float: left"><?php echo $rateHotel->rate_description ?></h5>
                                </div>
                                <div>
                                    <i><?php echo $userName ?> - <?php echo $rateHotel->rate_created ?></i>
                                </div>
                            </div>
                            <?php }
                             } else { ?>
                                 <h3>Chưa có đánh giá </h3>
                             <?php } ?>
                            </div>
                    </div>
                </div>
                <div class="col-md-7">
                    <div class="rom-btm">
                        <?php
                        if ($_SESSION['login']) {

                        ?>
                        <div class="form-group room-right wow fadeInRight animated" style="margin-top: 0;padding: 0" data-wow-delay=".5s">
                                <div class="rating">
                                    <form>
                                        <span class="star-rating">
                                            <input type="radio" name="rating1" id="rating1" value="1"><i></i>
                                            <input type="radio" name="rating1" id="rating1" value="2"><i></i>
                                            <input type="radio" name="rating1" id="rating1"  value="3"><i></i>
                                            <input type="radio" name="rating1" id="rating1" value="4"><i></i>
                                            <input type="radio" name="rating1" id="rating1" checked value="5"><i></i>
                                        </span>
                                        <textarea name="description" id="description" cols="30" rows="5" class="form-control no-resize"
                                                  placeholder="Nhận xét"></textarea>
                                        <br>
                                        <button class="view btn btn-danger" onclick="SubmitRated(<?php echo $pid ?>)">Gửi đánh giá</button>
                                    </form>
                                </div>
                        </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
            <?php
        } ?>

    </div>
</div>
<script>
    // Khởi tạo Lightbox
    window.lightbox.option({
        'resizeDuration': 200,
        'wrapAround': true
    })

    const buttons = document.querySelectorAll('.create-booking');

    // Loop through the buttons and attach click event handlers
    buttons.forEach(button => {
        button.addEventListener('click', function() {
            const roomId = this.getAttribute('data-id');
            const inputField = document.querySelector('input[data-input-id="' + roomId + '"]');
            inputField.disabled = true;
        });
    });

    function SubmitRated(id) {
        event.preventDefault();
        Swal.fire({
            title: 'Bạn có muốn thực hiện đánh giá này?',
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Xác nhận',
            cancelButtonText: 'Huỷ'
        }).then((result) => {
            if (result.isConfirmed) {
                const rank = document.querySelector('input[name="rating1"]:checked').value;
                const description = document.getElementById('description').value;

                $.ajax({
                    url: "submit-rated.php",
                    method: "POST",
                    data: {
                        id: id,
                        rank: rank,
                        description: description,
                    },
                    success: function (response) {
                        if (response.key) {
                            Swal.fire(response.message, "", "success");
                        } else {
                            Swal.fire(response.message, "", "error");
                        }
                    },
                    error: function (xhr, status, error) {
                        console.log(xhr.responseText);
                        console.log(status);
                        console.log(error);
                        Swal.fire("Lỗi trong quá trình xử lý dữ liệu!", "", "error");
                    }
                });
            }
        })
    }
</script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<!--- /selectroom ---->
<!--- /footer-top ---->
<?php include('includes/footer.php'); ?>
<!-- signup -->
<?php include('includes/signup.php'); ?>
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php'); ?>
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php'); ?>

<?php include('booking/create-booking.php'); ?>
</body>
</html>