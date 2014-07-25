class app {
    include app::localtime
    include app::lang
    include app::base
    include app::os-group-user-2014
    include app::db-2014
    include app::sshd
    include app::iptables
    include app::php
    include app::httpd
    include app::mysql
}
