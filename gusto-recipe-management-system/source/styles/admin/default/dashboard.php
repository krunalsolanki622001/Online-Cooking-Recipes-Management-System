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
        </ol>
    </div>
</div>
<!-- Admin Table-->
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo lang('global_dashboard') ?></h3>
        <div class="panel-options">
        </div>
    </div>
    <div class="panel-body">
        <div class="row">
            <a href="<?php echo site_url('admin/users/admins') ?>" class="col-sm-3">
                <div class="xe-widget xe-progress-counter xe-progress-counter-info" data-count=".num" data-from="0" data-to="<?php echo $admins ?>" data-duration="2">
                    <div class="xe-background">
                        <i class="fa fa-user-secret"></i>
                    </div>
                    <div class="xe-upper">
                        <div class="xe-icon">
                            <i class="fa fa-user-secret"></i>
                        </div>
                        <div class="xe-label">
                            <span><?php echo lang('global_Administrators') ?></span>
                            <strong class="num"><?php echo $admins ?></strong>
                        </div>
                    </div>
                    <div class="xe-progress">
                        <span class="xe-progress-fill"  data-fill-from="0" data-fill-to="56" data-fill-unit="%" data-fill-property="width" data-fill-duration="2" data-fill-easing="true"></span>
                    </div>

                    <div class="xe-lower">
                        <span><?php echo lang('global_Total_Admins') ?></span>
                    </div>
                </div>
            </a>
            <a href="<?php echo site_url('admin/users/mormal_users') ?>" class="col-sm-3">
                <div class="xe-widget xe-progress-counter xe-progress-counter-purple" data-count=".num" data-from="0" data-to="<?php echo $users ?>" data-duration="2">
                    <div class="xe-background">
                        <i class="fa fa-users"></i>
                    </div>
                    <div class="xe-upper">
                        <div class="xe-icon">
                            <i class="fa fa-users"></i>
                        </div>
                        <div class="xe-label">
                            <span><?php echo lang('global_normal_users') ?></span>
                            <strong class="num"><?php echo $users ?></strong>
                        </div>
                    </div>
                    <div class="xe-progress">
                        <span class="xe-progress-fill"  data-fill-from="0" data-fill-to="56" data-fill-unit="%" data-fill-property="width" data-fill-duration="2" data-fill-easing="true"></span>
                    </div>

                    <div class="xe-lower">
                        <span><?php echo lang('global_Total_Normal_Users') ?></span>
                    </div>
                </div>
            </a>

            <div class="col-sm-3">
                <div class="xe-widget xe-progress-counter xe-progress-counter-primary"  data-count=".num" data-from="0" data-to="<?php echo $visitors ?>" data-suffix="" data-duration="3">
                    <div class="xe-background">
                        <i class="fa fa-eye"></i>
                    </div>
                    <div class="xe-upper">
                        <div class="xe-icon">
                            <i class="fa fa-eye"></i>
                        </div>
                        <div class="xe-label">
                            <span><?php echo lang('global_visits') ?></span>
                            <strong class="num"><?php echo $visitors ?></strong>
                        </div>
                    </div>
                    <div class="xe-progress">
                        <span class="xe-progress-fill"  data-fill-from="0" data-fill-to="82" data-fill-unit="%" data-fill-property="width" data-fill-duration="3" data-fill-easing="true"></span>
                    </div>
                    <div class="xe-lower">
                        <span><?php echo lang('global_Total_Visits') ?></span>
                    </div>
                </div>
            </div>
            <a href="<?php echo site_url('admin/categories') ?>" class="col-sm-3">
                <div class="xe-widget xe-progress-counter xe-progress-counter xe-counter-block-orange"  data-count=".num" data-from="0" data-to="<?php echo $categories ?>" data-suffix="" data-duration="3">
                    <div class="xe-background">
                        <i class="fa fa-sitemap"></i>
                    </div>
                    <div class="xe-upper">
                        <div class="xe-icon">
                            <i class="fa fa-sitemap"></i>
                        </div>
                        <div class="xe-label">
                            <span><?php echo lang('global_categories') ?></span>
                            <strong class="num"><?php echo $categories ?></strong>
                        </div>
                    </div>
                    <div class="xe-progress">
                        <span class="xe-progress-fill"  data-fill-from="0" data-fill-to="82" data-fill-unit="%" data-fill-property="width" data-fill-duration="3" data-fill-easing="true"></span>
                    </div>
                    <div class="xe-lower">
                        <span><?php echo lang('global_Total_Categories') ?> </span>
                    </div>
                </div>
            </a>
            <a href="<?php echo site_url('admin/recipes') ?>" class="col-sm-3">
                <div class="xe-widget xe-progress-counter xe-progress-counter-turquoise"  data-count=".num" data-from="0" data-to="<?php echo $recipes ?>" data-suffix="" data-duration="3">
                    <div class="xe-background">
                        <i class="fa fa-cutlery" aria-hidden="true"></i>
                    </div>
                    <div class="xe-upper">
                        <div class="xe-icon">
                            <i class="fa fa-cutlery" aria-hidden="true"></i>
                        </div>
                        <div class="xe-label">
                            <span><?php echo lang('global_Recipes') ?></span>
                            <strong class="num"><?php echo $recipes ?></strong>
                        </div>
                    </div>
                    <div class="xe-progress">
                        <span class="xe-progress-fill"  data-fill-from="0" data-fill-to="82" data-fill-unit="%" data-fill-property="width" data-fill-duration="3" data-fill-easing="true"></span>
                    </div>
                    <div class="xe-lower">
                        <span><?php echo lang('global_Total_Recipes') ?> </span>
                    </div>
                </div>
            </a>
            <a href="<?php echo site_url('admin/tricks') ?>" class="col-sm-3">
                <div class="xe-widget xe-progress-counter xe-progress-counter-success"  data-count=".num" data-from="0" data-to="<?php echo $tricks ?>" data-suffix="" data-duration="3">
                    <div class="xe-background">
                        <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                    </div>
                    <div class="xe-upper">
                        <div class="xe-icon">
                            <i class="fa fa-newspaper-o" aria-hidden="true"></i>
                        </div>
                        <div class="xe-label">
                            <span><?php echo lang('global_Tips_and_Tricks') ?></span>
                            <strong class="num"><?php echo $tricks ?></strong>
                        </div>
                    </div>
                    <div class="xe-progress">
                        <span class="xe-progress-fill"  data-fill-from="0" data-fill-to="82" data-fill-unit="%" data-fill-property="width" data-fill-duration="3" data-fill-easing="true"></span>
                    </div>
                    <div class="xe-lower">
                        <span><?php echo lang('global_Total_Tips_and_Tricks') ?> </span>
                    </div>
                </div>
            </a>
            <a href="<?php echo site_url('admin/newsletters') ?>" class="col-sm-3">
                <div class="xe-widget xe-progress-counter xe-progress-counter-pink"  data-count=".num" data-from="0" data-to="<?php echo $newsletters ?>" data-suffix="" data-duration="3">
                    <div class="xe-background">
                        <i class="fa fa-envelope" aria-hidden="true"></i>
                    </div>
                    <div class="xe-upper">
                        <div class="xe-icon">
                            <i class="fa fa-envelope" aria-hidden="true"></i>
                        </div>
                        <div class="xe-label">
                            <span><?php echo lang('global_Newsletter') ?></span>
                            <strong class="num"><?php echo $newsletters ?></strong>
                        </div>
                    </div>
                    <div class="xe-progress">
                        <span class="xe-progress-fill"  data-fill-from="0" data-fill-to="82" data-fill-unit="%" data-fill-property="width" data-fill-duration="3" data-fill-easing="true"></span>
                    </div>
                    <div class="xe-lower">
                        <span><?php echo lang('global_Total_Newsletter') ?> </span>
                    </div>
                </div>
            </a>
            <a href="<?php echo site_url('admin/pages') ?>" class="col-sm-3">
                <div class="xe-widget xe-progress-counter xe-progress-counter-red"  data-count=".num" data-from="0" data-to="<?php echo $pages ?>" data-suffix="" data-duration="3">
                    <div class="xe-background">
                        <i class="fa fa-file" aria-hidden="true"></i>
                    </div>
                    <div class="xe-upper">
                        <div class="xe-icon">
                            <i class="fa fa-file" aria-hidden="true"></i>
                        </div>
                        <div class="xe-label">
                            <span><?php echo lang('global_pages') ?></span>
                            <strong class="num"><?php echo $pages ?></strong>
                        </div>
                    </div>
                    <div class="xe-progress">
                        <span class="xe-progress-fill"  data-fill-from="0" data-fill-to="82" data-fill-unit="%" data-fill-property="width" data-fill-duration="3" data-fill-easing="true"></span>
                    </div>
                    <div class="xe-lower">
                        <span><?php echo lang('global_Total_Pages') ?> </span>
                    </div>
                </div>
            </a>
        </div>
    </div>
</div>
<div class="row admin-dashboard">
    <div class="col-sm-12">
        <div class="panel panel-default">
            <div class="panel-heading"><i></i> <?php echo lang('global_Recipes_Under_Review') ?></div>
            <?php if ($recipes_review): ?>
                <table class="table">
                    <thead>
                        <tr>
                            <th><?php echo lang('global_title') ?></th>
                            <th><?php echo lang('global_Published_By') ?></th>
                            <th><?php echo lang('global_operations') ?></th>
                        </tr>
                    </thead>
                    <tbody class="middle-align">
                        <?php foreach ($recipes_review as $item): ?>
                            <tr>
                                <td><?php echo $item->title ?></td>
                                <td><i class="fa fa-eye"></i> <a href="<?php echo site_url('admin/users/manage/' . $item->user_id) ?>"> <?php echo $item->username ?></a></td>
                                <td>
                                    <a href="<?php echo site_url('admin/recipes/manage/' . $item->recipe_id); ?>" class="btn btn-orange btn-sm">
                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                        <?php echo lang('global_edit') ?>
                                    </a>
                                    <a href="<?php echo site_url('admin/recipes/delete/' . $item->recipe_id); ?>" class="btn btn-danger btn-sm">
                                        <i class="fa fa-pencil" aria-hidden="true"></i>
                                        <?php echo lang('global_delete') ?>
                                    </a>
                                    <?php if ($item->status == 0) : ?>
                                        <span  class="btn btn-info btn-sm">
                                            <i class="fa fa-spinner"></i>
                                            <?php echo lang('global_Under_Review') ?>
                                        </span>
                                    <?php endif ?>
                                </td>
                            </tr>
                        <?php endforeach ?>
                    </tbody>
                </table>
            <?php else: ?>
                <p><i class="fa fa-thumbs-up"></i> <?php echo lang('global_There_is_no_recipes_need_reviewing') ?></p>
            <?php endif ?>
        </div>
    </div>
</div>
