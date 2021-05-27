<!-- ========================= HEADER ========================= -->
<?php include "includes/header.php" ?>
	<!-- ========================= HEADER END // ========================= -->



<!-- ========================= SECTION CONTENT ========================= -->
<section class="section-content padding-y">

<!-- ============================ COMPONENT REGISTER   ================================= -->
	<div class="card mx-auto" style="max-width:520px; margin-top:40px;">
      <article class="card-body">
		<header class="mb-4"><h4 class="card-title">Đăng ký</h4></header>
		<form>
				<div class="form-row">
					<div class="col form-group">
						<label>Họ tên</label>
					  	<input type="text" class="form-control" placeholder="">
					</div> <!-- form-group end.// -->
					<div class="col form-group">
						<label>Tên đăng nhập</label>
					  	<input type="text" class="form-control" placeholder="">
					</div> <!-- form-group end.// -->
				</div> <!-- form-row end.// -->
				<div class="form-group">
					<label>Số điện thoại</label>
					<input type="phone" class="form-control" placeholder="">
					<small class="form-text text-muted">We'll never share your email with anyone else.</small>
				</div> <!-- form-group end.// -->
				<div class="form-group">
					<label>Email</label>
					<input type="email" class="form-control" placeholder="">
					<small class="form-text text-muted">We'll never share your email with anyone else.</small>
				</div> <!-- form-group end.// -->
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
				</div> <!-- form-group end.// -->
				<div class="form-group">
					<label>Địa chỉ</label>
					<input type="place" class="form-control" placeholder="">
				</div> <!-- form-group end.// -->
				<div class="form-row">
					<div class="form-group col-md-6">
						<label>Mật khẩu</label>
					    <input class="form-control" type="password">
					</div> <!-- form-group end.// --> 
					<div class="form-group col-md-6">
						<label>Nhập lại mật khẩu</label>
					    <input class="form-control" type="password">
					</div> <!-- form-group end.// -->  
				</div>
			    <div class="form-group">
			        <button type="submit" class="btn btn-primary btn-block"> Đăng ký</button>
			    </div> <!-- form-group// -->      
			    <div class="form-group"> 
		            <label class="custom-control custom-checkbox"> <input type="checkbox" class="custom-control-input" checked=""> <div class="custom-control-label"> Tôi đồng ý với các<a href="#">điều khoản và điều kiện</a>  </div> </label>
		        </div> <!-- form-group end.// -->           
			</form>
		</article><!-- card-body.// -->
    </div> <!-- card .// -->
    <p class="text-center mt-4">Đã có tài khoản? <a href="login.php">Đăng nhập</a></p>
    <br><br>
<!-- ============================ COMPONENT REGISTER  END.// ================================= -->


</section>
<!-- ========================= SECTION CONTENT END// ========================= -->


<!-- ========================= FOOTER ========================= -->
<?php include "includes/footer.php" ?>
<!-- ========================= FOOTER END // ========================= -->



</body>
</html>