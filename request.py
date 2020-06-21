import requests, json

url = 'http://0.0.0.0:5000/api/'

data = [[14.34, 1.68, 2.7, 25.0, 98.0, 2.8, 1.31, 0.53, 2.7, 13.0, 0.57, 1.96, 1000.0], [1.34, 14.68, 2.7, 2.0, 9.0, 2.8, 13.31, 0.53, 2.7, 1.0, 13.0, 1.96, 1200.0]]
j_data = json.dumps(data)
headers = {'content-type': 'application/json', 'Accept-Charset': 'UTF-8'}
r = requests.post(url, data=j_data, headers=headers)
print(r,r.text)