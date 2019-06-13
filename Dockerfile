FROM alvrme/alpine-android:android-28
WORKDIR /app/downloads
RUN apk add --no-cache wget libstdc++ && \
    wget https://storage.googleapis.com/flutter_infra/releases/stable/linux/flutter_linux_v1.5.4-hotfix.2-stable.tar.xz && \
    tar xf flutter_linux_v1.5.4-hotfix.2-stable.tar.xz && \
    export PATH="$PATH:`pwd`/flutter/bin" && \
    flutter doctor
ENV PATH="$PATH:`pwd`/flutter/bin"