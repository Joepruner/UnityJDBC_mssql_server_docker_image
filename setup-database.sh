echo 'Please wait while SQL Server 2017 warms up'
sleep 20s

echo 'Initializing database after 10 seconds of wait'
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P UnityJDBC321! -d master -i initialize-database.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P UnityJDBC321! -d master -i sql_insert_scripts/001_region.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P UnityJDBC321! -d master -i sql_insert_scripts/002_nation.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P UnityJDBC321! -d master -i sql_insert_scripts/003_part.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P UnityJDBC321! -d master -i sql_insert_scripts/004_supplier.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P UnityJDBC321! -d master -i sql_insert_scripts/005_partsupp.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P UnityJDBC321! -d master -i sql_insert_scripts/006_customer.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P UnityJDBC321! -d master -i sql_insert_scripts/007_orders.sql
/opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P UnityJDBC321! -d master -i sql_insert_scripts/008_lineitem.sql
#for %%f in (sql_insert_scripts/*.sql) do
   # /opt/mssql-tools/bin/sqlcmd -S localhost -U sa -P UnityJDBC321! -d master -i %%f


echo 'Finished initializing the database'
