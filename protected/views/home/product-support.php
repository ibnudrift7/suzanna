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
									<div class="<?php if ($active_menu_pg == 'home/product_support'): ?>active<?php endif ?>">
										<p><a href="<?php echo CHtml::normalizeUrl(array('/home/product_exclusive')); ?>">Exclusive Brands</a> </p>
									</div>
								</div>
								<div class="col-md-30">
									<div class="<?php if ($active_menu_pg != 'home/product_support'): ?>active<?php endif ?>">
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


<section class="product-support-sec-1">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="boxed">
                    <div class="inner">
                        <?php echo $this->setting['products_topbrand_ncontent'] ?>
                    </div>
                </div>
            </div>
            <div class="col-md-60">
            	<?php 
            	$criteria = new CDbCriteria;
	            $criteria->with = array('description');
	            $find_brands = Brand::model()->findAll($criteria);
            	?>
            	<div class="blocks_list_brands spage">
            		<ul class="list-inline text-center justify-content-center m-0">
            		<?php foreach ($find_brands as $key => $value): ?>
                		<li class="list-inline-item pb-3">
                			<img class="img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/brand/'. $value->image ?>" alt="">
                		</li>
            		<?php endforeach ?>
            		</ul>
            		<div class="clear"></div>
            	</div>
            </div>
            <div class="col-md-60">
            	<div class="py-5"></div>
            	<div class="py-5"></div>
            	<div class="py-5"></div>
            </div>

        </div>
    </div>
</section>


<!-- <section class="product-support-sec-2">

</section>
 -->