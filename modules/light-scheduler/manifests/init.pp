class light-scheduler {
file { '/home/ubuntu':
        ensure => directory,
        owner => 'ubuntu',
        group => 'ubuntu',
    }
file { "/home/ubuntu/test.txt":
        mode => "0644",
        owner => 'ubuntu',
        group => 'ubuntu',
        source => 'puppet:///modules/mymodule/test.txt',
    }
}
