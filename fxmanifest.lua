fx_version 'cerulean'
game 'gta5'


author 'Elite Development'
description 'Elite Fishing'
version '1.0.0'

shared_scripts {
	'config.lua'
}

client_scripts {
	'client/client.lua',
    'client/client_functions.lua',
	'client/boatrental.lua',
	'client/ped.lua',
	'client/interactions.lua'
}

server_script {
	'server/server.lua',
	'server/usableitems.lua'
}

lua54 'yes'