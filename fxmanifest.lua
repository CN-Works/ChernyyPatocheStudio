fx_version 'adamant'
game 'gta5'
Author "ChernyyOrel#1074"
lua54 'yes'

client_script {
    -- RageUI
    'src/RageUI.lua',
    'src/Menu.lua',
    'src/MenuController.lua',
    'src/components/*.lua',
    'src/elements/*.lua',
    'src/items/*.lua',
    --
    "client.lua",
}

server_script "server.lua"

shared_script {
    'config.lua',
    '@ox_lib/init.lua',
}