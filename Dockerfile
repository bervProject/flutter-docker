FROM thyrlian/android-sdk:6.1
WORKDIR /app/downloads
RUN apt-get install wget xz-utils -y && \
    wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_2.0.1-stable.tar.xz && \
    tar -xf flutter_linux_2.0.1-stable.tar.xz && \
    export PATH="$PATH:`pwd`/flutter/bin" && \
    flutter doctor
ENV PATH="$PATH:`pwd`/flutter/bin"
