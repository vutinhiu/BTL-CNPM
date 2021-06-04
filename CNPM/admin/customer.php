<?php 
    $customer = mysqli_fetch_array(mysqli_query($conn, "SELECT * FROM customer"));
    if(!defined('SECURITY')){
        die('Bạn không thể truy cập vào trang này!');
    }

    if(isset($_GET['page'])){
        $page = $_GET['page'];
    }else{
        $page = 1;
    }
    $row_per_page = 3;
    $per_row = $page * $row_per_page - $row_per_page;
    echo $total_row = mysqli_num_rows(mysqli_query($conn, 'SELECT * FROM customer'));
    $total_page = ceil($total_row/$row_per_page);

    $list_page = '';

    $page_prev = $page - 1;
    if($page_prev < 1){
        $page_prev = 1;
    }
    $list_page .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=customer&page='.$page_prev.'">&laquo;</a></li>';

    for($i = 1; $i <= $total_page; $i++){
        if($i == $page){
            $active = 'active';
        }else{
            $active = '';
        }
        $list_page .= '<li class="page-item '.$active.'"><a class="page-link" href="index.php?page_layout=cutomer&&page='.$i.'">'.$i.'</a></li>';
    }

    $page_next = $page + 1;
    if($page_next >= $total_page){
        $page_next = $total_page;
    }
    $list_page .= '<li class="page-item"><a class="page-link" href="index.php?page_layout=customer&page='.$page_next.'">&raquo;</a></li>';
?>
		
<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
    <div class="row">
        <ol class="breadcrumb">
            <li><a href="index.php"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
            <li class="active">Danh sách khách hàng</li>
        </ol>
    </div><!--/.row-->
    
    <div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Danh sách khách hàng</h1>
        </div>
    </div><!--/.row-->
    <div class="row">
        <div class="col-lg-12">
            <div class="panel panel-default">
                <div class="panel-body">
                    <table 
                        data-toolbar="#toolbar"
                        data-toggle="table">
                        <thead>
                        <tr>
                            <th data-field="id" data-sortable="true">ID</th>
                            <th data-field="name"  data-sortable="true">Họ & Tên</th>
                            <th data-field="price" data-sortable="true">Email</th>
                            <th>Hành động</th>
                        </tr>
                        </thead>
                        <tbody>
                            <?php 
                                $sql = "SELECT * FROM customer ORDER BY cus_id ASC LIMIT ".$per_row.','.$row_per_page;
                                $query = mysqli_query($conn, $sql);
                                while($row = mysqli_fetch_array($query)){
                            ?>
                                    <tr>
                                        <td style=""><?php echo $row['cus_id']; ?></td>
                                        <td style=""><?php echo $row['cus_name']; ?></td>
                                        <td style=""><?php echo $row['cus_mail']; ?></td>
                                       
                                        <td class="form-group">
                                            
                                            <a href="del_customer.php?cus_id=<?php echo $row['cus_id']; ?>" class="btn btn-danger">Xoá<i class="glyphicon glyphicon-remove"></i></a>
                                        </td>
                                    </tr>
                            <?php        
                                } 
                            ?>
                        </tbody>
                    </table>
                </div>
                <div class="panel-footer">
                    <nav aria-label="Page navigation example">
                        <ul class="pagination">
                            <?php 
                                echo $list_page;
                            ?>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
    </div><!--/.row-->	
</div>	<!--/.main-->
