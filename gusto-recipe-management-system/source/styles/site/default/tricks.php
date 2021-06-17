<section id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo lang('global_Tips_and_Tricks') ?></h2>
            </div>
            <div class="col-md-6">
                <nav id="breadcrumbs">
                    <ul>
                        <li><a href="<?php echo site_url() ?>"><?php echo lang('global_home') ?></a></li>
                        <li><?php echo lang('global_Tips_and_Tricks') ?></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <div class="blog-list">
                <?php if ($items): ?>
                    <?php foreach ($items as $item): ?> 
                        <div class="post-item">
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="post-thumb">
                                        <a href="<?php echo site_url('tricks/trick/' . urlencode($item->permalink)) ?>">
                                            <img src="<?php echo base_url() ?>/cdn/tricks/<?php echo $item->image ?>" class="img-responsive" alt="<?php echo $item->title ?>"/>
                                        </a>                     
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <h3 class="post-name"><a href="<?php echo site_url('tricks/trick/' . urlencode($item->permalink)) ?>"><?php echo $item->title ?></a></h3>
                                    <div class="post-metas">
                                        <span class="icon"><i class="fa fa-eye"></i> <?php echo $item->visits ?></span>
                                        <span class="icon"><i class="fa fa-calendar"></i> <?php echo lang('global_created') ?>: <?php echo date('M d, Y ', strtotime($item->created)) ?></span>
                                        <span class="icon"><i class="fa fa-clock-o"></i> <?php echo lang('global_Last_Update') ?>: <?php echo date('M d, Y ', strtotime($item->updated)) ?></span>
                                    </div>
                                    <div class="post-item-info">                                      
                                        <p><?php echo $item->short_description ?></p>    
                                        <a href="<?php echo site_url('tricks/trick/' . urlencode($item->permalink)) ?>" class="button"><?php echo lang('global_Read_more') ?></a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach; ?> 
                <?php else: ?>
                    <div class="notification notice">
                        <p><?php echo lang('There_is_no_items') ?></p>
                    </div>
                <?php endif ?>
            </div>
            <?php if ($pagination): ?>
                <div class="pagination-container">
                    <?php echo $pagination ?>
                </div>
            <?php endif ?>
            <div class="footer-ads">
                <?php echo ads(4) ?>
            </div>
        </div>
        <div class="col-md-3">
            <!-- Sidebar
        ================================================== -->
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Most_Visited_Tips_and_Tricks') ?></h4>
                <span class="line margin-bottom-20"></span>
                <div class="clearfix"></div>
                <ul class="categories">
                    <?php foreach ($popular as $item): ?> 
                        <li><a href="<?php echo site_url('trick/' . urlencode($item->permalink)) ?>"><?php if (strlen($item->title) > 35): ?> <?php echo substr($item->title, 0, 35) . ".."; ?> <?php else: ?> <?php echo $item->title; ?> <?php endif ?></a></li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Advertisement') ?></h4>
                <span class="line margin-bottom-30"></span>
                <div class="clearfix"></div>
                <div class="side-ads">
                    <?php echo ads(13) ?>
                </div>
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
                    <?php echo ads(14) ?>
                </div>
            </div>
        </div>
    </div>
</div>

