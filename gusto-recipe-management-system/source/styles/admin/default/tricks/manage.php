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
                <strong><?php echo lang('global_Tips_and_Tricks') ?></strong>
            </li>
        </ol>

    </div>

</div>
<!-- Admin Table-->
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo lang('global_Tips_and_Tricks') ?></h3>
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
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_created') ?></label>

                <div class="col-sm-4">
                    <?php echo $item->created ?>
                </div>
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Updated') ?></label>

                <div class="col-sm-4">
                    <?php echo $item->updated ?>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_title') ?> <span class="required">*</span> </label>

                <div class="col-sm-10">
                    <input type="text" class="form-control title" placeholder="<?php echo lang('global_title') ?>" name="title"
                           value="<?php echo set_value('title', $item->title) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_permalink') ?> <span class="required">*</span></label>

                <div class="col-sm-10">
                    <input type="text" class="form-control permalink" placeholder="<?php echo lang('global_permalink') ?>" name="permalink"
                           value="<?php echo set_value('permalink', $item->permalink) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Short_Description') ?> <span class="required">*</span></label>

                <div class="col-sm-10">
                    <textarea style="height: 100px;"class="form-control" placeholder="Short <?php echo lang('global_Short_Description') ?>" name="short_description"><?php echo set_value('short_description', $item->short_description) ?></textarea>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Description') ?> <span class="required">*</span></label>

                <div class="col-sm-10">
                    <textarea style="height: 250px;"class="form-control" placeholder="<?php echo lang('global_Description') ?>" name="description" id="editor1"><?php echo set_value('description', $item->description) ?></textarea>
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
                        <img src="<?php echo site_url() ?>/cdn/tricks/<?php echo $item->image ?>" class="img-inline userpic-32" width="40"/>
                    <?php endif ?>
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('settings_meta_description') ?></label>

                <div class="col-sm-10">
                    <textarea class="form-control" placeholder="<?php echo lang('settings_meta_description') ?>" name="meta_description"><?php echo set_value('meta_description', $item->meta_description) ?></textarea>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('tags') ?></label>

                <div class="col-sm-10">
                    <textarea class="form-control" placeholder="<?php echo lang('tags') ?>" name="tags"><?php echo set_value('tags', $item->tags) ?></textarea>
                    <p><?php echo lang('ex.:recipe,food,cook,...') ?></p>
                </div>
            </div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_status') ?></label>

                <div class="col-sm-10">
                    <div class="row">
                        <div class="compose-message-editor col-sm-4">
                            <input type="radio" value="0" name="status"
                                   <?php if (set_value('status', $item->status) == '0'): ?>checked="checked"<?php endif; ?>>
                                   <?php echo lang('global_public') ?>
                        </div>
                        <div class="compose-message-editor col-sm-4">
                            <input type="radio" value="1" name="status"
                                   <?php if (set_value('status', $item->status) == '1'): ?>checked="checked"<?php endif; ?>>
                                   <?php echo lang('global_private') ?>
                        </div>
                        <div class="compose-message-editor col-sm-4">
                            <input type="radio" value="2" name="status"
                                   <?php if (set_value('status', $item->status) == '2'): ?>checked="checked"<?php endif; ?>>
                                   <?php echo lang('global_registered_users') ?>
                        </div>
                    </div>  
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label"></label>
                <div class="col-sm-10">
                    <input type="submit" class="btn btn-secondary " name="submit" value="<?php echo lang('global_submit') ?>">
                    <a href="<?php echo site_url('admin/tricks/index'); ?>" class="btn btn-danger"><?php echo lang('global_cancel') ?></a>
                </div>
            </div>
        </form>
    </div>
</div>
<script src="<?php echo STYLE_JS ?>/ckeditor/ckeditor.js" type="text/javascript"></script>
<script>
    $(document).ready(function () {
        CKEDITOR.replace('editor1', {
<?php if (config('direction') == 'ltr'): ?>contentsLangDirection: 'ltr'
<?php else: ?>
            contentsLangDirection: 'rtl'
<?php endif ?>
    });
    });
            $(".title").change(function () {
        $.post("<?php echo site_url("admin/tricks/permalink") ?>", {permalink: $(this).val()}, function (res) {
            $(".permalink").val(res);
        });
    });
</script>

