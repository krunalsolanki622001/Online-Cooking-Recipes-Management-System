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
                        <li><?php echo $item->title ?></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>
<!-- Content
================================================== -->
<div class="container">
    <div class="single-page margin-bottom-40 row">
         <div class="col-md-12">
            <h3 class="headline"><?php echo $item->title ?></h3>
            <span class="line margin-bottom-35"></span>
            <div class="clearfix"></div>
        </div>
        <section class="col-md-12">
          <?php echo $item->content ?>
        </section>
    </div>
</div>

