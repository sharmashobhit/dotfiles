import random
from os import listdir
from os.path import isfile, join
from subprocess import call

mypath = "/home/shobhit/lock_screen/png"
onlyfiles = [f for f in listdir(mypath) if isfile(join(mypath, f))]
img = onlyfiles[random.randint(0, len(onlyfiles))]
call(["i3lock", "-i", "{0}/{1}".format(mypath, img)])
