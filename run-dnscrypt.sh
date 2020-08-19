#!/system/bin/sh


if [ -f /data/dnscrypt-test.log ]; then
	rm  /data/dnscrypt-test.log
fi

# tunggu LAN/WLAN konek
while ! ifconfig | grep -E "192\.168\.[0-9]{1,3}\." > /dev/null; do
	sleep 2
done	

# sudah ada koneksi lanjutkan
/data/local/dnscrypt/dnscrypt-proxy > /dev/null 2>&1 &

#redirect dns query trafik ke localhost/dnscrypt
iptables -t nat -A OUTPUT -p udp --dport 53 -j DNAT --to-destination 127.0.0.1

#log
echo "dnscrypt berjalan !!!" >> /data/dnscrypt-test.log
echo "pada $(date +"%d-%m-%Y %r" )" >> /data/dnscrypt-test.log
