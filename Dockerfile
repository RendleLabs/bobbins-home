FROM microsoft/aspnetcore-build:2.0.3

VOLUME /code

ENV DOTNET_USE_POLLING_FILE_WATCHER=1
ENV ASPNETCORE_URLS=http://*:80
ENV ASPNETCORE_ENVIRONMENT=Development

ENTRYPOINT cd "/code/${APP}" && dotnet restore && dotnet watch run --no-launch-profile
