<section class="home-sec-4">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="image">
                    <img class="" src="<?php echo $this->assetBaseurl; ?>best.png" alt="">
                </div>
                <div class="subtitle">
                    <h3>Get In Touch With Suzanna Babyshop</h3>
                </div>
                <div class="caption">
                    <p>Our resourceful team will get in touch with you, please leave your contact detail below.</p>
                </div>
            </div>
            <form>
                <div class="form-row">
                    <div class="row">
                        <div class="col-md-17">
                            <input type="text" class="form-control" placeholder="Your Name">
                        </div>
                        <div class="col-md-17">
                            <input type="text" class="form-control" placeholder="Your Email">
                        </div>
                        <div class="col-md-17">
                            <input type="text" class="form-control" placeholder="Your Mobile Phone">
                        </div>
                        <div class="col-md-9">
                            <button class="submit">Submit</button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
</section>

<section class="home-sec-5">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-15 col-30">
                <div class="box-content">
                    <a href="#">
                        <div class="image">
                            <img class="" src="<?php echo $this->assetBaseurl; ?>WA-Logo-copy.png" alt="">
                        </div>
                        <h6>Whatsapp Hotline</h6>
                        <p><a href="https://wa.me/<?php echo str_replace(' ', '', $this->setting['contact_wa']) ?>"><?php echo $this->setting['contact_wa'] ?></a> (Click to chat)</p>
                    </a>
                </div>
            </div>
            <div class="col-md-15 col-30">
                <div class="box-content">
                    <a href="#">
                        <div class="image">
                            <img class="" src="<?php echo $this->assetBaseurl; ?>mail.png" alt="">
                        </div>
                        <h6>Email</h6>
                        <p><a href="mailto:<?php echo $this->setting['contact_email'] ?>"><?php echo $this->setting['contact_email'] ?></a></p>
                    </a>
                </div>
            </div>
            <div class="col-md-15 col-30">
                <div class="box-content">
                    <a target="_blank" href="https://facebook.com/<?php echo $this->setting['url_facebook'] ?>">
                        <div class="image">
                            <img class="" src="<?php echo $this->assetBaseurl; ?>ig.png" alt="">
                        </div>
                        <h6>Instagram</h6>
                        <p><?php echo $this->setting['url_facebook'] ?></p>
                    </a>
                </div>
            </div>
            <div class="col-md-15 col-30">
                <div class="box-content kanan">
                    <a target="_blank" href="https://instagram.com/<?php echo $this->setting['url_instagram'] ?>">
                        <div class="image ">
                            <img class="" src="<?php echo $this->assetBaseurl; ?>fb.png" alt="">
                        </div>
                        <h6>Facebook</h6>
                        <p><?php echo $this->setting['url_instagram'] ?></p>
                    </a>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>

<section class="footer">
    <div class="prelative container">
        <div class="row">

            <div class="col-md-30">
                <div class="image">
                    <img class="" src="<?php echo $this->assetBaseurl; ?>logo-footer.png" alt="">
                    <p>Copyright © 2019 - Suzanna Babyshop. <br> All rights reserved.</p>
                </div>
            </div>
            <div class="col-md-30">
                <div class="by">
                    <p>Website design by <a href="https://www.markdesign.net/">Mark Design</a></p>
                </div>
            </div>
        </div>

    </div>
</section>
