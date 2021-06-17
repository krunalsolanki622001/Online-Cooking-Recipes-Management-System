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
                <a href="<?php echo site_url('admin/dashboard') ?>"><i class="fa-home"></i><?php echo lang('global_home') ?></a>
            </li>
            <li class="active">
                <strong><?php echo lang('global_Advertisement') ?></strong>
            </li>
        </ol>

    </div>

</div>
<!-- Admin Table-->
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo lang('global_Advertisement') ?></h3>
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
                <label class="col-sm-2 control-label"><?php echo lang('global_Location') ?></label>

                <div class="col-sm-10">
                    <?php echo form_dropdown('ad_location_id', dd2menu('ad_locations', array('ad_location_id' => 'name')), set_value('ad_location_id', $item->ad_location_id), 'class="form-control"') ?>
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_title') ?></label>

                <div class="col-sm-10">
                    <input type="text" class="form-control" placeholder="<?php echo lang('global_title') ?>" name="title"
                           value="<?php echo set_value('title', $item->title) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>


            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_type') ?></label>

                <div class="col-sm-10 ">
                    <input type="radio" name="type" class="show-option-type-image" value="image"><?php echo lang('global_image') ?>
                    <div class="row">
                        <div class="form-group banner-option-image">
                            <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Image_URL') ?></label>
                            <div class="col-sm-10">
                                <input class="form-control" type="text" name="link" placeholder="<?php echo lang('global_Image_URL') ?>"
                                       value="<?php echo set_value('link', $item->link) ?>">
                            </div>
                        </div>
                        <div class="form-group banner-option-image">
                            <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Upload_Image') ?></label>
                            <div class="col-sm-10">
                                <input class="form-control" type="file" name="image">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"></label>

                <div class="col-sm-10 ">
                    <input type="radio" name="type" class="show-option-type-code" value="code"><?php echo lang('global_Code') ?>
                    <div class="form-group banner-option-code">

                        <div class="col-sm-12">
                            <textarea class="form-control" name="code" placeholder="<?php echo lang('global_Code') ?>"
                                      style="height: 100px;"><?php echo set_value('code', $item->code) ?></textarea>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-group-separator"></div>


            <div class="form-group">
                <label class="col-sm-2 control-label"></label>

                <div class="col-sm-10">
                    <input type="submit" class="btn btn-secondary " name="submit" value="<?php echo lang('global_submit') ?>">
                    <a href="<?php echo site_url('admin/ads/index'); ?>" class="btn btn-danger"><?php echo lang('global_cancel') ?></a>
                </div>
            </div>
        </form>
    </div>
</div>
<style>
    .banner-option-image,
    .banner-option-code {
        display: none;
    }
</style>
<script>
    $(document).ready(function ($) {
        $(".show-option-type-image").click(function () {
            $(".banner-option-image").show();
            $(".banner-option-code").hide();
        });
        $(".show-option-type-code").click(function () {
            $(".banner-option-image").hide();
            $(".banner-option-code").show();
        });

<?php if ($item->type == 'image'): ?>
            $(".show-option-type-image").click();
<?php else: ?>
            $(".show-option-type-code").click();
<?php endif ?>

    });
</script>

