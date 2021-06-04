
<div class="container">
				<div class="panel panel-default">
					<div class="panel-body">
						<div class="col-md-8">
							<div class="alert alert-danger">Đây là tài khoản thông tin của bạn!</div>
						<form role="form" method="post">
							<div class="form-group">
								<label>Họ & Tên</label>
								<input type="text" name="cus_name" required class="form-control" value="<?php echo $row['cus_name'] ?>" placeholder="">
							</div>
							<div class="form-group">
								<label>Email</label>
								<input type="text" name="cus_mail" required value="" class="form-control">
							</div>                       
							<div class="form-group">
								<label>Mật khẩu</label>
								<input type="password" name="cus_pass" required  class="form-control">
							</div>
							<div class="form-group">
								<label>Nhập lại mật khẩu</label>
								<input type="password" name="cus_re_pass" required  class="form-control">
							</div>
							<button type="submit" name="sbm" class="btn btn-primary">Cập nhật</button>
							<button type="reset" class="btn btn-default">Làm mới</button>
						</div>
					</form>
					</div>
				</div>
			</div>