<header class="header <?php if ($active_menu_pg != 'home/index'): ?>header-mantap<?php endif ?>">
  <div class="d-none d-sm-none d-md-block d-lg-block">
      <div class="prelative container pt-1 pb-0 inners_head">
          <div class="row">
              <div class="col-md-20">
                  <div class="pt-2">
                      <a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">
                          <img src="<?php echo $this->assetBaseurl; ?>logo-header.png" alt="">
                      </a>
                  </div>
              </div>
              <div class="col-md-40">
                  <div class="tops_head_info pb-2 text-right">
                      <p>
                      Whatsapp &nbsp;&nbsp;<i class="fa fa-whatsapp"></i> <a href="https://wa.me/<?php echo str_replace(' ', '', $this->setting['contact_wa']) ?>"><?php echo $this->setting['contact_wa'] ?></a> &nbsp;&nbsp;&nbsp;
                      Email <i class="fa fa-envelope-o"></i> <a href="mailto:<?php echo $this->setting['contact_email'] ?>"><?php echo $this->setting['contact_email'] ?></a>
                      </p>
                  </div>

                  <div class="top-menu text-right">
                      <ul class="list-inline">
                          <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
                          <li class="list-inline-item dropdown">
                              <a class="nav-link dropdown-toggle" href="#" id="navbarAbout" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                  About Us
                              </a>
                              <div class="dropdown-menu" aria-labelledby="navbarAbout">
                                  <ul class="list-unstyled">
                                      <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">Our Background</a></li>
                                      <li><a href="<?php echo CHtml::normalizeUrl(array('/home/visimisi')); ?>">Vision & Mission</a></li>
                                  </ul>
                              </div>
                          </li>
                          <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/product_exclusive')); ?>">Products</a></li>
                          <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/partnership')); ?>">Partnership</a></li>
                          <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/store_locator')); ?>">Store Location</a></li>
                          <li class="list-inline-item last contacts"><a href="<?php echo CHtml::normalizeUrl(array('/home/contact')); ?>">Contact Us</a></li>
                        </ul>
                  </div>
              </div>
          </div>
      </div>

    </div>
    <div class="d-block d-sm-block d-md-none">
      <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">
          <img src="<?php echo $this->assetBaseurl ?>logo-footer.png" alt="" class="img-fluid img">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">About Us</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">Product</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/merk')); ?>">Partnership</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/jadiagen')); ?>">Store Location</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/hubungi')); ?>">Contact Us</a></li>
          </ul>
        </div>
      </nav>
    </div>
</header>

<section id="myAffix" class="header-affixs affix-top">
  <div class="clear height-15"></div>
  <div class="prelatife container">
    <div class="row">
      <div class="col-md-15 col-sm-15">
        <div class="lgo_web_headrs_wb">
          <a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">
            <img src="<?php echo $this->assetBaseurl; ?>logo-footer.png" alt="" class="img img-fluid">
          </a>
        </div>
      </div>
      <div class="col-md-45 col-sm-45">
        <div class="text-right"> 
          <div class="menu-taffix">
            <ul class="list-inline d-inline">
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">About Us</a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/product_exclusive')); ?>">Product</a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/partnership')); ?>">Partnership</a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/store_locator')); ?>">Store Location</a></li>
              <li class="list-inline-item last contacts"><a href="<?php echo CHtml::normalizeUrl(array('/home/contact')); ?>">Contact Us</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</section>

<header class="header-mobile homepage_head">
	<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
		<a class="navbar-brand" href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>"><img src="<?php echo $this->assetBaseurl; ?>logo-footer.png" alt="" class="img img-fluid"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="true" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="navbar-collapse collapse" id="navbarSupportedContent" style="">
			<ul class="navbar-nav mr-auto">
				<li class="list-inline-item menu"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
				<li class="list-inline-item menu"><a href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">About Us</a></li>
				<li class="list-inline-item menu"><a href="<?php echo CHtml::normalizeUrl(array('/home/product_exclusive')); ?>">Product</a></li>
				<li class="list-inline-item menu"><a href="<?php echo CHtml::normalizeUrl(array('/home/partnership')); ?>">Partnership</a></li>
				<li class="list-inline-item menu"><a href="<?php echo CHtml::normalizeUrl(array('/home/store_locator')); ?>">Store Location</a></li>
				<li class="list-inline-item menu"><a href="<?php echo CHtml::normalizeUrl(array('/home/contact')); ?>">Contact</a></li>
			</ul>
		</div>
	</nav>
</header>


<script type="text/javascript">
  $(document).ready(function(){
      // $('.nl_popup a').live('hover', function(){
      //     $('.popup_carts_header').fadeIn();
      // });
      // $('.popup_carts_header').live('mouseleave', function(){
      //   setTimeout(function(){ 
      //       $('.popup_carts_header').fadeOut();
      //   }, 500);
      // });
  });
</script>


<script type="text/javascript">
  $(document).ready(function(){
      // $('.nl_popup a').live('hover', function(){
      //     $('.popup_carts_header').fadeIn();
      // });
      // $('.popup_carts_header').live('mouseleave', function(){
      //   setTimeout(function(){
      //       $('.popup_carts_header').fadeOut();
      //   }, 500);
      // });
      $('a.closes_btn').on('click', function(){
        $('.collapsesn_viewmenu').removeClass('show');
      });
      $('.navbar-toggler').on('click', function(){
        $('.collapsesn_viewmenu').addClass('show');
      });

      var ns_height = $(window).height();
      $('.collapsesn_viewmenu').css('height', ns_height+"px");
  });
  $(function(){

// show and hide m\enu responsive
    $('a.showmenu_barresponsive').on('click', function() {
      $('.outer-blok-black-menuresponss-hides').slideToggle('slow');
      return false;
    });
    $('a.closemrespobtn').on('click', function() {
      $('.outer-blok-black-menuresponss-hides').slideUp('slow');
      return false;
        });
        
    });
</script>
<script type="text/javascript">
  $(function(){

  var sn_width = $(window).width();
  if (sn_width > 1150) {

      $(window).scroll(function(){
        var sntop1 = $(window).scrollTop();

        if(sntop1 > 115){
          // console.log(sntop1);
          $('.header-affixs').removeClass('affix-top').addClass('affix');
          $('.header-affixs').addClass('affix');
        }else{
          $('.header-affixs.affix').removeClass('affix').addClass('affix-top');
          $('body').css('padding-top', '0px');
        }
      });

    }

  });
</script>

<style>

</style>
