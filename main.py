#Melakukan import mysql connector
import mysql.connector

#Melakukan percobaan koneksi
conn=mysql.connector.connect(
    host='localhost', username='root', password='password', database='kalbe')

#Membuat object cursor sebagai penanda
cursor = conn.cursor()

#Deklarasi SQL Query untuk memasukkan record ke DB (KARYAWAN)
insert_sql = (
    "INSERT INTO KARYAWAN (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)" "VALUES (%s, %s, %s, %s)"
)
values = ('Shena', 'Orivia', '23', 'F', 6000000)

#Eksekusi SQL Command
cursor.execute(insert_sql, values)

#Melakukan perubahan (commit) pada DB
conn.commit()

#Roll Back apabila ada issue
conn.rollback()

#Menutup koneksi
conn.close()