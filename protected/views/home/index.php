<section class="home-sec-1">
    <div class="prelative container">
        <div class="row">

            <div class="col-md-30">
                <div class="boxed-descriptions">
                    <div class="inner">
                        <h3><?php echo nl2br($this->setting['home_sect1_titles']) ?></h3>
                        <?php echo $this->setting['home_sect1_desc'] ?>
                        <button class="our-button"><a target="_blank" href="<?php echo $this->setting['home_sect1_links_banner'] ?>"><?php echo $this->setting['home_sect1_textlinks_banner'] ?></a></button>
                    </div>
                </div>
            </div>
            <div class="col-md-30">
                <div class="boxed-images">
                    <div class="inner-left">
                        <img class="" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(500,513, '/images/static/'. $this->setting['home_sect1_pictures'] , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="">
                    </div>
				</div>
            </div>


            <div class="col-md-30 d-none d-sm-block">
                <div class="boxed-images">
                    <div class="inner-right">
                        <img class="" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(694,620, '/images/static/'. $this->setting['home_sect2_pictures'] , array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="">
                    </div>
                </div>
            </div>
            <div class="col-md-30">
                <div class="boxed-descriptions section-kanan-home1">
                    <div class="inner">
                        <h3><?php echo nl2br($this->setting['home_sect2_titles']) ?></h3>
                        <?php echo $this->setting['home_sect2_desc'] ?>
                        <button class="our-button"><a target="_blank" href="<?php echo $this->setting['home_sect2_links_banner'] ?>"><?php echo $this->setting['home_sect2_textlinks_banner'] ?></a></button>
                    </div>
                </div>
            </div>
			<div class="col-md-30 d-block d-sm-none">
				<div class="boxed-images">
					<div class="inner-right">
						<img src="<?php echo $this->assetBaseurl; ?>Ellipse-3-copy.png" alt="">
					</div>
				</div>
			</div>
        </div>
    </div>
</section>
    
<section class="home-sec-2">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-15">
                <div class="boxed">
                    <div class="inner1">
                        <h4><?php echo $this->setting['home_sect3_store_value'] ?>+</h4>
                        <p>Stores</p>
                    </div>
                </div>
            </div>
            <div class="col-md-15">
                <div class="boxed">
                    <div class="inner2">
                        <h4><?php echo $this->setting['home_sect3_human_value'] ?>+</h4>
                        <p>Human Resources</p>
                    </div>
                </div>
            </div>
            <div class="col-md-15">
                <div class="boxed">
                    <div class="inner3">
                        <h4><?php echo $this->setting['home_sect3_brands_value'] ?>+</h4>
                        <p>Brands</p>
                    </div>
                </div>
            </div>
            <div class="col-md-15">
                <div class="boxed">
                    <div class="inner4">
                        <h4><?php echo $this->setting['home_sect3_productSku_value'] ?>+</h4>
                        <p>Product SKUs</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="home-sec-3">
    <div class="prelative container">
        <div class="row no-gutters">
            <div class="col-md-60">
                <h3>Our Exclusive Brands</h3>
            </div>
            <?php 
            $criteria = new CDbCriteria;
            $criteria->with = array('description');
            $criteria->addCondition('t.type = :type');
            $criteria->params[':type'] = 'category';
            $criteria->order = 'sort ASC';
            $strCategory = PrdCategory::model()->findAll($criteria);
            $jumlah_cat = count($strCategory) - 1;
            ?>
            <?php foreach ($strCategory as $key => $value): ?>
            <div class="col-md-15 col-30">
                <div class="image <?php if ($key == $jumlah_cat): ?>kanan<?php endif ?>">
					<img class="w-100" src="<?php echo Yii::app()->baseUrl.'/images/category/'. $value->image ?>" alt="">
				</div>
            </div>
            <?php endforeach ?>

        </div>
    </div>
	<img class="d-block d-sm-none" src="<?php echo $this->assetBaseurl; ?>home-sec-3_02-mob.jpg" alt="">
</section>

