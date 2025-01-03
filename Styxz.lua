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
    ["Meme Sea"] = "https://raw.githubusercontent.com/ToshyWare/StyxzHub/refs/heads/main/MemeSea.lua",
    ["Omini X"] = "https://raw.githubusercontent.com/ToshyWare/StyxzHub/refs/heads/main/OminiX.lua",
}
local IDs = {
    [2753915549] = Scripts["Blox Fruits"],
    [4442272183] = Scripts["Blox Fruits"],
    [7449423635] = Scripts["Blox Fruits"],
  --<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--
    [10260193230] = Scripts["Meme Sea"],
  --<>--<>--<>--<>--<>--<>--<>--<>--<>--<>--
    [5210095481] = Scripts["Omini X"],
}

if loadstring and IDs[ID] then
    loadstring(game:HttpGet(IDs[ID]))()
else
    warn("Game Not Found, No Script Was Executed")
end
