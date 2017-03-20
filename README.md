# Home-Automation

Devices:
 - Nest
 - LIFX bulb
 - Wemo switch
 - Google Home
 - Broadlink RM Pro
 - Door sensors 
 - 433Mhz receiver with attiny85 
 
Services:
 - IFTTT
 - Pushbullet
 
Automations:
- Say [phrase] to GoogleHome to switch to a safe mode: lights off, nest away mode, tv off
  	- GoogleHome --> IFTTT --> Maker Channel Web Request --> aREST API (HomeAssistant)
- Say [phrase] to GoogleHome to switch to night mode: light on/off, nest to temp, tv off
	- GoogleHome --> IFTTT --> Maker Channel Web Request --> aREST API (HomeAssistant)
- Turn select lights on after sunset
- Turn select lights on after entering home using door sensor
- Motion detection alert using nest
- Increase/Decrease TV volume when AC unit turns on/off
- Turn off small light after big light is turned on for 1min
