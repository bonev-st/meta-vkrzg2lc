
1. create source dir i.e. $WORK/rzg_vlp_305
2. download source archieves : RTK0EF0045Z0021AZJ-v3.0.5.zip, RTK0EF0045Z13001ZJ-v1.1.2_EN.zip, RTK0EF0045Z15001ZJ-v1.1.0_EN.zip, r01an5869ej0122-rzg2l-cm33-multi-os-pkg.zip, oss_pkg_rzg_v3.0.5.7z
3. 
2. TEMPLATECONF=$PWD/meta-renesas/meta-rzg2l/docs/template/conf
3. source poky/oe-init-build-env build
4. start docker (optional)
5. bitbake core-image-<target>
