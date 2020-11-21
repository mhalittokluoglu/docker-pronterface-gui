FROM debian
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install sudo printrun -y
RUN useradd -s /bin/bash -m user -d /home/user
RUN adduser user dialout
CMD su user
