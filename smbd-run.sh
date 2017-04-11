#!/usr/bin/execlineb -P
# add '-d <debuglevel>' (1, 2, 3 are good) for debug logging
/usr/bin/with-contenv /usr/local/samba/sbin/smbd --foreground --log-stdout
