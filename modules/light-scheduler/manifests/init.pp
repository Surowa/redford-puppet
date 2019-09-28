class light-scheduler {

file { "/home/pi/scheduler.py":
        mode => "0644",
        owner => 'pi',
        group => 'Linux',
        source => 'puppet:///modules/light-scheduler/scheduler.py',
    }
}
