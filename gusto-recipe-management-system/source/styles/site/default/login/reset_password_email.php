<div style="direction: <?php echo lang('dir') ?>;color: #333; width: 100%; margin: auto; border: 1px solid #dedede; font-size: 16px;font-family: sans-serif;">
    <div style="text-align:center; margin-bottom: 15px; background-color: #f9f9f9; padding: 15px 0;">
        <a href="<?php echo site_url() ?>">
            <img src="<?php echo base_url() ?>/cdn/about/<?php echo config('logo') ?>" style="height: 80px;">
        </a>
    </div>
    <div style="padding-bottom: 15px; margin-bottom: 15px; padding: 20px;">
        <h3><?php echo lang('global_Hi') ?>, <b><?php echo $user->username ?></b></h3>
        <p style="line-height: 28px;">
            <?php echo lang('global_You_requested_to_reset_the_password_for_account') ?>: <?php echo $user->username ?> <?php echo lang('global_please_check_below_your_information') ?>:<br />
            <br>
            <b><?php echo lang('global_Email') ?>:</b> <?php echo $user->email ?><br />
            <b><?php echo lang('global_Password') ?>:</b> <?php echo $pass ?><br />
            <br>
            <b><?php echo lang('global_Thanks_You') ?>!</b>
            <br>
        </p>
    </div>
    <div style="text-align: center; border-top: 2px solid #FFA41F;padding: 25px 0;background-color: #f9f9f9;">
        <a style="display: inline-block;"><b><?php echo lang('global_Email') ?>:</b> <?php echo config('webmaster_email') ?></a> | <span style="display: inline-block;"><b><?php echo lang('global_Phone') ?>:</b> <?php echo config('phone') ?></span>
    </div>
    <div style="background-color:#FFA41F; color: #fff; text-align: center;">
        <p style="margin: 0;padding: 10px 0;"> Copyright © <?php echo config('title') ?> 2018 </p>
    </div>
</div>
