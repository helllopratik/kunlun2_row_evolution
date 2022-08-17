mkdir -p ~/bin
PATH="${HOME}/.bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
git clone https://github.com/akhilnarang/scripts
cd scripts
./setup/android_build_env.sh
cd ..

# Initialize local repository
repo init -u https://github.com/Evolution-X/manifest -b snow

# Sync
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
source build/envsetup.sh
#lunch aosp_kunlun2_row-userdebug
#export USE_CCACHE=1
#export CCACHE_EXEC=/usr/bin/ccache
#ccache -M 50G
set ALLOW_MISSING_DEPENDENCIES=TRUE
#ccache -o compression=true
#croot
#mka bacon -j$(nproc --all)
#cd $OUT
#https://wiki.pixelexperience.org/devices/kunlun2_row/build/
#./setup/android_build_env.sh
#rm -rf device/lenovo/kunlun2_row/
#rm .repo/local_manifests/pixel.xml

