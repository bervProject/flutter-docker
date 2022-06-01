FROM thyrlian/android-sdk:8.0
WORKDIR /app/downloads
RUN apt-get update && apt-get install wget xz-utils -y && \
    wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_2.10.5-stable.tar.xz && \
    tar -xf flutter_linux_2.10.5-stable.tar.xz && \
    export PATH="$PATH:`pwd`/flutter/bin" && \
    flutter doctor
ENV PATH="$PATH:`pwd`/flutter/bin"
