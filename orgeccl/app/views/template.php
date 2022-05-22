<?php
global $data;
?>

<!DOCTYPE html>
<html>

<head>
   <meta charset="utf-8">
   <script type="text/javascript" src="/orgeccl/assets/js/jquery.js">
   </script>
   <script type="text/javascript" src="/orgeccl/assets/js/jquery-ui.min.js">
   </script>
   <script type="text/javascript" src="/orgeccl/assets/js/bootstrap.min.js">
   </script>
   <script type="text/javascript" src="/orgeccl/assets/js/Customjs.js">
   </script>
   <script type="text/javascript" src="/orgeccl/assets/js/contactform.js">
   </script>
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>
      <?php echo $data['page_title']; ?>
   </title>
   <link rel="stylesheet" href="/orgeccl/assets/css/bootstrap.css" type="text/css" media="screen" />
   <link rel="stylesheet" href="/orgeccl/assets/css/style.css" type="text/css" media="screen" />
   <!--[if lte IE 8]>
      <link rel="stylesheet"  href="menuie.css" type="text/css" media="screen"/>
      <link rel="stylesheet"  href="vmenuie.css" type="text/css" media="screen"/>
      <![endif]-->
   <script type="text/javascript" src="/orgeccl/assets/js/totop.js">
   </script>
   <!--[if IE 7]>
      <style type="text/css" media="screen">
      #ttr_vmenu_items  li.ttr_vmenu_items_parent {margin-left:-16px;font-size:0px;}
      </style>
      <![endif]-->
   <!--[if lt IE 9]>
      <script type="text/javascript" src="/orgeccl/assets/js/html5shiv.js">
      </script>
      <script type="text/javascript" src="/orgeccl/assets/js/respond.min.js">
      </script>
      <![endif]-->
</head>

<body class="Home">
   <div class="totopshow">
      <a href="#" class="back-to-top"><img alt="Back to Top" src="/orgeccl/assets/images/gototop1.png" /></a>
   </div>
   <div id="ttr_page" class="container">
      <nav id="ttr_menu" class="navbar-default navbar">
         <div id="ttr_menu_inner_in">
            <div class="menuforeground">
            </div>
            <div id="navigationmenu">
               <div class="navbar-header">
                  <button id="nav-expander" data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
                     <span class="sr-only">
                     </span>
                     <span class="icon-bar">
                     </span>
                     <span class="icon-bar">
                     </span>
                     <span class="icon-bar">
                     </span>
                  </button>
               </div>
               <div class="menu-center collapse navbar-collapse">
                  <ul class="ttr_menu_items nav navbar-nav navbar-right">
                     <li class="ttr_menu_items_parent dropdown"><a href="<?= $data['base_path']; ?>/home/index" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Home</a>
                        <hr class="horiz_separator" />
                     </li>
                     <li class="ttr_menu_items_parent dropdown active"><a href="<?= $data['base_path']; ?>/home/about" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>About Us</a>
                        <hr class="horiz_separator" />
                     </li>
                     <li class="ttr_menu_items_parent dropdown"><a href="gallery.html" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Gallery</a>
                        <hr class="horiz_separator" />
                     </li>
                     <li class="ttr_menu_items_parent dropdown"><a href="sermons.html" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Sermons</a>
                        <hr class="horiz_separator" />
                     </li>
                     <li class="ttr_menu_items_parent dropdown"><a href="contact.html" class="ttr_menu_items_parent_link"><span class="menuchildicon"></span>Contact</a>
                        <hr class="horiz_separator" />
                     </li>
                  </ul>
               </div>
            </div>
         </div>
      </nav>
      <header id="ttr_header">
         <div id="ttr_header_inner">
            <div class="ttr_headershape01">
               <div class="html_content">
                  <p style="margin:0.36em 0em 0em 0em;text-align:Center;line-height:1.97183098591549;">
                     <br style="font-family:'Montserrat','Arial';font-weight:700;font-size:1.714em;color:rgba(255,255,255,1);" />
                  </p>
                  <p style="margin:0.36em 0em 2.14em 0em;text-align:Center;line-height:1.97183098591549;">
                     <span style="font-family:'Roboto','Arial';font-weight:500;font-size:2.5em;color:rgba(255,255,255,1);">
                        <?= $data['page_name']; ?>
                     </span>
                  </p>
                  <?php if (array_key_exists('href', $data)) { ?>
                     <p style="margin:0.36em 0em 0.36em 0em;text-align:Center;line-height:1.97183098591549;">
                        <span>
                           <a href="<?= $data['href']['link'] ?>" target="_self" class="btn btn-md btn-default"><?= $data['href']['text'] ?></a>
                        </span>
                     </p>
                  <?php } ?>
               </div>
            </div>
            <div class="ttr_headershape02">
               <div class="html_content">
                  <!--<p style="text-align:Center;">
                        <span style="font-family:'Abel','Arial';font-size:2.5em;">
                        </span>
                     </p>-->
               </div>
            </div>
         </div>
      </header>
      <div id="ttr_content_and_sidebar_container">
         <div id="ttr_content">
            <div id="ttr_content_margin" class="container-fluid">
               <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;">
               </div>
               <div class="ttr_About-Us_html_row2 row">
                  <div class="ttr_About-Us_html_column20">
                     <div class="clearfix visible-sm-block visible-md-block visible-xs-block">
                     </div>
                     <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;">
                     </div>
                     <div class="html_content">
                        <?php require $view_file; ?>
                     </div>
                     <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;">
                     </div>
                     <div style="clear:both;">
                     </div>
                  </div>
                  <div class="clearfix visible-lg-block visible-sm-block visible-md-block visible-xs-block">
                  </div>
               </div>
               <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-top-collapse: separate;">
               </div>
            </div>
         </div>
         <div style="clear:both">
         </div>
         <div style="height:0px;width:0px;overflow:hidden;">
         </div>
         <footer id="ttr_footer">
            <div class="ttr_footer_bottom_footer">
               <div class="ttr_footer_bottom_footer_inner">
                  <div id="ttr_footer_designed_by_links">
                     <a href="http://templatetoaster.com" target="_self">
                        Website
                     </a>
                     <span id="ttr_footer_designed_by">
                        Designed With TemplateToaster
                     </span>
                  </div>
                  <a href="http://www.facebook.com/TemplateToaster" class="ttr_footer_facebook" target="_self">
                  </a>
                  <a href="http://twitter.com/templatetoaster" class="ttr_footer_twitter" target="_self">
                  </a>
                  <a href="http://www.templatetoaster.com" class="ttr_footer_googleplus" target="_self">
                  </a>
               </div>
            </div>
         </footer>
         <div style="height:0px;width:0px;overflow:hidden;-webkit-margin-bottom-collapse: separate;">
         </div>
      </div>
      <script type="text/javascript">
         WebFontConfig = {
            google: {
               families: ['Montserrat:700', 'Roboto:500', 'Roboto', 'Montserrat', 'Abel', 'Roboto:300']
            }
         };
         (function() {
            var wf = document.createElement('script');
            wf.src = ('https:' == document.location.protocol ? 'https' : 'http') + '://ajax.googleapis.com/ajax/libs/webfont/1.0.31/webfont.js';
            wf.type = 'text/javascript';
            wf.async = 'true';
            var s = document.getElementsByTagName('script')[0];
            s.parentNode.insertBefore(wf, s);
         })();
      </script>
</body>

</html>