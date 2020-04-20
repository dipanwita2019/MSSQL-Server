# MSSQL-server
Creating a repo for MSSQL solutions and guide to installation

I am using MacOS, so installation of SQL-server has to be done by running docker container. I have to tried to jot down the necessary steps to successfully run SQL-server docker container and start accessing the server through Azure Data Studio and RazorSQL.

# Pull the docker image and run the docker container (MSSQL server)
docker run -e 'ACCEPT_EULA=Y' -e 'SA_PASSWORD=yourStrong(!)Password' -e 'MSSQL_PID=Express' -p 1433:1433 -d mcr.microsoft.com/mssql/server:2017-latest-ubuntu

user : SA
password : yourStrong(!)Password
Left (1433) : port in the host machine 
Right (1433) : port to the SQL docker container

# List all the running docker containers (check if the container is running and note the container id)
docker ps -a

# Download Azure Data Studio 
go to:
https://docs.microsoft.com/en-us/sql/azure-data-studio/download-azure-data-studio?view=sql-server-ver15

After the download and installation, open the Azure Studio and start a new connection:

Connection Type: Microsoft SQL Server
Server: localhost
Username: sa
Password:yourStrong(!)Password

Hit connect and you will be able to start Azure Data Studio.

# Use RazorSQL to access the SQL server
go to:
https://razorsql.com/download.html

After the download and installation, open RazorSQL and start a new connection.

Connection Profile name: <whatever you want>
login:sa
password: yourStrong(!)Password
host: localhost
  
Hit connect and start using Razor SQL.














