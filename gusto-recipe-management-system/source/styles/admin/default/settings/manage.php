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
                <strong><?php echo lang('global_settings') ?></strong>
            </li>
        </ol>
    </div>
</div>
<div class="">
    <div class="panel-heading">
        <h3 class="panel-title"><?php echo lang('global_settings') ?></h3>
    </div>
    <div class="panel-body">
        <div class="row">
            <form role="form" class="form-horizontal" role="form" method="post" enctype="multipart/form-data">
                <?php if (validation_errors()): ?>
                    <div class="error"><?php echo validation_errors() ?></div>
                <?php endif ?> 
                <div class="col-md-12">
                    <ul class="nav nav-tabs nav-tabs-justified">
                        <li class="active">
                            <a href="#setting" data-toggle="tab">
                                <i class="fa fa-cog"></i>
                                <span class="hidden-xs"><?php echo lang('global_settings') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="#seo" data-toggle="tab">
                                <i class="fa fa-search"></i>
                                <span class="hidden-xs"><?php echo lang('global_seo') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="#contactinfo" data-toggle="tab">
                                <i class="fa fa-envelope-o"></i>
                                <span class="hidden-xs"><?php echo lang('global_contact_information') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="#socialmedia" data-toggle="tab">
                                <i class="fa fa-share-alt"></i>
                                <span class="hidden-xs"><?php echo lang('global_Social_Media') ?></span>
                            </a>
                        </li>
                        <li>
                            <a href="#api_keys" data-toggle="tab">
                                <span class="visible"><i class="fa fa-key"></i></span>
                                <span class="hidden-xs"><?php echo lang('settings_api_keys') ?></span>
                            </a>
                        </li>
                    </ul>
                    <div class="tab-content">
                        <div class="tab-pane active" id="setting">
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('global_language') ?></label>
                                <div class="col-sm-4">
                                    <select class="form-control time" name="setting[language]">
                                        <option value="english" <?php if ($item->language == 'english'): ?>selected<?php endif; ?>><?php echo lang('global_english') ?></option>
                                        <option value="arabic" <?php if ($item->language == 'arabic'): ?>selected<?php endif; ?>><?php echo lang('global_arabic') ?></option>
                                    </select>
                                </div>
                                <label class="col-sm-2 control-label"><?php echo lang('direction') ?></label>
                                <div class="col-sm-4">
                                    <select class="form-control time" name="setting[direction]">
                                        <option value="ltr" <?php if ($item->direction == 'ltr'): ?>selected<?php endif; ?>><?php echo lang('ltr') ?></option>
                                        <option value="rtl" <?php if ($item->direction == 'rtl'): ?>selected<?php endif; ?>><?php echo lang('rtl') ?></option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('global_Title') ?></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[title]', set_value('setting[title]', $item->title), 'class="bg-focus form-control" data-required="true" id="title"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('global_Copyright') ?></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[copyright]', set_value('setting[copyright]', $item->copyright), 'class="bg-focus form-control" data-required="true" id="copyright"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('settings_logo') ?></label>
                                <div class="compose-message-editor col-sm-8">
                                    <input type="file" class="form-control" name="logo">
                                </div>
                                <div class="col-sm-2">
                                    <?php if (config('logo')): ?>
                                        <img src="<?php echo base_url() ?>/cdn/about/<?php echo config('logo') ?>" class="img-inline userpic-32" width="40"/>
                                    <?php endif ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('settings_favicon') ?></label>
                                <div class="compose-message-editor col-sm-8">
                                    <input type="file" class="form-control" name="favicon">
                                </div>
                                <div class="col-sm-2">
                                    <?php if (config('favicon')): ?>
                                        <img src="<?php echo base_url() ?>/cdn/about/<?php echo config('favicon') ?>" class="img-inline userpic-32" width="40"/>
                                    <?php endif ?>
                                </div>

                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('settings_time_zone') ?></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[default_timezone]', set_value('setting[default_timezone]', $item->default_timezone), 'class="bg-focus form-control" data-required="true" id="default_timezone"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('global_Description') ?></label>
                                <div class="compose-message-editor col-sm-10">
                                    <textarea style="height: 150px;" class="form-control" name="setting[description]"><?php echo set_value('setting[description]', $item->description) ?></textarea>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                        </div>

                        <div class="tab-pane" id="seo">
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('settings_meta_description') ?></label>
                                <div class="compose-message-editor col-sm-10">
                                    <textarea style="height: 150px;" class="form-control" name="setting[meta_description]"><?php echo set_value('setting[meta_description]', $item->meta_description) ?></textarea>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                        </div>

                        <div class="tab-pane" id="contactinfo">
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('settings_webmaster_email') ?></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[webmaster_email]', set_value('setting[webmaster_email]', $item->webmaster_email), 'class="bg-focus form-control" data-required="true" id="webmaster_email"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('settings_contact_form_email') ?></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[contact_form_email]', set_value('setting[contact_form_email]', $item->contact_form_email), 'class="bg-focus form-control" data-required="true" id="contact_form_email"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('global_Phone') ?></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[phone]', set_value('setting[phone]', $item->phone), 'class="bg-focus form-control" data-required="true" id="phone"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('settings_support') ?></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[support]', set_value('setting[support]', $item->support), 'class="bg-focus form-control" data-required="true" id="support"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                        </div>
                        <div class="tab-pane" id="socialmedia">
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"><i class="fa fa-facebook"></i></label>

                                <div class="col-sm-10">
                                    <?php echo form_input('setting[facebook]', set_value('setting[facebook]', $item->facebook), 'class="bg-focus form-control" data-required="true" id="facebook"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"><i class="fa fa-instagram"></i></label>

                                <div class="col-sm-10">
                                    <?php echo form_input('setting[instagram]', set_value('setting[instagram]', $item->instagram), 'class="bg-focus form-control" data-required="true" id="instagram"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"><i class="fa fa-twitter"></i></label>

                                <div class="col-sm-10">
                                    <?php echo form_input('setting[twitter]', set_value('setting[twitter]', $item->twitter), 'class="bg-focus form-control" data-required="true" id="twitter"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"><i class="fa fa-youtube"></i></label>

                                <div class="col-sm-10">
                                    <?php echo form_input('setting[youtube]', set_value('setting[youtube]', $item->youtube), 'class="bg-focus form-control" data-required="true" id="youtube"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"><i class="fa fa-tumblr"></i></label>

                                <div class="col-sm-10">
                                    <?php echo form_input('setting[tumblr]', set_value('setting[tumblr]', $item->tumblr), 'class="bg-focus form-control" data-required="true" id="tumblr"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"><i class="fa fa-vine"></i></label>

                                <div class="col-sm-10">
                                    <?php echo form_input('setting[vine]', set_value('setting[vine]', $item->vine), 'class="bg-focus form-control" data-required="true" id="vine"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"><i class="fa fa-pinterest"></i></label>

                                <div class="col-sm-10">
                                    <?php echo form_input('setting[pinterest]', set_value('setting[pinterest]', $item->pinterest), 'class="bg-focus form-control" data-required="true" id="pinterest"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"><i class="fa fa-soundcloud"></i></label>

                                <div class="col-sm-10">
                                    <?php echo form_input('setting[soundcloud]', set_value('setting[soundcloud]', $item->soundcloud), 'class="bg-focus form-control" data-required="true" id="soundcloud"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"><i class="fa fa-vimeo"></i></label>

                                <div class="col-sm-10">
                                    <?php echo form_input('setting[vimeo]', set_value('setting[vimeo]', $item->vimeo), 'class="bg-focus form-control" data-required="true" id="vimeo"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"><i class="fa fa-behance"></i></label>

                                <div class="col-sm-10">
                                    <?php echo form_input('setting[behance]', set_value('setting[behance]', $item->behance), 'class="bg-focus form-control" data-required="true" id="behance"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"> <i class="fa fa-dribbble"></i></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[dribbble]', set_value('setting[dribbble]', $item->dribbble), 'class="bg-focus form-control" data-required="true" id="dribbble"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"> <i class="fa fa-flickr"></i></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[flickr]', set_value('setting[flickr]', $item->flickr), 'class="bg-focus form-control" data-required="true" id="flickr"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"> <i class="fa fa-reddit"></i></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[reddit]', set_value('setting[reddit]', $item->reddit), 'class="bg-focus form-control" data-required="true" id="reddit"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"> <i class="fa fa-snapchat"></i></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[snapchat]', set_value('setting[snapchat]', $item->snapchat), 'class="bg-focus form-control" data-required="true" id="snapchat"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label" for="field-1"> <i class="fa fa-whatsapp"></i></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[whatsapp]', set_value('setting[whatsapp]', $item->whatsapp), 'class="bg-focus form-control" data-required="true" id="whatsapp"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                        </div>
                        <div class="tab-pane" id="api_keys">
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('settings_disqus_user') ?></label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[disqus_user]', set_value('setting[disqus_user]', $item->disqus_user), 'class="bg-focus form-control" data-required="true" id="disqus_user" placeholder="ex. marwaelmanawy"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>

                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('google_analytics_id') ?> (Tracking ID)</label>
                                <div class="col-sm-10">
                                    <?php echo form_input('setting[google_analytics_id]', set_value('setting[google_analytics_id]', $item->google_analytics_id), 'class="bg-focus form-control" placeholder="ex. UA-88888-1"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                            <div class="form-group">
                                <label class="col-sm-2 control-label"><?php echo lang('global_google_site_key') ?></label>
                                <div class="col-sm-4">
                                    <?php echo form_input('setting[google_key]', set_value('setting[google_key]', $item->google_key), 'class="bg-focus form-control"') ?>
                                </div>
                                <label class="col-sm-2 control-label"><?php echo lang('global_google_secret_key') ?></label>
                                <div class="col-sm-4">
                                    <?php echo form_input('setting[google_secret_key]', set_value('setting[google_secret_key]', $item->google_secret_key), 'class="bg-focus form-control"') ?>
                                </div>
                            </div>
                            <div class="form-group-separator"></div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-2 control-label"></label>
                            <div class="col-sm-10">
                                <input type="submit" class="btn btn-secondary " name="submit" value="<?php echo lang('global_submit') ?>">
                                <a href="<?php echo site_url('admin/dashboard'); ?>" class="btn btn-danger"><?php echo lang('global_cancel') ?></a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>