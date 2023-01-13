$redirect_me = '\\\tlocation redirect_me/ {\n\t\treturn 301 https://youtu.be/mlUOUncSaTk;\n\t}\n'
$error_page = 'error_page 404 /404.html'
$default_site = '/etc/nginx/sites-available/default'
generate_number = "/usr/bin/grep -Fn location ${default_site} | /usr/bin/head -1 | cut -d'-', -f1"

# Run apt-get update
exec { 'apt-update':
  command => '/usr/bin/apt-get update'
}

package { 'nginx':
  require => Exec['apt-update'],
  ensure  => installed
}

file { 'Index.html':
  require => Package['nginx'],
  path    => '/var/www/index.html',
  content => 'Hello World!'
}

file { '/var/www/404.html':
  ensure  => file,
  require => Package['nginx'],
  content => 'Ceci n'est pas une page'
}

file { '/etc/nginx/sites-available/default':
  ensure  => file,
  require => Package['nginx']
}-> exec { 'Create redirect_me endpoint':
  command => '/usr/bin/sed -i "48i $redirect_me" /etc/nginx/sites-available/default'
}
