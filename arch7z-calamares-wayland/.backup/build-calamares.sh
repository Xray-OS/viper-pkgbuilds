#!/bin/bash
#https://wiki.archlinux.org/index.php/DeveloperWiki:Building_in_a_Clean_Chroot

destination_core=$HOME"/ADA/REPO/ada-core/x86_64/"
destination_core_testing=$HOME"/ADA-REPO/ada-core-testing/x86_64/"
destination_extra=$HOME"/ADA-REPO/ada-extra/x86_64/"
destination_deluxe=$HOME"/ADA-REPO/ada-deluxe/x86_64/"

destiny=$destination3

search1="ada-calamares"
search=$search1

tput setaf 2
echo "#############################################################################################"
echo "#########        Let us build the package "$(basename `pwd`)
echo "#############################################################################################"
tput sgr0

updpkgsums

makepkg -s --sign

echo "Moving created files to " $destiny
echo "#############################################################################################"
mv $search*pkg.tar.zst $destiny
mv $search*pkg.tar.zst.sig $destiny
echo "Cleaning up"
echo "#############################################################################################"
echo "deleting unnecessary folders"
echo "#############################################################################################"

rm -rf pkg src

echo "deleting unnecessary files"
echo "#############################################################################################"

rm -rf calamares

tput setaf 8
echo "#############################################################################################"
echo "###################                       build done                   ######################"
echo "#############################################################################################"
tput sgr0
