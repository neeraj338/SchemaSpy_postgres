set -x

java -jar schemaspy-6.0.0.jar ^
-t pgsql ^
-db %DB_NAME% ^
-host %DB_HOST%:%DB_PORT% ^
-u %DB_USER_NAME% ^
-p %DB_PASSWORD% ^
-o ./schemaspy ^
-dp postgresql-42.2.5.jar ^
-gv graphviz-2.38 ^
-s public -noads

cd schemaspy

python -m SimpleHTTPServer 5060