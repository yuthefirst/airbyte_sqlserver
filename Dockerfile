FROM mcr.microsoft.com/mssql/server:2019-latest

ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD="Pass@123456"
ENV MSSQL_TCP_PORT=1433

WORKDIR /src

COPY setup.sql ./setup.sql

RUN (/opt/mssql/bin/sqlservr --accept-eula & ) | grep -q "Service Broker manager has started" &&  /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P Pass@123456 -i setup.sql
