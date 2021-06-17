<!-- Recipe Background -->
<div class="recipeBackground">
    <img src="<?php echo STYLE_IMAGES ?>/recipeBackground.jpg" alt="" />
</div>
<!-- Content
================================================== -->
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <div class="alignment">

                <!-- Header -->
                <section class="recipe-header">
                    <div class="title-alignment">
                        <h2><?php echo $item->title ?></h2>
                        <div class="recipe-cat">
                            <a href="<?php echo site_url('category/' . urlencode($item->category_permalink)) ?>"> <i class="fa fa-filter"></i> <?php echo $item->category_title ?></a>
                            <span> <i class="fa fa-eye"></i> <?php echo $item->visited ?></span>
                            <span><i class="fa fa-clock-o"></i> <?php echo lang('global_Last_Update') ?>: <?php echo date('M d, Y ', strtotime($item->updated)) ?></span>
                            <span><i class="fa fa-calendar"></i> <?php echo lang('global_created') ?>: <?php echo date('M d, Y ', strtotime($item->created)) ?></span>
                        </div>
                    </div>
                </section>
                <!-- Slider -->
                <div class="recipeSlider rsDefault">
                    <?php if (json_decode($item->gallery)): ?>
                        <?php foreach (json_decode($item->gallery) as $img): ?>
                            <img itemprop="image" class="rsImg" src="<?php echo base_url() ?>/cdn/recipes/<?php echo $img ?>" alt="<?php echo $item->title ?>" />
                        <?php endforeach; ?>
                    <?php else: ?>
                        <img itemprop="image" class="rsImg" src="<?php echo base_url() ?>/cdn/recipes/<?php echo $item->featured_image ?>" alt="<?php echo $item->title ?>" />
                    <?php endif; ?>
                </div>
                <!-- Details -->
                <section class="recipe-details" itemprop="nutrition">
                    <ul>
                        <li><?php echo lang('global_Serves') ?>: <strong itemprop="recipeYield"><?php if ($item->serves): ?><?php echo $item->serves ?> <?php echo lang('global_People') ?><?php else: ?> - <?php endif; ?></strong></li>
                        <li><?php echo lang('global_Prep_Time') ?>: <strong itemprop="prepTime"><?php if ($item->prepare_time): ?><?php echo $item->prepare_time ?><?php else: ?> - <?php endif; ?></strong></li>
                        <li><?php echo lang('global_Cooking') ?>: <strong itemprop="cookTime"><?php if ($item->cooking_time): ?><?php echo $item->cooking_time ?><?php else: ?> - <?php endif; ?></strong></li>
                        <li><?php echo lang('global_Calories') ?>: <strong itemprop="calories"><?php if ($item->calories): ?><?php echo $item->calories ?><?php else: ?> - <?php endif; ?></strong></li>
                        <li><?php echo lang('global_Difficulty') ?>: <strong itemprop="Difficulty">
                                <?php if (($item->difficulty) == 'easy'): ?><?php echo lang('global_Easy') ?><?php endif; ?>
                                <?php if (($item->difficulty) == 'medium'): ?><?php echo lang('global_medium') ?><?php endif; ?>
                                <?php if (($item->difficulty) == 'hard'): ?><?php echo lang('global_hard') ?><?php endif; ?>
                            </strong>
                        </li>
                    </ul>
                    <a href="#" class="print" id="print-recipe"><i class="fa fa-print"></i> <?php echo lang('global_print') ?></a>
                    <div class="clearfix"></div>
                </section>
                <!-- Text -->
                <p itemprop="description"><?php echo nl2br($item->description) ?></p>
                <?php if ($item->video): ?>
                    <div class="recipe-video">
                        <iframe width="100%" height="100%" src="<?php echo str_replace('watch?v=', 'embed/', $item->video); ?>" frameborder="0" allowfullscreen></iframe>
                    </div>
                <?php endif ?>
                <!-- Ingredients -->
                <h3><?php echo lang('global_Ingredients') ?></h3>
                <ul class="ingredients" id="ingredients-list">
                    <?php foreach (explode("\n", $item->ingredients) as $i): ?>
                        <li>
                            <input type="checkbox" name="check">
                            <label itemprop="ingredients"><?php echo $i ?></label>
                        </li>
                    <?php endforeach; ?>
                </ul>
                <!-- Directions -->
                <h3><?php echo lang('global_Directions') ?></h3>
                <ol class="directions" itemprop="recipeInstructions">
                    <?php foreach (explode("\n", $item->directions) as $i): ?>
                        <li ><?php echo $i ?></li>
                    <?php endforeach; ?>
                </ol>

                <script src="<?php echo STYLE_JS ?>/jquery-printme.min.js"></script>
                <script>
                    $("#print-recipe").click(function () {
                        $("#recipe-details").printMe({"path": ["<?php echo STYLE_CSS ?>/style.css"]});
                    });
                </script>
                <div id="recipe-details">
                    <!-- Header -->
                    <h2><?php echo $item->title ?></h2> <br> <br>
                    <div class="clearfix"></div>

                    <!-- Slider -->
                    <div class="rec-img">
                        <img src="<?php echo base_url() ?>/cdn/recipes/<?php echo $item->featured_image ?>"/> 
                    </div>
                    <!-- Details -->
                    <section class="recipe-details">
                        <ul>
                            <li><?php echo lang('global_Serves') ?>: <strong itemprop="recipeYield"><?php if ($item->serves): ?><?php echo $item->serves ?> <?php echo lang('global_People') ?><?php else: ?> - <?php endif; ?></strong></li>
                            <li><?php echo lang('global_Prep_Time') ?>: <strong itemprop="prepTime"><?php if ($item->prepare_time): ?><?php echo $item->prepare_time ?><?php else: ?> - <?php endif; ?></strong></li>
                            <li><?php echo lang('global_Cooking') ?>: <strong itemprop="cookTime"><?php if ($item->cooking_time): ?><?php echo $item->cooking_time ?><?php else: ?> - <?php endif; ?></strong></li>
                            <li><?php echo lang('global_Calories') ?>: <strong itemprop="calories"><?php if ($item->calories): ?><?php echo $item->calories ?><?php else: ?> - <?php endif; ?></strong></li>
                            <li><?php echo lang('global_Difficulty') ?>: <strong itemprop="Difficulty">
                                    <?php if (($item->difficulty) == 'easy'): ?><?php echo lang('global_Easy') ?><?php endif; ?>
                                    <?php if (($item->difficulty) == 'medium'): ?><?php echo lang('global_medium') ?><?php endif; ?>
                                    <?php if (($item->difficulty) == 'hard'): ?><?php echo lang('global_hard') ?><?php endif; ?>
                                </strong>
                            </li>
                        </ul>
                        <div class="clearfix"></div>
                    </section>
                    <!-- Text -->
                    <p itemprop="description"><?php echo nl2br($item->description) ?></p>

                    <!-- Ingredients -->
                    <h3><?php echo lang('global_Ingredients') ?></h3>
                    <ul class="ingredients" id="ingredients-list">
                        <?php foreach (explode("\n", $item->ingredients) as $i): ?>
                            <li>
                                <input type="checkbox" name="check">
                                <label itemprop="ingredients"><?php echo $i ?></label>
                            </li>
                        <?php endforeach; ?>
                    </ul>
                    <!-- Directions -->
                    <h3><?php echo lang('global_Directions') ?></h3>
                    <ol class="directions" itemprop="recipeInstructions">
                        <?php foreach (explode("\n", $item->directions) as $i): ?>
                            <li ><?php echo $i ?></li>
                        <?php endforeach; ?>
                    </ol>
                </div>
                <!-- Share Post -->
                <ul class="share-post">
                    <li><a href="http://www.facebook.com/share.php?u=<?php echo urlencode(current_url()) ?>&title=<?php echo urlencode(config('title')) ?>&image=<?php echo base_url() ?>/cdn/recipes/<?php echo $item->featured_image ?>" target="_blank" class="facebook-share"><?php echo lang('global_Facebook') ?></a></li>
                    <li><a href="http://twitter.com/intent/tweet?status=<?php echo urlencode(config('title')) ?>+<?php echo urlencode(current_url()) ?>" target="_blank" class="twitter-share"><?php echo lang('global_Twitter') ?></a></li>
                    <li><a href="https://pinterest.com/pin/create/bookmarklet/?media=<?php echo base_url() ?>/cdn/recipes/<?php echo $item->featured_image ?>&url=<?php echo urlencode(current_url()) ?>&description=<?php echo urlencode(config('title')) ?>" target="_blank" class="pinterest-share"><?php echo lang('global_Pinterest') ?></a></li>               
                </ul>

                <div class="clearfix"></div>
                <div class="margin-bottom-40"></div>
                <!-- Headline -->
                <h3 class="headline"><?php echo lang('global_You_may_also_like') ?></h3>
                <span class="line margin-bottom-35"></span>
                <div class="clearfix"></div>
                <div class="related-posts">
                    <div class="row">
                        <?php foreach ($related_items as $item): ?>
                            <div class="col-md-4">
                                <div class="recipe-box">
                                    <!-- Thumbnail -->
                                    <div class="thumbnail-holder">
                                        <a href="<?php echo site_url('recipe/' . urlencode($item->permalink)) ?>">
                                            <img src="<?php echo base_url() ?>/cdn/recipes/<?php echo $item->featured_image ?>" alt="<?php echo $item->title ?>"/>
                                            <div class="hover-cover"></div>
                                            <div class="hover-icon"><i class="fa fa-eye"></i> <?php echo lang('global_View_Recipe') ?></div>
                                        </a>
                                    </div>
                                    <!-- Content -->
                                    <div class="recipe-box-content">
                                        <h3><a href="<?php echo site_url('recipe/' . urlencode($item->permalink)) ?>" title="<?php echo $item->title ?>">
                                                <?php echo ellipsize($item->title, 25) ?>
                                            </a></h3>
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
                </div>
                <div class="clearfix"></div>

                <?php if (config('disqus_user')): ?>
                    <div class="margin-top-15"></div>
                    <!-- Add Comment
                    ================================================== -->
                    <h3 class="headline"><?php echo lang('global_Add_Your_Comment') ?></h3><span class="line margin-bottom-35"></span><div class="clearfix"></div>
                    <div id="disqus_thread"></div>
                    <script>
                        (function () {
                            var d = document, s = d.createElement('script');
                            s.src = 'https://<?php echo config('disqus_user') ?>.disqus.com/embed.js';
                            s.setAttribute('data-timestamp', +new Date());
                            (d.head || d.body).appendChild(s);
                        })();
                    </script>
                <?php endif ?>
                <div class="footer-ads">
                    <?php echo ads(10) ?>
                </div>
            </div>
        </div>
        <div class="col-md-3">
            <!-- Search Form -->
            <div class="widget search-form">
                <nav class="search">
                    <form action="<?php echo site_url('recipes/search') ?>" method="get">
                        <button><i class="fa fa-search"></i></button>
                        <input class="search-field" type="text" placeholder="<?php echo lang('global_Search_for_Recipes') ?>" name="title" value="<?php echo set_value('title') ?>"/>
                    </form>
                </nav>
                <div class="clearfix"></div>
            </div>
            <div class="widget">
                <div class="author-box">
                    <a href="<?php echo site_url('profile/' . $user->user_id . '-' . urlencode(permalink($user->username))) ?>">
                        <span class="title"><?php echo lang('global_Author') ?></span>
                        <span class="name"><?php echo $user->username ?></span>
                        <?php if ($user->email_appear == '1'): ?>
                            <span class="contact"><?php echo $user->email ?></span>
                        <?php endif ?>
                        <img src="<?php echo base_url() ?>/cdn/users/<?php echo $user->image ?>" alt="<?php echo $user->username ?>">
                    </a>
                    <p><?php echo $user->description ?></p>
                </div>
            </div>
            <!-- Categories -->
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_categories') ?></h4>
                <span class="line margin-bottom-20"></span>
                <div class="clearfix"></div>

                <div class="home-cats categories">
                    <?php foreach ($categories as $item): ?> 
                        <a href="<?php echo site_url('category/' . urlencode($item->permalink)) ?>">
                            <i class="<?php echo $item->icon ?>"></i>
                            <?php echo $item->title ?>
                        </a>
                    <?php endforeach; ?>
                </div>
            </div>
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Advertisement') ?></h4>
                <span class="line margin-bottom-30"></span>
                <div class="clearfix"></div>
                <div class="side-ads">
                    <?php echo ads(6) ?>
                </div>
            </div>
            <!-- Popular Recipes -->
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Popular_Recipes') ?></h4>
                <span class="line margin-bottom-30"></span>
                <div class="clearfix"></div>
                <?php foreach ($popular_recipes as $item): ?>
                    <a href="<?php echo site_url('recipe/' . urlencode($item->permalink)) ?>" class="featured-recipe">
                        <img src="<?php echo base_url() ?>/cdn/recipes/<?php echo $item->featured_image ?>" alt="<?php echo $item->title ?>"/>
                        <div class="featured-recipe-content">
                            <h4><?php echo $item->title ?></h4>
                            <div class="recipe-det">
                                <span><i class="fa fa-cutlery"></i> <?php echo $item->serves ?> <?php echo lang('global_Servings') ?></span>
                                <span><i class="fa fa-clock-o"></i> <?php echo $item->cooking_time ?></span>                      
                            </div>
                        </div>
                        <div class="post-icon"></div>
                    </a>
                <?php endforeach; ?>
                <div class="clearfix"></div>
            </div>

            <!-- Popular Recipes -->
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
                <div class="side-ads">
                    <?php echo ads(9) ?>
                </div>
            </div>
        </div>
    </div>
</div>
