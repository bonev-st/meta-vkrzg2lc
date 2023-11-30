
1. create source dir i.e. $WORK/rzg_vlp_305
2. download source archives from https://www.renesas.com : RTK0EF0045Z0021AZJ-v3.0.5.zip, RTK0EF0045Z13001ZJ-v1.1.2_EN.zip, RTK0EF0045Z15001ZJ-v1.1.0_EN.zip, r01an5869ej0122-rzg2l-cm33-multi-os-pkg.zip, oss_pkg_rzg_v3.0.5.7z
3. wget https://raw.githubusercontent.com/Vekatech/vkrz-build-utils/yocto_305/create_yocto_305_vkrzg2lc_src.sh
4. open it and specify 
    PKGKDIR=$HOME/work/rzg_vlp_v3.0.5 - directory with source archives
    WORKSPACE=$(pwd)                  - working path
    YOCTO_HOME="${WORKSPACE}/yocto_305" - yocto dir
    BUILD_DIR="build"                   - build dir 
4. start docker (optional)
5. TEMPLATECONF=$PWD/meta-vkrzg2lc/docs/template/conf
6. source poky/oe-init-build-env build - build has to be the same as BUILD_DIR in sh script
7. adjust layers - bitbake-layers add-layer ../meta- 
8. start a build - bitbake core-image-<target>
