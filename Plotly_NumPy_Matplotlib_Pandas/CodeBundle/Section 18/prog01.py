import pymysql

db = pymysql.connect("localhost","testuser","test123","sakila")

cursor = db.cursor()

sql = "SELECT VERSION()"

cursor.execute(sql)

data = cursor.fetchone()

print("Databse version : %s" % data)

db.close()
