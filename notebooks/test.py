import sqlite3
import pandas as pd

# Connect to the database
conn = sqlite3.connect('data/Chinook_Sqlite.sqlite')

# List first 5 customers
df = pd.read_sql_query("SELECT * FROM Customer LIMIT 5;", conn)
print(df)

conn.close()