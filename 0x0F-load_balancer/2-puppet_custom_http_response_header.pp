include stdlib
$default_site_loc = '/etc/nginx/sites-available/default'
$default_site = 'https://raw.githubusercontent.com/osala-eng/alx-system_engineering-devops/master/0x0F-load_balancer/default-site'

# Run apt-get update
exec { 'apt-update':
  command => '/usr/bin/apt-get update'
}

# Install nginx
package { 'nginx':
  ensure  => installed,
  require => Exec['apt-update'],
}

# Create a new index.html
file { 'Create index.html':
  require => Package['nginx'],
  path    => '/var/www/html/index.html',
  content => 'Hello World!\n'
}

# Create a new error page
file { 'Create 404.html':
  require => Package['nginx'],
  path    => '/var/www/html/404.html',
  content => 'Ceci n\'est pas une page\n'
}

# Replace default site config
file { '/etc/nginx/sites-available/default':
  ensure  => file,
  require => Package['nginx']
}-> exec { 'Replace config':
  command => "/usr/bin/curl ${default_site} > ${default_site_loc}"
}-> file_line { 'Add value of host name':
  path  => "${default_site_loc}",
  line  => "\tadd_header X-Served-By \"${hostname}\";",
  match => 'hostname',
}

# Start nginx service
service { 'nginx':
  ensure  => running,
  require => File_line['Add value of host name'],
}
