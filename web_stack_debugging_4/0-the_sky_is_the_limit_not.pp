# Increase the number of requests nginx can handle.
exec { 'fix-requests-handler':
  command => 'sed -i "s/15/4096/" /etc/default/nginx',
  path    => '/usr/local/bin/:/bin/',
} ->

exec { 'restart-nginx':
  command => 'nginx restart',
  path    => '/etc/init.d/',
}