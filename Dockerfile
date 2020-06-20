FROM mcr.microsoft.com/dotnet/core/sdk:3.1-alpine

RUN dotnet tool install -g Amazon.Lambda.Tools --framework netcoreapp3.1
ENV PATH="$PATH:~/.dotnet/tools"

RUN apk add --no-cache bash make nodejs npm yarn curl wget zip py-pip && \
    pip --no-cache-dir install awscli

RUN yarn global add serverless

WORKDIR /opt/app