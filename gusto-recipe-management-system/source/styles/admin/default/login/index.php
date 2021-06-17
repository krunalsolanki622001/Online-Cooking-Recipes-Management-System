<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content="" />
        <meta name="author" content="Marwa El-Manawy <marwa@elmanawy.info>" />
        <link rel="shortcut icon" href="<?php echo base_url() ?>/cdn/about/<?php echo config('favicon') ?>" type="image/x-icon" />
        <title><?php echo config('title') ?> - <?php echo lang('global_login') ?></title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Arimo:400,700,400italic">
        <?php if (config('direction') == 'ltr'): ?>
            <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/bootstrap.css">
        <?php else: ?>
            <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/bootstrap-rtl.css">
        <?php endif ?>
        <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/font-awesome.min.css">
        <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/core.css">
        <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/forms.css">
        <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/components.css">
        <?php if (config('direction') == 'ltr'): ?>
            <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/custom.css">
        <?php else: ?>
            <link rel="stylesheet" href="<?php echo STYLE_CSS ?>/custom-rtl.css">
        <?php endif ?>
        <script src="<?php echo STYLE_JS ?>/jquery-1.11.1.min.js"></script>
    </head>
    <body class="page-body login-page">
        <div class="login-container">
            <div class="row">
                <div class="col-sm-6">
                    <script type="text/javascript">
                        jQuery(document).ready(function ($)
                        {
                            setTimeout(function () {
                                $(".fade-in-effect").addClass('in');
                            }, 1);

                            $("form#login .form-group:has(.form-control):first .form-control").focus();
                        });
                    </script>
                    <form role="form" class="login-form fade-in-effect" method="post">
                        <div class="login-header">
                            <a href="<?php echo base_url() ?>" class="logo">
                                <img src="<?php echo base_url() ?>/cdn/about/<?php echo config('logo') ?>" alt="<?php echo config('title') ?>" width="100" />
                            </a>
                            <p><?php echo lang('global_Dear_user_enter_your_data_to_login') ?></p>
                        </div>
                        <?php if (validation_errors()): ?>
                            <div class="alert alert-danger"><?php echo validation_errors() ?></div>
                        <?php endif ?>
                        <div class="form-group">
                            <input type="email" placeholder="<?php echo lang('global_Email') ?>" name="email" value="<?php echo set_value('email') ?>" class="form-control input-dark" autocomplete="off" >
                        </div>
                        <div class="form-group">
                            <input type="password" id="inputPassword" name="password" placeholder="<?php echo lang('global_Password') ?>" class="form-control input-dark" autocomplete="off" >
                        </div>
                        <div class="form-group">
                            <button type="submit" class="btn btn-dark  btn-block text-right" value="<?php echo lang('global_login') ?>">
                                <i class="fa fa-lock"></i>
                                <?php echo lang('global_login') ?>
                            </button>
                        </div>
                    </form>            
                </div>
            </div>
        </div>
        <!-- Bottom Scripts -->
        <script src="<?php echo STYLE_JS ?>/bootstrap.min.js"></script>
    </body>
</html>