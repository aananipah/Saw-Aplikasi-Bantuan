<html>
<title>NORMALISASI</title>
<style type="text/css">
<!--
.style2 {font-size: 24px}
-->
</style>
<head>
	<link rel="stylesheet" type="text/css" href="assets/css/jquery.dataTables.css">
<link rel="stylesheet" href="css/style.css" type="text/css" />
<link rel="stylesheet" href="css/menu.css" type="text/css" media="screen"> 
	<script type="text/javascript" src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/jquery.dataTables.min.js"></script>
</head>
<script>
    $(document).ready(function() {
	   $('#example').DataTable();
	} );
</script>
<body>
<div id="content" align="center">
<div class="body">
<div id="content" align="center">
<div class="header">
<div class="header">
	<p><h1 color="white">APLIKASI SISTEM PENDUKUNG KEPUTUSAN<br> BANTUAN RASKIN
		DENGAN METODE<br>SIMPLE ADDITIVE WEIGHTING(SAW)
		</h1></p>

<div class="menu">
<ul id="nav">
        <li><a title="Home "href="home.php"><b><font >Beranda</font></b></a></li>
        <li><a title="Input"href="input.php"><b></font>Input Data</b></a></li>
        <li><a title="view"href="view.php"><b></font>Lihat Data</b></a></li>
        <li><a title="Normalisasi"href="normalisasi.php"><b></font>Normalisasi</b></a></li>
		<li><a title="Rangking" href="rangking.php"><b><font >Hasil Data</font></b></a></li>
		<li><a href="index.php">Logout</a></li>
				</div> <!--end: menu-->
		 
		</div>
<div class="tengah">

<?php
//Gunakan Koneksi
	include("koneksi.php");
	//Buat array bobot { C1 = 40%; C2 = 10%; C3 = 50%;}
	$bobot = array(0.4, 0.1, 0.2);

//Lakukan Normalisasi dengan rumus pada langkah 2
	//Cari Max atau min dari tiap kolom Matrik
	$crMax = mysql_query("SELECT max(kriteria1_pekerjaan) as maxK1, 
						max(kriteria2_penghasilan) as maxK2,
						max(kriteria3_jenis_rumah) as maxK3
						FROM tbl_matrik");
	$max = mysql_fetch_array($crMax);

		//Buat fungsi tampilkan nama
	function getNama($id){
		$q =mysql_query("SELECT * FROm tbl_warga where nik = '$id'");
		$d = mysql_fetch_array($q);
		return $d['nama'];
	}


//Hitung Normalisasi tiap Elemen
	$sql2 = mysql_query("SELECT * FROM tbl_matrik");
	//Buat tabel untuk menampilkan hasil
	echo "<h1>Matrik Normalisasi</h1>
	<table id='example' class='display' cellspacing='0' width='100%'>
		<thead>
		<tr align='center'>
			<td>No</td>
			<td>Nama</td>
			<td>Kriteria 1</td>
			<td>Kriteria 2</td>
			<td>Kriteria 3</td>
		</tr>
		</thead>
		";
	$no = 1;
	while ($dt2 = mysql_fetch_array($sql2)) {
		echo "<tr>
			<td align='center'>$no</td>
			<td>".getNama($dt2['nik'])."</td>
			<td align='center'>".round($dt2['kriteria1_pekerjaan']/$max['maxK1'],2)."</td>
			<td align='center'>".round($dt2['kriteria2_penghasilan']/$max['maxK2'],2)."</td>
			<td align='center'>".round($dt2['kriteria3_jenis_rumah']/$max['maxK3'],2)."</td>
		</tr>";
	$no++;
	}
	echo "</table>";
?>
</html>