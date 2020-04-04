# build

if [ ! -d "./build" ];then
mkdir build
fi

cd build
cmake ..
make -j8
cd ..


# run and test on some local cases
for i in 0 1 2; do
    ./build/patchmatchs image_files/inpainting/masked_image/masked_image_0000$i.png \
                        image_files/inpainting/mask/mask_0000$i.png \
                        image_files/inpainting/output/output_0000$i.png \
                        image_files/inpainting/metrics.log \
                        $i;
done