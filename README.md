android_device_gionee6735_65c_l
Device repository for lineage 14.1-20170206 UNOFFICIAL gionee6735_65c_l

 Thanks to:
* SRT TEAM
* DerTeufel1980
* fire855
* jianminglok
* walter79
* visi0nary
* vova.vafin
* ariafan
* DeepFlex
* Zormax
* Cheshkin
* Hyperion70
* vo-1
* more more guys


Device specific configuration for Blu studio energy 2. Special thanks to the above for starting work on the ARK M7. Also thanks to lopestorm for his backups with viruses and scatter files.

The includes.edit folder has hardware specific includes that fail against nougat and the clang included in cm-14.1 therefore they need adjusting. Sepolicy fails to apply so it needs adjusting too. 


Build instructions 

You will need to delete sepolicy and and the cmhw.bak folder until they are fixed.

Place folder in device/gionee/gionee6735_65c_l
Run ./extract-files.sh and ./setup-makefiles.sh
Place the roomservice.xml file in your .repo/local_manifests/
lunch && breakfast gionee6735_65c_l && brunch gionee6735_65c_l to build.

You will need to make folders when it first starts to build then it should continue without error.

After building it will not boot on your phone if you flash it :P.

If you want TWRP then copy the TWRP source to buildable/recovery-trwp and copy a bionic source of busybox to externals/busybox and edit BoardConfig.mk to uncomment 
#RECOVERY_VARIANT := twrp
