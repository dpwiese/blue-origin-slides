from PIL import Image
from os import listdir
from fpdf import FPDF

# https://stackoverflow.com/questions/27327513/create-pdf-from-a-list-of-images

mypath = "./screenshots"

onlyfiles = listdir(mypath)
onlyfiles.sort()

pdf = FPDF()

for image in onlyfiles:
    pdf.add_page(orientation="L")
    pdf.image(mypath + "/" + image,0,0,300,200)
pdf.output("out.pdf", "F")
