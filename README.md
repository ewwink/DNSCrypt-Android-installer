
# DNSCrypt-Android-installer
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

3. Download `run-dnscrypt.sh`, `term-init-v3.sh` dan simpan ke stb
4. Download [dnscrypt-proxy-android_arm-2.0.xx.zip](https://github.com/DNSCrypt/dnscrypt-proxy/releases/latest) kemudian extract dan simpan di stb satu folder dengan file diatas

**Langkah Selanjutnya**
5.  misal file2 tadi disimpan di `/sdcard/dnscrypt-installer` maka di `terminal emulator` atau `adb shell` ketik perintah2 berikut

    su
    cd /sdcard/dnscrypt-installer
    sh term-init-v3.sh


6. jika semua berjalan lancar akan ada pesan seperti berikut

       Enjoy!!! =) 

## Permasalahan
Ada pesan error  `...applet NOT FOUND!` install busybox dan jalankan kembali scriptnya.

**Credit**
- `term-init-v3.sh`:  [Ryuinferno](https://forum.xda-developers.com/showpost.php?p=32716412&postcount=2)
- [dnscrypt-proxy](https://github.com/DNSCrypt/dnscrypt-proxy)

