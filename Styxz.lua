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

local load = loadstring or load
local ID = game.PlaceId

local Scripts = {
    ["FNaF Coop"] = "https://raw.githubusercontent.com/ToshyWare/StyxzHub/refs/heads/main/FNaFCoop.lua",
}
local IDs = {
    [12495498157] = Scripts["FNaF Coop"],
}

if load and IDs[ID] then
    load(game:HttpGet(IDs[ID]))()
else
    warn("Game Not Found, No Script Was Executed")
end
