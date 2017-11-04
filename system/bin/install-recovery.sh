#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12576768:c3a5b125f7266de218c0498878b1cae893a975b5; then
  applypatch EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10817536:91fa4fd0416a3b74447c6ac147449c2642a2ed53 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery c3a5b125f7266de218c0498878b1cae893a975b5 12576768 91fa4fd0416a3b74447c6ac147449c2642a2ed53:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
