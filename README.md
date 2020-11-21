# docker-pronterface-gui
Pronterface in a docker container



Firstly you need to build your image
Go to the Dockerfile folder

$ sudo docker build -t printrun_image ./

After that you need to create a directory called Docker_Volume in the same directory which contains pronterface_docker.sh

$ mkdir Docker_Volume
$ chmod +x pronterface_docker.sh

Then look up for your USB device.

Unplug your USB
$ ls /dev > file1.txt

Plug your USB
$ ls /dev > file2.txt

$diff file1.txt file2.txt

It will give an output like ttyUSB0, ttyUSB1 or something like that.

Change the ttyUSB0 from the pronterface_docker.sh script according to your USB device.

Then run the script:

$ ./pronterface_docker.sh

Your Terminal will change.
Type this:
$ pronterface

And you're good to go. The files which you put Docker_Volume will be in the /home/user/ 

Youtube video:
https://youtu.be/mjvOcfSoo4E
