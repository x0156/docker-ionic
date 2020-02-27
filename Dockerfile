FROM beevelop/cordova
RUN apt-get update && apt-get install -y git bzip2 openssh-client && \
    npm i -g --unsafe-perm=true @angular/cli @ionic/cli cordova && \
    ionic --no-interactive config set -g daemon.updates false && \
    rm -rf /var/lib/apt/lists/* && apt-get clean
