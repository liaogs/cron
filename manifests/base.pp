   class cron::base {
    package { cron:
        name => $operatingsystem ? {   #facter 获取客户端操作系统确定包的名称
            ubuntu    => "cron",
            debian    => "cron",
            redhat    => "vixie-cron",
            centos    => "vixie-cron",
            },
        ensure => present,
    }
    service { crond:
        name => $operatingsystem ? {   #确定启动cron的名称
            ubuntu  => "cron",
            debian  => "cron",
            redhat  => "crond",
            centos  => "crond",
            },
        ensure => running,
        enable => true,
        pattern => cron,
        require => Package["cron"],   #依赖关系
    }
}
