################################################################################
# create_d64.py - Python program to create D64 file and add PRG files to it
#

from d64 import DiskImage
from os import path
from pathlib import Path

base_path = path.dirname(path.abspath(__file__))
base_path = path.join(base_path, "..")
d64_file_path = path.join(base_path,"d64","Vic20 Boulder Dash.d64")
prg_list = ["BDLOAD","BD","INS-1","INS-2","INS-3","INS-4","INS-5","INS-6"]
version_codes = ["BD1","BD2","BD3","BP1","AR1","AR2"]
cave_letters = ['A','B','C','D','Q','E','F','G','H','R','I','J','K','L','S','M','N','O','P','T','Z']

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

    for version in version_codes:
        for letter in cave_letters:
            cave_file = version + "-" + letter
            prg_on_d64_image = image.path(cave_file.encode()).open(mode="w", ftype="prg")
            with open(path.join(base_path,"prg",cave_file), "rb") as file:
                prg_on_d64_image.write(file.read())
            prg_on_d64_image.close

    image.close
