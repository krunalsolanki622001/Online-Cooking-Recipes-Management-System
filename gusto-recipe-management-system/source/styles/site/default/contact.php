<section id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo lang('global_Contact_us') ?></h2>
            </div>
            <div class="col-md-6">
                <nav id="breadcrumbs">
                    <ul>
                        <li><a href="<?php echo site_url() ?>"><?php echo lang('global_home') ?></a></li>
                        <li><?php echo lang('global_Contact_us') ?></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="image-with-caption contact">
        <img class="rsImg" src="<?php echo STYLE_IMAGES ?>/contact.jpg" alt="" />
    </div>
    <div class="row margin-top-10 margin-bottom-50">
        <!-- Contact Form -->
        <div class="col-md-9">
            <h3 class="headline"><?php echo lang('global_Get_in_touch_with_any_questions') ?></h3><span class="line margin-bottom-25"></span><div class="clearfix"></div>
            <!-- Contact Form -->
            <section id="contact" class="contact">
                <div class="contact-info row">
                    <div class="col-md-4">
                        <div class="item">
                            <i class="fa fa-mobile"></i>
                            <h5><?php echo lang('global_Phone') ?></h5>
                            <p><?php echo config('phone') ?> </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="item">
                            <i class="fa fa-envelope-o"></i>
                            <h5><?php echo lang('global_Email') ?></h5>
                            <p><?php echo config('webmaster_email') ?></p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="item">
                            <i class="fa fa-headphones"></i>
                            <h5><?php echo lang('settings_support') ?></h5>
                            <p><?php echo config('support') ?></p>
                        </div>
                    </div>
                </div>
                <!-- Success Message -->
                <div class="row">
                    <?php if ($success) : ?>
                        <div class="col-md-12">
                            <div class="alert alert-success">
                                <i class="fa fa-check-circle"></i>   
                                <?php echo lang('global_Your_Message_Sent_Successfully') ?>.
                            </div>
                        </div>
                    <?php endif; ?>
                    <?php if (validation_errors()) : ?>
                        <div class="col-md-12">
                            <div class="notification error closeable">
                                <i class="fa fa-times-circle"></i>  
                                <?php echo validation_errors() ?>
                            </div>
                        </div>
                    <?php endif; ?>
                </div>
                <!-- Form -->
                <h3 class="headline"><?php echo lang('global_Contact_Form') ?></h3><span class="line margin-bottom-25"></span><div class="clearfix"></div>
                <form method="post">
                    <fieldset>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="row">
                                    <div class="col-md-12">
                                        <label><?php echo lang('global_Name') ?>: <span>*</span></label>
                                        <input name="name" value="<?php echo set_value('name') ?>" type="text" required/>
                                    </div>

                                    <div class="col-md-12">
                                        <label><?php echo lang('global_Email') ?>: <span>*</span></label>
                                        <input name="email" value="<?php echo set_value('email') ?>" type="email" required/>
                                    </div>
                                    <div class="col-md-12">
                                        <label><?php echo lang('global_Phone') ?>:</label>
                                        <input name="phone" value="<?php echo set_value('phone') ?>" type="text"/>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <label><?php echo lang('global_Message') ?>: <span>*</span></label>
                                <textarea name="message" cols="40" rows="4" spellcheck="true" required><?php echo set_value('message') ?></textarea>
                            </div>
                            <div class="col-md-12">
                                 <div class="g-recaptcha" data-sitekey="<?php echo config('google_key') ?>"></div>
                            </div>
                        </div>
                    </fieldset>
                    <input type="submit" class="submit" value="<?php echo lang('global_Send_Message') ?>" />
                    <div class="clearfix"></div>
                </form>
            </section>
        </div>
        <!-- Contact Form -->
        <div class="col-md-3">
            <!-- Share -->
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Stay_With_US') ?></h4>
                <span class="line margin-bottom-30"></span>
                <div class="clearfix"></div>
                <div id="social_counts" class="square">
                    <?php if (config('facebook')): ?><a href="<?php echo config('facebook') ?>" class="item facebook" target="_blank"><i class="fa fa-facebook"></i></a> <?php endif ?>
                    <?php if (config('twitter')): ?><a href="<?php echo config('twitter') ?>" class="item twitter" target="_blank"><i class="fa fa-twitter"></i></a> <?php endif ?>
                    <?php if (config('instagram')): ?><a href="<?php echo config('instagram') ?>" class="item instagram" target="_blank"><i class="fa fa-instagram"></i></a> <?php endif ?>
                    <?php if (config('dribbble')): ?><a href="<?php echo config('dribbble') ?>" class="item dribbble" target="_blank"><i class="fa fa-dribbble"></i></a> <?php endif ?>
                    <?php if (config('youtube')): ?><a href="<?php echo config('youtube') ?>" class="item youtube" target="_blank"><i class="fa fa-youtube"></i></a> <?php endif ?>
                    <?php if (config('tumblr')): ?><a href="<?php echo config('tumblr') ?>" class="item tumblr" target="_blank"><i class="fa fa-tumblr"></i></a> <?php endif ?>
                    <?php if (config('vine')): ?><a href="<?php echo config('vine') ?>" class="item vine" target="_blank"><i class="fa fa-vine"></i></a> <?php endif ?>
                    <?php if (config('pinterest')): ?><a href="<?php echo config('pinterest') ?>" class="item pinterest" target="_blank"><i class="fa fa-pinterest"></i></a> <?php endif ?>
                    <?php if (config('soundcloud')): ?><a href="<?php echo config('soundcloud') ?>" class="item soundcloud" target="_blank"><i class="fa fa-soundcloud"></i></a> <?php endif ?>
                    <?php if (config('vimeo')): ?><a href="<?php echo config('vimeo') ?>" class="item vimeo" target="_blank"><i class="fa fa-vimeo"></i></a> <?php endif ?>
                    <?php if (config('behance')): ?><a href="<?php echo config('behance') ?>" class="item behance" target="_blank"><i class="fa fa-behance"></i></a> <?php endif ?>
                    <?php if (config('flickr')): ?><a href="<?php echo config('flickr') ?>" class="item flickr" target="_blank"><i class="fa fa-flickr"></i></a> <?php endif ?>
                    <?php if (config('reddit')): ?><a href="<?php echo config('reddit') ?>" class="item reddit" target="_blank"><i class="fa fa-reddit"></i></a> <?php endif ?>
                    <?php if (config('snapchat')): ?><a href="<?php echo config('snapchat') ?>" class="item snapchat" target="_blank"><i class="fa fa-snapchat"></i></a> <?php endif ?>
                    <?php if (config('whatsapp')): ?><a href="<?php echo config('whatsapp') ?>" class="item whatsapp" target="_blank"><i class="fa fa-whatsapp"></i></a> <?php endif ?>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>



