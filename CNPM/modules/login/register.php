
<?php 
	if(!defined('SECURITY')){
		die('Bạn không có quyền truy cập vào file này!');
	}
    if(isset($_POST['sbm'])){
        $user_full = $_POST['user_full'];
        $user_mail = $_POST['user_mail'];
        $user_pass = md5($_POST['user_pass']);
        $user_re_pass = md5($_POST['user_re_pass']);
        $user_level = $_POST['user_level'];
        if($user_pass===$user_re_pass){
            $sql = "INSERT INTO user (user_full, user_mail, user_pass, user_level) VALUES ('$user_full','$user_mail','$user_pass', $user_level)";
            $query = mysqli_query($conn,$sql);
            header("location: index.php?page_layout=user");
        }else{
			echo '<script language="javascript">';
			echo 'alert("Mật khẩu không khớp! Hãy nhập lại")';
			echo '</script>';
        }
    }
?>
    <div class="card mx-auto" style="max-width: 380px; margin-top:100px; text-align:center;">
		<div class="text-center mt-4">
			<div class="login-panel panel panel-default">
            <h4 class="card-title mb-4">Đăng ký</h4>
            <div class="alert alert-danger">Chào mừng bạn!</div>
				<div class="panel-body">
					<?php 
						if(isset($erorr)){
							echo $erorr;
						}
					?>
					<form role="form" method="post">
						<fieldset>
                        <div class="form-group">
                                    <label>Họ & Tên</label>
                                    <input name="user_full" required class="form-control" placeholder="">
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input name="user_mail" required type="text" class="form-control">
                                </div>                       
                                <div class="form-group">
                                    <label>Mật khẩu</label>
                                    <input name="user_pass" required type="password"  class="form-control">
                                </div>
                                <div class="form-group">
                                    <label>Nhập lại mật khẩu</label>
                                    <input name="user_re_pass" required type="password"  class="form-control">
                                </div>
							<button type="submit" name="sbm" class="btn btn-primary">Đăng ký</button>
						</fieldset>
					</form>
				</div>
			</div>
		</div><!-- /.col-->
        <a href="#" class="btn btn-facebook btn-block mt-3"> <i class="fab fa-facebook-f"></i> &nbsp Sign up
                    with Facebook</a>
                <a href="#" class="btn btn-google btn-block mb-4"> <i class="fab fa-google"></i> &nbsp Sign up with
                    Google</a>
    </div>
    <p class="text-center mt-4">Đã có tài khoản? <a href="index.php?page_layout=login">Đăng nhập</a></p>
    <br><br>
    <!-- ============================ COMPONENT LOGIN  END.// ================================= -->


</section>

<!-- ========================= SECTION CONTENT END// ========================= -->


<!-- ========================= FOOTER ========================= -->

