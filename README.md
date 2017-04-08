# Node-RED Dockerimage with GPIO and WiringPi

This enables the use of the wiringPi-library on a Dockerhosted Node-RED instance.

```Bash
docker run -d -p 1880:1880 --privileged --device /dev/mem -v /home/pirate/.node-red/:/data --name nodered rpi-nodered-wiringpi
```

If you're using an mqtt-broker image as well, simply link to it and the linked name is available as host.

```Bash
docker run -p 1883:1883 -d --name broker nieleyde/rpi-mosquitto
docker run -d -p 1880:1880 --privileged --device /dev/mem -v /home/pirate/.node-red/:/data --name nodered --link broker:broker rpi-nodered-wiringpi
```

Thanks to @nieleyde for the great base-image!
