#!/bin/bash

# uses dunst and notify-send to show information
notify-send -u low -r 200 "$(echo -e "MULLVAD:\nConnecting...")"

# (edit MANDATORY) a list of code from countries i want to connect
# (make sure it is available with the tunnel-protocol used e.g. openvpn, wireguard )
COUNTRYCODES=('ch' 'an' 'ge' '__' 'us')

CURRENT=$(mullvad status | cut -d'-' -f1 | cut -d' ' -f3)

# chooses a random country from the list YOU EDITED..
INDEX=$(( $RANDOM % ${#COUNTRYCODES[@]} ))
LOCATION=${COUNTRYCODES[$INDEX]}

# Makes sure it's a new country, hence the nomad
while [[ ${LOCATION} == ${CURRENT} ]]
do
    INDEX=$(( $RANDOM % ${#COUNTRYCODES[@]} ))
    LOCATION=${COUNTRYCODES[$INDEX]}
done

mullvad relay set location $LOCATION
mullvad connect

# just waits 3 seconds let it connect properly and get a useful status
sleep 3

STATUS=$(mullvad status)

# sometimes 3 seconds is not quite enough
while [[ $( echo $STATUS | grep -c '\.\.\.$' ) == '1' ]]
do
    sleep 3
    STATUS=$(mullvad status)
done

# what's the point you ask? my dunst config prints critical in red, low in blue. that's all
if [[ $STATUS == 'Disconnected' ]]
then
    # could be interesting to implement a simple killswitch here
    notify-send -u critical -r 200 "$(echo -e "MULLVAD:\n$STATUS")"
else
    notify-send -u low -r 200 "$(echo -e "MULLVAD:\n$STATUS")"
fi
