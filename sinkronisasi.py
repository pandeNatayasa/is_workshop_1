# -----------------WARNING !----------------- #
# Sinkroniasi searah dari tabel tb_mhs ke tabel tb_sinkronasi
# Sinkronisasi terjadi hanya ketika terjadi insert data baru pada tabel tb_mhs

# Import Library yang diperlukan
import pymysql
import time

# Contoh fungsi pada python
def fungsi_sinkronisasi(parameter):
    sql_select = "SELECT * FROM tbl_sinkronisasi"
    parameter.execute(sql_select)

    results = parameter.fetchall()

    # Return hasil select
    return results


def nama_fungsi(parameter):
    sql_select = "SELECT * FROM tbl_mhs"
    parameter.execute(sql_select)
    results = parameter.fetchall()

    # Result hasil select
    return results

# Loop ketika true (untuk membuat perulangan secara terus menerus)
while (1):

    try:
        db1 = pymysql.connect("localhost", "root", "", "db_mahasiswa")
        cursor_db = db1.cursor()

        data_mhs = nama_fungsi(cursor_db)
        data_sinkronisasi = fungsi_sinkronisasi(cursor_db)

        if (len(data_sinkronisasi) < len(data_mhs)):
            print("ada data baru")

            # Karena ada data baru, silahkan insert data yang baru kedalam database sinkronisasi
            # Tutorial insert salah satunya dapat dilihat di https://www.w3schools.com/python/python_mysql_insert.asp
        else:
            print("belum ada data baru")
    except:
        print("Error")

    # Untuk delay
    time.sleep(1)

