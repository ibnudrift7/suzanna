<?php
$loc_sby = [
	1 => [
		'name_store' => 'Suzanna Baby Shop Kertajaya',
		'alamat' => 'Jl. Kertajaya No. 163-165 Surabaya 60286, Indonesia',
		'phone' => 'Phone: (6231) 503-7884'
	],
	[
		'name_store' => 'Suzanna Baby Shop HR Muhammad',
		'alamat' => 'Jl. Hr. Muhammad No. 59 Surabaya 60189, Indonesia',
		'phone' => 'Phone: (6231) 739-2001'
	]
];
?>

<?php
$loc_jkt = [
	1 => [
		'name_store' => 'Suzanna Baby Shop Kertajaya',
		'alamat' => 'Jl. Kertajaya No. 163-165 Surabaya 60286, Indonesia',
		'phone' => 'Phone: (6231) 503-7884'
	],
	[
		'name_store' => 'Suzanna Baby Shop HR Muhammad',
		'alamat' => 'Jl. Hr. Muhammad No. 59 Surabaya 60189, Indonesia',
		'phone' => 'Phone: (6231) 739-2001'
	]
];
?>


<section class="cover-inside contact">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="content">
					<!--					<div class="title">-->
					<!--						<p>Contact Us</p>-->
					<!--					</div>-->
					<div class="subtitle">
						<!--						<p>Our Background</p>						-->
						<p>Store Location</p>
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
					<h3>Please feel free to find and contact the nearest Suzanna Baby Shop to your location</h3>
				</div>
			</div>
		</div>
		<div class="boxed-locator">
			<div class="title">
				<h4>Surabaya</h4>
			</div>
			<div class="row">
				<?php foreach($loc_sby as $key => $value): ?>
				<div class="col-md-15">
					<div class="boxed-inner">
						<div class="name_store">
							<p><?php echo $value['name_store'] ?></p>
						</div>
						<div class="alamat">
							<p><?php echo $value['alamat'] ?></p>
						</div>
						<div class="phone">
							<p><?php echo $value['phone'] ?></p>
						</div>
					</div>
				</div>
				<?php endforeach ?>
			</div>
		</div>
		<div class="boxed-locator">
			<div class="title">
				<h4>Jakarta</h4>
			</div>
			<div class="row">
				<?php foreach($loc_sby as $key => $value): ?>
					<div class="col-md-15">
						<div class="boxed-inner">
							<div class="name_store">
								<p><?php echo $value['name_store'] ?></p>
							</div>
							<div class="alamat">
								<p><?php echo $value['alamat'] ?></p>
							</div>
							<div class="phone">
								<p><?php echo $value['phone'] ?></p>
							</div>
						</div>
					</div>
				<?php endforeach ?>
			</div>
		</div>
		<div class="boxed-locator">
			<div class="title">
				<h4>Bandung</h4>
			</div>
			<div class="row">
				<?php foreach($loc_sby as $key => $value): ?>
					<div class="col-md-15">
						<div class="boxed-inner">
							<div class="name_store">
								<p><?php echo $value['name_store'] ?></p>
							</div>
							<div class="alamat">
								<p><?php echo $value['alamat'] ?></p>
							</div>
							<div class="phone">
								<p><?php echo $value['phone'] ?></p>
							</div>
						</div>
					</div>
				<?php endforeach ?>
			</div>
		</div>
		<div class="boxed-locator">
			<div class="title">
				<h4>Sumatra</h4>
			</div>
			<div class="row">
				<?php foreach($loc_sby as $key => $value): ?>
					<div class="col-md-15">
						<div class="boxed-inner">
							<div class="name_store">
								<p><?php echo $value['name_store'] ?></p>
							</div>
							<div class="alamat">
								<p><?php echo $value['alamat'] ?></p>
							</div>
							<div class="phone">
								<p><?php echo $value['phone'] ?></p>
							</div>
						</div>
					</div>
				<?php endforeach ?>
			</div>
		</div>
	</div>
</section>

<!--isinya ikutkan class .about-visimisi-sec-2, cari di style.less-->
<section class="store-sec-2">
</section>
