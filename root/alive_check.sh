host_to_ping="192.168.1.1"
request_count="1"
wait_for_response="3"
ping_options="-n -q"

/bin/ping -c $request_count -w $wait_for_response $ping_options $host_to_ping > /dev/null 2>&1
status=$?
if [ $status -ne 0 ]; then
    /usr/bin/netcfg -r  wireless-wpa
else
    echo "Alive!"
fi

