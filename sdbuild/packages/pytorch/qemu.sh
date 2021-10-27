export HOME=/root

echo
echo "## Installing PyTorch package version 1.2"
echo
echo "!! This will take a while because it will be build from source. !!"
echo

# installation instructions based on https://github.com/manoharvhr/PYNQ-Torch/tree/master/PyTorch_Installation

git clone --recursive https://github.com/pytorch/pytorch
cd pytorch
git checkout tags/v1.2.0 -b build  # TODO: use a more recent version?
git submodule update --init --recursive
export USE_CUDA=0
export USE_DISTRIBUTED=0
python3 setup.py build
python3 setup.py develop  # TODO: why does "install" not work?
cd ..
rm -rf pytorch

