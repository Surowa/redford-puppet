Dutch home automation system. Very unstable as of now, is it basically laurensw's STT frontend/backend connected to an actual Debian-based operating system. This allows one to say "Lampen uit", for example, which will turn off the lights connected to 433 Mhz KlikAanKlikUit sockets.

Eventually, TTS and some heavier decision making than if/else will be integrated as well.

Installation
To install and use (very early beta, so errors may occur):

Copy the client folder to all clients ( RPI3 or 3B+ running Ubuntu Mate, using a USB microphone) and follow the README there.

Copy the server folder to the server (RPI3 or 3B+ running Raspbian Stretch), this should also be the server where the 433 MHZ receiver/transmitter combo is located. Then run the installation script there.

The clients should be able to SSH connect passwordless (so with SSH keys) to the server, so you will need to set that up.
