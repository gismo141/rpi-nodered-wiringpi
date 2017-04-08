FROM nieleyde/rpi-nodered-gpio:latest

RUN sudo apt-get install g++ gcc make -y
RUN cd .. && git clone git://git.drogon.net/wiringPi && cd wiringPi && ./build
RUN cd .. && git clone --recursive git://github.com/ninjablocks/433Utils.git && cd 433Utils/RPi_utils && make
RUN cd ../433Utils/RPi_utils && sudo ln -s $PWD/send /usr/bin/send
