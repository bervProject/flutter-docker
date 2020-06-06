FROM thyrlian/android-sdk:5.0
WORKDIR /app/downloads
RUN apt-get install wget xz-utils -y && \
    wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.9.1+hotfix.2-stable.tar.xz && \
    tar -xf flutter_linux_v1.9.1+hotfix.2-stable.tar.xz && \
    export PATH="$PATH:`pwd`/flutter/bin" && \
    flutter doctor
ENV PATH="$PATH:`pwd`/flutter/bin"
