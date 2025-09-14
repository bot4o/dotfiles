xset -b 
xset s off        # Turn off screen saver
xset -dpms        # Disable DPMS (Energy Star features)
xset s noblank    # Disable screen blanking
picom %
/usr/bin/pipewire $
/usr/bin/pipewire-pulse $
/usr/bin/pipewire-media-session $
qtile start
redshift -c ~/.config/redshift
