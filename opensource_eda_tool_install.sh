sudo apt-get update
mkdir tools
cd tools/
sudo apt install cmake

sudo apt-get install build-essential bison flex \
	libreadline-dev gawk tcl-dev tk-dev libffi-dev git \
	graphviz xdot pkg-config python3 --assume-yes
sudo apt install libglu1-mesa-dev freeglut3-dev --assume-yes
wget -O - https://apt.llvm.org/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-add-repository "deb http://apt.llvm.org/xenial/ llvm-toolchain-xenial-6.0 main" -y 
sudo apt-get update 
sudo apt-get install -y clang-6.0 --assume-yes
sudo apt-get install gsl-bin libgsl0-dev --assume-yes

# To install dependencies
sudo apt-get install m4
sudo apt-get install csh
sudo apt-get install libx11-dev
sudo apt-get install tcsh
sudo apt-get install tcl-dev tk-dev
sudo apt-get install libcairo2-dev
sudo apt-get install mesa-common-dev libglu1-mesa-dev
sudo apt-get install libncurses-dev
sudo apt-get install autoconf
sudo apt-get install automake
sudo apt-get install libtool
sudo apt-get install swig
 

sudo apt-get update
sudo apt-get install iverilog
sudo apt-get install gtkwave
sudo apt-get install yosys

git clone https://github.com/rubund/graywolf.git
cd graywolf/
mkdir build
cd build
cmake ..
sudo make
sudo make install
cd ../../


# To install OpenSTA
git clone https://github.com/The-OpenROAD-Project/OpenSTA.git
cd OpenSTA
mkdir build
cd build
cmake ..
make

# To install Qrouter
git clone git://opencircuitdesign.com/qrouter
cd qrouter
sudo ./configure 
sudo make
sudo make install 
cd ../


# Installing Magic
git clone git://opencircuitdesign.com/magic
cd magic/
sudo ./configure
sudo make
sudo make install


# To install Netgen
git clone git://opencircuitdesign.com/netgen
cd netgen/
sudo ./configure
sudo make
sudo make install
cd ../

# To install Qflow
git clone git://opencircuitdesign.com/qflow
cd qflow/
sudo ./configure
sudo make
sudo make install
cd ../

sudo apt-get update
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove

### TBC


sudo ln -s $PWD/app/sta /usr/bin/sta
cd ../
sudo apt-get install tcllib --assume-yes

sudo add-apt-repository ppa:ubuntu-toolchain-r/test -y
sudo apt-get update
sudo apt-get install gcc-8 g++-8 --assume-yes
cd /usr/bin
sudo rm -rf g++
sudo ln -s g++-8 /usr/bin/g++
sudo rm -rf gcc
sudo ln -s gcc-8 /usr/bin/gcc
cd -
sudo apt-get install iverilog
sudo apt-get install gtkwave
git clone https://github.com/OpenTimer/OpenTimer.git
cd OpenTimer/
mkdir build
cd build
cmake ../
sudo make
cd ../
sudo ln -s $PWD/bin/ot-shell /usr/bin/OpenTimer
cd ../../


