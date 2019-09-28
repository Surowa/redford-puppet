class raspberry {

include apt
include apt::update

apt::source { 'pilight.list':
  comment  => 'pilight',
  location => 'http://apt.pilight.org/',
  release  => 'stable',
  repos    => 'main',
  key    => {
     'server' => 'http://apt.pilight.org/pilight.key',
  },
  include  => {
    'src' => true,
    'deb' => true,
  },
}


package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }
package { 'pilight': ensure => installed, }
package { 'kodi': ensure => installed, }

}
