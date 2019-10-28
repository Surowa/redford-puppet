include apt
class raspberry {


file { '/home/pi/':
        ensure => present,
        owner => 'pi',
        recurse => remote,
        source => "puppet:///modules/raspberry/$file",
     }
file { '/etc/pilight/config.json':
        ensure => present,
        source => "puppet:///modules/raspberry/config.json",
     }

package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }
package { 'cec-utils': ensure => installed, }
package { 'kodi': ensure => installed, }



apt::sources: {
   'pilight':
        location => http://apt.pilight.org/
        release => stable
        repos => main
}
  apt::key: {
      'pilight':
        server  => http://apt.pilight.org/pilight.key
  }
}
