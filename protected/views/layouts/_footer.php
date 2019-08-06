
<?php if($this->id.'/'.$this->action->id != "home/jadiagen"): ?>
<section class="footer-sec-1">
    <div class="prelative container mx-auto">
        <div class="row mx-auto">
            <div class="content mx-auto">
                <?php echo $this->setting['home_section5_content'] ?>
            </div>
            <form class="mx-auto pt-4" action="<?php echo CHtml::normalizeUrl(array('/home/hubungi')); ?>" method="POST">
                <div class="row mx-auto">
                <div class="col-sm-15 col-md-15 input-footer"><input type="text" class="form-control" name="ContactForm[name]" placeholder="NAMA"></div>
                <div class="col-sm-15 col-md-15 input-footer"><input type="text" class="form-control" name="ContactForm[phone]" placeholder="TELEPON"></div>
                <div class="col-sm-15 col-md-15 input-footer"><input type="text" class="form-control" name="ContactForm[email]" placeholder="EMAIL"></div>
                <div class="col-sm-15 col-md-15 input-footer"><button type="submit" class="btn tombol-subcribe">Submit</button></div>
                </div>
            </form>
            <div class="content-footer mx-auto pt-4">
               <?php echo $this->setting['home_section5_btmcontent'] ?>
            </div>
        </div>
    </div>
</section>
<?php endif; ?>

<section class="footer-sec-2">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-15 contentb-grey">
                <div class="content1 mx-auto text-center d-block">
                    <img src="<?php echo $this->assetBaseurl; ?>logo-footer.png" alt="">
                </div>
            </div>
            <div class="col-md-15 contentb-grey1">
                <div class="content2">
                    <a href="#">
                        <p><span>
                            <img src="<?php echo $this->assetBaseurl; ?>footer-wa.png" alt="">
                        </span>Whatsapp. 082154073738</p>
                    </a>
                </div>
            </div>
            <div class="col-md-15 contentb-grey2">
                <div class="content3">
                    <a href="#">
                        <p><span>
                            <img src="<?php echo $this->assetBaseurl; ?>telp-footer.png" alt="">
                        </span>Telephone. 0511-325510</p>
                    </a>
                </div>
            </div>
            <div class="col-md-15 contentb-grey1">
                <div class="content4">
                    <a href="#">
                        <p><span>
                            <img src="<?php echo $this->assetBaseurl; ?>email-footer.png" alt="">
                        </span>Email. arsimetris_djaja@yahoo.co.id</p>
                    </a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="footer-sec-3">
    <div class="prelative container pt-5 pb-4">
        <div class="row ">
            <div class="col-md-60 mx-auto">
                <div class="copyright mx-auto text-center d-block">
                    <p>Copyright © PT. Arsimetris Djaja - Banjarmasin, Kalimantan Selatan. Website design by <a href="https://www.markdesign.net/">
                    Mark Design Indonesia.  </a> 
                    </p>
                </div>
            </div>
            <div class="col-md-60 mx-auto text-center d-block">
                <div class="layanan">
                    <p>Layayan Arsimetris Djaja Banjarmasin:</p>
                </div>
            </div>
            <div class="col-md-60">
                <div class="bawah-layanan mx-auto d-block text-center">
                    <p>Arsimetris Djaja adalah galeri granit tile dan distributor aneka material bahan bangunan terbesar di Banjarmasin, Kalimantan Selatan. Kami adalah agen resmi dan distributor dari berbagai merk seperti Niro Granit Tile, Meridian, Hal Mar Sanitary, Sola Hart water heater, GRC Board, Elephant gypsum, Toto Sanitary, Orin, Onduline roof / atap, dan masih banyak lagi.</p>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="live-chat">
    <div class="row">
        <div class="col-md-60">
            <div class="live">
                <a href="#">
                    <img src="<?php echo $this->assetBaseurl; ?>LIVE-CHAT.png" alt="">
                </a>
            </div>
        </div>
    </div>
</section>