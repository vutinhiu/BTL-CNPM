<!doctype html>
<html lang="en">

<head>
    <title>Thêm sản phẩm</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
    <div class="container" style="width:100%; max-width:800px">



        <div class="panel panel-default">
            <div class="panel-heading">
                <h4>Thêm sản phẩm</h4>
            </div>
            <div class="panel-body">
                <form action="them_sp.php" method="POST">
                    <div class="form-group">
                        <label>Tên sản phẩm</label>
                        <input type="text" name="name" class="form-control" required value="" />
                    </div>
                    <div class="form-group">
                        <label for="exampleFormControlTextarea1">Mô tả sản phẩm</label>
                        <textarea class="form-control" id="exampleFormControlTextarea1" rows="7" name="mota"></textarea>
                    </div>


                    <div class="form-group">
                        <label for="exampleFormControlFile1">Hình ảnh</label>
                        <input type="file" class="form-control-file" id="exampleFormControlFile1" name="hinhanh"
                            value="">
                    </div>

                    <div class="form-group">
                        <label>Giá</label>
                        <input type="text" name="gia" class="form-control" required value="" />
                    </div>
                    <div class="form-group">

                        <input type="submit" name="them_sp" value="Thêm" class="btn btn-info"
                            style="margin-top: 25px; margin-left: 0px;" />
                    </div>


                </form>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
</body>

</html>