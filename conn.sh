#!/usr/bin/env python3
# -*- coding: utf-8 -*-
# hive util with hive server2
from pyhive import hive

conn = hive.Connection(host='10.153.252.111', port=10000, username='',database='cdf_dm')
cursor=conn.cursor()
cursor.execute('select count(*) from cdf_dim.dim_store') #执行查询
for result in cursor.fetchall():
     print(result)                      #将查询结果打印出来
cursor.close()
conn.close()

