class httpd::config{
    exec { "usermod apache" :
        user => 'root',
        path => ['/usr/sbin'],
        command => "usermod -G treasure2014 apache",
        timeout => 999,
    }
    file { '/etc/httpd/conf/httpd.conf':
        owner => 'root', group => 'root',
        content => template('httpd/httpd.conf'),
    }
}
