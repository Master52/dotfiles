#! /usr/bin/python3

import os
import sys

def get_allfiles(path=None):
    if path == None:
        return os.listdir()
    else: 
        return os.listdir(path)

def get_names(fi):
    ext = fi[fi.rfind("."):]
    name,_ = fi.split(fi[fi.rfind("."):])
    return name,ext

def filter(name):
    name = name.split("_",1)[0]
    name = name.split()
    temp = ""
    for word in name:
        if word.isalnum() == False:
            temp +=""
        else:
            temp += word + " "
    return temp.capitalize().strip()

if __name__ == "__main__":
    if len(sys.argv) == 1:
        files = get_allfiles()
    else:
        files = get_allfiles(sys.argv[1])

    for fi in files:
        try:
            name,ext = get_names(fi)
            name.strip()
            name = filter(name)
            if name == "" or name == " ":
                print("{} can't filter".format(fi))
            else:
                name += ext
                os.rename(fi,name)
            
        except ValueError:
            pass


'''
    files = [fi.split(".mp3") for fi in files ]
    print(files[-1])
'''

    
    

