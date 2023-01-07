fx_version 'adamant'
game 'gta5'
Author "ChernyyOrel#1074"
lua54 'yes'

client_script "client.lua"

server_script "server.lua"

shared_script {
    'config.lua',
    '@ox_lib/init.lua',
}