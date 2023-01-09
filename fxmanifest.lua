fx_version 'adamant'
game 'gta5'
lua54 'yes'

client_script {
    -- RageUIx | https://github.com/Florian-1801/RageUIx
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
    '@ox_lib/init.lua', -- https://github.com/overextended/ox_lib/releases
}