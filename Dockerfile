FROM sipstel-pjsip
MAINTAINER KINOSHITA minoru <5021543+minoruta@users.noreply.github.com>

ARG NODEJS=8

WORKDIR /root
RUN  mkdir sipstel
COPY src sipstel/src
COPY lib sipstel/lib
COPY test sipstel/test
COPY package.json sipstel/
COPY package-lock.json sipstel/
COPY binding.gyp sipstel/

#
#   Prepare requirments to test
#
RUN apt -qq update \
&&  apt -qq install -y \
        python \
        curl \
        git \
        vim \
        gdb \
&&  curl -sL https://deb.nodesource.com/setup_$NODEJS.x | sudo -E bash - \
&&  apt -qq install -y nodejs \
&&  apt-get clean \
&&  rm -rf /var/lib/apt/lists/*

#
#   Prepare nodejs
#
RUN cd /root/sipstel \
&&  npm -qq install -g node-gyp \
&&  npm -qq install --unsafe-perm

#
#   Test
#
CMD cd /root/sipstel \
&&  node --version \
&&  ulimit -c unlimited \
&&  npm test \
&&  echo ====================================================== \
&&  echo ======================== GOOD ======================== \
&&  echo ======================================================
