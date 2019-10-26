class raspberry {

file { '/home/pi/':
        ensure => present,
        owner => 'pi',
        recurse => remote,
        source => "puppet:///modules/raspberry/files/$file",
     }


package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }

}
