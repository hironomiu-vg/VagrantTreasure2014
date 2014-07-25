class db-2014::config {
    include variables::init
    $passwd = $variables::init::passwd
    include mysql::service
    Class['mysql::service'] -> Class['db-2014::config']
    exec { "db-create-demouser":
        unless => "/usr/bin/mysql -utreasure2014 -ptreasure2014 -e \"show databases;\"",
        command => "/usr/bin/mysql -uroot -p$passwd -e \"create database treasure2014; grant all on treasure2014.* to treasure2014@localhost identified by 'treasure2014'; create database group_a_2014; grant all on group_a_2014.* to group_a_2014@localhost identified by 'group_a_2014'; create database group_b_2014; grant all on group_b_2014.* to group_b_2014@localhost identified by 'group_b_2014'; create database group_c_2014; grant all on group_c_2014.* to group_c_2014@localhost identified by 'group_c_2014'; create database group_d_2014; grant all on group_d_2014.* to group_d_2014@localhost identified by 'group_d_2014'; create database group_e_2014; grant all on group_e_2014.* to group_e_2014@localhost identified by 'group_e_2014'; create database group_f_2014; grant all on group_f_2014.* to group_f_2014@localhost identified by 'group_f_2014';\"",
    }
}
