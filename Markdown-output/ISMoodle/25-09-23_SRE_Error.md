# 25-09-23 SRE Error

###### **Error message:**

Undefined property: stdClass::$icons
         in block\_list::formatted\_contents called at /var/www/site/blocks/moodleblock.class.php (231)

                 in block\_base::get\_content\_for\_output called at /var/www/site/lib/blocklib.php (1231)

               in block\_manager::create\_block\_contents called at /var/www/site/lib/blocklib.php (1289)

              in block\_manager::ensure\_content\_created called at /var/www/site/lib/blocklib.php (377)

           in block\_manager::region\_has\_content called at /var/www/site/lib/outputrenderers.php (4118)

               in core\_renderer::blocks called at /var/www/site/theme/norse/layout/incourse.php (83)

                                     in include called at /var/www/site/lib/outputrenderers.php (1477)

           in core\_renderer::render\_page\_layout called at /var/www/site/lib/outputrenderers.php (1403)

                            in core\_renderer::header called at /var/www/site/mod/forum/view.php (170)

Issue identified as Portico Block - fix will be submitted to the block repo. 

CTP-2619 - Investigate Error Undefined property: stdClass::$icons Done
