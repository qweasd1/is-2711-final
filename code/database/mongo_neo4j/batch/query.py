class PrimarykeyNotFoundException(Exception):
    def __init__(self,key,table):
        super().__init__("key:'{0}' not found in table '{1}'".format(key,table))
        self.key = key
        self.table = table


class CacheFetcher:
    def __init__(self,db,table,pk="id",cache_size=100):
        self.cursor = db.cursor()
        self.cache = {}
        self.cache_size = cache_size
        self.table = table
        self.pk = pk
    def close(self):
        self.cursor.__exit__()
    def query(self,sql,*args):
        self.cursor.execute(sql,tuple(args))
        return self.cursor
    def select(self,where=""):
        self.cursor.execute("""
        select *
        from {0}
        {1}
        """.format(self.table,where))
        return self.cursor
    def lookup(self,id):
        if id in self.cache:
            return self.cache[id]
        else:
            result_count = self.cursor.execute("""
            select * from {0} where {1} = %s
            """.format(self.table,self.pk),(id,))

            if result_count == 0:
                raise PrimarykeyNotFoundException(self.key,self.table)

            result = self.cursor.fetchone()
            if len(self.cache) == self.cache_size:
                self.cache.pop()
            self.cache[id] = result
            return result

# import pymysql
# import pymysql.cursors
#
# client_mysql = pymysql.connect(
#     host="localhost",
#     port=3306,
#     user="root",
#     password="localpw1234",
#     db="vehicle",
#     cursorclass=pymysql.cursors.DictCursor
# )
#
#
# c = CacheFetcher(client_mysql,"customer")
