<section id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo $item->title ?></h2>
            </div>
            <div class="col-md-6">
                <nav id="breadcrumbs">
                    <ul>
                        <li><a href="<?php echo site_url() ?>"><?php echo lang('global_home') ?></a></li>
                        <li><a href="<?php echo site_url('tricks') ?>"><?php echo lang('global_Tips_and_Tricks') ?></a></li>
                        <li><?php echo $item->title ?></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <div class="blog-page">
                <h3 class="post-name"><a href="<?php echo site_url('tricks/trick/' . urlencode($item->permalink)) ?>"><?php echo $item->title ?></a></h3>
                <div class="post-metas">
                    <span class="icon"><i class="fa fa-eye"></i> <?php echo $item->visits ?></span>
                    <span class="icon"><i class="fa fa-calendar"></i>
                        <?php echo lang('global_created') ?>: 
                        <?php echo date('M d, Y ', strtotime($item->created)) ?>
                    </span>
                    <span class="icon"><i class="fa fa-clock-o"></i>
                        <?php echo lang('global_Last_Update') ?>: 
                        <?php echo date('M d, Y ', strtotime($item->updated)) ?>
                    </span>
                </div>
                <div class="blog-img">
                    <img class="img-responsive" src="<?php echo base_url() ?>/cdn/tricks/<?php echo $item->image ?>" alt="<?php echo $item->image ?>" />
                </div>
                <section>
                    <?php foreach (explode("\n", $item->description) as $i): ?>
                        <p class="margin-reset"> <?php echo $i ?></p>
                    <?php endforeach; ?>
                </section>
                <?php if ($item->tags): ?>
                    <div class="topic-tags">
                        <ul class="list-inline">
                            <li><i class="fa fa-tags" aria-hidden="true"></i> <?php echo lang('tags') ?></li>
                            <?php foreach (explode(',', $item->tags) as $tag): ?>
                                <li><a href="<?= site_url('tricks?q=' . urlencode($tag)) ?>"><?= $tag ?></a></li>
                            <?php endforeach ?>
                        </ul>
                    </div>
                <?php endif ?>
                <section class="linking">
                    <p class="share-links"><?php echo lang('global_Share_it_with') ?> </p>
                    <ul class="share-post">
                        <li><a href="http://www.facebook.com/share.php?u=<?php echo urlencode(current_url()) ?>&title=<?php echo urlencode(config('title')) ?>&image=<?php echo base_url() ?>/cdn/tricks/<?php echo $item->image ?>" target="_blank" class="facebook-share"><?php echo lang('global_Facebook') ?></a></li>
                        <li><a href="http://twitter.com/intent/tweet?status=<?php echo urlencode(config('title')) ?>+<?php echo urlencode(current_url()) ?>" target="_blank" class="twitter-share"><?php echo lang('global_Twitter') ?></a></li>
                        <li><a href="https://pinterest.com/pin/create/bookmarklet/?media=<?php echo base_url() ?>/cdn/tricks/<?php echo $item->image ?>&url=<?php echo urlencode(current_url()) ?>&description=<?php echo urlencode(config('title')) ?>" target="_blank" class="pinterest-share"><?php echo lang('global_Pinterest') ?></a></li>
                    </ul>
                    <div class="clearfix"></div>	
                </section>

                <?php if (config('disqus_user')): ?>
                    <div class="topic-comments">
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
                    </div>
                <?php endif ?>

                <div class="footer-ads">
                    <?php echo ads(12) ?>
                </div>
            </div>
        </div>

        <!-- Sidebar
      ================================================== -->
        <div class="col-md-3">
            <!-- Tips and Tricks -->
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Latest_Tips_and_Tricks') ?></h4>
                <span class="line margin-bottom-20"></span>
                <div class="clearfix"></div>
                <ul class="categories">
                    <?php foreach ($tricks as $item): ?> 
                        <li><a href="<?php echo site_url('trick/' . urlencode($item->permalink)) ?>" title="<?php echo $item->title ?>"><?php echo ellipsize($item->title, 35) ?></a></li>
                    <?php endforeach; ?>
                </ul>
            </div>
            <div class="widget">
                <h4 class="headline"><?php echo lang('global_Advertisement') ?></h4>
                <span class="line margin-bottom-30"></span>
                <div class="clearfix"></div>
                <div class="side-ads">
                    <?php echo ads(7) ?>
                </div>
            </div>
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
                    <?php echo ads(11) ?>
                </div>
            </div>
        </div>
    </div>
</div>


