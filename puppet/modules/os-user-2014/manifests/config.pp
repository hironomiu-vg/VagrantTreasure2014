class os-user-2014::config{
    user { 'treasure2014':
        ensure => present,
        gid => 'developer',
        comment => 'treasure2014',
        home => '/home/treasure2014',
        password => '$6$5xh6fNSsnPkSSV2X$ZrUSh6paYKHLKjFSOweTy488sWVDSnfdvVOmNHejHnuYwxNbidhAAATYpB8BsrQGvyCtXhqnwFRW7wQEvWOxx1',
        managehome => true,
        shell => '/bin/bash',
        require => Group['developer'],
    }

    file { '/home/treasure2014/.ssh':
        ensure => directory,
        owner => 'treasure2014',
        group => 'developer',
        mode => '0700',
        require => User["treasure2014"]
    }

    exec { "treasure2014 chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/treasure2014",
        timeout => 999,
        require => User["treasure2014"]
    }

    user { 'group-a-2014':
        ensure => present,
        gid => 'developer',
        comment => 'group-a-2014',
        home => '/home/group-a-2014',
        password => '$6$IkepPXalEefu7Ml0$QZ5X2OCpW7H//OFsBkVEaeNYPdrYYYyKMee81ZKSVip8XAK1p7zsGVOizDcQKcj.Mh2v5AEC8O0yXkclyaiQ01',
        managehome => true,
        shell => '/bin/bash',
        require => Group['developer'],
    }

    exec { "group-a-2014 chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-a-2014",
        timeout => 999,
        require => User["group-a-2014"]
    }

    user { 'group-b-2014':
        ensure => present,
        gid => 'developer',
        comment => 'group-b-2014',
        home => '/home/group-b-2014',
        password => '$6$11wSC6HC71b.Dk0k$OlgGp6IFuo0GCUX0QhnpWB.iQHThGNBqDPxbW3k1Z0ubYrkw5RorNThX3p.b0dpJX6Xu3qUNMHBWD8gXGM/Jz.',
        managehome => true,
        shell => '/bin/bash',
        require => Group['developer'],
    }

    exec { "group-b-2014 chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-b-2014",
        timeout => 999,
        require => User["group-b-2014"]
    }

    user { 'group-c-2014':
        ensure => present,
        gid => 'developer',
        comment => 'group-c-2014',
        home => '/home/group-c-2014',
        password => '$6$xCwj/UD63vS4zQYK$Ldtn6oXo6oQwda/AsM9Tm31PwT/NvcrjcaJrnpXfwFKVGIdZRpVyzDMqFLN0EoiGRlxtQNvLG7soGGkoQQZmt0',
        managehome => true,
        shell => '/bin/bash',
        require => Group['developer'],
    }

    exec { "group-c-2014 chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-c-2014",
        timeout => 999,
        require => User["group-c-2014"]
    }

    user { 'group-d-2014':
        ensure => present,
        gid => 'developer',
        comment => 'group-d-2014',
        home => '/home/group-d-2014',
        password => '$6$5BEZhlz7RwliJhli$uB2dfnB3k982JPhjdCnfDBb83jPh8/5mm.kBgNArEmP9oIO66dI9m4YLcIptoHKIYdYuykonOlHeypa4jYRud0',
        managehome => true,
        shell => '/bin/bash',
        require => Group['developer'],
    }

    exec { "group-d-2014 chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-d-2014",
        timeout => 999,
        require => User["group-d-2014"]
    }

    user { 'group-e-2014':
        ensure => present,
        gid => 'developer',
        comment => 'group-e-2014',
        home => '/home/group-e-2014',
        password => '$6$CDjuYkTVvZ38Fu6y$Wqid/ZRDtade3ec4xEyAaJeXK/uebTnmszD0iz9Wy5re.5jNbefC4ASmpDPOf/k5Pdvgm3X3n2YoZ.3uAbTkh0',
        managehome => true,
        shell => '/bin/bash',
        require => Group['developer'],
    }

    exec { "group-e-2014 chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-e-2014",
        timeout => 999,
        require => User["group-e-2014"]
    }

    user { 'group-f-2014':
        ensure => present,
        gid => 'developer',
        comment => 'group-f-2014',
        home => '/home/group-f-2014',
        password => '$6$FSw7RHpuEZPUW2YL$NBthIVJ2YcQsQvW4xBnjQ/StwBRzoo5faueftA5La9i8CLW6e/7TnZxJoONfvHDXMVHx81EQ/zrGdQHn8IZ4m.',
        managehome => true,
        shell => '/bin/bash',
        require => Group['developer'],
    }

    exec { "group-f-2014 chmod" :
        user => 'root',
        path => ['/bin'],
        command => "chmod 755 /home/group-f-2014",
        timeout => 999,
        require => User["group-f-2014"]
    }

}
