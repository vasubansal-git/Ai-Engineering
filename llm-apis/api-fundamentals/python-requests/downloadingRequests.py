import requests
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