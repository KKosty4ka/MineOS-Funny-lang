local GUI = require("GUI")
local system = require("System")
local image = require("Image")
local internet = require("Internet")
local filesystem = require("Filesystem")

local currentScriptDirectory = filesystem.path(system.getCurrentScript())

local workspace, window = system.addWindow(GUI.filledWindow(1, 1, 50, 21, 0xF0F0F0))
local layout = window:addChild(GUI.layout(1, 1, 1, 1, 1, 1))

layout:addChild( GUI.image(1, 1, image.load(currentScriptDirectory .. "Icon.pic") ) )

local switch = layout:addChild( GUI.switchAndLabel(1, 1, 41, 6, 0x336DFF, 0xE1E1E1, 0xFFFFFF, 0xA5A5A5, "Перезагрузить ПК после установки", true) ).switch

local installButton = layout:addChild( GUI.button(1, 1, 36, 3, 0xE1E1E1, 0x696969, 0xD2D2D2, 0x3C3C3C, "Установить гоблинский перевод!") )

installButton.onTouch = function()
    installButton:remove()

    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Localizations/JoPa.lang", "/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Localizations/JoPa.lang", "/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/3D%20Print.app/Localizations/JoPa.lang", "/Applications/3D Print.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/3D%20Print.app/Localizations/JoPa.lang", "/Applications/3D Print.app/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/App%20Market.app/Localizations/JoPa.lang", "/Applications/App Market.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/App%20Market.app/Localizations/JoPa.lang", "/Applications/App Market.app/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/MineCode%20IDE.app/Localizations/JoPa.lang", "/Applications/MineCode IDE.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/MineCode%20IDE.app/Localizations/JoPa.lang", "/Applications/MineCode IDE.app/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/Nanomachines.app/Localizations/JoPa.lang", "/Applications/Nanomachines.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/Nanomachines.app/Localizations/JoPa.lang", "/Applications/Nanomachines.app/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/Settings.app/Localizations/JoPa.lang", "/Applications/Settings.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/Settings.app/Localizations/JoPa.lang", "/Applications/Settings.app/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/VK.app/Localizations/JoPa.lang", "/Applications/VK.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Applications/VK.app/Localizations/JoPa.lang", "/Applications/VK.app/Localizations/English.lang")

    
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Libraries/GUI.lua", "/Libraries/GUI.lua")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Libraries/System.lua", "/Libraries/System.lua")
    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/Libraries/GUI-Alert-icon.pic", "/Libraries/GUI-Alert-icon.pic")

    internet.download("https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/OS.lua", "/OS.lua")

    local efi = ""
    internet.rawRequest(
        "https://raw.githubusercontent.com/KKosty4ka/MineOS-Funny-lang/master/EFI/Loader.lua",
        nil,
        nil,
        function(chunk)
            efi = efi .. chunk
        end,
        8
    )
    component.eeprom.set(efi)

    if switch.state then
        GUI.alert("Ваш ПК перезапустится!")
        computer.shutdown(true)
    else
        GUI.alert("Перезагрузите ПК!")
    end
end

local removeButton = layout:addChild( GUI.button(1, 1, 36, 3, 0xE1E1E1, 0x696969, 0xD2D2D2, 0x3C3C3C, "Удалить гоблинский перевод") )

removeButton.onTouch = function()
    removeButton:remove()

    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Localizations/Russian.lang", "/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Localizations/English.lang", "/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/3D%20Print.app/Localizations/Russian.lang", "/Applications/3D Print.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/3D%20Print.app/Localizations/English.lang", "/Applications/3D Print.app/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/App%20Market.app/Localizations/Russian.lang", "/Applications/App Market.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/App%20Market.app/Localizations/English.lang", "/Applications/App Market.app/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/MineCode%20IDE.app/Localizations/Russian.lang", "/Applications/MineCode IDE.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/MineCode%20IDE.app/Localizations/English.lang", "/Applications/MineCode IDE.app/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/Nanomachines.app/Localizations/Russian.lang", "/Applications/Nanomachines.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/Nanomachines.app/Localizations/English.lang", "/Applications/Nanomachines.app/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/Settings.app/Localizations/Russian.lang", "/Applications/Settings.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/Settings.app/Localizations/English.lang", "/Applications/Settings.app/Localizations/English.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/VK.app/Localizations/Russian.lang", "/Applications/VK.app/Localizations/Russian.lang")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Applications/VK.app/Localizations/English.lang", "/Applications/VK.app/Localizations/English.lang")

    
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Libraries/GUI.lua", "/Libraries/GUI.lua")
    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/Libraries/System.lua", "/Libraries/System.lua")

    internet.download("https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/OS.lua", "/OS.lua")

    local efi = ""
    internet.rawRequest(
        "https://raw.githubusercontent.com/IgorTimofeev/MineOS/master/EFI/Minified.lua",
        nil,
        nil,
        function(chunk)
            efi = efi .. chunk
        end,
        8
    )
    component.eeprom.set(efi)

    if switch.state then
        GUI.alert("Ваш ПК перезапустится!")
        computer.shutdown(true)
    else
        GUI.alert("Перезагрузите ПК!")
    end
end

window.onResize = function(width, height)
    window.backgroundPanel.width, window.backgroundPanel.height = width, height
    layout.width, layout.height = width, height - layout.localY + 1
end

--------------------------------------------------------------------------------

window:resize(window.width, window.height)
workspace:draw()