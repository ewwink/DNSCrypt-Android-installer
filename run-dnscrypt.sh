#!/system/bin/sh

# tunggu LAN/WLAN konek
sleep 60

if [ -f /data/dnscrypt-test.log ]; then
rm  /data/dnscrypt-test.log
fi

/data/local/dnscrypt-arm/dnscrypt-proxy > /dev/null 2>&1 &

#redirect dns query trafik ke localhost/dnscrypt
iptables -t nat -A OUTPUT -p udp --dport 53 -j DNAT --to-destination 127.0.0.1

#log
echo "dnscrypt berjalan !!!" >> /data/dnscrypt-test.log
echo "pada $(date +"%d-%m-%Y %r" )" >> /data/dnscrypt-test.log