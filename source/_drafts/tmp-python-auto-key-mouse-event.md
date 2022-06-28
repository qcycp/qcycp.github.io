---
title: tmp_python_auto_key_mouse_event
tags:
---
Auto key\mouse event by Python
===
```python
'''
bot for http://www.trex-game.skipser.com/
0. required modules: Pillow, PyAutoGUI, numpy
1. click replay button automatically to start the game
2. detect the square region in front of the dinosaur by color
'''
from PIL import ImageGrab, ImageOps
import pyautogui
import time
from numpy import *

class Cordinates():
    replayBtn = (687, 780) #get the real coordinate in the screen
    dinosaur = (339, 794) #get the right-top coordinate in the screen

def restartGame():
    pyautogui.click(Cordinates.replayBtn)

def pressSpace():
    pyautogui.keyDown('space')
    time.sleep(0.05)
    pyautogui.keyUp('space')

def imageGrab():
    box = (488, 814, 558, 844)
    image = ImageGrab.grab(box)
    grayImage = ImageOps.grayscale(image)
    a = array(grayImage.getcolors())
    print(a.sum())
    return a.sum()

def main():
    restartGame()
    while True:
        # if there is no tree, the color sum of the square region is 2347
        if imageGrab() != 2347:
            pressSpace()
            time.sleep(0.1)

main()
```