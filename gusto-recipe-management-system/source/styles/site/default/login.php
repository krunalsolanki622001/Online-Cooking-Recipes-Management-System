<section id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo lang('global_login') ?></h2>
            </div>
            <div class="col-md-6">
                <nav id="breadcrumbs">
                    <ul>
                        <li><a href="<?php echo site_url() ?>"><?php echo lang('global_home') ?></a></li>
                          <li><?php echo lang('global_login') ?></li>
                    </ul>
                </nav>
            </div>
        </div>
    </div>
</section>
<div class="container">
    <div class="col-md-offset-3 col-md-6">
        <div class="alert-message">
            <i class="fa fa-warning"></i>
            <h2><?php echo lang('Something_went_wrong') ?></h2>
            <p><?php echo lang('This_topic_for_registered_users-You_need_to_login_to_view_the_full_topic.') ?></p>
            <a href="javascript:popup_switch('login')" class="button color"><?php echo lang('global_login') ?></a>
        </div>
    </div>
</div>
