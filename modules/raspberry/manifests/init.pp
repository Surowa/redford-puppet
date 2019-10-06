class raspberry {

include apt
include apt::update

 Exec['apt_get_update']


apt::source { 'pilight.list':
  comment  => 'pilight',
  location => 'http://apt.pilight.org/',
  release  => 'stable',
  repos    => 'main',
  key    => {
     'server' => 'http://apt.pilight.org/pilight.key',
  },
}


package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }
package { 'pilight': ensure => installed, }
package { 'kodi': ensure => installed, }

}
