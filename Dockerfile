FROM microsoft/mssql-server-linux:2017-latest

RUN mkdir -p /src/sql_insert_scripts

ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=ujdbc19!#ms
ENV MSSQL_PID=Developer
   
WORKDIR /src

COPY initialize-database.sql ./
COPY ./sql_insert_scripts/ ./sql_insert_scripts
COPY setup-database.sh ./
COPY entrypoint.sh ./

RUN chmod +x ./setup-database.sh
RUN chmod +x ./entrypoint.sh

CMD bash ./entrypoint.sh

EXPOSE 1433
