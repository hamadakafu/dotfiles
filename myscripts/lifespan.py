#!/bin/python3

import datetime

# 30000日生きると仮定
lifespan_days = 20000

dt1 = datetime.datetime(year=1998, month=7, day=29)
today = datetime.datetime.today()

left_days = (today - dt1).days

print(f'{left_days / lifespan_days * 100:2.2f}%')
