player = require("player")
menu = require("menu")
scene = require("scene")
dialoghi = require("dialoghi")
love.graphics.setDefaultFilter("nearest", "nearest")

function love.keypressed(key)
    player.keypressed(key)
    menu.keypressed(key)
    dialoghi.keypressed(key)
end

function love.load()
    love.window.setTitle("I naufraghi, l'incubo")
    icona = love.image.newImageData("immagini/Icona.png")
    love.window.setIcon(icona)
    love.window.setMode(640, 360)
    menu.load()
    player.load()
    scene.load()
    dialoghi.load()
end

function love.update(dt)
    menu.update(dt)
    scene.update(dt)
    player.update(dt)
end

function love.draw()
    menu.draw()
    scene.draw()
    player.draw()
    dialoghi.draw()
end