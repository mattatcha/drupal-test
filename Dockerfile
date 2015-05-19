FROM drupal

COPY settings.php /var/www/html/sites/default/settings.php

VOLUME ["/var/www/html/sites/default/files"]
