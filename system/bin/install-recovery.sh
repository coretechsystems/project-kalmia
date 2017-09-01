#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:12609536:476031fe4e6f4a9f7d51bfd8fb89f2b6e8b7cfed; then
  applypatch EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:10842112:0645990571f0da162d84c5c52a89c50e7423e0e5 EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery 476031fe4e6f4a9f7d51bfd8fb89f2b6e8b7cfed 12609536 0645990571f0da162d84c5c52a89c50e7423e0e5:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
