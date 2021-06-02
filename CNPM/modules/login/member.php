<div class="widget-header icontext">
    <a href="index.php?page_layout=login" class="icon icon-sm rounded-circle border"><i class="fa fa-user"></i></a>

</div>

<div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
  <span class="text-muted">Xin chào!</span>
  <?php 

if(isset($_SESSION['mail']) && isset($_SESSION['pass'])){
    echo $_SESSION['mail'];
}

?>
  </button>
  <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
     <a class="dropdown-item" href="index.php?page_layout=ok">Hồ sơ</a>
    <a class="dropdown-item" href="index.php?page_layout=logout">Đăng xuất</a>
  </div>
</div>

</span>

		