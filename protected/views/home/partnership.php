<?php 
$cover_page = '';

if (isset($this->setting['partner_hero_image'])) {
  $cover_page = Yii::app()->baseUrl.ImageHelper::thumb(1920,562, '/images/static/'. $this->setting['partner_hero_image'] , array('method' => 'adaptiveResize', 'quality' => '90'));
}
?>
<section class="cover-inside contact" <?php if ($cover_page): ?>style="background-image: url(<?php echo $cover_page ?>);"<?php endif ?> >
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="content">
					<div class="title">
                        <!-- <p><?php // echo $this->setting['partner_hero_title'] ?></p> -->
                    </div>
					<div class="subtitle">
						<p><?php echo $this->setting['partner_hero_subtitle'] ?></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="partnership">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="boxed-inner">
					<?php echo $this->setting['partner_content'] ?>
				</div>
			</div>

			<div class="col-md-30">
				<div class="title">
					<p><?php echo $this->setting['partner_principals_title'] ?></p>
				</div>
				<div class="content">
					<?php echo $this->setting['partner_principals_content'] ?>
				</div>
			</div>
			<div class="col-md-30">
				<div class="title">
					<p><?php echo $this->setting['partner_agents_title'] ?></p>
				</div>
				<div class="content">
					<?php echo $this->setting['partner_agents_content'] ?>
				</div>
			</div>
			<div class="image">
				<img class="img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['partners2_picture_banners'] ?>" alt="">
			</div>
		</div>
	</div>
</section>


<!--isinya ikutkan class .about-visimisi-sec-2, cari di style.less-->
<section class="partner-sec-2">
</section>
