<!-- <section class="cover-home">
	<div class="prelative container">
		<div class="container2 mx-auto">
			<div class="row mx-auto">
				<div class="col-md-60 mx-auto pt-3">
					<h2 class="text-center">Galery Granit Tile Terbesar dan Pusat Aneka Material Bahan Bangunan, <br>
					Menyediakan Koleksi Terlengkap di Banjarmasin, Kalsel.</h2>
				</div>
				<div class="col-md-60 mx-auto">
                    <button class="profil mx-auto text-center d-block ">Lihat Produk Kami</button>
                </div>
			</div>
		</div>
	</div>
</section> -->
 
<section class="home-sec-1">
	<div class="prelative container">
		<div class="container2 mx-auto py-4">
			<div class="row">
				<div class="content py-4">
					<?php echo $this->setting['home_section2_content']; ?>
				</div>
			</div>
		</div>
	</div>
</section>

<section class="home-sec-2">
	<div class="prelative container pt-5">
		<div class="container2 mx-auto">
			<div class="row pt-5 pb-5 mb-5">
				<h3 class="pb-4"><?php echo $this->setting['home_section3_title'] ?></h3>
				<?php

				$criteria = new CDbCriteria;
				$criteria->with = array('description');
				$criteria->addCondition('t.type = :type');
				$criteria->params[':type'] = 'category';
				$criteria->addCondition('description.language_id = :language_id');
				$criteria->params[':language_id'] = $this->languageID;
				$criteria->order = 'sort ASC';

				$ParentsCategory = PrdCategory::model()->findAll($criteria);
				?>
				<?php foreach ($ParentsCategory as $key => $value): ?>
				<div class="col-md-20 pt-4">
					<div class="box-product">
						<a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'category'=> $value->id)); ?>">
							<img class="w-100 d-block img img-fluid" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(352,173, '/images/category/'. $value->image, array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="<?php echo $value->description->name; ?>">
						</a>
						<div class="content py-4 pl-4 pr-4">
							<h1><?php echo ucwords(strtolower( $value->description->name )); ?></h1>
							<p class="isi"><?php echo $value->description->desc; ?></p>
							<div class="lihat-produk pt-3">
								<a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'category'=> $value->id)); ?>">
									<p>Lihat Produk<span><img class="arrow" src="<?php echo $this->assetBaseurl; ?>arrow.png" alt=""></span></p>
								</a>
							</div>
						</div>
					</div>					
				</div>	
				<?php endforeach ?>

			</div>
		</div>
	</div>
</section>

<section class="home-sec-3 pb-5">
	<div class="prelative container">
		<div class="container2 mx-auto pt-5">
			<div class="row pt-3">
				<div class="content">
					<h3><?php echo $this->setting['home_section4_title'] ?></h3>
					<?php 
					$criteria = new CDbCriteria;
					$criteria->with = array('description');
					$criteria->addCondition('active = "1"');
					$criteria->addCondition('description.language_id = :language_id');
					$criteria->params[':language_id'] = $this->languageID;
					// $criteria->order = 'date_input DESC';
					$modelArsim = Brand::model()->findAll($criteria);
					?>
					<div class="py-3 mb-1"></div>
					<div class="row">
						<?php foreach ($modelArsim as $key => $value): ?>
						<div class="col-md-15 col-30">
							<img src="<?php echo Yii::app()->baseUrl; ?>/images/brand/<?php echo $value->image ?>" alt="">
						</div>
						<?php endforeach ?>
					</div>

				</div>
			</div>
		</div>
	</div>
</section>

