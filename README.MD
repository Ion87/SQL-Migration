#SQL Migration Homework

##Environment Setup
###Fresh install (No Oracle-DB container existing yet)
- `cd docker`
- `docker-compose up -d`

###Continue from previous SQL Select homework (You have an Oracle-DB container up and running)
- `docker exec oracle bash -c 'sqlplus -s sys/Orclpass123@CDB AS SYSDBA @/opt/oracle/scripts/setup/03-hr-migration-user.sql'`

What the above command does, is running inside your container the SQL script (03-hr-migration-user.sql) which creates another user in your Oracle-DB: hr_migration. This user will hold your tables and all the flyway migration scripts will be running onto ***hr_migration***.

If something, anything, goes haywire, please contact Viorel Contu.

##Container Management
Since you booted the entire environment using docker-compose. The Oracle-db container will always start with your system. If you stopped it somehow, you can start it again with:  
`docker start oracle`

To stop your oracle container (if you feel that it eats too much of your RAM)
`docker stop oracle`

Use `docker ps` to see currently running containers. 
Use `docker ps -a` to see **all** containers. 


##Removing Oracle-DB Container
If you want to completely remove your Oracle-DB container
- `cd docker`
- `docker-compose down --rmi local`
- `docker volume prune`