import csv

header = ["id", "municipio_total", "cardio", "tumor", "diabetes", "alzheimer", "cerebrovascular", "respiratory", "accident", "nefritis", "homicide", "pneumonia", "year"]

c = csv.writer(open("headers.csv", "wb"))

c.writerow(header)
