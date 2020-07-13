FROM mintproject/dt_dame:latest

RUN export DEBIAN_FRONTEND=noninteractive && \
     apt-get update && \
     apt-get install -y --allow-unauthenticated \
         sudo \
         && \
     apt-get clean && \
     rm -rf /var/lib/apt/lists/* && \
     echo "mic ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/user && \
     chmod 0440 /etc/sudoers.d/user
ARG UNAME=mic
ARG UID=1000
ARG GID=1000
RUN groupadd -g $GID -o $UNAME
RUN useradd -m -u $UID -g $GID -o -s /bin/bash $UNAME
USER $UNAME

RUN pip install reprozip mic --no-warn-script-location
ENV PATH="/home/mic/.local/bin:${PATH}"
ENTRYPOINT []