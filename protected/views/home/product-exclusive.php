<?php 
$cover_page = '';

if (isset($this->setting['product_hero_image'])) {
  $cover_page = Yii::app()->baseUrl.ImageHelper::thumb(1920,562, '/images/static/'. $this->setting['product_hero_image'] , array('method' => 'adaptiveResize', 'quality' => '90'));
}
?>
<section class="cover-inside" <?php if ($cover_page): ?>style="background-image: url(<?php echo $cover_page ?>);"<?php endif ?> >
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
				<div class="content">
					<div class="title">
						<p><?php echo $this->setting['product_hero_title'] ?></p>
					</div>
					<div class="subtitle">
						<p><?php echo $this->setting['product_hero_subtitle'] ?></p>
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
									<div class="<?php if ($active_menu_pg != 'home/product_support'): ?>active<?php endif ?>">
										<p><a href="<?php echo CHtml::normalizeUrl(array('/home/product_exclusive')); ?>">Exclusive Brands</a> </p>
									</div>
								</div>
								<div class="col-md-30">
									<div class="<?php if ($active_menu_pg == 'home/product_support'): ?>active<?php endif ?>">
										<p><a href="<?php echo CHtml::normalizeUrl(array('/home/product_support')); ?>">Supporting Brands</a></p>
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

<section class="product-exclusive-sec-1">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="boxedd">
                    <div class="inner">
                        <?php echo $this->setting['products_brand_ncontent'] ?>
                    </div>
                </div>
            </div>

            <?php 
            $criteria = new CDbCriteria;
            $criteria->with = array('description');
            $criteria->addCondition('t.type = :type');
            $criteria->params[':type'] = 'category';
            $criteria->order = 'sort ASC';
            $strCategory = PrdCategory::model()->findAll($criteria);
            ?>
            <?php foreach ($strCategory as $key => $value): ?>
            <div class="col-md-60">
                <div class="row no-gutters">
                    <?php
                    $criteria2 = new CDbCriteria;
                    $criteria2->with = array('images');
                    $criteria2->addCondition('t.active = "1"');

                    $criteria2->addCondition('t.product_id = :ids_prd');
                    $criteria2->params[':ids_prd'] = $value->id;

                    $featureds_itm = Gallery::model()->find($criteria2);
                    ?>
                    <div class="boxed prelatife"> 
                     <div id="carouselKay_<?php echo $key ?>" class="carousel slide customs_car" data-ride="carousel">
                        <div class="row prelatife no-gutters">
                            <div class="col-md-30 kiri">
                                <div class="img">
                                    <img src="<?php echo Yii::app()->baseUrl.'/images/category/'. $value->image ?>" class="img img-fluid">
                                </div>
                                <p><?php echo $value->description->desc ?></p>
                              <ol class="carousel-indicators">
                                <li data-target="#carouselKay_<?php echo $key ?>" data-slide-to="0" class="active"></li>
                                <?php if ( count($featureds_itm->images) > 0 ): ?>
                                        <?php foreach ($featureds_itm->images as $ke => $val): ?>
                                        <?php $ke = $ke + 1; ?>
                                        <li data-target="#carouselKay_<?php echo $key ?>" data-slide-to="<?php echo $ke ?>"></li>
                                        <?php endforeach ?>
                                <?php endif ?>
                              </ol>
                            </div>
                            <div class="col-md-30 kanan">
                                  <div class="carousel-inner">
                                    <div class="carousel-item active">
                                      <img class="d-block w-100" src="<?php echo Yii::app()->baseUrl.'/images/gallery/'. $featureds_itm->image ?>" alt="">
                                    </div>
                                    <?php if ( count($featureds_itm->images) > 0 ): ?>
                                        <?php foreach ($featureds_itm->images as $ke => $val): ?>
                                        <div class="carousel-item">
                                          <img class="d-block w-100" src="<?php echo Yii::app()->baseUrl.'/images/gallery/'. $val->image ?>" alt="">
                                        </div>
                                        <?php endforeach ?>
                                    <?php endif ?>
                                  </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- end boxed -->
                </div>
            </div>
            <?php endforeach ?>

            <!-- <div class="col-md-60">
                <div class="row no-gutters">
                    <div class="boxed"> 
                        <div class="row">

                            <div class="col-md-30 kiri">
                                <div class="img">
                                    <img src="<?php echo $this->assetBaseurl; ?>royal.png" alt="">
                                </div>
                                <p>Since 1999, our compassionate and comitted founders have advanced our mission: to bring modern smart products and promote exclusive quality products to every mother and baby in Indonesia. We brought impact to the early stages of maternity and life birth of a baby, both physically and emotionally. </p>
                            </div>
                            <div class="col-md-30 kanan">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-60">
                <div class="row no-gutters">
                    <div class="boxed"> 
                        <div class="row">

                            <div class="col-md-30 kiri">
                                <div class="img">
                                    <img src="<?php echo $this->assetBaseurl; ?>cam.png" alt="">
                                </div>
                                <p>Since 1999, our compassionate and comitted founders have advanced our mission: to bring modern smart products and promote exclusive quality products to every mother and baby in Indonesia. We brought impact to the early stages of maternity and life birth of a baby, both physically and emotionally. </p>
                            </div>
                            <div class="col-md-30 kanan">
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="col-md-60">
                <div class="row no-gutters">
                    <div class="boxed"> 
                        <div class="row">

                            <div class="col-md-30 kiri">
                                <div class="img">
                                    <img src="<?php echo $this->assetBaseurl; ?>gee.png" alt="">
                                </div>
                                <p>Since 1999, our compassionate and comitted founders have advanced our mission: to bring modern smart products and promote exclusive quality products to every mother and baby in Indonesia. We brought impact to the early stages of maternity and life birth of a baby, both physically and emotionally. </p>
                            </div>
                            <div class="col-md-30 kanan">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
             -->
        </div>
    </div>
</section>

<section class="product-exclusive-sec-2">
    
</section>
