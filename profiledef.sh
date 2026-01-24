#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="ayakaOS"
iso_label="ayakaOS"
iso_publisher="ayakaOS"
iso_application="ayakaOS Live"
iso_version="$(date +%Y.%m.%d)"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.grub' 'uefi.grub')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
# airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
airootfs_image_tool_options=('-comp' 'zstd')
file_permissions=(
  ["/etc/shadow"]="0:0:400"
  ["/root"]="0:0:750"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/etc/pacman.d/scripts/customize_airootfs.sh"]="0:0:755"
  ["/usr/local/bin/choose-mirror"]="0:0:755"
  ["/usr/local/bin/Installation_guide"]="0:0:755"
  ["/usr/local/bin/livecd-sound"]="0:0:755"
  ["/usr/local/bin/remove-nvidia"]="0:0:755"
  ["/usr/local/bin/removeun"]="0:0:755"
)
