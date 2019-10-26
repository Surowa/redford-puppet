# Redford-Speech
JAVA application demonstrating the use of the net-speech-api for kaldigstserver, and then using it to trigger actions on the server. 

Large parts of the code are based on https://github.com/laurensw75/SpeechAPIDemo and https://github.com/Kaljurand/net-speech-api.

You can compile this program using the 

`$ mvn package`

Alternatively, you can use the provided .zip to get the same result.

Run the application using:

`$ java -jar target/SpeechAPIDemo-1.0.jar server:port [userid] [contentid]`

The server is assumed to be running on ws://server:port/client/ws/speech, with status info on ws://server:port/client/ws/status.

It will start running immediatly.

It will execute commands defined within seperate bash scripts, which in turn communicate to external Raspberry Pi's running various kinds of software, such as CEC-client and Kodi on one RPI to control the television, pilight on another to control the lamps and sockets, and another making RESTful API calls to trigger the household robots. 
Adding commands/skills is merely a process of copying a few lines of code, and adding an additional shell script to call and modify accordingly. 
