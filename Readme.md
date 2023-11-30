# meta-vkrzg2lc
1. create source dir 
    mkdir -p $HOME/work/rzg_vlp_305
    cd $HOME/work/rzg_vlp_305

2. download source archives 
# Make sure that the following packages have been downloaded from the official website https://www.renesas.com
# RZ/G Verified Linux Package [5.10-CIP]  V3.0.5
    RTK0EF0045Z0021AZJ-v3.0.5.zip, 
    RTK0EF0045Z13001ZJ-v1.1.2_EN.zip, 
    RTK0EF0045Z15001ZJ-v1.1.0_EN.zip, 
    r01an5869ej0122-rzg2l-cm33-multi-os-pkg.zip, 
    oss_pkg_rzg_v3.0.5.7z

3. create working dir 
    mkdir -p $HOME/work/vkrzg2lc/vlp_305/yocto 
    cd $HOME/work/vkrzg2lc/vlp_305/yocto

4. get helper utils
    wget https://raw.githubusercontent.com/Vekatech/vkrz-build-utils/main/yocto_305/create_yocto_305_vkrzg2lc_src.sh
    wget https://raw.githubusercontent.com/Vekatech/vkrz-build-utils/main/yocto_305/run_docker

    chmod a+x create_yocto_305_vkrzg2lc_src.sh
    chmod a+x run_docker

5. adjust paths in "create_yocto_305_vkrzg2lc_src.sh" as follows 
    PKGKDIR=$HOME/work/rzg_vlp_v3.0.5   - directory with source archives
    WORKSPACE=$(pwd)                    - working path
    YOCTO_HOME="${WORKSPACE}/yocto_305" - yocto dir
    BUILD_DIR="build"                   - build dir 

6. create yocto sources
    ./create_yocto_305_vkrzg2lc_src.sh

7. start docker (optional)
    run_docker

8. go to YOCTO_HOME 
    cd yocto_305 

9. TEMPLATECONF=$PWD/meta-vkrzg2lc/docs/template/conf

10. source poky/oe-init-build-env build - build has to be the same as BUILD_DIR in sh script

11. adjust layers
    bitbake-layers add-layer ../meta-xxx 

12. start a build 
    bitbake core-image-<target>
