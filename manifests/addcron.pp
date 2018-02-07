      class cron::addcron {
            cron { ntpdate:
               command => "/usr/sbin/ntpdate ntp.api.bz",
               user => root,
               hour => '*/4',
               minute => '1'
            }
      }
