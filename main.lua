player = require("player")
menu = require("menu")
love.graphics.setDefaultFilter("nearest", "nearest")
function love.load()
    love.window.setTitle("I naufraghi, l'incubo")
    icona = love.image.newImageData("immagini/Icona.png")
    love.window.setIcon(icona)
    love.window.setMode(640, 360)
    love.window.setFullscreen(false)
    menu.load()
end

function love.update(dt)
    menu.update(dt)
end

function love.draw()
    menu.draw()
end