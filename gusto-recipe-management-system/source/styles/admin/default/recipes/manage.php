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
                <strong><?php echo lang('global_Recipe') ?></strong>
            </li>
        </ol>
    </div>
</div>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo lang('global_Recipe') ?></h3>
    </div>
    <div class="panel-body">
        <?php if (validation_errors()) : ?>
            <div class="col-md-12">
                <div class="alert alert-danger">
                    <?php echo validation_errors() ?>
                </div>
            </div>
        <?php endif; ?>
        <form role="form" class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
          
            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo lang('global_Category') ?> <span class="required">*</span></label>
                <div class="col-sm-10">
                    <?php echo form_dropdown('category_id', dd2menu('categories', array('category_id' => 'title')), set_value('category_id', $item->category_id ? $item->category_id : '63'), 'class="form-control s2example-1"') ?>
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"> <?php echo lang('global_Title') ?> <span class="required">*</span></label>

                <div class="col-sm-10">
                    <input type="text" class="form-control title" placeholder="<?php echo lang('global_Title') ?>" name="title"
                           value="<?php echo set_value('title', $item->title) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"> <?php echo lang('global_permalink') ?> <span class="required">*</span></label>

                <div class="col-sm-10">
                    <input type="text" class="form-control permalink" placeholder="<?php echo lang('global_permalink') ?>" name="permalink"
                           value="<?php echo set_value('permalink', $item->permalink) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"> <?php echo lang('global_Difficulty') ?> <span class="required">*</span></label>
                <div class="col-sm-10">
                    <div class="row">
                        <div class="compose-message-editor col-sm-4">
                            <input type="radio" value="easy" name="difficulty"
                                   <?php if (set_value('difficulty', $item->difficulty) == 'easy'): ?>checked="checked"<?php endif; ?>>
                            <i class="ico i-easy"></i> <?php echo lang('global_Easy') ?>
                        </div>
                        <div class="compose-message-editor col-sm-4">
                            <input type="radio" value="medium" name="difficulty"
                                   <?php if (set_value('difficulty', $item->difficulty) == 'medium'): ?>checked="checked"<?php endif; ?>>
                            <i class="ico i-medium"></i> <?php echo lang('global_medium') ?>
                        </div>
                        <div class="compose-message-editor col-sm-4">
                            <input type="radio" value="hard" name="difficulty"
                                   <?php if (set_value('difficulty', $item->difficulty) == 'hard'): ?>checked="checked"<?php endif; ?>>
                            <i class="ico i-hard"></i> <?php echo lang('global_hard') ?>
                        </div>
                    </div>  
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo lang('global_Prep_Time') ?> </label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="prepare_time"  placeholder="<?php echo lang('global_Prep_Time') ?>" value="<?php echo set_value('prepare_time', $item->prepare_time) ?>">
                    <br>
                </div>

                <label class="col-sm-2 control-label"><?php echo lang('global_Cooking') ?> </label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" name="cooking_time"  placeholder="<?php echo lang('global_Cooking') ?>" value="<?php echo set_value('cooking_time', $item->cooking_time) ?>">
                    <br>
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"> <?php echo lang('global_Serves') ?></label>
                <div class="col-sm-3">
                    <input type="number" class="form-control" placeholder="<?php echo lang('global_Serves') ?>" name="serves"
                           value="<?php echo set_value('serves', $item->serves) ?>">
                </div>
                <div class="col-sm-1">
                    <p>People</p>
                    <br>
                </div>
                <label class="col-sm-2 control-label" for="field-1"> <?php echo lang('global_Calories') ?></label>
                <div class="col-sm-4">
                    <input type="number" class="form-control" placeholder="<?php echo lang('global_Calories') ?>" name="calories"
                           value="<?php echo set_value('calories', $item->calories) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo lang('global_Description') ?> <span class="required">*</span></label>
                <div class="col-sm-10">
                    <textarea type="text" class="form-control form-description" placeholder="<?php echo lang('global_Description') ?>" name="description"
                              ><?php echo set_value('description', $item->description) ?></textarea>
                </div>
            </div>
            <div class="form-group-separator"></div>

            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo lang('global_Directions') ?> <span class="required">*</span></label>
                <div class="col-sm-10">
                    <textarea type="text" class="form-control form-description" placeholder="<?php echo lang('global_Directions') ?>" name="directions"
                              ><?php echo set_value('directions', $item->directions) ?></textarea>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo lang('global_Ingredients') ?> <span class="required">*</span></label>
                <div class="col-sm-10">
                    <textarea type="text" class="form-control form-description" placeholder="<?php echo lang('global_Ingredients') ?>" name="ingredients"
                              ><?php echo set_value('ingredients', $item->ingredients) ?></textarea>
                </div>
            </div>
            <div class="form-group-separator"></div>
            
            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo lang('settings_meta_description') ?></label>
                <div class="col-sm-10">
                    <textarea type="text" class="form-control form-description" placeholder="<?php echo lang('settings_meta_description') ?>" name="meta_description"
                              ><?php echo set_value('meta_description', $item->meta_description) ?></textarea>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label"><?php echo lang('global_visits') ?></label>
                <div class="col-sm-2">
                    <p class="form-control"> <?php echo $item->visited ?></p>
                </div>
                <label class="col-sm-2 control-label"><?php echo lang('global_created') ?></label>
                <div class="col-sm-2">
                    <p class="form-control"> <?php echo $item->created ?></p>
                </div>
                <label class="col-sm-2 control-label"><?php echo lang('global_Updated') ?></label>
                <div class="col-sm-2">
                    <p class="form-control">  <?php echo $item->updated ?></p>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Status') ?> <span class="required">*</span></label>

                <div class="compose-message-editor col-sm-10">
                    <input type="radio" value="active" name="status"
                           <?php if (set_value('status', $item->status) == 'active'): ?>checked="checked"<?php endif; ?>>
                    <?php echo lang('global_active') ?> <br/>
                    <input type="radio" value="inactive" name="status"
                           <?php if (set_value('status', $item->status) == 'inactive'): ?>checked="checked"<?php endif; ?>>  <?php echo lang('global_inactive') ?>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"><?php echo lang('global_Video_link') ?> </label>

                <div class="col-sm-10">
                    <input type="url" class="form-control" placeholder="<?php echo lang('global_Video_link') ?>" name="video"
                           value="<?php echo set_value('video', $item->video) ?>">
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label" for="field-1"> <?php echo lang('global_Featured_Image') ?> <span class="required">*</span></label>

                <div class="col-sm-8">
                    <input class="form-control" type="file" name="featured_image" >
                </div>
                <div class="col-sm-2 text-right">
                    <?php if ($item->featured_image): ?>
                        <img src="<?php echo base_url() ?>/cdn/recipes/<?php echo $item->featured_image ?>" class="img-inline userpic-32" height="32"/>
                    <?php endif; ?>
                </div>
            </div>
            <div class="portlet light bordered form-group">
                <div class="portlet-title col-sm-2 control-label">
                    <label class=""><?php echo lang('global_Recipe_Images') ?> </label>
                    <div class="tools">
                        <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                    </div>
                </div>
                <div class="col-sm-3 text-center">
                    <div id="advancedDropzone" class="droppable-area">
                        <?php echo lang('global_Upload') ?>
                        <input type="file" name="gallery[]" multiple id="gallery" onchange="imagesUpdate(this)"  />
                    </div>
                </div>
                <div class="col-sm-7">
                    <table class="table table-bordered table-striped" id="example-dropzone-filetable">
                        <thead>
                            <tr>
                                <th><?php echo lang('global_Uploaded_Images') ?></th>
                            </tr>
                        </thead>
                        <tbody class="gallery gallery_sortable" >
                            <?php if ($images = $this->input->post("gallery") or $images = json_decode($item->gallery)): ?>
                                <?php foreach ($images as $img): ?>
                                    <tr id="<?php echo $img ?>">
                                        <td>
                                            <img src="<?php echo site_url() ?>/cdn/recipes/<?php echo $img ?>" />
                                            <input type="hidden" name="gallery[]" value="<?php echo $img ?>" />
                                            <button type="button" onclick="imagesRemoveItem(this)" class="btn btn-danger"><i class="fa fa-trash"></i></button>
                                        </td>
                                    </tr>
                                <?php endforeach; ?>
                            <?php else: ?>
                                <tr class="no-images"><td><?php echo lang('global_No_photos_uploaded_yet') ?> !</td></tr>
                            <?php endif; ?>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="form-group-separator"></div>
            <div class="form-group">
                <label class="col-sm-2 control-label"></label>
                <div class="col-sm-10">
                    <input type="submit" class="btn btn-secondary " name="submit" value="<?php echo lang('global_submit') ?>">
                    <a href="<?php echo site_url('admin/recipes/index'); ?>" class="btn btn-danger"><?php echo lang('global_cancel') ?></a>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
    $(".title").change(function () {
        $.post("<?php echo site_url("admin/recipes/permalink") ?>", {permalink: $(this).val()}, function (res) {
            $(".permalink").val(res);
        });
    });

    var featuredImageUpdate = function (input) {
        if (!$(".gallery img").length) {
            $(".gallery").html("<img src='' style='width: 100%' />");
        }
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $(".gallery img").attr('src', e.target.result);
            }

            reader.readAsDataURL(input.files[0]);
        }
    };

    $(function () {
        $(".gallery_sortable").sortable();
        $(".gallery_sortable").disableSelection();
    });


    var imagesUpdate = function (that) {
        if (!$(".gallery_sortable tr td").length) {
            $(".gallery_sortable").html("");
        }

        data = new FormData();
        $(that.files).each(function (i, x) {
            data.append('file[]', x);
        });


        $.ajax({
            url: "<?php echo site_url() ?>admin/recipes/image_upload",
            type: "POST",
            data: data,
            cache: false,
            processData: false,
            contentType: false,
            enctype: 'multipart/form-data'
        }).done(function (res) {
            res = JSON.parse(res);
            if (res.error == true)
                console.log(res.message);
            else {
                $(res.files).each(function (i, x) {
                    console.log(x);
                    $(".gallery_sortable").append('<tr id="' + x + '">'
                            + '<td>'
                            + '    <img src="<?php echo site_url() ?>/cdn/recipes/' + x + '" />'
                            + '    <input type="hidden" name="gallery[]" value="' + x + '" />'
                            + '    <button type="button" onclick="imagesRemoveItem(this)" class="btn btn-danger"><i class="fa fa-trash"></i></button>'
                            + '</td>'
                            + '</tr>'
                            );
                });
            }
        });
    };

    var imagesRemoveItem = function (item) {
        $(item).parent().parent().remove();
    };
</script>
