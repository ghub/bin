#!/bin/bash -e
# Convert OS X installation dmg to ISO for VirtualBox.
# Adapted from http://sqar.blogspot.ca/2014/10/installing-yosemite-in-virtualbox.html.
# e.g. virtualbox_osx_iso.sh Install\ OS\ X\ El\ Capitan.app el_capitan.iso

input_app=$1
output_iso=${2?}

input_dmg="$input_app/Contents/SharedSupport/InstallESD.dmg"
installer_image=/Volumes/virtualbox_osx_iso_install_app
sparse_bundle=/Volumes/virtualbox_osx_iso_install_build
tmp_base=/tmp/virtualbox_osx_iso
tmp_sparse=${tmp_base}.sparseimage

hdiutil_attach()
{
    hdiutil attach "$1" -noverify -nobrowse -mountpoint $2
}

hdiutil_detach()
{
    hdiutil detach $1
}

# Mount the installer image
hdiutil_attach "$input_dmg" $installer_image

# Convert the boot image to a sparse bundle
hdiutil convert $installer_image/BaseSystem.dmg -format UDSP -o $tmp_base

# Increase the sparse bundle capacity to accommodate the packages
hdiutil resize -size 8g $tmp_sparse

# Mount the sparse bundle for package addition
hdiutil_attach $tmp_sparse $sparse_bundle

# Remove Package link and replace with actual files
rm $sparse_bundle/System/Installation/Packages
cp -rp $installer_image/Packages $sparse_bundle/System/Installation/

# Copy Base System
cp -rp $installer_image/BaseSystem.dmg $sparse_bundle/
cp -rp $installer_image/BaseSystem.chunklist $sparse_bundle/

hdiutil_detach $sparse_bundle
hdiutil_detach $installer_image

# Resize the partition in the sparse bundle to remove any free space
hdiutil resize -size `hdiutil resize -limits $tmp_sparse | tail -n 1 | awk '{ print $1 }'`b $tmp_sparse

# Convert the sparse bundle to ISO/CD master
hdiutil convert $tmp_sparse -format UDTO -o $tmp_base

# Remove the sparse bundle
rm $tmp_sparse

# Rename the ISO and move it to the desktop
mv $tmp_base.cdr $output_iso
