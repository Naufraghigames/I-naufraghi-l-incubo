player = require("player")
menu = require("menu")
love.graphics.setDefaultFilter("nearest", "nearest")

function love.load()
    love.window.setTitle("I naufraghi, l'incubo")
    icona = love.image.newImageData("immagini/Icona.png")
    love.window.setIcon(icona)
    love.window.setMode(640, 360)
    menu.load()
    player.load()
end

function love.update(dt)
    menu.update(dt)
    player.update(dt)
end

function love.draw()
    menu.draw()
    player.draw()
end