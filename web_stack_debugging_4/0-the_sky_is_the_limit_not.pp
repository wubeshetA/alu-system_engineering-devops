# Increase the number of requests nginx can handle.
exec {
    command => 'sed -i "s/15/4096/" /etc/default/nginx',
    path => '/usr/local/bin/:/bin/'   
}