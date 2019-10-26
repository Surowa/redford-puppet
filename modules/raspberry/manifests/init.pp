class raspberry {

file { '/home/pi/':
        ensure => present,
        owner => 'pi',
        recurse => remote,
        source => "rpup02.redford.nl:///modules/raspberry/files/$file",
     }


package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }

}
