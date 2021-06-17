<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <title><?php echo config('title') ?></title>
        <meta name="author" content="Marwa El-Manawy <marwa@elmanawy.info>" />
        <meta name="description" content="<?php echo config('meta_description') ?>">
        <meta property="og:locale" content="en_US"/>
        <meta property="og:type" content="website"/>
        <meta property="og:title" content="<?= config('title') ?>"/>
        <meta property="og:description" content="<?= config('meta_description') ?>"/>
        <meta property="og:url" content="<?= current_url() ?>"/>
        <meta property="og:site_name" content="<?= config('title') ?>"/>
        <meta property="og:image" content="<?php echo base_url() ?>cdn/<?php echo config('twitter_image') ?>"/>
        <meta name="twitter:card" content="summary_large_image">
        <meta name="twitter:title" content="<?php echo config("title") ?>">
        <meta name="twitter:description" content="<?php echo config('meta_description') ?>">
        <meta name="twitter:site" content="@marwa_elmanawy">
        <meta name="twitter:url" content="<?php echo site_url() ?>">
        <meta name="twitter:creator" content="@marwa_elmanawy"/>
        <meta name="twitter:domain" content="<?php echo site_url() ?>">
        <meta name="twitter:image" content="<?php echo base_url() ?>cdn/<?php echo config('twitter_image') ?>">
       	<link rel="icon" href="<?php echo base_url() ?>cdn/about/<?php echo config('favicon') ?>" type="image/x-icon">
        <script src='https://www.google.com/recaptcha/api.js'></script>
        <!-- CSS
       ================================================== -->
        <?php if (config('direction') == 'ltr'): ?>
            <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/bootstrap.css">
            <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/style.css">
        <?php else: ?>
            <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/bootstrap-rtl.min.css">
            <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/style-rtl.css">
        <?php endif ?>
        <!-- Java Script
       ================================================== -->
        <script src="<?php echo STYLE_JS ?>/jquery.min.js"></script>
        <script src="<?php echo STYLE_JS ?>/bootstrap.js"></script>
        <script> var site_url = '<?php echo site_url() ?>';</script>
        <script src="<?php echo STYLE_JS ?>/jquery.superfish.js"></script>
        <script src="<?php echo STYLE_JS ?>/jquery.royalslider.min.js"></script>
        <script src="<?php echo STYLE_JS ?>/responsive-nav.js"></script>
        <script src="<?php echo STYLE_JS ?>/hoverIntent.js"></script>
        <script src="<?php echo STYLE_JS ?>/chosen.jquery.min.js"></script>
        <script src="<?php echo STYLE_JS ?>/jquery-ui.min.js"></script>
        <?php if (config('google_analytics_id')): ?>
            <script>
                (function (i, s, o, g, r, a, m) {
                    i['GoogleAnalyticsObject'] = r;
                    i[r] = i[r] || function () {
                        (i[r].q = i[r].q || []).push(arguments)
                    }, i[r].l = 1 * new Date();
                    a = s.createElement(o),
                            m = s.getElementsByTagName(o)[0];
                    a.async = 1;
                    a.src = g;
                    m.parentNode.insertBefore(a, m)
                })(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

                ga('create', '<?php echo config('google_analytics_id') ?>', 'auto');
                ga('send', 'pageview');
            </script>
        <?php endif ?>
    </head>
    <body>
        <div class="preloade">
            <img src="<?php echo STYLE_IMAGES ?>/reload.gif">
        </div>
        <div id="wrapper">
            <!-- Header
            ================================================== -->
            <header id="header">
                <div class="container">
                    <div class="row">
                        <div class="col-md-3">
                            <div id="logo">
                                <a href="<?php echo site_url() ?>"><img src="<?php echo base_url() ?>/cdn/about/<?php echo config('logo') ?>" alt="<?php echo config('title') ?>" title="<?php echo config('title') ?>"></a>
                            </div>
                        </div>
                        <div class="col-md-9 navigation">
                            <nav id="navigation" class="menu nav-collapse">
                                <ul>
                                    <li><a href="<?php echo site_url() ?>"><?php echo lang("global_home") ?></a></li>
                                    <li><a href="#"><?php echo lang("global_categories") ?></a>
                                        <ul class="menu-categories">
                                            <?php $cats = $this->db->join('icons', 'icons.icon_id = categories.icon_id', 'inner')->select('categories.*,icons.icon')->order_by('title')->get('categories')->result(); ?>
                                            <?php if ($cats): ?>
                                                <?php foreach ($cats as $cat): ?> 
                                                    <li>
                                                        <a href="<?php echo site_url('category/' . urlencode($cat->permalink)) ?>" title="<?php echo $cat->title ?>">
                                                            <i class="<?php echo $cat->icon ?>"></i>
                                                            <?php echo ellipsize($cat->title, 10) ?>
                                                        </a>
                                                    </li>
                                                <?php endforeach; ?>
                                            <?php endif; ?>
                                        </ul>
                                    </li>
                                    <li><a href="<?php echo site_url('recipes') ?>"><?php echo lang("global_Recipes") ?></a></li>
                                    <li><a href="<?php echo site_url('tricks') ?>"><?php echo lang("global_Tips_and_Tricks") ?></a></li>
                                    <li><a href="<?php echo site_url('contact') ?>"><?php echo lang("global_Contact_us") ?></a></li>
                                    <?php if (!(user())): ?>
                                        <li>
                                            <a href="javascript:popup_switch('login')" class="login">
                                                <i class="fa fa-user" aria-hidden="true"></i>
                                                <?php echo lang("global_login_register") ?>
                                            </a>
                                        </li>
                                    <?php else: ?>
                                        <li>
                                            <a href="#" class="dropdown-toggle user-toggle" data-toggle="dropdown" role="button">
                                                <span>
                                                    <?php if (user()->image): ?><img src="<?php echo base_url() ?>/cdn/users/<?php echo user()->image ?>" alt="<?php echo user()->username ?>"> <?php endif ?>
                                                    <?php if (!(user()->image)): ?><img src="<?php echo base_url() ?>/cdn/users/default.png" alt="<?php echo user()->username ?>"> <?php endif ?>  
                                                </span>
                                            </a>
                                            <ul class="user-menu">
                                                <li><a href="<?php echo site_url('dashboard') ?>"><i class="fa fa-dashboard"></i> <?php echo lang("global_dashboard") ?></a></li>
                                                <li><a href="<?php echo site_url('account/logout') ?>"><i class="fa fa-power-off"></i> <?php echo lang("global_logout") ?></a></li>
                                            </ul>
                                        </li>
                                    <?php endif ?>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </header>
            {layout}
        </div>
        <div class="subscribe-section">
            <div class="container">
                <div class="row">
                    <div class="col-sm-7 sub-head"> 
                        <h2><?php echo lang("global_Newsletter") ?></h2>
                        <p><?php echo lang("global_Sign_up_to_receive_email_updates_on_new_recipes") ?></p>
                    </div>
                    <div class="col-sm-5">
                        <form class="subscrie-form" id="newsletter" action="" method="post">
                            <div class="row">
                                <div class="col-md-12">
                                    <div id="newsletter-sucess"></div>
                                </div>
                                <div class="col-md-12">
                                    <div id="newsletter-fail"> </div>
                                </div>
                            </div>
                            <div class="news-form-block">
                                <input class="newsletter" type="email" name="email" required="required"  id="email" placeholder="<?php echo lang("global_Your_email_address_here") ?>"/>
                                <button class="newsletter-btn" type="submit"><img class="loading-news" src="<?php echo STYLE_IMAGES ?>/load.gif" /> <?php echo lang("global_Subscribe") ?> </button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-md-8 col-md-offset-2">
                        <div class="footer-about margin-bottom-40">
                            <img class="img-responsive" src="<?php echo base_url() ?>/cdn/about/<?php echo config('logo') ?>" alt="<?php echo config('title') ?>" title="<?php echo config('title') ?>">
                            
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <h3 class="headline footer"><?php echo lang("global_Recent_Categories") ?></h3>
                        <span class="line"></span>
                        <div class="clearfix"></div>
                        <ul class="footer-links">
                            <?php $catss = $this->db->join('icons', 'icons.icon_id = categories.icon_id', 'inner')->select('categories.*,icons.icon')->order_by('category_id', 'desc')->limit('16')->get('categories')->result(); ?>
                            <?php if ($catss): ?>
                                <?php foreach ($catss as $cat): ?> 
                                    <li>
                                        <a href="<?php echo site_url('category/' . urlencode($cat->permalink)) ?>" title="<?php echo $cat->title ?>">
                                            <i class="<?php echo $cat->icon ?>"></i>
                                            <?php echo ellipsize($cat->title, 10) ?> 
                                        </a>
                                    </li>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <h3 class="headline footer"><?php echo lang("global_Latest_Tips_and_Tricks") ?></h3>
                        <span class="line"></span>
                        <div class="clearfix"></div>
                        <ul class="footer-links">
                            <?php $tips = $this->db->where('blog.status !=', '1')->order_by('blog_id', 'desc')->limit('8')->get('blog')->result(); ?>
                            <?php if ($tips): ?>
                                <?php foreach ($tips as $tip): ?> 
                                    <li class="footer-recipe-link">
                                        <a href="<?php echo site_url('trick/' . urlencode($tip->permalink)) ?>" title="<?php echo $tip->title ?>">
                                            <?php echo ellipsize($tip->title, 30) ?>
                                        </a>
                                    </li>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <h3 class="headline footer"><?php echo lang("global_Latest_Recipes") ?></h3>
                        <span class="line"></span>
                        <div class="clearfix"></div>
                        <ul class="footer-links">
                            <?php $recips = $this->db->order_by('recipe_id', 'desc')->limit('8')->get('recipes')->result(); ?>
                            <?php if ($recips): ?>
                                <?php foreach ($recips as $rec): ?> 
                                    <li class="footer-recipe-link">
                                        <a href="<?php echo site_url('recipe/' . urlencode($rec->permalink)) ?>" title="<?php echo $rec->title ?>">
                                            <?php echo ellipsize($rec->title, 30) ?> 
                                        </a>
                                    </li>
                                <?php endforeach; ?>
                            <?php endif; ?>
                        </ul>
                    </div>
                    <div class="col-md-3 col-sm-12 col-xs-12">
                        <h3 class="headline footer"><?php echo lang("global_important_links") ?></h3>
                        <span class="line"></span>
                        <div class="clearfix"></div>
                        <ul class="footer-links">
                            <li class="footer-recipe-link"><a href="<?php echo site_url() ?>"><?php echo lang("global_home") ?></a></li>
                            <li class="footer-recipe-link"><a href="<?php echo site_url('recipes') ?>"><?php echo lang("global_Recipes") ?></a></li>
                            <li class="footer-recipe-link"><a href="<?php echo site_url('tricks') ?>"><?php echo lang("global_Tips_and_Tricks") ?></a></li>
                            <li class="footer-recipe-link"><a href="<?php echo site_url('contact') ?>"><?php echo lang("global_Contact_us") ?></a></li>
                            <?php if (!(user())): ?>
                                <li class="footer-recipe-link">
                                    <a href="javascript:popup_switch('login')" class="login">
                                        <?php echo lang("global_login_register") ?>
                                    </a>
                                </li>
                            <?php else: ?>
                                <li class="footer-recipe-link"><a href="<?php echo site_url('dashboard') ?>"><?php echo lang("global_dashboard") ?></a></li>
                            <?php endif ?>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="footer-bottom">
            <div class="container">
                <div class="row">
                    <div class="col-md-4">
                        <p> Powered By <i class="fa fa-heart co-red"></i>Krunal Solanki.</p>
                    </div>
                    <div class="col-md-8">
                        <?php $pages = $this->db->get('pages')->result(); ?>
                        <?php if ($pages): ?>
                            <ul class="pages-links list-inline">
                                <?php foreach ($pages as $page): ?>
                                    <li><a href="<?php echo site_url('page/' . urlencode($page->permalink)) ?>"><?php echo $page->title ?></a></li>
                                <?php endforeach; ?>
                            </ul>
                        <?php endif ?>
                    </div>
                </div>
            </div>
        </div>

        <?php if (!user()): ?>
            <div class="modal fade" id="loginModel" role="dialog">
                <div class="modal-dialog login-model">
                    <div class="modal-content">
                        <div class="modal-body">
                            <i class="fa fa-times-circle close" aria-hidden="true" data-dismiss="modal"></i>
                            <div class="clearfix"></div><br />
                            <div class="notification error closeable login_errors" style="display: none;"></div>
                            <form class="popup_login" method="post">
                                <p class="login-icon">
                                    <i class="fa fa-user-circle"></i>
                                    <b><?php echo lang('global_Welcome') ?>,</b> <?php echo lang('global_Login_to_your_account') ?>.
                                </p>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="text" name="email" placeholder="<?php echo lang('global_Email') ?>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="password" name="password" placeholder="<?php echo lang('global_Password') ?>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-sm-6 text-left">
                                        <label class="check-text" for="user-session-remember-me">
                                            <input name="remember" type="checkbox" tabindex="4" value="1" checked="checked"/>
                                            <span class="chk-img"></span>
                                            <a id="remember-button"><?php echo lang('global_Remember_me') ?></a>
                                        </label>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <a href="javascript:popup_switch('forgot')" class="forget-pass"><?php echo lang('global_Forget_Password') ?></a>
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <button type="submit" class="button color big"><?php echo lang('global_login') ?>
                                            <i class="fa fa-spin fa-spinner login_loading" style="display: none;"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>

                            <form class="popup_register" method="post">
                                <p class="login-icon">
                                    <i class="fa fa-user-plus"></i>
                                    <?php echo lang('global_Welcome') ?>,</b> <?php echo lang('global_New_Here') ?>
                                </p>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="text" name="username" placeholder="<?php echo lang('global_Username') ?>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="email" name="email" placeholder="<?php echo lang('global_Email') ?>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="password" name="password" placeholder="<?php echo lang('global_Password') ?>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="password" name="password_2" placeholder="<?php echo lang('global_Confirm_Password') ?>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <button type="submit" class="button color big"><?php echo lang('global_register') ?> <?php echo lang('global_Now') ?>
                                            <i class="fa fa-spin fa-spinner login_loading" style="display: none;"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>

                            <form class="popup_forgot" method="post">
                                <p class="login-icon">
                                    <i class="fa fa-lock"></i>
                                    <?php echo lang('global_To_recover_your_password,please_write_your_email_address_below') ?>
                                </p>
                                <div class="row">
                                    <div class="col-md-12">
                                        <input type="email" name="email" placeholder="<?php echo lang('global_Email') ?>">
                                    </div>
                                </div>
                                <div class="row">
                                    <div class="col-md-12">
                                        <button type="submit" class="button color big"><?php echo lang('global_Reset_Password') ?>
                                            <i class="fa fa-spin fa-spinner login_loading" style="display: none;"></i>
                                        </button>
                                    </div>
                                </div>
                            </form>
                        </div>
                        <div class="modal-footer">
                            <p class="popup_login"><?php echo lang('global_Dont_you_have_an_account') ?>? <a href="javascript:popup_switch('register')"><?php echo lang('global_register') ?> <?php echo lang('global_Now') ?></a>
                            </p>
                            <p class="popup_forgot"><?php echo lang('global_Dont_you_have_an_account') ?>? <a href="javascript:popup_switch('register')"><?php echo lang('global_register') ?> <?php echo lang('global_Now') ?></a>
                            </p>
                            <p class="popup_register"><?php echo lang('global_Already_Member') ?> <a href="javascript:popup_switch('login')"><?php echo lang('global_login') ?></a></p>
                        </div>
                    </div>
                </div>
            </div>
        <?php endif ?>
        <script src="<?php echo STYLE_JS ?>/custom.js"></script> 
        <script>

            //NEWSLETTER FUNCTION
            $('#newsletter').submit(function (e) {
                var form = $(this);
                e.preventDefault();
                $(".loading-news").show();
                $.ajax({
                    type: "POST",
                    url: "<?php echo site_url('home/newsletters'); ?>",
                    data: form.serialize(),
                    dataType: "html",
                    success: function (res) {
                        $('#newsletter-sucess').html(res);
                        $(".loading-news").hide();
                    }
                });
            });
        </script>     
    </body>
</html>