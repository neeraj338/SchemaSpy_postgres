# Prerequisite
```
python
```` 

# Environment variable
````
export DB_NAME='<your_db_name>'
export DB_HOST='<your_db_host>'
export DB_PORT='<your_db_port>'
export DB_USER_NAME='<your_db_user>'
export DB_PASSWORD='<your_db_password>'
````

# SchemaSpy_postgres
schema visualizer for postgres 

Step 1: clone the repository 

Step 2: Open 'er_diagram.sh' or 'er_diagram.bat' file whichever you want to use.

###### `./er_diagram.sh`

Step 3: open http://localhost:5060

Done ! 

# Docker
````
docker run --name schemaspy \
-p 5060:5060 \
--env DB_NAME="testdb" \
--env DB_HOST="postgres" \
--env DB_PORT="5432" \
--env DB_USER_NAME="postgres" \
--env DB_PASSWORD="postgres" \
--detach \
needubey/schemaspy_postgres
````
`open ` http://localhost:5060

# Note:
_`use --network <container network name in which postgres is running>`_
