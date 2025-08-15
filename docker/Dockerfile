FROM registry.gitlab.steamos.cloud/steamrt/sniper/sdk:latest

RUN apt update && apt install -y \
    make g++ git curl unzip software-properties-common apt-transport-https \
    && curl https://packages.microsoft.com/config/debian/12/packages-microsoft-prod.deb -o packages-microsoft-prod.deb \
    && dpkg -i packages-microsoft-prod.deb && rm packages-microsoft-prod.deb \
    && apt update && apt install -y dotnet-sdk-8.0

# Install xmake
RUN curl -fsSL https://xmake.io/shget.text | bash
ENV PATH="/root/.local/bin:${PATH}"

WORKDIR /project
