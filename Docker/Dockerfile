
FROM openjdk:21-slim
ENV NODE_VERSION=23.6.1
ENV PYTHON_VERSION=3.11
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
    ca-certificates \
    lsb-release \
    software-properties-common \
    python3-software-properties \
    dbus \
    && curl -fsSL https://deb.nodesource.com/setup_${NODE_VERSION}.x | bash - \
    && apt-get update \
    && apt-get install -y \
    python${PYTHON_VERSION} \
    nodejs \
    # Clean up apt cache
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*
RUN java -version \
    && node -v \
    && python3 --version
CMD ["bash"]
