# connect_db.py
# OM 2020.03.12 Connexion bd

import pymysql
import pymysql.cursors

# OMO 2020.03.16 Se connecter à la BD.
class DatabaseTools():
    def __init__(self):
        print("Constructeur classe DatabaseTools ")

    def connect_ma_bd(self):
        self.db = pymysql.connect(host="localhost",
                                user="root",
                                password="root",
                                db="osman_mohammed_database_1c_2020",
                                cursorclass=pymysql.cursors.DictCursor)
        print("bd connectée impec !!")
        return self

    # OMO 2020.03.11 Petite méthode pour fermer la connection à la BD
    def close_connection (self):
        if self.connect_ma_bd().db:
            print("Dans la méthode close_connection et la BD est FERMEE")
            self.db.close()
        else:
            print("Dans la méthode close_connection et y'a rien a fermer")
