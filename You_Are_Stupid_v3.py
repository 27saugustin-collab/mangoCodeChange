import random
from tkinter import Label, RAISED, Toplevel, Tk, BOTH

root = Tk()
root.withdraw()  # Keeps the main control window hidden

# Get screen width and height to keep windows on-screen
screen_width = root.winfo_screenwidth()
screen_height = root.winfo_screenheight()

for i in range(10):
    window = Toplevel(root)
    window.wm_title("Google Chrome")

    # Generate random coordinates
    # We subtract 300 and 50 so the window doesn't bleed off the edge
    x = random.randint(0, screen_width - 300)
    y = random.randint(0, screen_height - 50)

    # Apply the geometry: "WidthxHeight+X+Y"
    window.geometry(f"300x50+{x}+{y}")

    Label(window, text="YOU ARE STUPID HAHAHAHAHAHA", relief=RAISED).pack(expand=True, fill=BOTH)

root.mainloop()