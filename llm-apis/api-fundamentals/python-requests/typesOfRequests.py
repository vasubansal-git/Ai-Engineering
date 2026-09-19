import requests

# POST request --------------------------------------------------------------------
r = requests.post('https://httpbin.org/post?a=b', data={'vasu':'value'})
print(r.text)

# PUT request ----------------------------------------------------------------------
r = requests.put("https://httpbin.org/put", data={'a':1, 'b':3})
print(r.text)

# DELETE request --------------------------------------------------------------------
r = requests.delete("https://httpbin.org/delete")
print(r.text)

# HEAD request -----------------------------------------------------------------------
r = requests.head("https://httpbin.org/get")
print(r)
print(r.status_code)
print(r.headers)

# OPTIONS requests ------------------------------------------------------------------
r = requests.options("https://httpbin.org/get")
print(r.status_code)
print(r.headers)
print(r.headers.get("Allow"))