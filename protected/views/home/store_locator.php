<?php
$loc_sby = [
	1 => [
		'name_store' => '',
		'alamat' => '',
		'phone' => ''
	],
	[
		'name_store' => 'Suzanna Baby Shop Kertajaya',
		'alamat' => 'Jl. Kertajaya No. 163-165 Surabaya 60286, Indonesia',
		'phone' => 'Phone: (6231) 503-7884'
	],
	[
		'name_store' => 'Suzanna Baby Shop HR Muhammad',
		'alamat' => 'Jl. Hr. Muhammad No. 59 Surabaya 60189, Indonesia',
		'phone' => 'Phone: (6231) 739-2001'
	],
	[
		'name_store' => '',
		'alamat' => '',
		'phone' => ''
	]
];
?>

<?php
$loc_jkt = [
	1 => [
		'name_store' => 'Suzanna Baby Shop Kelapa Gading',
		'alamat' => 'Jl. Kelapa Gading Boulevard K4/7-10 Jakarta Utara 14240, Indonesia',
		'phone' => 'Phone: (6221) 453-0840'
	],
	[
		'name_store' => 'Suzanna Baby Shop Pondok Indah',
		'alamat' => 'Jl. Metro Pondok Indah No. 33 Jakarta Selatan 12310, Indonesia',
		'phone' => 'Phone: (6221) 7590-0826'
	],
	[
		'name_store' => 'Suzanna Baby Shop Serpong',
		'alamat' => 'Ruko Golden Boulevard 1 Blok N1-15 Jl. Pahlawan Seribu, Serpong Tangerang 15322, Indonesia',
		'phone' => 'Phone: (6221) 5316-1301'
	],
	[
		'name_store' => 'Suzanna Baby Shop Puri',
		'alamat' => 'Ruko Puri Britania T7/B30-35, Puri Indah Jakarta Barat 11610, Indonesia',
		'phone' => 'Phone: (6221) 5830-4816'
	]
];
?>

<?php
$loc_bdg = [
	1 => [
		'name_store' => 'Suzanna Baby Shop Lembong',
		'alamat' => 'Jl. Lembong No. 12-18 Bandung 40111, Indonesia',
		'phone' => 'Phone: (6222) 423-7511'
	]
];
?>

<?php
$loc_smt = [
	1 => [
		'name_store' => '',
		'alamat' => '',
		'phone' => ''
	],
	[
		'name_store' => 'Suzanna Baby Shop Medan',
		'alamat' => 'Jl. Sultan Iskandar Muda No. 25-27 Medan 20154, Indonesia',
		'phone' => 'Phone: (6261) 450-3533'
	],
	[
		'name_store' => 'Suzanna Baby Shop Palembang',
		'alamat' => 'Jl. Diponegoro No. 19 Palembang 30135, Indonesia',
		'phone' => 'Phone: (62711) 573-2001'
	],
	[
		'name_store' => '',
		'alamat' => '',
		'phone' => ''
	]
];
?>


<?php 
$cover_page = '';

if (isset($this->setting['store_hero_image'])) {
  $cover_page = Yii::app()->baseUrl.ImageHelper::thumb(1920,562, '/images/static/'. $this->setting['store_hero_image'] , array('method' => 'adaptiveResize', 'quality' => '90'));
}
?>
<section class="cover-inside" <?php if ($cover_page): ?>style="background-image: url(<?php echo $cover_page ?>);"<?php endif ?> >
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="content">
					<div class="subtitle">
						<p><?php echo $this->setting['store_hero_subtitle'] ?></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="store">
	<div class="prelative container2">
		<div class="row">
			<div class="col-md-60">
				<div class="title">
					<?php echo $this->setting['store_content'] ?>
				</div>
			</div>
		</div>
		<?php 
		// Get all address
		$criteria = new CDbCriteria;
		$criteria->group = 't.kota';
		$criteria->order = 't.id ASC';
		$address_all = Address::model()->findAll($criteria);
		?>
		<?php foreach ($address_all as $key => $value): ?>
		<div class="boxed-locator">
			<div class="title">
				<h4><?php echo ucwords($value->kota) ?></h4>
			</div>
			<div class="row justify-content-center">
				<?php 
				$criteria = new CDbCriteria;
				$criteria->addCondition('t.kota = :kota');
				$criteria->params[':kota'] = $value->kota;
				$criteria->order = 't.id ASC';
				$childs_address = Address::model()->findAll($criteria);
				?>
				<?php foreach($childs_address as $key2 => $value2): ?>
				<div class="col-md-15">
					<div class="boxed-inner">
						<div class="name_store">
							<p><?php echo $value2->nama ?></p>
						</div>
						<div class="alamat">
							<p><?php echo $value2->address_1 ?> 
							<?php if ($value2->address_2): ?>
							<br>
							<?php echo $value2->address_2; ?>
							<?php endif ?>
							</p>
						</div>
						<div class="phone">
							<p><?php echo $value2->telp ?></p>
						</div>
					</div>
				</div>
				<?php endforeach ?>
			</div>
		</div>
		<?php endforeach ?>
		
	</div>
</section>

<!--isinya ikutkan class .about-visimisi-sec-2, cari di style.less-->
<section class="store-sec-2">
</section>
