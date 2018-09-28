#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9674752:002a78d7cad757e4863607665031b1eab5d03834; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:7661568:d41cbe5d74daf65f8a6517bfc67671455baaa888 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 002a78d7cad757e4863607665031b1eab5d03834 9674752 d41cbe5d74daf65f8a6517bfc67671455baaa888:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
