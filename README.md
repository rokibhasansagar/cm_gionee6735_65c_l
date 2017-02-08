android_device_gionee6735_65c_l
Device repository for cm 14.1-20170206 UNOFFICIAL gionee6735_65c_l

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

You will need to delete sepolicy, include.edit, and cmhw.bak folders until they are fixed.

Place folder in device/gionee/gionee6735_65c_l
Run ./extract-files.sh and ./setup-makefiles.sh and ./setup-directories.sh with phone plugged in.
Place the roomservice.xml file in your .repo/local_manifests/
lunch && breakfast gionee6735_65c_l && brunch gionee6735_65c_l to build.

If you want TWRP then copy the TWRP source to buildable/recovery-trwp and copy a bionic source of busybox to externals/busybox and edit BoardConfig.mk to uncomment 
RECOVERY_VARIANT := twrp

After building it will not boot on your phone because of gionee/blu's locked bootloader which leaves you two options.

Option number one is beg blu or gionee for the kernel sources and sign your own /oemkeystore partition key to put on your device because 
https://source.android.com/security/verifiedboot/dm-verity.html . The difficult part being patent trolls and idiots in customer service.

Option number two is continue the work of https://forum.xda-developers.com/android/software-hacking/verified-boot-disk-encryption-testings-t3248161 . The difficult 
part being re-assembling the arm code after finding the boolean value for bootloader:locked.

I am pursueing one for now....
