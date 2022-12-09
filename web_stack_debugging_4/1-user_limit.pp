#change file limit for user 'holberton'

exec { 'change-file-limit-hard':
    command => 'sed -i "s/holberton hard nofile 5/holberton hard nofile 8000/" /etc/security/limits.conf',
    path    => '/usr/local/bin/:/bin/',
}
exec { 'change-file-limit-soft':
    command => 'sed -i "s/holberton soft nofile 4/holberton soft nofile 8000/" /etc/security/limits.conf',
    path    => '/usr/local/bin/:/bin/',
}