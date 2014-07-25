class os-group-user-2014::config{
    group { 'treasure2014':
        ensure => present,
        gid => 505,
    }

    file { '/home/treasure2014':
        ensure => directory,
        owner => 'root',
        group => 'root',
        mode => '0755',
        require => Group["treasure2014"],
    }

    user { 'appuser2014':
        ensure => present,
        gid => 'treasure2014',
        comment => 'appuser2014',
        home => '/home/treasure2014/appuser2014',
        password => '$6$mDKzKiEYZEciHzpB$uiJS9CWXRlirRl7.8Hjfy2YQV1H958zKaydc0N0jfbFYK2Efmr6mM/3qrlzl4.ZKuDHZ4QF8ECBZ9tHa1wdC9/',
        managehome => true,
        shell => '/bin/bash',
        require => File['/home/treasure2014'],
    }

    file { '/home/treasure2014/appuser2014/.ssh':
        ensure => directory,
        owner => 'appuser2014',
        group => 'treasure2014',
        mode => '0700',
        require => User["appuser2014"]
    }

    user { 'group-a-2014':
        ensure => present,
        gid => 'treasure2014',
        comment => 'group-a-2014',
        home => '/home/treasure2014/group-a-2014',
        password => '$6$IkepPXalEefu7Ml0$QZ5X2OCpW7H//OFsBkVEaeNYPdrYYYyKMee81ZKSVip8XAK1p7zsGVOizDcQKcj.Mh2v5AEC8O0yXkclyaiQ01',
        managehome => true,
        shell => '/bin/bash',
        require => File['/home/treasure2014'],
    }

    user { 'group-b-2014':
        ensure => present,
        gid => 'treasure2014',
        comment => 'group-b-2014',
        home => '/home/treasure2014/group-b-2014',
        password => '$6$11wSC6HC71b.Dk0k$OlgGp6IFuo0GCUX0QhnpWB.iQHThGNBqDPxbW3k1Z0ubYrkw5RorNThX3p.b0dpJX6Xu3qUNMHBWD8gXGM/Jz.',
        managehome => true,
        shell => '/bin/bash',
        require => File['/home/treasure2014'],
    }

    user { 'group-c-2014':
        ensure => present,
        gid => 'treasure2014',
        comment => 'group-c-2014',
        home => '/home/treasure2014/group-c-2014',
        password => '$6$xCwj/UD63vS4zQYK$Ldtn6oXo6oQwda/AsM9Tm31PwT/NvcrjcaJrnpXfwFKVGIdZRpVyzDMqFLN0EoiGRlxtQNvLG7soGGkoQQZmt0',
        managehome => true,
        shell => '/bin/bash',
        require => File['/home/treasure2014'],
    }

    user { 'group-d-2014':
        ensure => present,
        gid => 'treasure2014',
        comment => 'group-d-2014',
        home => '/home/treasure2014/group-d-2014',
        password => '$6$5BEZhlz7RwliJhli$uB2dfnB3k982JPhjdCnfDBb83jPh8/5mm.kBgNArEmP9oIO66dI9m4YLcIptoHKIYdYuykonOlHeypa4jYRud0',
        managehome => true,
        shell => '/bin/bash',
        require => File['/home/treasure2014'],
    }

    user { 'group-e-2014':
        ensure => present,
        gid => 'treasure2014',
        comment => 'group-e-2014',
        home => '/home/treasure2014/group-e-2014',
        password => '$6$CDjuYkTVvZ38Fu6y$Wqid/ZRDtade3ec4xEyAaJeXK/uebTnmszD0iz9Wy5re.5jNbefC4ASmpDPOf/k5Pdvgm3X3n2YoZ.3uAbTkh0',
        managehome => true,
        shell => '/bin/bash',
        require => File['/home/treasure2014'],
    }

    user { 'group-f-2014':
        ensure => present,
        gid => 'treasure2014',
        comment => 'group-f-2014',
        home => '/home/treasure2014/group-f-2014',
        password => '$6$FSw7RHpuEZPUW2YL$NBthIVJ2YcQsQvW4xBnjQ/StwBRzoo5faueftA5La9i8CLW6e/7TnZxJoONfvHDXMVHx81EQ/zrGdQHn8IZ4m.',
        managehome => true,
        shell => '/bin/bash',
        require => File['/home/treasure2014'],
    }

}
