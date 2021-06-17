<div class="page-title">
    <div class="breadcrumb-env">
        <ul class="user-info-menu left-links list-inline list-unstyled">
            <li class="hidden-sm hidden-xs">
                <a href="#" data-toggle="sidebar">
                    <i class="fa-bars"></i>
                </a>
            </li>
        </ul>
        <ol class="breadcrumb bc-1" >
            <li>
                <a href="<?php echo site_url('admin/dashboard') ?>"><i class="fa-home"></i> <?php echo lang('global_home') ?></a>
            </li>
            <li class="active">
                <strong>User <?php echo lang('global_home') ?></strong>
            </li>
        </ol>
    </div>
</div>
<!-- Admin Table-->
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">User<?php echo lang('global_home') ?></h3>
    </div>
    <div class="panel-body">
        <?php if (validation_errors()) : ?>
            <div class="col-md-12">
                <div class="alert alert-danger">
                    <?php echo validation_errors() ?>
                </div>
            </div>
        <?php endif ?>
        <form role="form" class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo lang('global_usergroup') ?> <span class="required">*</span></label>
                <div class="col-sm-10">
                    <?php echo form_dropdown('usergroup_id', dd2menu('usergroups', array('usergroup_id' => 'title')), set_value('usergroup_id', $item->usergroup_id ? $item->usergroup_id : '1'), 'class="form-control s2example-1"') ?>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Username') ?> <span class="required">*</span></label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="<?php echo lang('global_Username') ?>" name="username"
                           value="<?php echo set_value('username', $item->username) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_First_Name') ?></label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="<?php echo lang('global_First_Name') ?>" name="firstname"
                           value="<?php echo set_value('firstname', $item->firstname) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Last_Name') ?></label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="<?php echo lang('global_Last_Name') ?>" name="lastname"
                           value="<?php echo set_value('lastname', $item->lastname) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Email') ?> <span class="required">*</span></label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="<?php echo lang('global_Email') ?>" name="email"
                           value="<?php echo set_value('email', $item->email) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo lang('global_Country') ?> <span class="required">*</span></label>
                <div class="col-sm-10">
                    <?php echo form_dropdown('country_id', dd2menu('countries', array('country_id' => 'nicename')), set_value('country_id', $item->country_id ? $item->country_id : '63'), 'class="form-control s2example-1"') ?>
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_image') ?> <span class="required">*</span></label>
                <div class="col-sm-8">
                    <input class="form-control" type="file" name="image" >
                </div>
                <div class="col-sm-2">
                    <?php if ($item->image): ?>
                        <img src="<?php echo site_url() ?>/cdn/users/<?php echo $item->image ?>" class="img-inline userpic-32" width="40"/>
                    <?php else: ?>
                        <img src="<?php echo base_url() ?>/cdn/users/default.png" class="img-inline userpic-32" width="40">
                    <?php endif ?>
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Password') ?> <span class="required">*</span></label>
                <div class="col-sm-10">
                    <input type="password" class="form-control" placeholder="<?php echo lang('global_Password') ?>" name="password"
                           value="<?php echo set_value('password') ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Description') ?></label>
                <div class="col-sm-10">
                    <textarea style="height: 150px;"class="form-control" placeholder="<?php echo lang('global_Description') ?>" name="description"><?php echo set_value('description', $item->description) ?></textarea>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Gender') ?></label>
                <div class="compose-message-editor col-sm-10">
                    <input type="radio" value="male" name="gender"
                           <?php if (set_value('gender', $item->gender) == 'male'): ?>checked="checked"<?php endif; ?>>
                    <?php echo lang('global_Male') ?><br/>
                    <input type="radio" value="female" name="gender"
                           <?php if (set_value('gender', $item->gender) == 'female'): ?>checked="checked"<?php endif; ?>> <?php echo lang('global_Female') ?>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"> <?php echo lang('global_status') ?></label>
                <div class="compose-message-editor col-sm-10">
                    <input type="radio" value="active" name="status"
                           <?php if (set_value('status', $item->status) == 'active'): ?>checked="checked"<?php endif; ?>>
                   <?php echo lang('global_active') ?><br/>
                    <input type="radio" value="inactive" name="status"
                           <?php if (set_value('status', $item->status) == 'inactive'): ?>checked="checked"<?php endif; ?>> <?php echo lang('global_inactive') ?>
                </div>
            </div>
            <div class="form-group-separator"></div>
            
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Display_on_my_profile') ?></label>
                <div class="col-sm-10 ">
                    <?= form_checkbox('email_appear', 1, set_value('email_appear', $item->email_appear)) ?> <?php echo lang('global_Display_on_my_profile') ?>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label"></label>

                <div class="col-sm-10">
                    <input type="submit" class="btn btn-secondary " name="submit" value="<?php echo lang('global_submit') ?>">
                    <a href="<?php echo site_url('admin/users/admins'); ?>" class="btn btn-danger"><?php echo lang('global_cancel') ?></a>

                </div>
            </div>
        </form>
    </div>
</div>

