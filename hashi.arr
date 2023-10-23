include color
flag = rectangle(220, 160, "outline", "black")
flag
red-small = rectangle(60, 60, "solid", "red")
red-small
view-1 = overlay-align("left", "top", red-small, flag)
view-1
overlay-xy(red-small, 0, 0, flag)
view-2 = overlay-align("left", "bottom", red-small, view-1)
nor-color = color(0, 32, 91, 1)
blue-vert = rectangle(20, 160, "solid",nor-color )
blue-vert
view-3 = overlay-xy(view-2, 70, 0, blue-vert)

red-big =rectangle( 120, 60,"solid", "red")
red-big
view-4 = overlay-xy(view-3, 100, 0, red-big)
blue-hor = rectangle( 220, 20, "solid",nor-color)
blue-hor
view-5 = overlay-xy(view-4, 0, 70, blue-hor)
view-5
red-big-bottom = rectangle( 120, 60, "solid", "red")
red-big-bottom
view-6 = overlay-align("right", "bottom", red-big-bottom, view-5)
view-6