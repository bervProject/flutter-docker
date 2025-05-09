FROM thyrlian/android-sdk:10.0
WORKDIR /app/downloads
ENV FLUTTER_VERSION='3.29.3'
RUN apt-get update && apt-get install wget xz-utils -y && \
    wget https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_${FLUTTER_VERSION}-stable.tar.xz && \
    tar -xf flutter_linux_${FLUTTER_VERSION}}-stable.tar.xz && \
    export PATH="$PATH:`pwd`/flutter/bin" && \
    flutter doctor
ENV PATH="$PATH:`pwd`/flutter/bin"
