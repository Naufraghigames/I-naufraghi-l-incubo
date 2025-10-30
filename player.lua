anim8 = require("anim8")

player={}

function player.load()
    ismoving = false

    player_spritesheet = love.graphics.newImage("immagini/player_spritesheet.png")

    footstep = love.audio.newSource("musica_e_soundeffect/passi.mp3", "stream")

    playerx, playery = 0, 0

    player_grid = anim8.newGrid(32, 64, player_spritesheet:getWidth(), player_spritesheet:getHeight())
    player_down = anim8.newAnimation( player_grid('1-4', 2), 0.2)
    player_up = anim8.newAnimation( player_grid('1-4', 1), 0.2)
    player_anim = player_up
end


function player.update(dt)
    if ismenu == false then
        ismoving = false

        if love.keyboard.isDown("up") then
            if playery > 0 then
                playery = playery-100*dt
                player_anim = player_up
                ismoving = true
                footstep:play()
            end
        end
        if love.keyboard.isDown("down") then
            if playery < 232 then
                playery = playery+100*dt
                player_anim = player_down
                ismoving = true
                footstep:play()
            end
        end
        if love.keyboard.isDown("right") then
            if playerx < 576 then
                playerx = playerx+100*dt
                ismoving = true
                footstep:play()
            end
        end
        if love.keyboard.isDown("left") then
            if playerx > 0 then
                playerx = playerx-100*dt
                ismoving = true
                footstep:play()
            end
        end
        if ismoving == false then
            player_anim:gotoFrame(2)
            footstep:stop()
        end
        player_anim:update(dt)
    end
end

function player.draw()
    if ismenu == false then
        player_anim:draw(player_spritesheet, playerx/640*screenx, playery/360*screeny, 0, 2/640*screenx)
        love.graphics.print(screeny)
    end
end

return player