#FROM mcr.microsoft.com/mssql/server:2017-latest
#FROM microsoft/mssql-server-linux
FROM microsoft/mssql-server-linux:2017-latest

RUN mkdir -p /src/sql_insert_scripts

#COPY ./sql_scripts/ /src/sql_scripts

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=UnityJDBC321!
ENV MSSQL_PID=Developer
   
WORKDIR /src

COPY initialize-database.sql ./
COPY ./sql_insert_scripts/ ./sql_insert_scripts
COPY setup-database.sh ./
COPY entrypoint.sh ./

# Grant permissions for the setup-database and entrypoint shell scripts to be executable
RUN chmod +x ./setup-database.sh
RUN chmod +x ./entrypoint.sh

CMD bash ./entrypoint.sh

EXPOSE 1433
