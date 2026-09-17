import requests 

r = requests.get("http://api.github.com/events")
print(r.status_code)
print(r.headers['content-type'])
print(r.encoding)
print(r.json())