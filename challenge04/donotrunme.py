import base64
import os
from random import randint


def create_directory():
    direc_name = input("Enter your hacker name 😆😆 ")
    if not os.path.exists(direc_name):
        rand = randint(0, 30)
        for i in range(0, 30):
            new_name = direc_name + chr(ord('a') + i)
            os.makedirs(new_name)
            for j in range(5):
                fayl_nomi = f"{new_name}/{new_name}{j}.txt"
                with open(fayl_nomi, "w") as f:
                    if i == rand and j == 4:
                        f.write(base64.b64encode("timasflag".encode()).decode())
                    else:
                        f.write(base64.b64encode("helloflag".encode()).decode())

    else:
        print("WTF!")

create_directory()

print("\nCan you run next_step.py ? ")
print("\n👽__find a stranger__👽\n")

def next_step():
    code = """
from PIL import Image, ImageDraw, ImageFont
import base64

def read_image():
    code = '''
from PIL import Image
import pytesseract
import base64
from random import randint

file_path = "alien.jpg"
u = int(ord('!')) // 11

def ocr_image(image_path):
    img = Image.open(image_path)
    text = pytesseract.image_to_string(img)
    print(text)

ocr_image("alien.jpg")

def rand_number():
    u = randint(1, 100)
glaf = "e{u}lvdXIgZmxhZyBpcyBoZXJlIHwwODAxMDMxMTA1MTh8fQ=="

with open(file_path, "r", encoding="latin-1") as file:
    existing_data = file.readlines()

new_data = base64.b64decode(glaf)

existing_data.insert(0, new_data)
existing_data = str(existing_data)

with open(file_path, "w") as file:
    file.writelines(existing_data)

'''
    with open("read_image.py", "w") as f:
        f.write(code)

code = input("Enter your code: ")
if code == base64.b64encode("timasflag".encode()).decode():
    size_image = (1400, 100)
    fon_color = "white"
    text = ("you won't find the flag if you don't look for it with your eyes wide opeN")
    text_color = "red"
    font = ImageFont.load_default(size=36)
    image = Image.new("RGB", size_image, fon_color)
    pencil = ImageDraw.Draw(image)
    x, y = 10, 10
    pencil.text((x, y), text, font=font, fill=text_color)
    image.save("alien.jpg")
    print("Search image")
    read_image()
else:
    print("Incorrect password! WTF")


"""
    with open("next_step.py", "w") as f:
        f.write(code)

next_step()

