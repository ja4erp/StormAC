local assert = assert
local decode = assert(json.decode)

--- FiveM globals
local LoadResourceFile = assert(LoadResourceFile)

--- MenuV globals
---@type Utilities
local Utilities = assert(Utilities)

--- Empty translations table
local translations = {}

--- Load all translations
local lang = Utilities:Ensure((Config or {}).Language, 'en')
local translations_path = ('languages/%s.json'):format(lang)
local translations_raw = LoadResourceFile('menuv', translations_path)

if (translations_raw) then
    local transFile = decode(translations_raw)

    if (transFile) then translations = Utilities:Ensure(transFile.translations, {}) end
end

_ENV.translations = translations
_G.translations = translations