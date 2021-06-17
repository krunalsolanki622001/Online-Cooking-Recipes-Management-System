<section id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo lang('global_dashboard') ?> - <?php echo $item->firstname ?> <?php echo $item->lastname ?></h2>
            </div>
            <div class="col-md-6">
                <nav id="breadcrumbs">
                    <ul>
                        <li><a href="<?php echo site_url() ?>"><?php echo lang('global_home') ?></a></li>
                        <li><?php echo lang('global_dashboard') ?> - <?php echo $item->firstname ?> <?php echo $item->lastname ?></li>
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
                            <?php if ($item->image): ?>
                                <img src="<?php echo base_url() ?>/cdn/users/<?php echo $item->image ?>" alt="<?php echo $item->username ?>">
                            <?php else: ?>
                                <img src="<?php echo base_url() ?>/cdn/users/default.png" alt="<?php echo $item->username ?>">
                            <?php endif ?>
                        </figure>
                        <div class="usercontent">
                            <h3><?php echo $item->username ?></h3>
                            <h4><?php echo $item->usergroup ?></h4>
                        </div>
                    </div>
                    <nav class="navdashboard">
                        <ul>
                            <li>
                                <a href="<?php echo site_url('dashboard') ?>">
                                    <i class="fa fa-dashboard"></i>
                                    <span><?php echo lang('global_dashboard') ?></span>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo site_url('profile/' . $item->user_id . '-' . permalink($item->username)) ?>">
                                    <i class="fa fa-user"></i>
                                    <span><?php echo lang('global_My_Profile') ?></span>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo site_url('myrecipes') ?>">
                                    <i class="icon icon-themeenergy_soup2"></i>
                                    <span><?php echo lang('global_My_Recipes') ?></span>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo site_url('account/logout') ?>">
                                    <i class="fa fa-sign-out"></i>
                                    <span><?php echo lang('global_logout') ?></span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="col-md-9">
            <?php if ($success) : ?>
                <div class="col-md-12">
                    <div class="alert alert-success">
                        <?php echo lang('global_Your_profile_Updated_Successfully') ?>
                        <i class="close-msg fa fa-times"></i>
                    </div>
                </div>
            <?php endif ?>
            <?php if (validation_errors()) : ?>
                <div class="col-md-12">
                    <div class="notification error closeable">
                        <?php echo validation_errors() ?>
                    </div>
                </div>
            <?php endif ?>
            <form method="post" class="edit-profile" enctype="multipart/form-data">
                <div class="col-md-12">
                    <h4 class="headline"><?php echo lang('global_Public_Profile') ?></h4>
                    <span class="line margin-bottom-30"></span>
                    <div class="row margin-top-50">
                        <div class="form-group col-md-6">
                            <label for="firstname"><?php echo lang('global_First_Name') ?></label>
                            <input type="text" name="firstname" value="<?php echo set_value('firstname', $item->firstname) ?>" >
                        </div>
                        <div class="form-group col-md-6">
                            <label for="lastname"><?php echo lang('global_Last_Name') ?></label>
                            <input type="text" name="lastname" value="<?php echo set_value('lastname', $item->lastname) ?>" >
                        </div>
                        <div class="form-group col-md-6">
                            <label for="username"><?php echo lang('global_Username') ?> </label>
                            <input type="text" name="username" value="<?php echo set_value('username', $item->username) ?>" >
                        </div>
                        <div class="form-group col-md-6">
                            <label for="email"><?php echo lang('global_Email') ?></label>  <?= form_checkbox('email_appear', 1, set_value('email_appear', $item->email_appear)) ?> <?php echo lang('global_Display_on_my_profile') ?>
                            <input type="email" name="email" value="<?php echo set_value('email', $item->email) ?>" disabled="">
                        </div>
                        <div class="selectform-group col-md-6">
                            <label for="country"><?php echo lang('global_Country') ?></label>
                            <?php echo form_dropdown('country_id', $countries, set_value('country_id', $item->country_id), 'class="chosen-select-no-single"') ?>
                        </div>

                        <div class="form-group col-md-6">
                            <label for="password"><?php echo lang('global_Password') ?></label>
                            <input type="password" name="password" >
                        </div> 
                        <div class="form-group col-sm-12">
                            <label><?php echo lang('global_Description') ?></label>
                            <textarea type="text" class="form-description" name="description"><?php echo set_value('description', $item->description) ?></textarea>
                        </div>
                        <div class="form-group col-md-12">
                            <label for="gender"><?php echo lang('global_Gender') ?></label>
                            <div class="row">
                                <div class="col-sm-3">
                                    <input type="radio" value="male" name="gender"
                                           <?php if (set_value('gender', $item->gender) == 'male'): ?>checked="checked"<?php endif; ?>><?php echo lang('global_Male') ?>
                                </div>
                                <div class="col-sm-3">
                                    <input type="radio" value="female" name="gender"
                                           <?php if (set_value('female', $item->gender) == 'female'): ?>checked="checked"<?php endif; ?>><?php echo lang('global_Female') ?>
                                </div>
                                <div class="col-md-6">
                                    <label class="upload-btn">
                                        <input type="file" name="image">
                                        <i class="fa fa-upload"></i> <?php echo lang('global_Upload_Profile_Image') ?>
                                    </label>
                                    <?php if ($item->image): ?>
                                        <img src="<?php echo site_url() ?>/cdn/users/<?php echo $item->image ?>" class="img-upload"/>
                                    <?php endif ?>
                                </div> 
                            </div>
                        </div>
                        <div class="form-group col-md-12">
                            <input type="submit" class="button color add_ingredient" value="<?php echo lang('global_submit') ?>">
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
