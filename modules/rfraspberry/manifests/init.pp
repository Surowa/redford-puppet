include apt
#Class to install a RPI for Redford (just the basic necessarities)
class rfraspberry {


file { '/home/pi/':
        ensure  => present,
        owner   => 'pi',
        recurse => remote,
        source  => 'puppet:///modules/raspberry/$file',
  }
file { '/etc/pilight/config.json':
        ensure  => latest,
        require => Package['pilight'],
        source  => 'puppet:///modules/raspberry/config.json',
  }

apt::source { 'pilight':
  location => 'http://apt.pilight.org/',
  release  => stable,
  repos    => 'main',
      key  => {
    'id'     => 'F2FB87E2E57085B61137D70ACC28DD82EF4C718C',
    'source' => 'http://apt.pilight.org/',
  },
}

package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }
package { 'cec-utils': ensure => installed, }
package { 'kodi': ensure => installed, }
package { 'pilight': ensure => installed, require => Apt::Source['pilight']}

}
