coords=string.format("%02d",math.floor(x*100))..", "..string.format("%02d",math.floor(y*100))

if x>0.75 then
    newx = (x*100)-23
    borderx = "right"
else
    newx = x*100
    borderx = "left"
end
if y>0.75 then
    newy = (y*100)-9
    bordery = "bottom"
else
    newy = (y*100)+1
    bordery = "top"
end
screen.moveContent(CoordBox,newx,newy)
style=[[
font-size:6vw;
border-]]..borderx..[[:0.5vw solid red;
border-]]..bordery..[[:0.5vw solid red;]]
screen.resetContent(CoordBox,[[<div style="]]..style..[[">]]..coords..[[</div>]])