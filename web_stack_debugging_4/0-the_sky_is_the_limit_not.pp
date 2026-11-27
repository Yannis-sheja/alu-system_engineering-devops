# Raises the open file limit for Nginx so it can handle many concurrent requests
exec { 'fix--for-nginx':
  command => "sed -i 's/15/4096/' /etc/default/nginx",
  path    => ['/bin', '/usr/bin'],
}

exec { 'restart-nginx':
  command => 'nginx restart',
  path    => ['/etc/init.d/'],
  require => Exec['fix--for-nginx'],
}
