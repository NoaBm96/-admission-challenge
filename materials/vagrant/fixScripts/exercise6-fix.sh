#!/bin/bash

byteCount=0

# last parameter 
last=${@:$#}

# all parameters except the last
other=${*%${!#}}
target="server1"

if [$HOSTNAME = "server1"]; then
    $target = "server2"
fi

if $@ -gt 2; then
    for arg in ${*%${!#}}
    do
        scp $arg $target:$last
        byteCount+=$(stat -c%s $arg)
    done
else 
    echo "not enough arguments"
fi

echo $byteCount

## couldn't find a way to change the permissions for all users.
## the script won't run automaticlly, as the connection between servers on exe5 is not working.