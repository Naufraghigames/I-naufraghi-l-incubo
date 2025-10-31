dialoghi = {}

function dialoghi.load()
    pugnale = love.graphics.newImage("immagini/pugnale.png")
    lancia = false
    isdialogue = true
    dialogo = 0
end

function dialoghi.keypressed(key)
    if key == "e" then
        if isdialogue == true then
            if dialogo == 0 then
                dialogo = 1
                isdialogue = false
            elseif dialogo == 1 then
                dialogo = 2
                isdialogue = false
            elseif dialogo == 2 then
                dialogo = 3
            elseif dialogo == 3 then
                dialogo = 4
                isdialogue = false
            elseif dialogo == 4 then
                dialogo = 5
            elseif dialogo == 5 then
                dialogo = 6
                isdialogue = false
            elseif dialogo == 6 then
                dialogo = 7
                lancia = true
                i = 0
            elseif dialogo == 7 then
                scena = 6
                dialogo = 8
            elseif dialogo == 8 then
                dialogo = 9
            elseif dialogo == 9 then
                love.event.quit()
            end
        end
        if scena == 1 then
            if playerx >= 236 and playerx <= 334 and playery >= 0 and playery <= 30 then
                scena = 2
                playery = 232
                dialogo = 1
                isdialogue = true
            end
        end
    end
end

function dialoghi.update(dt)

end

function dialoghi.draw()
    if ismenu == false then
        if isdialogue == true then
            if dialogo == 0 then
                love.graphics.setColor(0, 0, 0)
                love.graphics.rectangle("fill", 200/640*screenx, 297/360*screeny, 245/640*screenx, 30/360*screeny)
                love.graphics.setColor(1, 1, 1)
                love.graphics.print("Ok, ho finito di coltivare", 200/640*screenx, 300/360*screeny)
                love.graphics.draw(e, 450/640*screenx, 295/360*screeny, 0, 1/640*screenx)
            elseif dialogo == 1 then
                love.graphics.setColor(0, 0, 0)
                love.graphics.rectangle("fill", 160/640*screenx, 300/360*screeny, 320/640*screenx, 30/360*screeny)
                love.graphics.setColor(1, 1, 1)
                love.graphics.print("Strano, è tutto troppo tranquillo", 160/640*screenx, 300/360*screeny)
                love.graphics.draw(e, 490/640*screenx, 300/360*screeny, 0, 1/640*screenx)
            elseif dialogo == 2 then
                love.graphics.setColor(0, 0, 0)
                love.graphics.rectangle("fill", 60/640*screenx, 300/360*screeny, 400/640*screenx, 30/360*screeny)
                love.graphics.setColor(1, 1, 1)
                love.graphics.print("Ma... quella è la testa di Red e... Wilson", 60/640*screenx, 300/360*screeny)
                love.graphics.draw(e, 470/640*screenx, 299/360*screeny, 0, 1/640*screenx)
            elseif dialogo == 3 then
                love.graphics.setColor(0, 0, 0)
                love.graphics.rectangle("fill", 30/640*screenx, 300/360*screeny, 500/640*screenx, 30/360*screeny)
                love.graphics.setColor(1, 1, 1)
                love.graphics.print("Devo scoprire chi è stato, Red mi doveva 5 cocchi", 30/640*screenx, 300/360*screeny)
                love.graphics.draw(e, 540/640*screenx, 299/360*screeny, 0, 1/640*screenx)
            elseif dialogo == 4 then
                love.graphics.setColor(0, 0, 0)
                love.graphics.rectangle("fill", 200/640*screenx, 300/360*screeny, 300/640*screenx, 30/360*screeny)
                love.graphics.setColor(1, 1, 1)
                love.graphics.print("Simone...Goji...Crale...R.O.B.?", 200/640*screenx, 300/360*screeny)
                love.graphics.draw(e, 540/640*screenx, 299/360*screeny, 0, 1/640*screenx)
            elseif dialogo == 5 then
                love.graphics.setColor(0, 0, 0)
                love.graphics.rectangle("fill", 200/640*screenx, 300/360*screeny, 220/640*screenx, 30/360*screeny)
                love.graphics.setColor(1, 1, 1)
                love.graphics.print("Inizio a preoccuparmi", 200/640*screenx, 300/360*screeny)
                love.graphics.draw(e, 450/640*screenx, 299/360*screeny, 0, 1/640*screenx)
            elseif dialogo == 6 then
                love.graphics.setColor(0, 0, 0)
                love.graphics.rectangle("fill", 290/640*screenx, 300/360*screeny, 160/640*screenx, 30/360*screeny)
                love.graphics.setColor(1, 1, 1)
                love.graphics.print("Svelati, mostro", 290/640*screenx, 300/360*screeny)
                love.graphics.draw(e, 450/640*screenx, 299/360*screeny, 0, 1/640*screenx)
            elseif dialogo == 7 then
                love.graphics.draw(e, playerx, 150/360*screeny, 0, 1/640*screenx)
            elseif dialogo == 8 then
                love.graphics.setColor(0, 0, 0)
                love.graphics.rectangle("fill", 190/640*screenx, 300/360*screeny, 220/640*screenx, 30/360*screeny)
                love.graphics.setColor(1, 1, 1)
                love.graphics.print("Fiu, era solo un sogno", 190/640*screenx, 300/360*screeny)
                love.graphics.draw(e, 450/640*screenx, 299/360*screeny, 0, 1/640*screenx)
            elseif dialogo == 9 then
                love.graphics.setColor(0, 0, 0)
                love.graphics.rectangle("fill", 190/640*screenx, 300/360*screeny, 280/640*screenx, 30/360*screeny)
                love.graphics.setColor(1, 1, 1)
                love.graphics.print("Kasko, devo finire il video", 190/640*screenx, 300/360*screeny)
                love.graphics.draw(e, 450/640*screenx, 299/360*screeny, 0, 1/640*screenx)
            end
        end
    end
end

return dialoghi