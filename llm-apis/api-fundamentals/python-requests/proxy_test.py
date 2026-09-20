import requests

# ============================================================
# 1. Basic GET Request
# ============================================================
# Sends a GET request to httpbin.org and receives a JSON response.
# This is the basic way to use the requests module.

response = requests.get("https://httpbin.org/get")

print(response.json())

# ============================================================
# 2. GET Request Using a SOCKS5 Proxy
# ============================================================
# A proxy acts as an intermediate server between our computer
# and the destination server.
#
# Here, the request is sent through a SOCKS5 proxy instead of
# connecting directly to httpbin.org.

proxies = {
    "http": "socks5h://107.150.41.226:18080",
    "https": "socks5h://107.150.41.226:18080"
}

response = requests.get(
    "https://httpbin.org/get",
    proxies=proxies,
    timeout=10
)

print(response.json())

# ============================================================
# 3. Checking the Response Status Code
# ============================================================
# HTTP status code 200 means that the request was successful.

print("Status Code:", response.status_code)
print("Response:", response.json())


# ============================================================
# 4. Clean Way to Configure and Use a Proxy
# ============================================================
# Instead of repeating the complete proxy URL, we can store it
# in a variable and reuse it for both HTTP and HTTPS requests.

proxy = "socks5h://107.150.41.226:18080"

proxies = {
    "http": proxy,
    "https": proxy
}

response = requests.get(
    "https://httpbin.org/ip",
    proxies=proxies,
    timeout=10
)

# Display the status code to verify that the request succeeded.
print("Status Code:", response.status_code)

# Display the IP address detected by httpbin.
# When the proxy is working, this should show the proxy's IP.
print("IP:", response.json()["origin"])