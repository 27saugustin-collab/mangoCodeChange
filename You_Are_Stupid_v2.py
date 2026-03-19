import tkinter
from tkinter import *

for i in range(10):
    tk = Tk()
    var = StringVar()
    label = Label(tk, textvariable=var, relief=RAISED)

    var.set("YOU ARE STUPID HAHAHAHAHAHA")
    label.pack()

    tk.geometry("300x50")
    tk.wm_title("Google Chrome")
    
    # This stops the loop until the window is closed
    tk.mainloop()