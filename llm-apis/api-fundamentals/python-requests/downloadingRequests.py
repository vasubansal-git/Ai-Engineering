import requests
from tqdm import tqdm
from PIL import Image
from io import BytesIO

# downloading request for images ---------------------------------------------------

r = requests.get('https://images.pexels.com/photos/30994370/pexels-photo-30994370.jpeg?cs=srgb&dl=pexels-optical-chemist-340351297-30994370.jpg&fm=jpg')
i = Image.open(BytesIO(r.content))
fp = open("img.jpg", "wb")
i.save(fp)
fp.close()

# downloading request for files like (exe, mp3, wav etc) ------------------------------------

url = "https://www.win-rar.com/fileadmin/winrar-versions/winrar/winrar-x64-723.exe"
r = requests.get(url)
fp = open('winrar.exe', 'wb')
fp.write(r.content)
fp.close()

# streaming files --------------------------------------------------------------------

url = "https://www.python.org/ftp/python/pymanager/python-manager-26.3.msix"
r = requests.get(url, stream=True)
totalExpectedBytes = int(r.headers["Content-Length"])
bytesReceived = 0
progress_bar = tqdm(total=totalExpectedBytes, unit='iB', unit_scale=True)
with open("python.exe", "wb") as f:
    for chunk in r.iter_content(chunk_size=128):
        progress_bar.update(128)
        f.write(chunk)
        bytesReceived += 128
progress_bar.close()