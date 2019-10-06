class raspberry {

include apt

exec { 'pilight':
  command  => 'echo "deb http://apt.pilight.org/ stable main" > /etc/apt/sources.list.d/pilight.list && wget -O - http://apt.pilight.org/pilight.key | apt-key add -',
}


package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }
package { 'pilight': ensure => installed, }
package { 'kodi': ensure => installed, }

}
