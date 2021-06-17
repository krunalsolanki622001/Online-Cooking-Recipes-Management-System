<section id="titlebar">
    <div class="container">
        <div class="row">
            <div class="col-md-6">
                <h2><?php echo lang('global_My_Recipe') ?></h2>
            </div>
            <div class="col-md-6">
                <nav id="breadcrumbs">
                    <ul>
                        <li><a href="<?php echo site_url() ?>"><?php echo lang('global_home') ?></a></li>
                        <li><?php echo lang('global_My_Recipe') ?></li>
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
                            <?php if ($user->image): ?>
                                <img src="<?php echo base_url() ?>/cdn/users/<?php echo $user->image ?>" alt="<?php echo $user->username ?>">
                            <?php else: ?>
                                <img src="<?php echo base_url() ?>/cdn/users/default.png" alt="<?php echo $user->username ?>">
                            <?php endif ?>
                        </figure>
                        <div class="usercontent">
                            <h3><?php echo $user->username ?></h3>
                            <h4><?php echo $user->usergroup ?></h4>
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
                                <a href="<?php echo site_url('profile/' . $user->user_id . '-' . urlencode(permalink($user->username))) ?>">
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
            <div class="inner-box">
                <div class="dashboard-box">
                    <h2 class="dashbord-title"><?php echo lang('global_My_Recipe') ?></h2>
                </div>
                <div class="dashboard-wrapper">
                    <div class="submit-recipe-form">
                        <?php if (validation_errors()) : ?>
                            <div class="col-md-12">
                                <div class="notification error closeable">
                                    <?php echo validation_errors() ?>
                                </div>
                            </div>
                        <?php endif; ?>
                        <?php if ($item->recipe_id) : ?>
                            <div class="form-group">
                                <label class="col-sm-2 "><?php echo lang('global_visits') ?></label>
                                <div class="col-sm-2">
                                    <p class="block-item"> <?php echo $item->visited ?></p>
                                </div>
                                <label class="col-sm-2 "><?php echo lang('global_created') ?></label>
                                <div class="col-sm-2">
                                    <p class="block-item"> <?php echo $item->created ?></p>
                                </div>
                                <label class="col-sm-2 "><?php echo lang('global_Updated') ?></label>
                                <div class="col-sm-2">
                                    <p class="block-item">  <?php echo $item->updated ?></p>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                        <?php endif; ?>

                        <form method="post" enctype="multipart/form-data" class="recipe-form">
                            <div class="form-group">
                                <label class="col-sm-2"><?php echo lang('global_Category') ?> <span class="required">*</span></label>
                                <div class="col-sm-10">
                                    <?php echo form_dropdown('category_id', dd2menu('categories', array('category_id' => 'title')), set_value('category_id', $item->category_id ? $item->category_id : '63'), 'class="chosen-select-no-single"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2" for="field-1"><?php echo lang('global_Title') ?> <span class="required">*</span></label>

                                <div class="col-sm-10">
                                    <input type="text" class="title" placeholder="<?php echo lang('global_Title') ?>" name="title"
                                           value="<?php echo set_value('title', $item->title) ?>">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 " for="field-1"> <?php echo lang('global_permalink') ?> <span class="required">*</span></label>

                                <div class="col-sm-10">
                                    <input type="text" class="permalink" placeholder="<?php echo lang('global_permalink') ?>" name="permalink"
                                           value="<?php echo set_value('permalink', $item->permalink) ?>">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 " for="field-1"> <?php echo lang('global_Difficulty') ?> <span class="required">*</span></label>
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
                                <label class="col-sm-2 "><?php echo lang('global_Prep_Time') ?> </label>
                                <div class="col-sm-4">
                                    <input type="text" name="prepare_time"  placeholder="<?php echo lang('global_Prep_Time') ?>" value="<?php echo set_value('prepare_time', $item->prepare_time) ?>">
                                    <br>
                                </div>

                                <label class="col-sm-2 "><?php echo lang('global_Cooking') ?> </label>
                                <div class="col-sm-4">
                                    <input type="text" name="cooking_time"  placeholder="<?php echo lang('global_Cooking') ?>" value="<?php echo set_value('cooking_time', $item->cooking_time) ?>">
                                    <br>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 " for="field-1"><?php echo lang('global_Serves') ?></label>
                                <div class="col-sm-4">
                                    <input type="number" placeholder="<?php echo lang('global_Serves') ?>" name="serves"
                                           value="<?php echo set_value('serves', $item->serves) ?>">
                                </div>
                                <label class="col-sm-2 " for="field-1"> <?php echo lang('global_Calories') ?></label>
                                <div class="col-sm-4">
                                    <input type="number" placeholder="<?php echo lang('global_Calories') ?>" name="calories"
                                           value="<?php echo set_value('calories', $item->calories) ?>">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 "><?php echo lang('global_Description') ?> <span class="required">*</span></label>
                                <div class="col-sm-10">
                                    <textarea type="text" class="form-description" placeholder="<?php echo lang('global_Description') ?>" name="description"
                                              ><?php echo set_value('description', $item->description) ?></textarea>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2" for="field-1"><?php echo lang('global_Video_link') ?></label>

                                <div class="col-sm-10">
                                    <input type="url" placeholder="<?php echo lang('global_Video_link') ?>" name="video"
                                           value="<?php echo set_value('video', $item->video) ?>">
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2"><?php echo lang('global_Directions') ?> <span class="required">*</span></label>
                                <div class="col-sm-10">
                                    <textarea type="text" class="form-description" placeholder="<?php echo lang('global_Directions') ?>" name="directions"
                                              ><?php echo set_value('directions', $item->directions) ?></textarea>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2"><?php echo lang('global_Ingredients') ?> <span class="required">*</span></label>
                                <div class="col-sm-10">
                                    <textarea type="text" class="form-description" placeholder="<?php echo lang('global_Ingredients') ?>" name="ingredients"
                                              ><?php echo set_value('ingredients', $item->ingredients) ?></textarea>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            
                            <div class="form-group">
                                <label class="col-sm-2"><?php echo lang('settings_meta_description') ?></label>
                                <div class="col-sm-10">
                                    <textarea type="text" class="form-description" placeholder="<?php echo lang('settings_meta_description') ?>" name="meta_description"
                                              ><?php echo set_value('meta_description', $item->meta_description) ?></textarea>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 " for="field-1"> <?php echo lang('global_Featured_Image') ?> <span class="required">*</span></label>
                                <div class="col-sm-8">
                                    <input type="file" name="featured_image" >
                                </div>
                                <div class="col-sm-2 text-right">
                                    <?php if ($item->featured_image): ?>
                                        <img src="<?php echo base_url() ?>/cdn/recipes/<?php echo $item->featured_image ?>" class="img-inline recipe-fet-img"/>
                                    <?php endif; ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="portlet light bordered form-group">
                                <div class="portlet-title col-sm-2 ">
                                    <div id="advancedDropzone" class="droppable-area">
                                        <label class="upload-btn">
                                            <input type="file" name="gallery[]" multiple id="gallery" onchange="imagesUpdate(this)"  />
                                            <i class="fa fa-upload"></i> <?php echo lang('global_Upload') ?>
                                        </label>
                                    </div>
                                    <div class="tools">
                                        <a href="javascript:;" class="collapse" data-original-title="" title=""> </a>
                                    </div>
                                </div>
                                <div class="col-sm-10">
                                    <table class="table table-bordered table-striped" id="example-dropzone-filetable">
                                        <thead>
                                            <tr>
                                                <th><?php echo lang('global_Uploaded_Recipe_Images') ?></th>
                                            </tr>
                                        </thead>
                                        <tbody class="gallery gallery_sortable" >
                                            <?php if ($images = $this->input->post("gallery") or $images = json_decode($item->gallery)): ?>
                                                <?php foreach ($images as $img): ?>
                                                    <tr id="<?php echo $img ?>">
                                                        <td>
                                                            <img src="<?php echo site_url() ?>cdn/recipes/<?php echo $img ?>" />
                                                            <input type="hidden" name="gallery[]" value="<?php echo $img ?>" />
                                                            <button type="button" onclick="imagesRemoveItem(this)" class="btn btn-danger"><i class="fa fa-trash"></i></button>
                                                        </td>
                                                    </tr>
                                                <?php endforeach; ?>
                                            <?php else: ?>
                                                <tr class="no-images"><td><?php echo lang('global_No_photos_uploaded_yet') ?>!</td></tr>
                                            <?php endif; ?>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 "></label>
                                <div class="col-sm-10">
                                    <input type="submit" class="button color big" name="submit" value="<?php echo lang('global_submit') ?>">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    $(".title").change(function () {
        $.post("<?php echo site_url("myrecipe/permalink") ?>", {permalink: $(this).val()}, function (res) {
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
            url: "<?php echo site_url() ?>myrecipe/image_upload",
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
                            + '    <img src="<?php echo site_url() ?>cdn/recipes/' + x + '" />'
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
