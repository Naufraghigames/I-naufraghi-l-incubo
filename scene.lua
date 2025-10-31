scene = {}

function scene.load()
    prima_scena = love.graphics.newImage("immagini/Prima_scena.png")
    seconda_scena = love.graphics.newImage("immagini/Seconda_scena.png")
    terza_scena = love.graphics.newImage("immagini/Terza_scena.png")
    quarta_scena = love.graphics.newImage("immagini/Quarta_scena.png")
    
end

function scene.update(dt)
    pugnalex = 290/640*screenx

end

function scene.draw()
    if scena == 1 then
        love.graphics.draw(prima_scena, 0, 0, 0, screenx/640, screeny/360)
    elseif scena == 2 then
        love.graphics.draw(seconda_scena, 0, 0, 0, screenx/640, screeny/360)
    elseif scena == 3 then
        love.graphics.draw(terza_scena, 0, 0, 0, screenx/640, screeny/360)
    elseif scena == 4 then
        love.graphics.draw(quarta_scena, 0, 0, 0, screenx/640, screeny/360)
    elseif scena == 5 then
        love.graphics.draw(seconda_scena, 0, 0, 0, screenx/640, screeny/360)
        if lancia == true then
            love.graphics.draw(pugnale, pugnalex, playery)
        end
    elseif scena == 6 then
        love.graphics.draw(seconda_scena, 0, 0, 0, screenx/640, screeny/360)
    end
end

return scene