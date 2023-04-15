# nuke
rm -rf vendor/xiaomi
rm -rf kernel/xiaomi
# clone
git clone --depth=1 https://github.com/xyz-mocha/vendor_xiaomi_tulip.git -b 13.x vendor/xiaomi/tulip
git clone --depth=1 https://github.com/xyz-mocha/kernel_xiaomi_sdm660.git -b eas kernel/xiaomi/sdm660
