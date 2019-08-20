<?php 
$cover_page = '';

if (isset($this->setting['about_hero_image'])) {
  $cover_page = Yii::app()->baseUrl.ImageHelper::thumb(1920,562, '/images/static/'. $this->setting['about_hero_image'] , array('method' => 'adaptiveResize', 'quality' => '90'));
}
?>
<section class="cover-inside" <?php if ($cover_page): ?>style="background-image: url(<?php echo $cover_page ?>);"<?php endif ?> >
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="content">
                    <div class="title">
                        <p><?php echo $this->setting['about_hero_title'] ?></p>
                    </div>
                    <div class="subtitle">
                        <p><?php echo $this->setting['about_hero_subtitle'] ?></p>
                    </div>
                </div>
            </div>
        </div>
		<div class="blocks_bottomnavcover">
			<div class="d-block mx-auto text-center inner-midle">
				<div class="row">
					<div class="col-md-60">
						<div class="box-model">
							<div class="row no-gutters">
								<div class="col-md-30">
									<div class="<?php if ($active_menu_pg == 'home/visimisi'): ?>active<?php endif ?>">
										<p><a href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">Our Background</a> </p>
									</div>
								</div>
								<div class="col-md-30">
									<div class="<?php if ($active_menu_pg != 'home/visimisi'): ?>active<?php endif ?>">
										<p><a href="<?php echo CHtml::normalizeUrl(array('/home/visimisi')); ?>">Vision & Mission</a></p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
    </div>
</section>


<section class="about-visimisi-sec-1">
    <div class="prelative container">
        <div class="prelative container2">
            <div class="row">
                <div class="col-md-60">
                    <div class="boxed-tittle-visimisi">
                        <div class="inner">
                            <?php echo $this->setting['about3_vision_content'] ?>
                        </div>
                    </div>
                </div>
                <div class="col-md-30">
                    <div class="row">
                        <div class="col-md-20">
                            <h3>Vision</h3>
                        </div>
                        <div class="col-md-40">
                            <div class="divide"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-30">
                    <?php echo $this->setting['about3_visi'] ?>
                </div>
                <div class="col-md-30">
                    <div class="row">
                        <div class="col-md-20">
                            <h3>Mission</h3>
                        </div>
                        <div class="col-md-40">
                            <div class="divide"></div>
                        </div>
                    </div>
                </div>
                <div class="col-md-30">
                <?php echo $this->setting['about3_misi'] ?>
                </div>
            </div>

            <div class="row">
                <div class="col-md-60">
                    <div class="img">
                        <img class="w-100"src="<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['about3_pictures_banner_middle'] ?>" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="about-visimisi-sec-2">
</section>
