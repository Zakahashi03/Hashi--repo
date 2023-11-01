use context essentials2021
fun draw-flag(scandic,h):
  h = 280
  hdansk-def = 28
  wdansk-def = 37
  hdansk = h
  wdansk = (hdansk * 37) / 28
  
  
  flag = rectangle(wdansk, hdansk, "outline", "black")
flag
  red-little = rectangle(12 * wdansk) / 37 (12 * hdansk) / 28 "solid""red"
  red-big =rectangle (21 * wdansk) / 37 (12 * hdansk) / 28"solid"
  