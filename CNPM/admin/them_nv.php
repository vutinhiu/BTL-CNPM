<!doctype html>
<html lang="en">
  <head>
    <title>Tạo tk nhân viên</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
  </head>
  <body>
  <div class="container" style="width:100%; max-width:800px">

    

<div class="panel panel-default">
        <div class="panel-heading"><h4>Tạo tài khoản nhân viên</h4></div>
        <div class="panel-body">
            <form action="them_sp.php" method="POST">        
                    <div class="form-group" >
                        <label>Tên nhân viên</label>
                        <input type="text" name="name" class="form-control" required value=""/>
                    </div>
                    
                    <div class="form-group" >
                        <label>Năm sinh</label>
                        <input type="text" name="date" class="form-control" required value=""/>
                    </div>
                    <div class="form-group">
                        <label>Giới tính &nbsp</label>
                        <label class="custom-control custom-radio custom-control-inline">
                        <input class="custom-control-input" checked="" type="radio" name="gender" value="option1">
                        <span class="custom-control-label"> Nam </span>
                        </label>
                        <label class="custom-control custom-radio custom-control-inline">
                        <input class="custom-control-input" type="radio" name="gender" value="option2">
                        <span class="custom-control-label"> Nữ </span>
                        </label>
				    </div> 
                    <div class="form-group" >
                        <label>Email</label>
                        <input type="text" name="email" class="form-control" required value=""/>
                    </div>
                    <div class="form-group" >
                        <label>Số điện thoại</label>
                        <input type="text" name="phone" class="form-control" required value=""/>
                    </div>
                    <div class="form-group" >
                        <label>Tài khoản</label>
                        <input type="text" name="name" class="form-control" required value=""/>
                    </div>
                    <div class="form-group" >
                        <label>Mật khẩu</label>
                        <input type="text" name="pass" class="form-control" required value=""/>
                    </div>
                    <div class="form-group" >
                        <label>Nhập lại mật khẩu</label>
                        <input type="text" name="rpass" class="form-control" required value=""/>
                    </div>
                    <div class="form-group" >

                            <input type="submit" name="them_sp" value="Thêm" class="btn btn-info" style="margin-top: 25px; margin-left: 0px;"/>
                    </div>
                
                                    
            </form>
        </div>
    </div>
</div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>