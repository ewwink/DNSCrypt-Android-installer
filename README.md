# DNSCrypt Android installer
Install DNSCrypt di STB Android hg680p (**Root**)

DNSCrypt Proxy adalah DNS proxy untuk membuka atau unblock internet positif tanpa IP proxy atau VPN dan kebutuhan lainnya.

**ini merupakan cara tanpa install APK**

Cara ini baru dicoba pada **`STB HG680-P`** dan kemungkinan besar bisa juga untuk **`B860H`**, **`B760H`** dan perangkat android lainnya. Selain itu di perlukan **`akses root`** karena memodifikasi system.

## Resiko ditanggung penumpang!!!

### Cara Install
**Metode A**
1. Download file komplitnya di [sini](https://github.com/ewwink/DNSCrypt-Android-installer/releases/download/1.0/dnscrypt-installer.zip)
2. kemudian extract dan copy folder `dnscrypt-installer` ke STB/HP

**Metode B**

1. Download `run-dnscrypt.sh`, `term-init-v3.sh` dan simpan ke stb
2. Download [dnscrypt-proxy-android_arm-2.0.xx.zip](https://github.com/DNSCrypt/dnscrypt-proxy/releases/latest) kemudian extract dan simpan di stb satu folder dengan file diatas

**Langkah Selanjutnya**

3. misal file2 tadi disimpan di `/sdcard/dnscrypt-installer` maka di `terminal emulator` atau `adb shell` ketik perintah2 berikut

       su
       cd /sdcard/dnscrypt-installer
       sh term-init-v3.sh

4. jika semua berjalan lancar akan ada pesan seperti berikut

       Enjoy!!! =) 
## Cek init.d dan DNSCrypt
Untuk `init.d`, Setelah di reboot 2x cek apakah file `/data/Test.log` kalau ada berarti berhasil.
Untuk `DNSCrypt`, jalankan perintah 

    ps | grep dnscrypt
    
 kalau ada pesan seperti berikut berarti berhasil
 
    root 5630 1 816664 10408 futex_wait ab06db84 S /data/local/dnscrypt-arm/dnscrypt-proxy

## Permasalahan
- Ada pesan error  `...applet NOT FOUND!` install busybox dan jalankan kembali scriptnya.
- DNS koneknya terasa lambat... edit `dnscrypt-proxy.toml`.... cape nulis bersambung.....

**Credit**
- `term-init-v3.sh`:  [Ryuinferno](https://forum.xda-developers.com/showpost.php?p=32716412&postcount=2)
- [dnscrypt-proxy](https://github.com/DNSCrypt/dnscrypt-proxy)

