################################################################################
# create_d64.py - Python program to create D64 file and add PRG files to it
#

from d64 import DiskImage
from os import path
from pathlib import Path

base_path = path.dirname(path.abspath(__file__))
d64_file_path = path.join(base_path,"d64","Vic20 Boulder Dash.d64")
prg_list = ["BDLOAD","BD","B1CAVES","B2CAVES","B3CAVES","P1CAVES","A1CAVES","BBCAVES"]

disk_label = b"VIC BOULDER DASH"
disk_id = b"00"
if not path.exists(d64_file_path):
    DiskImage.create("d64", Path(d64_file_path), disk_label, disk_id)

d64_image = DiskImage(d64_file_path, mode='w')
with d64_image as image:
    for prg_name in prg_list:
        prg_on_d64_image = image.path(prg_name.encode()).open(mode="w", ftype="prg")
        with open(path.join(base_path,"prg",prg_name), "rb") as file:
            prg_on_d64_image.write(file.read())
        prg_on_d64_image.close
    image.close
