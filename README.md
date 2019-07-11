Copyright 2015-2016 - The CyanogenMod Project

Copyright 2017-2019 - The LineageOS Project


Unified device tree for all G4 models
=====================================

# ToC

 * [Specs](https://github.com/Suicide-Squirrel/android_device_lge_g4/blob/lineage-16.0/README.md#specs)
 * [Port this tree to a new / other ROM](https://github.com/Suicide-Squirrel/android_device_lge_g4/blob/lineage-16.0/README.md#port-this-tree-to-a-new--other-rom)


## Specs

Basic   | Spec Sheet
-------:|:-------------------------
CPU     | Dual-core 2.0 GHz ARM® Cortex™ A57 and quad-core 1.5 GHz ARM® Cortex™ A53
CHIPSET | Qualcomm MSM8992 Snapdragon 808
GPU     | Adreno 418
Memory  | 3GB
Shipped Android Version | 5.1
Storage | 32GB
MicroSD | Up to 128GB
Battery | 3000 mAh
Dimensions | 148.9 x 76.1 x 6.3 - 9.8 mm
Display | 2560 x 1440 pixels, 5.5" HD-IPS LCD
Rear Camera  | 16 MP hybrid infared autofocus, dual-LED flash
Front Camera | 8 MP
Release Date | April 2015

![LG G4](http://cdn2.gsmarena.com/vv/pics/lg/lg-g4-1.jpg "LG G4")


## Port this tree to a new / other ROM

every model will need a single build run.
porting that to another rom means you might (depends on the ROM):

1. rename the `lineage_*mk` files (e.g to `aoscp_*.mk`)
2. rename `PRODUCT_NAME` in all `lineage_*mk` files to the one of your ROM
3. rename lunch combos in `vendorsetup.sh`
4. `<model>/BoardConfig.mk` might need to be changed to another kernel defconfig (if you want to use different ones)
5. rename `lineage.dependencies` to the one matching your ROM

that sounds a lot first but tbh its just a few `for loop` runs and its almost done.

#### for 1:

check how it would look like:

`for i in $(ls lineage_*.mk);do echo mv $i ${i/lineage/mynewrom};done`

if that looks good do the change:

`for i in $(ls lineage_*.mk);do mv $i ${i/lineage/mynewrom};done`

#### for 2:

check how it would look like:

`for i in $(ls lineage_*.mk);do sed "s/lineage_/mynewrom_/g" $i ;done  | grep PRODUCT_NAME`

if that looks good do the change:

`for i in $(ls lineage_*.mk);do sed -i "s/lineage_/mynewrom_/g" $i ;done`

#### for 3: 

check how it would look like:

`for i in $(echo vendorsetup.sh);do sed "s/lineage_/mynewrom_/g" $i;done`

if that looks good do the change:

`for i in $(echo vendorsetup.sh);do sed -i "s/lineage_/mynewrom_/g" $i;done`

#### for 4-5:

I trust in you that you can handle that ;)



