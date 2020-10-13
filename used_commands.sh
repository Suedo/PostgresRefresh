# Created a user
createuser pgnoob -d -s -U pgnoob -w

# Restore tar into dbs
pg_restore -c -U pgnoob -d northwind -v "resources/northwind.tar"
pg_restore -c -U pgnoob -d AdventureWorks -v "resources/AdventureWorks.tar"
pg_restore -c -U pgnoob -d pagila -v "resources/pagila.tar"
pg_restore -c -U pgnoob -d usda -v "resources/usda.tar"

# Create dbs
createdb northwind -U northwind
createdb usda -U pgnoob
createdb AdventureWorks -U pgnoob
createdb pagila -U pgnoob
