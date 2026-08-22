local addonName, PBM = ...

-- Tabla global de traducciones para el addon
PBM.L = PBM.L or {}
local L = PBM.L

-- Metatabla para devolver la clave original si no hay traducción
setmetatable(L, {
    __index = function(t, key)
        return key
    end
})

-- Alias ​​global para acceder fácilmente desde cualquier archivo
PBM_L = L