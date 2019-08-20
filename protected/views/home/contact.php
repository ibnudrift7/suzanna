<?php 
$cover_page = '';

if (isset($this->setting['contact_hero_image'])) {
  $cover_page = Yii::app()->baseUrl.ImageHelper::thumb(1920,562, '/images/static/'. $this->setting['contact_hero_image'] , array('method' => 'adaptiveResize', 'quality' => '90'));
}
?>
<section class="cover-inside contact" <?php if ($cover_page): ?>style="background-image: url(<?php echo $cover_page ?>);"<?php endif ?> >
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="content">
<!--					<div class="title">-->
<!--						<p>Contact Us</p>-->
<!--					</div>-->
					<div class="subtitle">
<!--						<p>Our Background</p>						-->
					<?php echo $this->setting['contact_hero_subtitle'] ?>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="contact-sec-1">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="title">
					<?php echo $this->setting['contact_content'] ?>
				</div>
				<div class="shop-hotline">
					<h5>Suzanna Baby Shop Hotline</h5>
					<div class="isi">
						<div class="row">
							<div class="col-md-30">
								<p><a href="https://wa.me/<?php echo str_replace(' ', '', $this->setting['contact_wa']) ?>"><?php echo $this->setting['contact_wa'] ?> (Click to chat)</a></p>
							</div>
							<div class="col-md-30">
								<p><a href="mailto:<?php echo $this->setting['contact_email'] ?>"><?php echo $this->setting['contact_email'] ?></a></p>
							</div>
						</div>
					</div>
				</div>
				<div class="shop-hotline">
					<h5>Suzanna Baby Shop Head Office</h5>
					<h6><?php echo $this->setting['contact_address'] ?></h6>
				</div>
				<div class="for-any">
					<p><?php echo $this->setting['contact_topcontacts'] ?></p>
				</div>
			</div>
		</div>
	</div>
</section>


<section class="contact-sec-2">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="subtitle">
					<h3><?php echo $this->setting['contact_top_form_titles'] ?></h3>
				</div>
				<div class="caption">
					<p><?php echo $this->setting['contact_top_form_subtitles'] ?></p>
				</div>
			</div>
			<form>
				<div class="form-row">
					<div class="row">
						<div class="col-md-20">
							<input type="text" class="form-control" placeholder="Your Name">
						</div>
						<div class="col-md-20">
							<input type="text" class="form-control" placeholder="Your Email">
						</div>
						<div class="col-md-20">
							<input type="text" class="form-control" placeholder="Your Mobile Phone">
						</div>
						<div class="col-md-60"><textarea name="" id="" cols="" rows=""></textarea></div>
						<div class="col-md-60">
							<button class="submit">Submit</button>
						</div>
					</div>
				</div>
			</form>
		</div>
</section>

