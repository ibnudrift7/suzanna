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
								  <div class="<?php if ($active_menu_pg != 'home/visimisi'): ?>active<?php endif ?>">
									  <p><a href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">Our Background</a> </p>
								  </div>
							  </div>
							  <div class="col-md-30">
								  <div class="<?php if ($active_menu_pg == 'home/visimisi'): ?>active<?php endif ?>">
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

<section class="about-background-sec-1">
        <div class="prelative container">
            <div class="row">
                <div class="col-md-60">
                    <div class="boxed-tittle-background">
                        <div class="inner">
                            <?php echo $this->setting['about1_content'] ?>
                        </div>
                    </div>
                </div>
                <!-- <div class="col-md-60">
                    <div class="boxed-subtitle-background">
                        <div class="inner">
                            <p>Widespread in 5 major cities in Indonesia, the country that has 250 million people, Suzanna Baby Shop has consolidated its presence and position, with the total of 9 branches across the country. Each branch has significatly large area of approximately around 1,000 square metres with a considerably clean and comfortable environment with safe location.</p>
                            <p>Selling with a range of over thousands of products from birth to 10 years of age, surely makes us to be able to fulfill the baby and kid needs, and not forgetting the complete needs of mothers. We also try at best to provide both domestic and international brands, prioritizing on quality, comfort and safety for each brand.</p>
                            <p>Accompanied with courtesy, warmth and product knowledge by our dedicated employees, we are confident that each product can represent its attractiveness, uniqueness and features. At last, we always strive to be the best in the retail store industry for baby and kid, encompassing primarily on the products’ variety, quality, competitive price and the most convenience way to shop for our customers.</p>
                        </div>
                    </div>
                </div> -->
            </div>
        </div>
    </section>
    
    <section class="about-background-sec-2">
        <div class="prelative container">
            <div class="row">
                <div class="col-md-30 up">
                    <div class="img">
                    <img src="<?php echo Yii::app()->baseUrl.'/images/static/'. $this->setting['about2_pictures_banner']; ?>" alt="">

                    </div>
                </div>
                <div class="col-md-30 up">

                    <?php echo $this->setting['about2_content'] ?>

                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </section>

    
<section class="about-background-sec-3">
</section>
