fx_version 'adamant'
--#########################
game 'gta5'
lua54 'yes'
name 'StormAC'
version '1.0'
description 'StormAC a good anticheat by redrake'



ui_page 'code/nui/ui.html'

client_scripts {
    '@menuv/menuv.lua',
    'code/entityiter.lua',
    'config/shared_config.lua',
    'menu/menu.lua',

}
--#########################

server_scripts {
    'code/entityiter.lua',
    'code/randomcode.lua',
    'code/installer.lua',
    ---
    'config/shared_config.lua',
    'config/server_config.lua',
    'config/table_config.lua',
    'server/server.lua'
}



dependencies {
    'menuv'
}

escrow_ignore {
    'bans.json',
    'config/server_config.lua',
    'config/shared_config.lua',
    'config/table_config.lua'
  }
dependency '/assetpacks'
