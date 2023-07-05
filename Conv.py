import sys
from PIL import Image
im = Image.open(sys.argv[1])
im.save(sys.argv[1].replace('webp','png'), format="png", lossless=True)
im.close()
