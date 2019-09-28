class raspberry {

package { 'python3': ensure => installed, }
package { 'git': ensure => installed, }
package { 'pilight': ensure => installed, }
package { 'kodi': ensure => installed, }

}
