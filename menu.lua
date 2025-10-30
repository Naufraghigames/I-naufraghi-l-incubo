menu={}

function menu.load()
    font = love.graphics.newFont(20)
    love.graphics.setFont(font)

    fullscreen = false
    ismenu = true
    isoptions = false
    blockx = 64

    menu_background = love.graphics.newImage("immagini/Background_menu.png")
    titolo = love.graphics.newImage("immagini/titolo.png")
    play_button = love.graphics.newImage("immagini/Play_button.png")
    exit_button = love.graphics.newImage("immagini/Exit_button.png")

    Background_music = love.audio.newSource("musica_e_soundeffect/Menu_music.mp3", "stream")

    screenx, screeny = love.graphics.getWidth(), love.graphics.getHeight()
    play_button_x, play_button_y = 330/640*screenx, 230/640*screeny
    exit_button_x, exit_button_y = 430/640*screenx, 230/640*screeny
end

function love.mousepressed(mousex, mousey, key)
    if key == 1 then
        if ismenu == true then
            if mousex >= play_button_x and mousex <= play_button_x+play_button:getWidth()*(screenx/640) and mousey >= play_button_y and mousey <= play_button_y+play_button:getHeight()*(screeny/360) then
                ismenu = false
            end
            if mousex >= exit_button_x and mousex <= exit_button_x+play_button:getWidth()*(screenx/640) and mousey >= exit_button_y and mousey <= exit_button_y+play_button:getHeight()*(screeny/360) then
                love.event.quit()
            end
        end
    end
end

function love.keypressed(key)
    if key == "return" then
        if fullscreen == false then
            fullscreen = true
            love.window.setFullscreen(fullscreen)
            screenx, screeny = love.graphics.getWidth(), love.graphics.getHeight()
            play_button_x, play_button_y = 330/640*screenx, 230/640*screeny
            exit_button_x, exit_button_y = 430/640*screenx, 230/640*screeny
            font = love.graphics.newFont(48)
            love.graphics.setFont(font)
            blockx = 64/640*screenx
        else
            fullscreen = false
            love.window.setFullscreen(fullscreen)
            screenx, screeny = love.graphics.getWidth(), love.graphics.getHeight()
            play_button_x, play_button_y = 330/640*screenx, 230/640*screeny
            exit_button_x, exit_button_y = 430/640*screenx, 230/640*screeny
            font = love.graphics.newFont(20)
            love.graphics.setFont(font)
            blockx = 64
        end
    end
end

function menu.update(dt)
    if ismenu == true then
        Background_music:play()
    else
        Background_music:stop()
    end
    mousex, mousey = love.mouse.getCursor()
    
end

function menu.draw()
    if ismenu == true then
        love.graphics.draw(menu_background, 0, 0, 0, screenx/640, screeny/360)
        love.graphics.draw(titolo, 150/640*screenx, 0, 0, screenx/640, screeny/360)
        love.graphics.draw(play_button, play_button_x, play_button_y, 0, screenx/640, screeny/360)
        love.graphics.draw(exit_button, exit_button_x, exit_button_y, 0, screenx/640, screeny/360)
        love.graphics.print("Premere INVIO per cambiare da finestra a Fullscreen", 50/640*screenx, 300/360*screeny)
    end
end

return menu