# UnityJDBC_mssql_server_docker_image

### Step 1:
[Install Docker](https://docs.docker.com/install/)

### Step 2:
Clone the repository
### Step 3:
$: cd UnityJDBC_mssql_server_docker_image
### Step 4:
$: docker image build -t custom_mssql_image .
### Step 5:
$: docker run -it -p 1433:1433 --name custom_mssql_cont custom_mssql_image:latest
#### Wait for all inserts to complete. Takes up to 20 mins or so.
### Step 6:
$: docker exec -it custom_mssql_cont bash
### Step 7:
$: cd ../opt/mssql-tools/bin/
### Step 8:
$: ./sqlcmd -U SA -P UnityJDBC321!

### And you're in!

An image.tar file has not been included here because it is 1.4gb compressed. Building the image is just as easy.

#### Super helpful:
[Docker Cheat Sheet](https://www.docker.com/sites/default/files/Docker_CheatSheet_08.09.2016_0.pdf)
[How to build MSsql image](https://www.handsonarchitect.com/2018/01/build-custom-sql-server-2017-linux.html)
