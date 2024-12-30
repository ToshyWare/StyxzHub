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

local loadstring = loadstring or load
local ID = game.PlaceId

local Scripts = {
    ["Blox Fruits"] = "https://raw.githubusercontent.com/ToshyWare/StyxzHub/refs/heads/main/BloxFruits.lua",
}
local IDs = {
    [2753915549] or [4442272183] or [7449423635] = Scripts["Blox Fruits"],
}

if loadstring and IDs[ID] then
    loadstring(game:HttpGet(IDs[ID]))()
else
    warn("Game Not Found, No Script Was Executed")
end
