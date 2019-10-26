class raspberry {

file { '/home/pi/':
        ensure => present,
        owner => 'pi',
        recurse => remote,
        source => "puppet:///modules/raspberry/$file",
     }


package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }
package { 'cec-utils': ensure => installed, }
package { 'kodi': ensure => installed, }

}
