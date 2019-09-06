set -x

java -jar schemaspy-6.0.0.jar ^
-t pgsql ^
-db testDB ^
-host localhost:5432 ^
-u postgres -p postgres ^
-o ./schemaspy ^
-dp postgresql-42.2.5.jar ^
-gv graphviz-2.38 ^
-s public -noads

echo "opening ./schemaspy/index.html to chrome"

start "" "chrome.exe" "file:///C:/Users/<USER_NAME>/Desktop/SchemaSpy_postgres/schemaspy/index.html"
