class raspberry {

include apt

apt::source { 'pilight.list':
  comment  => 'pilight',
  location => 'http://apt.pilight.org/',
  release  => 'stable',
  repos    => 'main',
  },
  include  => {
    'src' => true,
    'deb' => true,
  },
}

apt::key { 'pilight':
  server  => 'http://apt.pilight.org/pilight.key',
}

package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }
package { 'pilight': ensure => installed, }
package { 'kodi': ensure => installed, }

}
