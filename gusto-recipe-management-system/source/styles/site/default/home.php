<div id="homeSliderAlt" class="royalSlider homeSliderAlt rsDefault">
    <?php foreach ($sliders as $item): ?> 
        <div class="rsContent">
            <a class="rsImg" href="<?php echo base_url() ?>/cdn/sliders/<?php echo $item->image ?>">
                <div class="rsTmb">
                    <h5><?php echo $item->title ?></h5>
                </div>
            </a>
            <div class="SlideTitleContainer rsABlock">
                <div class="CaptionAlignment">
                    <h2 class="rsSlideTitle title"><a href="<?php echo site_url('recipe/' . urlencode($item->recipe_permalink)) ?>"><?php echo $item->recipe_title ?></a></h2>
                    <p class="rsSlideTitle description"><?php echo $item->description ?></p>
                    <div class="rsSlideTitle details">
                        <ul>
                            <li><i class="fa fa-cutlery"></i> <?php echo $item->recipe_serves ?> <?php echo lang('global_People') ?></li>
                            <li><i class="fa fa-clock-o"></i> <?php echo $item->recipe_cooking_time ?></li>
                            <li><i class="fa fa-user"></i> <a href="<?php echo site_url('profile/' . $item->user_id . '-' . permalink($item->username)) ?>"><?php echo $item->username ?></a></li>
                        </ul>
                    </div>
                    <a href="<?php echo site_url('recipe/' . urlencode($item->recipe_permalink)) ?>" class="rsSlideTitle button"><?php echo lang('global_View_Recipe') ?></a>
                </div>
            </div>
        </div>
    <?php endforeach; ?>
</div>
<div class="search-container search-home">
    <div class="container">
        <div id="advanced-search">
            <form class="row" action="<?php echo site_url('recipes/search') ?>" method="get">
                <div class="col-md-12 margin-bottom-20">
                    <h2><?php echo lang('global_Browse_Recipes') ?></h2>
                </div>
                <div class="col-md-4">
                    <div class="select">
                        <?php echo form_dropdown('category_id', $cats, set_value('category_id'), ' class="chosen-select-no-single"') ?>
                    </div>
                </div>
                <div class="col-md-8">
                    <div class="search-by-keyword">
                        <button type="submit"><span><?php echo lang('global_Search_for_Recipes') ?></span><i class="fa fa-search"></i></button>
                        <input class="search-field" type="text" name="title" value="<?php echo set_value('title') ?>" placeholder="<?php echo lang('global_Search_by_keyword') ?>"/>
                    </div>
                </div>
            </form>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- Page Content
     ================================================== -->
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <h3 class="headline"><?php echo lang('global_Latest_Recipes') ?></h3>
            <span class="line rb margin-bottom-35"></span>
            <div class="clearfix"></div>
            <div class="row">
                <?php foreach ($latest_recipes as $item): ?>
                    <div class="col-md-4">
                        <div class="recipe-box">
                            <div class="thumbnail-holder">
                                <a href="<?php echo site_url('recipe/' . urlencode($item->permalink)) ?>">
                                    <img src="<?php echo base_url() ?>/cdn/recipes/<?php echo $item->featured_image ?>" alt="<?php echo $item->title ?>"/>
                                    <div class="hover-cover"></div>
                                    <div class="hover-icon"><i class="fa fa-eye"></i> <?php echo lang('global_View_Recipe') ?></div>
                                </a>
                            </div>
                            <div class="recipe-box-content">
                                <h3><a href="<?php echo site_url('recipe/' . urlencode($item->permalink)) ?>" title="<?php echo $item->title ?>"><?php echo ellipsize($item->title, 25) ?></a></h3>
                                <h5 class="author-recipe">
                                    <a href="<?php echo site_url('profile/' . $item->user_id . '-' . urlencode(permalink($item->username))) ?>">
                                        <span>
                                            <?php if ($item->image): ?>
                                                <img src="<?php echo base_url() ?>/cdn/users/<?php echo $item->image ?>" alt="<?php echo $item->username ?>">
                                            <?php else: ?>
                                                <img src="<?php echo base_url() ?>/cdn/users/default.png" alt="<?php echo $item->username ?>">
                                            <?php endif ?>
                                        </span>
                                        <?php echo $item->username ?>
                                    </a>
                                </h5>
                                <div class="recipe-category">
                                    <a href="<?php echo site_url('category/' . urlencode($item->category_permalink)) ?>"> <i class="fa fa-filter"></i> <?php echo $item->category_title ?></a>
                                </div>
                                <div class="recipe-meta">
                                    <?php if (($item->difficulty) == 'easy'): ?><i class="ico i-easy"></i> <?php echo lang('global_Easy') ?><?php endif; ?>
                                    <?php if (($item->difficulty) == 'medium'): ?><i class="ico i-medium"></i> <?php echo lang('global_medium') ?><?php endif; ?>
                                    <?php if (($item->difficulty) == 'hard'): ?><i class="ico i-hard"></i> <?php echo lang('global_hard') ?><?php endif; ?>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                <?php endforeach; ?>    
            </div>
            <div class="footer-ads">
                <?php echo ads(1) ?>
            </div>
        </div>
        <!-- Sidebar
        ================================================== -->
        <div class="col-md-3">
            <!-- Tips and Tricks -->
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Tips_and_Tricks') ?></h4>
                <span class="line margin-bottom-20"></span>
                <div class="clearfix"></div>
                <ul class="categories">
                    <?php foreach ($tricks as $item): ?> 
                        <li><a href="<?php echo site_url('trick/' . urlencode($item->permalink)) ?>" title="<?php echo $item->title ?>"><?php echo ellipsize($item->title, 35) ?></a></li>
                    <?php endforeach; ?>
                </ul>
                <div class="clearfix"></div>
            </div>

            <!-- Categories -->
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_categories') ?></h4>
                <span class="line margin-bottom-20"></span>
                <div class="clearfix"></div>
                <div class="home-cats categories">
                    <?php foreach ($categories as $item): ?> 
                        <a href="<?php echo site_url('category/' . urlencode($item->permalink)) ?>" title=" <?php echo $item->title ?>">
                            <i class="<?php echo $item->icon ?>"></i>
                            <?php echo $item->title ?>
                        </a>
                    <?php endforeach; ?>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Advertisement') ?></h4>
                <span class="line margin-bottom-30"></span>
                <div class="clearfix"></div>
                <div class="side-ads">
                    <?php echo ads(5) ?>

                </div>
            </div>
            <!-- Popular Recipes -->
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Popular_Recipes') ?></h4>
                <span class="line margin-bottom-30"></span>
                <div class="clearfix"></div>
                <?php foreach ($popular_recipes as $item): ?>
                    <div class="featured-recipe">
                        <img src="<?php echo base_url() ?>/cdn/recipes/<?php echo $item->featured_image ?>" alt="<?php echo $item->title ?>"/>
                        <div class="featured-recipe-content">
                            <h4><a href="<?php echo site_url('recipe/' . urlencode($item->permalink)) ?>"><?php echo $item->title ?></a></h4>
                            <div class="recipe-det">
                                <span> <a href="<?php echo site_url('category/' . urlencode($item->category_permalink)) ?>"> <i class="fa fa-filter"></i> <?php echo $item->category_title ?></a> </span>
                            </div>
                        </div>
                        <div class="post-icon"></div>
                    </div>
                <?php endforeach; ?>
                <div class="clearfix"></div>
            </div>
            <div class="widget members">
                <h4 class="headline"><?php echo lang('global_Most_Popular_Authors') ?></h4>
                <span class="line margin-bottom-30"></span>
                <div class="clearfix"></div>
                <ul class="boxed">
                    <?php foreach ($popular_authors as $item): ?>
                        <li>
                            <a href="<?php echo site_url('profile/' . $item->user_id . '-' . urlencode(permalink($item->username))) ?>" title="<?php echo $item->username ?>">
                                <?php if ($item->image): ?>
                                    <img src="<?php echo base_url() ?>/cdn/users/<?php echo $item->image ?>" alt="<?php echo $item->username ?>">
                                <?php else: ?>
                                    <img src="<?php echo base_url() ?>/cdn/users/default.png" alt="<?php echo $item->username ?>">
                                <?php endif ?>
                            </a>
                        </li>
                    <?php endforeach; ?>
                </ul>
                <div class="post-icon"></div>
            </div>
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
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Advertisement') ?></h4>
                <span class="line margin-bottom-30"></span>
                <div class="clearfix"></div>
                <div class="side-ads">
                    <?php echo ads(8) ?>
                </div>
            </div>
        </div>
    </div>
</div>
