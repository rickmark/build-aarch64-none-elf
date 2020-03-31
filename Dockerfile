

FROM debian

RUN apt -y update; apt -y upgrade
RUN apt -y install automake make autoconf git wget tar xz-utils

RUN mkdir -p /opt

RUN cd /opt; wget https://developer.arm.com/-/media/Files/downloads/gnu-a/9.2-2019.12/binrel/gcc-arm-9.2-2019.12-x86_64-aarch64-none-elf.tar.xz; xz -d gcc-arm-9.2-2019.12-x86_64-aarch64-none-elf.tar.xz; tar xvf gcc-arm-9.2-2019.12-x86_64-aarch64-none-elf.tar

ENV PATH="/opt/gcc-arm-9.2-2019.12-x86_64-aarch64-none-elf/bin/:${PATH}"
