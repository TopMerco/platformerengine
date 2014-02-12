function c_gravity(dt)
if love.keyboard.isDown("up") and jum==false then
jum=true
vel=-700
if (y>570) then
y=569
end
end
if(jum==true) then
vel=vel+grav
if(y<570)then
y=y+vel*dt
else
jum=false
end
end
if love.keyboard.isDown("right") then
x=x+100*dt
elseif love.keyboard.isDown("left") then
x=x-100*dt
end
if(x>770) then
x=770
elseif(x<1) then
x=1
end
end


function love.load()
gravity=3
x=400
y=569
vel=-1000
grav=10
moving=true
jum=false
cubo=love.graphics.newImage("cubo.png")
end

function love.update(dt)
c_gravity(dt)
end

function love.draw()
love.graphics.draw(cubo,x,y)
love.graphics.print(vel,10,10)
end
