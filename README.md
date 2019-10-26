Dutch home automation system. Very unstable as of now, is it basically laurensw's STT frontend/backend connected to an actual Debian-based operating system. This allows one to say "Lampen uit", for example, which will turn off the lights connected to 433 Mhz KlikAanKlikUit sockets.

Eventually, TTS and some heavier decision making than if/else will be integrated as well.

Installation
To install and use (very early beta, so errors may occur). This guide requires familiarity with Puppet.
All scripts, commands, certificates, and ssh keys and packages will be installed via Puppet from scratch. 

-Install a puppet master with Foreman-Installer
-Install  r10k on the master
-Run "r10k deploy environment -p" on the master
-Install puppet clients on Raspbian while pointing to the master, create a host group for clients, specifically for the Raspberries class and apply it
-Install puppet clients on raspberry pis runing Ubuntu Mate while pointing to the master, create a host group for clients, specifically for the SST-clients class and apply it
-Install puppet clients on Ubuntu LTS while pointing to the master, create a host group for clients, specifically for the SST-server class and apply it
-Run 'puppet agent -t' on all clients as root
-Run 'start-server.sh' on the SST server
-Run 'start-client.sh' on all SST clients


