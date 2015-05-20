FROM drupal

COPY settings.php /var/www/html/sites/default/settings.php

COPY testtheme /var/www/html/sites/all/themes/testtheme
# VOLUME ["/var/www/html/sites/default/files"]
