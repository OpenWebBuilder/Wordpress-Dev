---

create_config(){
wordpress_home=/var/www/wordpress/
wordpress_db=wpdb
wordpress_db_user=wpdbuser
wordpress_db_pass=12345dd

cd $wordpress_home
wp config create --dbname=$wordpress_db --dbuser=$wordpress_db_user --dbpass=$wordpress_db_pass --extra-php <<PHP
define( 'WP_DEBUG', true );
define( 'WP_DEBUG_LOG', true );
PHP
}

install_site(){
  url=example.com
  site_title="my Dev Site"
  admin_user="root"
  password="admin"
  email="admin@example.com"

  wp core install --url=$url --title="$site_title" --admin_user=$admin_user --admin_password=$password --admin_email=$email --skip-email
}
