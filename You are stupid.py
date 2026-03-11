import tkinter
from tkinter import *
 
tk = Tk()
var = StringVar()
label = Label( tk, textvariable=var, relief=RAISED )
 
var.set("YOU ARE STUPID HAHAHAHAHAHA",)#What you want the text to be
label.pack()
#####Extras#####
tk.geometry("300x25")#The size of the box
tk.wm_title("Google Chrome")#The name of it
tk.mainloop()