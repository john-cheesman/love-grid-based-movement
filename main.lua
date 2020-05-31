local tween = require('lib.tween.tween')

function love.load()
    player = {
        posX = 0,
        posY = 0,
        speed = 3,
        targetX = 0,
        targetY = 0,
        moveComplete = true,
        moveTween = nil
    }
end

local function getMovedir()
    local movedirX, movedirY = 0, 0

    if love.keyboard.isDown('up') then
        movedirY = -1
    elseif love.keyboard.isDown('down') then
        movedirY = 1
    end

    if love.keyboard.isDown('left') then
        movedirX = -1
    elseif love.keyboard.isDown('right') then
        movedirX = 1
    end

    if movedirX ~= 0 and movedirY ~= 0 then
        movedirX, movedirY = 0, 0
    end

    return movedirX, movedirY
end

function love.update(dt)
    local movedirX, movedirY = getMovedir()
    if player.moveComplete and movedirX + movedirY ~= 0 then
        local targetX = player.posX+ movedirX * 32
        local targetY = player.posY + movedirY * 32
        player.moveTween = tween.new(1 / player.speed, player, { posX = targetX, posY = targetY })
    end

    if player.moveTween then
        player.moveComplete = player.moveTween:update(dt)
    end
end

function love.draw()
    love.graphics.rectangle('line', player.posX, player.posY, 32, 32)
end
