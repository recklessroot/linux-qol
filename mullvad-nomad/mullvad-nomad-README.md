Mullvad-Nomad

 randomly chooses one of the configured country and connect to a mullvad VPN server in that region
 It is not a mullvad-vpn-cli replacement, it only automates the country selection and the connection
 
 [Mandatory dependecies]

 mullvad-vpn-cli (and an active subscription)

 [Recommended dependencies]
 
 dunst (an easy app to customize notifications)
 notify-send (included in dunst, can be installed standalone if you hate nice-looking stuff)

Guide

 1. Download the script,. As a true nomad, the location is not important.

 2. Download dependencies if not already done.
    Only mullvad-vpn-cli is truly needed. But dunst makes it much more enjoyable.

 3. Configure ~/.config/dunst/dunstrc (skip if you hate nice-looking stuff)

 4. Edit the "COUNRTYCODES" list. Add countries from which you like to connect (e.g. Netherlands = 'nl')
    The selection will be random, so you should only put reliable locations for a better experience.
    Some locations are only available with openVPN or Wireguard. Make sure countries offers your configured protocol

    ex: `mullvad relay list | grep -i wireguard`

 5. Edit any other part if you to add

 6. Verify that mullvad-daemon is running

 7. `./mullvad-nomad.sh`

 BONUS. Bind the script to a shortcut! Then browse the web as true nomad.
