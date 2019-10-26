

class SST-clients {

file { '/home/pi/':
        ensure => present,
        owner => 'pi',
        recurse => remote,
        source => "puppet:///modules/SST-clients/$files",
     }

file { '/usr/bin/vncserver':
        ensure => present,
        source => "puppet:///modules/SST-clients/vncserver",
     }


package { 'ubuntu-desktop': ensure => installed, }
package { 'gnome-panel': ensure => installed, }
package { 'gnome-settings-daemon': ensure => installed, }
package { 'metacity': ensure => installed, }
package { 'gnome-terminal': ensure => installed, }
package { 'gnome-core': ensure => installed, }
package { 'nautilus ': ensure => installed, }
package { 'vnc4server ': ensure => installed, }

}
