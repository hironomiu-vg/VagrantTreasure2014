class os-group-user-2014{
    include os-group-user-2014::install
    include os-group-user-2014::config

       Class['os-group-user-2014::install']
    -> Class['os-group-user-2014::config']
}
