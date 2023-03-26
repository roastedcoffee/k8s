#!/bin/bash
#
# IPs Table

type column &>/dev/null || apt-get install -yq bsdextrautils

links() { ip link | awk '/^[0-9]+:/ { sub(":", "", $2); sub("@.*", "", $2 ); print $2; }'; }
ipof()  { ip addr show ${1:-enp6s0} | awk ' /link.ether/ { print "mac", $2 }
                                           /inet6*/ { print $1, $2 }'; }
( echo dev inet inet6 mac
for i in `links`; do
    unset ips a b c d
    ips=$(ipof $i)
    if [[ -z $ips ]]; then
        mac=.
        inet=.
        inet6=.
    else
        read -s -r -d ';' _ mac _ inet _ inet6 <<< "$ips;"
        if [[ -z $inet6 ]] && [[ $inet =~ :: ]]; then
            inet6=$inet
            inet=
        fi
    fi
    echo $i ${inet:--} ${inet6:--} ${mac:--}
done; ) | column -t
