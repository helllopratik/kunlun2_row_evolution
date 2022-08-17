mkdir -p ~/bin
PATH="${HOME}/.bin:${PATH}"
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
chmod a+x ~/bin/repo
#echo again !!!!!!

# Initialize local repository
repo init -u https://github.com/Evolution-X/manifest -b snow

# Sync
repo sync -c -j$(nproc --all) --force-sync --no-clone-bundle --no-tags
repo sync --force-sync
