# Created a user
createuser pgnoob -d -s

# Create dbs
createdb northwind -U northwind
createdb usda -U postgres
createdb AdventureWorks -U postgres
createdb pagila -U postgres
# ^^ I prefer creating through DBeaver:
#    open a connection (the default postgres one for me)
#       > right click > create > 
#           give name of db, select owner (postgres for me)
# Done


# Restore tar into dbs
pg_restore -c -U postgres -d northwind -v "resources/northwind.tar"
pg_restore -c -U postgres -d AdventureWorks -v "resources/AdventureWorks.tar"
pg_restore -c -U postgres -d pagila -v "resources/pagila.tar"
pg_restore -c -U postgres -d usda -v "resources/usda.tar"

# Drop dbs
dropdb AdventureWorks -U postgres
dropdb usda -U postgres
dropdb pagila -U postgres
dropdb northwind -U postgres

# currently working on brew installed postgres. 
# was having problems dropping a db: said other sessions were using them.
# needed to do `brew services restart postgresql@9.6` , 
# and waited for appx 10 mins (db to startup properly), and then above commands worked