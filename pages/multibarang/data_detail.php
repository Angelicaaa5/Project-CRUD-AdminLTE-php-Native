<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
      DATA DETAIL MULTI ITEM
      </h1>
      <ol class="breadcrumb">
        <li><a href="index.php"><i class="fa fa-dashboard"></i> HOME</a></li>
        <li class="active">DATA DETAIL MULTI ITEM</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
      <div class="box box-primary">
      <div class="box-header">
          <a href="index.php?page=data_penjualan_multi" class="btn btn-primary" role="button" title="kembali"><i class="glyphicon glyphicon"></i>Kembali</a>
      </div>
            <div class="box-body table-responsive">
              <table id="mahasiswa" class="table table-bordered table-hover">
                <thead>
                <tr>
                  <th>#</th>
                  <th>ID_JUAL</th>
                  <th>ID_BARANG</th>
                  <th>HARGA</th>
                  <th>QTY</th>
                  <th>TOTAL</th>
                </tr>
                </thead>
                <tbody>

                <?php
                include "conf/conn.php";
                $no=0;
                //$query=mysql_query("SELECT * FROM mahasiswa ORDER BY id_mahasiswa DESC");
                $id=$_GET['id'];
                $query=mysqli_query($connection,"SELECT * FROM detail_jual WHERE id_jual = '$id'")
                or die(mysqli_error($connection));

                while ($row=mysqli_fetch_array($query))
                {
                ?>

                <tr>
                  <td><?php echo $no=$no+1;?></td>
                  <td><?php echo $row['id_jual'];?></td>
                  <td><?php echo $row['id_barang'];?></td>
                  <td><?php echo $row['harga'];?></td>
                  <td><?php echo $row['qty'];?></td>
                  <td><?php echo $row['total'];?></td>
                  <td>
                  </td>
                </tr>

                <?php } ?>

                </tbody>
              </table>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
<!-- /.content-wrapper -->

<!-- Javascript Datatable -->
<script type="text/javascript">
  $(document).ready(function(){
    $('#mahasiswa').DataTable();
  });
</script>