<section id="titlebar" class="browse-all">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2><?php echo lang('global_Browse_Recipes') ?></h2>
            </div>
        </div>
    </div>
</section>
<div class="search-container">
    <div class="container">
        <div id="advanced-search">
            <form class="row" action="<?php echo site_url('recipes/search') ?>" method="get">
                <div class="col-md-4">
                    <div class="select">
                        <?php echo form_dropdown('category_id', $categories, set_value('category_id'), ' class="chosen-select-no-single"') ?>
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
<div class="container margin-top-35">
    <div class="row">
        <div class="home-cats recipes-categories col-md-12">
            <?php foreach ($categories_side as $item): ?> 
                <a class="" href="<?php echo site_url('category/' . urlencode($item->permalink)) ?>">
                    <i class="<?php echo $item->icon ?>"></i>
                    <?php echo $item->title ?>
                </a>
            <?php endforeach; ?>
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12">
            <h3 class="headline"><?php echo $cat->title ?></h3>
            <span class="line margin-bottom-35"></span>
            <div class="clearfix"></div>
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12">
            <div class="row">
                <?php if ($items): ?>
                    <?php foreach ($items as $item): ?>
                        <div class="col-md-3">
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
                                        <a href="<?php echo site_url('profile/' . $item->user_id . '-' . urlencode(permalink($item->username))) ?>" title="<?php echo $item->username ?>">
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
                <?php else: ?>
                    <div class="col-md-12">
                        <div class="notification notice">
                            <p><?php echo lang('global_There_is_no_items_in_this_category') ?></p>
                        </div>
                    </div>
                <?php endif ?>
            </div>
            <div class="clearfix"></div>
            <?php if ($pagination): ?>
                <div class="pagination-container">
                    <?php echo $pagination ?>
                </div>
            <?php endif ?>
        </div>
    </div>
</div>
<div class="container margin-top-20">
    <div class="footer-ads">
        <?php echo ads(2) ?>
    </div>
</div>