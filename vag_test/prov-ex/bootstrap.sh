# you'll need git
apt-get install -y git

# Need this too
apt-get install -y curl

# 1. install -y lua package manager
apt-get install -y luarocks

# 2. install -y lua just-in-time compiler 
apt-get install -y luajit

# 3. install torch - a scientific computing framework for luajit
# in a terminal, run the commands WITHOUT sudo
git clone https://github.com/torch/distro.git ~/torch --recursive
cd ~/torch; bash install-deps;
./install.sh

# 4. protocol buffers - google's data exchange format
apt-get install -y libprotobuf-dev protobuf-compiler

# 5. install -y caffe - a deep learning framework
luarocks install -y loadcaffe

# 6. to handle various image formats
luarocks install -y image

# 7. a neural network library
luarocks install -y nn

# 8. and finally, get "neural-style" from github repo
git clone https://github.com/jcjohnson/neural-style.git

# 9. go into the directory you've just cloned
cd neural-style

# 10. Download the neural models that contain the art genius - this step may take a while
sh models/download_models.sh 
