import requests
from PIL import Image
from io import BytesIO

r = requests.get('https://images.pexels.com/photos/30994370/pexels-photo-30994370.jpeg?cs=srgb&dl=pexels-optical-chemist-340351297-30994370.jpg&fm=jpg')
i = Image.open(BytesIO(r.content))
fp = open("img.jpg", "wb")
i.save(fp)
fp.close()