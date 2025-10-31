scene = {}

function scene.load()
    prima_scena = love.graphics.newImage("immagini/Prima_scena.png")

    dialogo = 0
end

function scene.update(dt)
    if scena == 1 then

    end

end

function scene.draw()
    if scena == 1 then
        love.graphics.draw(prima_scena, 0, 0, 0, screenx/640, screeny/360)
    end
end

return scene