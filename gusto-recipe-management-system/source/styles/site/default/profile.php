<section id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo lang('global_Profile') ?> - <?php echo $user->firstname ?> <?php echo $user->lastname ?></h2>
            </div>
            <div class="col-md-6">
                <nav id="breadcrumbs">
                    <ul>
                        <li><a href="<?php echo site_url() ?>"><?php echo lang('global_home') ?></a></li>
                        <li><?php echo lang('global_Profile') ?> - <?php echo $user->firstname ?> <?php echo $user->lastname ?></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>

<div class="container">
    <div class="row">
        <div class="col-md-3">
            <div class="widget">
                <div class="sidebar-box">
                    <div class="user">
                        <figure>
                            <?php if ($user->image): ?>
                                <img src="<?php echo base_url() ?>/cdn/users/<?php echo $user->image ?>" alt="<?php echo $user->username ?>">
                            <?php else: ?>
                                <img src="<?php echo base_url() ?>/cdn/users/default.png" alt="<?php echo $user->username ?>">
                            <?php endif ?>
                        </figure>
                        <div class="usercontent">
                            <h3><?php echo $user->username ?></h3>
                            <h4><?php echo $user->usergroup ?></h4>
                        </div>
                    </div>
                    <nav class="navdashboard">
                        <ul>
                            <li>
                                <i class="fa fa-user"></i>
                                <span> <?php echo $user->firstname ?> <?php echo $user->lastname ?></span>
                            </li>
                            <li>
                                <i class="fa fa-transgender"></i>
                                <span> <?php echo $user->gender ?></span>
                            </li>
                            <li>
                                <i class="fa fa-envelope"></i>
                                <?php if ($user->email_appear == '1'): ?>
                                    <span> <?php echo $user->email ?></span>
                                <?php else: ?>
                                    <span><?php echo lang('global_Hidden') ?></span>
                                <?php endif ?>
                            </li>
                            <li>
                                <i class="fa fa-flag"></i> <?php echo lang('global_From') ?>
                                <span> <?php echo $user->country ?></span>
                            </li>

                            <li>
                                <i class="icon icon-themeenergy_soup2"></i>
                                <span> <?php echo $count ?> <?php echo lang('global_Recipes') ?></span>
                            </li>
                            <li>
                                <i class="fa fa-calendar-check-o"></i> <?php echo lang('global_Member_Since') ?>
                                <span> <?php echo date('M d, Y', strtotime($user->created)) ?></span>

                            </li>
                            <li>
                                <i class="fa fa-eye"></i> 
                                <span> <?php echo $user->visited ?> <?php echo lang('global_Profile_Views') ?></span>
                            </li>

                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <?php if ($user->description): ?>
                <div class="post-quote">
                    <span class="icon"></span>
                    <blockquote>
                        <?php echo $user->description ?>
                    </blockquote>
                </div>
            <?php endif ?>
            <div class="inner-box">
                <div class="row">
                    <?php foreach ($recipes as $recipe): ?>
                        <div class="col-md-4">
                            <div class="recipe-box">
                                <!-- Thumbnail -->
                                <div class="thumbnail-holder">
                                    <a href="<?php echo site_url('recipe/' . urlencode($recipe->permalink)) ?>">
                                        <img src="<?php echo base_url() ?>/cdn/recipes/<?php echo $recipe->featured_image ?>" alt="<?php echo $recipe->title ?>"/>
                                        <div class="hover-cover"></div>
                                        <div class="hover-icon"><i class="fa fa-eye"></i> <?php echo lang('global_View_Recipe') ?></div>
                                    </a>
                                </div>
                                <!-- Content -->
                                <div class="recipe-box-content">
                                    <h3><a href="<?php echo site_url('recipe/' . urlencode($recipe->permalink)) ?>" title="<?php echo $recipe->title ?>"><?php echo ellipsize($recipe->title, 28) ?></a></h3>
                                    <div class="recipe-category">
                                        <a href="<?php echo site_url('category/' . urlencode($recipe->category_permalink)) ?>"> <i class="fa fa-filter"></i> <?php echo $recipe->category_title ?></a>
                                    </div>
                                    <div class="recipe-meta">
                                        <?php if (($recipe->difficulty) == 'easy'): ?><i class="ico i-easy"></i> <?php echo lang('global_Easy') ?><?php endif; ?>
                                        <?php if (($recipe->difficulty) == 'medium'): ?><i class="ico i-medium"></i> <?php echo lang('global_medium') ?><?php endif; ?>
                                        <?php if (($recipe->difficulty) == 'hard'): ?><i class="ico i-hard"></i> <?php echo lang('global_hard') ?><?php endif; ?>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?>  
                </div>
            </div>
        </div>  
    </div>
</div>
