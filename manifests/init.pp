       class cron {
             include cron::addcron
       #      case $operatingsystem {
       #          centos: {
       #             include cron::base
       #             include cron::crontabs
       #                      cron::addcron
       #          }
       #           redhat: {
       #             include cron::base
       #             include cron::crontabs
       #             include cron::addcron     #这三行实现安装添加cron功能
       #          }
       #          debian: { include cron::base }
       #          ubuntu: { include cron::base }
       #          freebsd: { }
       #      }
       }
