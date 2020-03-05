FROM sipster-pjsip
MAINTAINER KINOSHITA minoru <5021543+minoruta@users.noreply.github.com>

ARG NODEJS=8

WORKDIR /root
RUN  mkdir sipster
COPY src sipster/src
COPY lib sipster/lib
COPY test sipster/test
COPY package.json sipster/
COPY package-lock.json sipster/
COPY binding.gyp sipster/

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
RUN cd /root/sipster \
&&  npm -qq install -g node-gyp \
&&  npm -qq install --unsafe-perm

#
#   Test
#
CMD cd /root/sipster \
&&  node --version \
&&  ulimit -c unlimited \
&&  npm test \
&&  echo ====================================================== \
&&  echo ======================== GOOD ======================== \
&&  echo ======================================================
