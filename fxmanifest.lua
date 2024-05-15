fx_version 'cerulean'
rdr3_warning 'I acknowledge that this is a prerelease build of RedM, and I am aware my resources *will* become incompatible once RedM ships.'
game 'rdr3'
version '1.0'
author 'VORP @YourgenAP'
description 'Saloon job for VORP Core'

shared_scripts {
    'config.lua',
    'locale.lua',
    'languages/*.lua'
}
client_script 'client/client.lua'
server_script 'server/server.lua'


dependencies {
    'vorp_crafting',
}
