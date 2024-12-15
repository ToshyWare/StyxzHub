--[[
:'######::'########:'##:::'##:'##::::'##:'########::::'##::::'##:
'##... ##:... ##..::. ##:'##::. ##::'##::..... ##:::::. ##::'##::
 ##:::..::::: ##:::::. ####::::. ##'##::::::: ##:::::::. ##'##:::
. ######::::: ##::::::. ##::::::. ###::::::: ##:::::::::. ###::::
:..... ##:::: ##::::::: ##:::::: ## ##::::: ##:::::::::: ## ##:::
'##::: ##:::: ##::::::: ##::::: ##:. ##::: ##:::::::::: ##:. ##::
. ######::::: ##::::::: ##:::: ##:::. ##: ########:::: ##:::. ##:
:......::::::..::::::::..:::::..:::::..::........:::::..:::::..::
]]--

local function safeLoad(url)
    local success, errorMsg = pcall(function()
        loadstring(game:HttpGet(url))()
    end)
    
    if success then
        print("Script executado com sucesso!")
    else
        warn("Erro ao executar o script: " .. errorMsg)
    end
end

local gameId = game.PlaceId

if gameId == 10260193230 then
    -- Blox Fruits
    print("Meme Sea Detected, Loading Script...")
    safeLoad("https://raw.githubusercontent.com/ToshyWare/StyxzHub/refs/heads/main/MemeSea.lua")
else
    print("Game Not Found")
end
