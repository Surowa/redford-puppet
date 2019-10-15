class raspberry {



exec { 'pilight':
  command  => 'echo "deb http://apt.pilight.org/ stable main" > /etc/apt/sources.list.d/pilight.list',
  path => '/bin/',
}

exec { 'wget':
  command  => 'wget -O - http://apt.pilight.org/pilight.key | apt-key add -',
  path => '/usr/bin/',
}


package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }
package { 'pilight': ensure => installed, }
package { 'kodi': ensure => installed, }

}
